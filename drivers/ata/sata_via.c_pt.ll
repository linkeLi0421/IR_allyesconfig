; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_via.c_pt.bc'
source_filename = "../drivers/ata/sata_via.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_vt6420_hotplug = internal constant [24 x i8] c"sata_via.vt6420_hotplug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vt6420_hotplug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vt6420_hotplug = internal constant %struct.kernel_param { ptr @__param_str_vt6420_hotplug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @vt6420_hotplug } }, section "__param", align 4
@__UNIQUE_ID_vt6420_hotplugtype290 = internal constant [37 x i8] c"sata_via.parmtype=vt6420_hotplug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vt6420_hotplug291 = internal constant [93 x i8] c"sata_via.parm=vt6420_hotplug:Enable hot-plug support for VT6420 (0=Don't support, 1=support)\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [28 x i8] c"sata_via.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [68 x i8] c"sata_via.description=SCSI low-level driver for VIA SATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"sata_via.file=drivers/ata/sata_via\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"sata_via.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [21 x i8] c"sata_via.version=2.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_via\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.6\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_sata_via__301_758_svia_pci_driver_init6 = internal global ptr @svia_pci_driver_init, section ".initcall6.init", align 4
@svia_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @svia_pci_tbl, ptr @svia_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @svia_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_svia_pci_driver_exit = internal global ptr @svia_pci_driver_exit, section ".exitcall.exit", align 4
@svia_pci_tbl = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 21303, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 1425, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12617, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12873, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4358, i32 21362, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 29554, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 21127, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4358, i32 36864, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@svia_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@svia_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 703, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid PCI BAR %u (sz 0x%llx, val 0x%llx)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"svia_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/sata_via.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@svia_init_one._entry_ptr = internal global ptr @svia_init_one._entry, section ".printk_index", align 4
@svia_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vt6420_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @vt6420_sata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.vt6420_prepare_host.ppi = private unnamed_addr constant [2 x ptr] [ptr @vt6420_port_info, ptr null], align 8
@vt6420_prepare_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 474, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to iomap PCI BAR 5\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vt6420_prepare_host\00", [44 x i8] zeroinitializer }, align 32
@vt6420_prepare_host._entry_ptr = internal global ptr @vt6420_prepare_host._entry, section ".printk_index", align 4
@vt6420_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svia_noop_freeze, ptr null, ptr @vt6420_prereset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt6420_bmdma_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svia_base_ops }, [44 x i8] zeroinitializer }, align 32
@svia_base_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svia_tf_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vt6420_prereset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ata%u: SATA link %s 1.5 Gbps (SStatus %X SControl %X)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vt6420_prereset\00", [16 x i8] zeroinitializer }, align 32
@vt6420_prereset._entry_ptr = internal global ptr @vt6420_prereset._entry, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@vt6421_sport_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @vt6421_sata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@vt6421_pport_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 127, ptr @vt6421_pata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.vt6421_prepare_host.ppi = private unnamed_addr constant [3 x ptr] [ptr @vt6421_sport_info, ptr @vt6421_sport_info, ptr @vt6421_pport_info], align 4
@vt6421_prepare_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 493, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vt6421_prepare_host\00", [44 x i8] zeroinitializer }, align 32
@vt6421_prepare_host._entry_ptr = internal global ptr @vt6421_prepare_host._entry, section ".printk_index", align 4
@vt6421_prepare_host._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 500, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to request/iomap PCI BARs (errno=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@vt6421_prepare_host._entry_ptr.18 = internal global ptr @vt6421_prepare_host._entry.16, section ".printk_index", align 4
@vt6421_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt6421_error_handler, ptr null, ptr null, ptr null, ptr null, ptr @svia_scr_read, ptr @svia_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svia_base_ops }, [44 x i8] zeroinitializer }, align 32
@vt6421_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014ata%u: Incompatible drive: enabling workaround. This slows down transfer rate to ~60 MB/s\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vt6421_error_handler\00", [43 x i8] zeroinitializer }, align 32
@vt6421_error_handler._entry_ptr = internal global ptr @vt6421_error_handler._entry, section ".printk_index", align 4
@vt6421_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt6421_pata_cable_detect, ptr null, ptr @vt6421_set_pio_mode, ptr @vt6421_set_dma_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svia_base_ops }, [44 x i8] zeroinitializer }, align 32
@vt6421_set_pio_mode.pio_bits = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\A8ee1 ", [27 x i8] zeroinitializer }, align 32
@vt6421_set_dma_mode.udma_bits = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\EE\E8\E6\E4\E2\E1\E0\E0", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bmdma\00", [26 x i8] zeroinitializer }, align 32
@vt8251_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 3, i32 0, i32 31, i32 7, i32 127, ptr @vt8251_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.vt8251_prepare_host.ppi = private unnamed_addr constant [2 x ptr] [ptr @vt8251_port_info, ptr null], align 8
@vt8251_prepare_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.23, ptr @.str.5, i32 524, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vt8251_prepare_host\00", [44 x i8] zeroinitializer }, align 32
@vt8251_prepare_host._entry_ptr = internal global ptr @vt8251_prepare_host._entry, section ".printk_index", align 4
@vt8251_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_std_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8251_scr_read, ptr @vt8251_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svia_base_ops }, [44 x i8] zeroinitializer }, align 32
@vt8251_scr_read.ipm_tbl = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01\02\06\00", [28 x i8] zeroinitializer }, align 32
@svia_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 601, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"routed to hard irq line %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svia_configure\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@svia_configure._entry_ptr = internal global ptr @svia_configure._entry, section ".printk_index", align 4
@svia_configure.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.5, ptr @.str.27, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling SATA channels (0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@svia_configure.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.5, ptr @.str.28, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"enabling SATA channel interrupts (0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@svia_configure.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.5, ptr @.str.29, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"enabling SATA channel native mode (0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@svia_configure.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.5, ptr @.str.30, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling SATA hotplug (0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"vt6420_hotplug\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 65, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 183, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"svia_pci_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 99, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"svia_pci_tbl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 86, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"svia_init_one.__print_once\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 699, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"svia_sht\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 110, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"vt6420_port_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 147, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 474, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"vt6420_sata_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 119, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"svia_base_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 114, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 360, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"vt6421_sport_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 155, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"vt6421_pport_info\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 163, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 493, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 499, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"vt6421_sata_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 133, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 584, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"vt6421_pata_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 126, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"pio_bits\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 405, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [10 x i8] c"udma_bits\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 413, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 452, i32 42 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 453, i32 45 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"vt8251_port_info\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 171, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 524, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"vt8251_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 140, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant [8 x i8] c"ipm_tbl\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 203, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 600, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 606, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 615, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 624, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [26 x i8] c"../drivers/ata/sata_via.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 635, i32 4 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__UNIQUE_ID_vt6420_hotplug291, ptr @__UNIQUE_ID_vt6420_hotplugtype290, ptr @__exitcall_svia_pci_driver_exit, ptr @__initcall__kmod_sata_via__301_758_svia_pci_driver_init6, ptr @__modver_attr, ptr @__param_vt6420_hotplug, ptr @svia_configure._entry, ptr @svia_configure._entry_ptr, ptr @svia_init_one._entry, ptr @svia_init_one._entry_ptr, ptr @svia_pci_driver_exit, ptr @vt6420_prepare_host._entry, ptr @vt6420_prepare_host._entry_ptr, ptr @vt6420_prereset._entry, ptr @vt6420_prereset._entry_ptr, ptr @vt6421_error_handler._entry, ptr @vt6421_error_handler._entry_ptr, ptr @vt6421_prepare_host._entry, ptr @vt6421_prepare_host._entry.16, ptr @vt6421_prepare_host._entry_ptr, ptr @vt6421_prepare_host._entry_ptr.18, ptr @vt8251_prepare_host._entry, ptr @vt8251_prepare_host._entry_ptr, ptr @vt6420_hotplug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @svia_pci_driver, ptr @svia_pci_tbl, ptr @svia_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @svia_sht, ptr @vt6420_port_info, ptr @.str.8, ptr @.str.9, ptr @vt6420_sata_ops, ptr @svia_base_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vt6421_sport_info, ptr @vt6421_pport_info, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @vt6421_sata_ops, ptr @.str.19, ptr @.str.20, ptr @vt6421_pata_ops, ptr @vt6421_set_pio_mode.pio_bits, ptr @vt6421_set_dma_mode.udma_bits, ptr @.str.21, ptr @.str.22, ptr @vt8251_port_info, ptr @.str.23, ptr @vt8251_ops, ptr @vt8251_scr_read.ipm_tbl, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6420_hotplug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_pci_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6420_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6420_prepare_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6420_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_base_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6420_prereset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_sport_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_pport_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_prepare_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_prepare_host._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_set_pio_mode.pio_bits to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6421_set_dma_mode.udma_bits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8251_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8251_prepare_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8251_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8251_scr_read.ipm_tbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svia_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @svia_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @svia_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @svia_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @svia_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svia_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi.i124 = alloca [2 x ptr], align 8
  %host.i125 = alloca ptr, align 4
  %ppi.i113 = alloca [3 x ptr], align 4
  %ppi.i = alloca [2 x ptr], align 8
  %host.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %.b112 = load i1, ptr @svia_init_one.__print_once, align 1
  br i1 %.b112, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @svia_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.end3.do.end_crit_edge, label %lor.lhs.false

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end3
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp10, i32 0, i32 %add
  %6 = select i1 %cmp, i32 16, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %6)
  %cmp18 = icmp ult i32 %cond, %6
  br i1 %cmp18, label %lor.lhs.false.do.end_crit_edge, label %for.inc

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %lor.lhs.false.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %lor.lhs.false.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %lor.lhs.false.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %lor.lhs.false.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end3.do.end_crit_edge
  %i.0145.lcssa = phi i32 [ 0, %if.end3.do.end_crit_edge ], [ 0, %lor.lhs.false.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 1, %lor.lhs.false.1.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 2, %lor.lhs.false.2.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ], [ 3, %lor.lhs.false.3.do.end_crit_edge ], [ 4, %for.inc.3.do.end_crit_edge ], [ 4, %lor.lhs.false.4.do.end_crit_edge ], [ 5, %for.inc.4.do.end_crit_edge ], [ 5, %lor.lhs.false.5.do.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end3.do.end_crit_edge ], [ %3, %lor.lhs.false.do.end_crit_edge ], [ 0, %for.inc.do.end_crit_edge ], [ %10, %lor.lhs.false.1.do.end_crit_edge ], [ 0, %for.inc.1.do.end_crit_edge ], [ %15, %lor.lhs.false.2.do.end_crit_edge ], [ 0, %for.inc.2.do.end_crit_edge ], [ %20, %lor.lhs.false.3.do.end_crit_edge ], [ 0, %for.inc.3.do.end_crit_edge ], [ %25, %lor.lhs.false.4.do.end_crit_edge ], [ 0, %for.inc.4.do.end_crit_edge ], [ %30, %lor.lhs.false.5.do.end_crit_edge ]
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %conv = zext i32 %.lcssa to i64
  %end26 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0145.lcssa, i32 1
  %7 = ptrtoint ptr %end26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27 = icmp eq i32 %8, 0
  %sub37 = sub i32 1, %.lcssa
  %add38 = add i32 %sub37, %8
  %cond40 = select i1 %cmp27, i32 0, i32 %add38
  %conv41 = zext i32 %cond40 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.3, i32 noundef %i.0145.lcssa, i64 noundef %conv, i64 noundef %conv41) #9
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.1 = icmp eq i32 %10, 0
  br i1 %cmp7.1, label %for.inc.do.end_crit_edge, label %lor.lhs.false.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.1:                                  ; preds = %for.inc
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %11 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10.1 = icmp eq i32 %12, 0
  %sub.1 = sub i32 1, %10
  %add.1 = add i32 %sub.1, %12
  %cond.1 = select i1 %cmp10.1, i32 0, i32 %add.1
  %13 = select i1 %cmp, i32 16, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1, i32 %13)
  %cmp18.1 = icmp ult i32 %cond.1, %13
  br i1 %cmp18.1, label %lor.lhs.false.1.do.end_crit_edge, label %for.inc.1

lor.lhs.false.1.do.end_crit_edge:                 ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.1:                                        ; preds = %lor.lhs.false.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.2 = icmp eq i32 %15, 0
  br i1 %cmp7.2, label %for.inc.1.do.end_crit_edge, label %lor.lhs.false.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %16 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.2 = icmp eq i32 %17, 0
  %sub.2 = sub i32 1, %15
  %add.2 = add i32 %sub.2, %17
  %cond.2 = select i1 %cmp10.2, i32 0, i32 %add.2
  %18 = select i1 %cmp, i32 16, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2, i32 %18)
  %cmp18.2 = icmp ult i32 %cond.2, %18
  br i1 %cmp18.2, label %lor.lhs.false.2.do.end_crit_edge, label %for.inc.2

lor.lhs.false.2.do.end_crit_edge:                 ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.2:                                        ; preds = %lor.lhs.false.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.3 = icmp eq i32 %20, 0
  br i1 %cmp7.3, label %for.inc.2.do.end_crit_edge, label %lor.lhs.false.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %21 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp10.3 = icmp eq i32 %22, 0
  %sub.3 = sub i32 1, %20
  %add.3 = add i32 %sub.3, %22
  %cond.3 = select i1 %cmp10.3, i32 0, i32 %add.3
  %23 = select i1 %cmp, i32 16, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3, i32 %23)
  %cmp18.3 = icmp ult i32 %cond.3, %23
  br i1 %cmp18.3, label %lor.lhs.false.3.do.end_crit_edge, label %for.inc.3

lor.lhs.false.3.do.end_crit_edge:                 ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.3:                                        ; preds = %lor.lhs.false.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.4 = icmp eq i32 %25, 0
  br i1 %cmp7.4, label %for.inc.3.do.end_crit_edge, label %lor.lhs.false.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %26 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.4 = icmp eq i32 %27, 0
  %sub.4 = sub i32 1, %25
  %add.4 = add i32 %sub.4, %27
  %cond.4 = select i1 %cmp10.4, i32 0, i32 %add.4
  %28 = select i1 %cmp, i32 32, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.4, i32 %28)
  %cmp18.4 = icmp ult i32 %cond.4, %28
  br i1 %cmp18.4, label %lor.lhs.false.4.do.end_crit_edge, label %for.inc.4

lor.lhs.false.4.do.end_crit_edge:                 ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.4:                                        ; preds = %lor.lhs.false.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.5 = icmp eq i32 %30, 0
  br i1 %cmp7.5, label %for.inc.4.do.end_crit_edge, label %lor.lhs.false.5

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.5:                                  ; preds = %for.inc.4
  %end.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %31 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10.5 = icmp eq i32 %32, 0
  %sub.5 = sub i32 1, %30
  %add.5 = add i32 %sub.5, %32
  %cond.5 = select i1 %cmp10.5, i32 0, i32 %add.5
  %33 = select i1 %cmp, i32 128, i32 256
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.5, i32 %33)
  %cmp18.5 = icmp ult i32 %cond.5, %33
  br i1 %cmp18.5, label %lor.lhs.false.5.do.end_crit_edge, label %for.inc.5

lor.lhs.false.5.do.end_crit_edge:                 ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.5:                                        ; preds = %lor.lhs.false.5
  %34 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.inc.5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb44
    i32 2, label %sw.bb46
  ]

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %for.inc.5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi.i) #6
  %35 = load i64, ptr @__const.vt6420_prepare_host.ppi, align 8
  %36 = ptrtoint ptr %ppi.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %ppi.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host.i) #6
  %37 = ptrtoint ptr %host.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %host.i, align 4, !annotation !129
  %38 = load i32, ptr @vt6420_hotplug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %ppi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ppi.i, align 8
  %port_ops.i = getelementptr inbounds %struct.ata_port_info, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %port_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port_ops.i, align 4
  %scr_read.i = getelementptr inbounds %struct.ata_port_operations, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %scr_read.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @svia_scr_read, ptr %scr_read.i, align 4
  %44 = load ptr, ptr %port_ops.i, align 4
  %scr_write.i = getelementptr inbounds %struct.ata_port_operations, ptr %44, i32 0, i32 28
  %45 = ptrtoint ptr %scr_write.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @svia_scr_write, ptr %scr_write.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %call.i = call i32 @ata_pci_bmdma_prepare_host(ptr noundef %pdev, ptr noundef nonnull %ppi.i, ptr noundef nonnull %host.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.vt6420_prepare_host.exit_crit_edge

if.end.i.vt6420_prepare_host.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt6420_prepare_host.exit

if.end5.i:                                        ; preds = %if.end.i
  %46 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host.i, align 4
  %call6.i = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #9
  br label %vt6420_prepare_host.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomap.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx10.i, align 4
  %ports.i = getelementptr inbounds %struct.ata_host, ptr %49, i32 0, i32 12
  %54 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ports.i, align 4
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %55, i32 0, i32 8, i32 14
  %56 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %scr_addr.i, align 8
  %57 = load ptr, ptr %iomap.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %57, i32 5
  %58 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx14.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 128
  %arrayidx17.i = getelementptr %struct.ata_host, ptr %49, i32 1, i32 0, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx17.i, align 4
  %scr_addr19.i = getelementptr inbounds %struct.ata_port, ptr %61, i32 0, i32 8, i32 14
  %62 = ptrtoint ptr %scr_addr19.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i.i, ptr %scr_addr19.i, align 8
  br label %vt6420_prepare_host.exit

vt6420_prepare_host.exit:                         ; preds = %if.end9.i, %do.end.i, %if.end.i.vt6420_prepare_host.exit_crit_edge
  %host.0 = phi ptr [ %47, %if.end9.i ], [ %47, %do.end.i ], [ null, %if.end.i.vt6420_prepare_host.exit_crit_edge ]
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ %call6.i, %do.end.i ], [ %call.i, %if.end.i.vt6420_prepare_host.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi.i) #6
  br label %sw.epilog

sw.bb44:                                          ; preds = %for.inc.5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ppi.i113) #6
  %63 = call ptr @memcpy(ptr %ppi.i113, ptr @__const.vt6421_prepare_host.ppi, i32 12)
  %dev.i114 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i115 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev.i114, ptr noundef nonnull %ppi.i113, i32 noundef 3) #6
  %tobool.not.i116 = icmp eq ptr %call.i115, null
  br i1 %tobool.not.i116, label %do.end.i117, label %if.end.i119

do.end.i117:                                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i114, ptr noundef nonnull @.str.14) #9
  br label %vt6421_prepare_host.exit

if.end.i119:                                      ; preds = %sw.bb44
  %call2.i = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 63, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i118 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i118, label %if.end9.i121, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i114, ptr noundef nonnull @.str.17, i32 noundef %call2.i) #9
  br label %vt6421_prepare_host.exit

if.end9.i121:                                     ; preds = %if.end.i119
  %call10.i = call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %iomap.i120 = getelementptr inbounds %struct.ata_host, ptr %call.i115, i32 0, i32 2
  %64 = ptrtoint ptr %iomap.i120 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call10.i, ptr %iomap.i120, align 4
  %n_ports.i = getelementptr inbounds %struct.ata_host, ptr %call.i115, i32 0, i32 3
  %65 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp28.not.i = icmp eq i32 %66, 0
  br i1 %cmp28.not.i, label %if.end9.i121.for.end.i_crit_edge, label %if.end9.i121.for.body.i_crit_edge

if.end9.i121.for.body.i_crit_edge:                ; preds = %if.end9.i121
  br label %for.body.i

if.end9.i121.for.end.i_crit_edge:                 ; preds = %if.end9.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i121.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.i121.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %call.i115, i32 0, i32 12, i32 %i.029.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 31
  %69 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host.i.i, align 4
  %iomap1.i.i = getelementptr inbounds %struct.ata_host, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %iomap1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iomap1.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 7
  %73 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port_no.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %72, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %72, i32 4
  %77 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx2.i.i, align 4
  %mul.i.i = shl i32 %74, 3
  %add.ptr.i.i122 = getelementptr i8, ptr %78, i32 %mul.i.i
  %ioaddr4.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 8
  %79 = ptrtoint ptr %ioaddr4.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %ioaddr4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %76, i32 8
  %80 = ptrtoint ptr %add.ptr5.i.i to i32
  %or.i.i = or i32 %80, 2
  %81 = inttoptr i32 %or.i.i to ptr
  %ctl_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 8, i32 12
  %82 = ptrtoint ptr %ctl_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %ctl_addr.i.i, align 4
  %altstatus_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 8, i32 11
  %83 = ptrtoint ptr %altstatus_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %81, ptr %altstatus_addr.i.i, align 4
  %bmdma_addr6.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 8, i32 13
  %84 = ptrtoint ptr %bmdma_addr6.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i.i122, ptr %bmdma_addr6.i.i, align 4
  %arrayidx7.i.i = getelementptr ptr, ptr %72, i32 5
  %85 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx7.i.i, align 4
  %mul.i.i.i = shl i32 %74, 6
  %add.ptr.i.i.i = getelementptr i8, ptr %86, i32 %mul.i.i.i
  %scr_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 8, i32 14
  %87 = ptrtoint ptr %scr_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr.i.i.i, ptr %scr_addr.i.i, align 4
  call void @ata_sff_std_ports(ptr noundef %ioaddr4.i.i) #6
  %88 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_no.i.i, align 4
  call void @ata_port_pbar_desc(ptr noundef %68, i32 noundef %89, i32 noundef -1, ptr noundef nonnull @.str.21) #6
  %90 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port_no.i.i, align 4
  %mul11.i.i = shl i32 %91, 3
  call void @ata_port_pbar_desc(ptr noundef %68, i32 noundef 4, i32 noundef %mul11.i.i, ptr noundef nonnull @.str.22) #6
  %inc.i = add nuw i32 %i.029.i, 1
  %92 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %93
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end9.i121.for.end.i_crit_edge
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev.i114, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.vt6421_prepare_host.exit_crit_edge

for.end.i.vt6421_prepare_host.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt6421_prepare_host.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev.i114, i64 noundef 4294967295) #6
  br label %vt6421_prepare_host.exit

vt6421_prepare_host.exit:                         ; preds = %if.then.i.i, %for.end.i.vt6421_prepare_host.exit_crit_edge, %do.end7.i, %do.end.i117
  %retval.0.i123 = phi i32 [ %call2.i, %do.end7.i ], [ -12, %do.end.i117 ], [ %call.i.i, %for.end.i.vt6421_prepare_host.exit_crit_edge ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ppi.i113) #6
  br label %sw.epilog

sw.bb46:                                          ; preds = %for.inc.5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi.i124) #6
  %94 = load i64, ptr @__const.vt8251_prepare_host.ppi, align 8
  %95 = ptrtoint ptr %ppi.i124 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %ppi.i124, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host.i125) #6
  %96 = ptrtoint ptr %host.i125 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %host.i125, align 4, !annotation !129
  %call.i126 = call i32 @ata_pci_bmdma_prepare_host(ptr noundef %pdev, ptr noundef nonnull %ppi.i124, ptr noundef nonnull %host.i125) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %if.end.i128, label %sw.bb46.vt8251_prepare_host.exit_crit_edge

sw.bb46.vt8251_prepare_host.exit_crit_edge:       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt8251_prepare_host.exit

if.end.i128:                                      ; preds = %sw.bb46
  %97 = ptrtoint ptr %host.i125 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %host.i125, align 4
  %call1.i = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %do.end.i130

for.cond.preheader.i:                             ; preds = %if.end.i128
  %99 = ptrtoint ptr %host.i125 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %host.i125, align 4
  %n_ports16.i = getelementptr inbounds %struct.ata_host, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %n_ports16.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %n_ports16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp17.not.i = icmp eq i32 %102, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.vt8251_prepare_host.exit_crit_edge, label %for.cond.preheader.i.for.body.i135_crit_edge

for.cond.preheader.i.for.body.i135_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i135

for.cond.preheader.i.vt8251_prepare_host.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt8251_prepare_host.exit

do.end.i130:                                      ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i129 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i129, ptr noundef nonnull @.str.8) #9
  br label %vt8251_prepare_host.exit

for.body.i135:                                    ; preds = %for.body.i135.for.body.i135_crit_edge, %for.cond.preheader.i.for.body.i135_crit_edge
  %103 = phi ptr [ %107, %for.body.i135.for.body.i135_crit_edge ], [ %100, %for.cond.preheader.i.for.body.i135_crit_edge ]
  %i.018.i = phi i32 [ %inc.i132, %for.body.i135.for.body.i135_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i135_crit_edge ]
  %arrayidx.i131 = getelementptr %struct.ata_host, ptr %103, i32 0, i32 12, i32 %i.018.i
  %104 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i131, align 4
  %call5.i = call i32 @ata_slave_link_init(ptr noundef %105) #6
  %inc.i132 = add nuw i32 %i.018.i, 1
  %106 = ptrtoint ptr %host.i125 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %host.i125, align 4
  %n_ports.i133 = getelementptr inbounds %struct.ata_host, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %n_ports.i133 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_ports.i133, align 4
  %cmp.i134 = icmp ult i32 %inc.i132, %109
  br i1 %cmp.i134, label %for.body.i135.for.body.i135_crit_edge, label %for.body.i135.vt8251_prepare_host.exit_crit_edge

for.body.i135.vt8251_prepare_host.exit_crit_edge: ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %vt8251_prepare_host.exit

for.body.i135.for.body.i135_crit_edge:            ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i135

vt8251_prepare_host.exit:                         ; preds = %for.body.i135.vt8251_prepare_host.exit_crit_edge, %do.end.i130, %for.cond.preheader.i.vt8251_prepare_host.exit_crit_edge, %sw.bb46.vt8251_prepare_host.exit_crit_edge
  %host.1 = phi ptr [ %98, %for.cond.preheader.i.vt8251_prepare_host.exit_crit_edge ], [ %98, %do.end.i130 ], [ null, %sw.bb46.vt8251_prepare_host.exit_crit_edge ], [ %98, %for.body.i135.vt8251_prepare_host.exit_crit_edge ]
  %retval.0.i136 = phi i32 [ 0, %for.cond.preheader.i.vt8251_prepare_host.exit_crit_edge ], [ %call1.i, %do.end.i130 ], [ %call.i126, %sw.bb46.vt8251_prepare_host.exit_crit_edge ], [ 0, %for.body.i135.vt8251_prepare_host.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host.i125) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi.i124) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %vt8251_prepare_host.exit, %vt6421_prepare_host.exit, %vt6420_prepare_host.exit
  %host.2 = phi ptr [ %host.1, %vt8251_prepare_host.exit ], [ %call.i115, %vt6421_prepare_host.exit ], [ %host.0, %vt6420_prepare_host.exit ]
  %rc.0 = phi i32 [ %retval.0.i136, %vt8251_prepare_host.exit ], [ %retval.0.i123, %vt6421_prepare_host.exit ], [ %retval.0.i, %vt6420_prepare_host.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool48.not = icmp eq i32 %rc.0, 0
  br i1 %tobool48.not, label %if.end50, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %sw.epilog
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i137 = call noalias ptr @devm_kmalloc(ptr noundef %dev51, i32 noundef 1, i32 noundef 3520) #6
  %tobool53.not = icmp eq ptr %call.i137, null
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host.2, i32 0, i32 5
  %110 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i137, ptr %private_data, align 4
  call fastcc void @svia_configure(ptr noundef %pdev, i32 noundef %1, ptr noundef nonnull %call.i137)
  call void @pci_set_master(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp56 = icmp eq i32 %1, 0
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false59

land.lhs.true:                                    ; preds = %if.end55
  %111 = load i32, ptr @vt6420_hotplug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool58.not = icmp ne i32 %111, 0
  %brmerge = select i1 %tobool58.not, i1 true, i1 %cmp
  br i1 %brmerge, label %land.lhs.true.if.then62_crit_edge, label %land.lhs.true.if.else64_crit_edge

land.lhs.true.if.else64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else64

land.lhs.true.if.then62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false59:                                  ; preds = %if.end55
  br i1 %cmp, label %lor.lhs.false59.if.then62_crit_edge, label %lor.lhs.false59.if.else64_crit_edge

lor.lhs.false59.if.else64_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else64

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %land.lhs.true.if.then62_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %112 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq, align 4
  %call63 = call i32 @ata_host_activate(ptr noundef %host.2, i32 noundef %113, ptr noundef nonnull @vt642x_interrupt, i32 noundef 128, ptr noundef nonnull @svia_sht) #6
  br label %cleanup

if.else64:                                        ; preds = %lor.lhs.false59.if.else64_crit_edge, %land.lhs.true.if.else64_crit_edge
  %irq65 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %114 = ptrtoint ptr %irq65 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq65, align 4
  %call66 = call i32 @ata_host_activate(ptr noundef %host.2, i32 noundef %115, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 128, ptr noundef nonnull @svia_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else64, %if.then62, %if.end50.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call63, %if.then62 ], [ %call66, %if.else64 ], [ %call, %if.end.cleanup_crit_edge ], [ %rc.0, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end50.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svia_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  %tmp8.i = alloca i8, align 1
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #6
  %6 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %tmp8.i, align 1, !annotation !129
  %call.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 82, ptr noundef nonnull %tmp8.i) #6
  %7 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp8.i, align 1
  %9 = or i8 %8, 4
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 82, i8 noundef zeroext %9) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svia_configure(ptr noundef %pdev, i32 noundef %board_id, ptr nocapture noundef writeonly %hpriv) unnamed_addr #2 align 64 {
entry:
  %tmp8.i = alloca i8, align 1
  %tmp8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #6
  %0 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp8, align 1, !annotation !129
  %call = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 60, ptr noundef nonnull %tmp8) #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %1 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp8, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and)
  %cmp = icmp eq i32 %and, 240
  %and3 = and i32 %conv, 15
  %spec.select = select i1 %cmp, i32 0, i32 %and3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %spec.select) #9
  %call4 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 64, ptr noundef nonnull %tmp8) #6
  %3 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp8, align 1
  %5 = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp7.not = icmp eq i8 %5, 3
  br i1 %cmp7.not, label %entry.if.end21_crit_edge, label %do.body9

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svia_configure.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svia_configure, %if.then13)) #6
          to label %do.end17 [label %if.then13], !srcloc !131

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmp8, align 1
  %conv15 = zext i8 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @svia_configure.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv15) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body9
  %8 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmp8, align 1
  %10 = or i8 %9, 3
  store i8 %10, ptr %tmp8, align 1
  %call20 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 64, i8 noundef zeroext %10) #6
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %entry.if.end21_crit_edge
  %call22 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 65, ptr noundef nonnull %tmp8) #6
  %11 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp8, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp25.not = icmp eq i8 %13, 3
  br i1 %cmp25.not, label %if.end21.if.end50_crit_edge, label %do.body28

if.end21.if.end50_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body28:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svia_configure.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svia_configure, %if.then40)) #6
          to label %do.end45 [label %if.then40], !srcloc !131

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp8, align 1
  %conv42 = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @svia_configure.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv42) #6
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body28
  %16 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp8, align 1
  %18 = or i8 %17, 3
  store i8 %18, ptr %tmp8, align 1
  %call49 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 65, i8 noundef zeroext %18) #6
  br label %if.end50

if.end50:                                         ; preds = %do.end45, %if.end21.if.end50_crit_edge
  %call51 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 66, ptr noundef nonnull %tmp8) #6
  %19 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %20)
  %cmp54.not = icmp ugt i8 %20, -17
  br i1 %cmp54.not, label %if.end50.if.end79_crit_edge, label %do.body57

if.end50.if.end79_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

do.body57:                                        ; preds = %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svia_configure.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svia_configure, %if.then69)) #6
          to label %do.end74 [label %if.then69], !srcloc !131

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tmp8, align 1
  %conv71 = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @svia_configure.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv71) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body57
  %23 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp8, align 1
  %25 = or i8 %24, -16
  store i8 %25, ptr %tmp8, align 1
  %call78 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 66, i8 noundef zeroext %25) #6
  br label %if.end79

if.end79:                                         ; preds = %do.end74, %if.end50.if.end79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %board_id)
  %cmp80 = icmp eq i32 %board_id, 0
  br i1 %cmp80, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end79
  %26 = load i32, ptr @vt6420_hotplug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool82.not.not = icmp eq i32 %26, 0
  br i1 %tobool82.not.not, label %land.lhs.true.if.then118_crit_edge, label %land.lhs.true.if.then85_crit_edge

land.lhs.true.if.then85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

land.lhs.true.if.then118_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

lor.lhs.false:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %board_id)
  %cmp83.old = icmp eq i32 %board_id, 1
  br i1 %cmp83.old, label %lor.lhs.false.if.then85_crit_edge, label %lor.lhs.false.if.end119_crit_edge

lor.lhs.false.if.end119_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false.if.then85_crit_edge, %land.lhs.true.if.then85_crit_edge
  %call86 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 70, ptr noundef nonnull %tmp8) #6
  %27 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tmp8, align 1
  %29 = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp89.not.not = icmp eq i8 %29, 0
  br i1 %cmp89.not.not, label %do.body92, label %if.then85.if.end115_crit_edge

if.then85.if.end115_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body92:                                        ; preds = %if.then85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svia_configure.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svia_configure, %if.then104)) #6
          to label %do.end109 [label %if.then104], !srcloc !131

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tmp8, align 1
  %conv106 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @svia_configure.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv106) #6
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body92
  %32 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tmp8, align 1
  %34 = or i8 %33, 32
  store i8 %34, ptr %tmp8, align 1
  %call113 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 70, i8 noundef zeroext %34) #6
  br label %if.end115

if.end115:                                        ; preds = %do.end109, %if.then85.if.end115_crit_edge
  br i1 %cmp80, label %if.end115.if.then118_crit_edge, label %if.end115.if.end119_crit_edge

if.end115.if.end119_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.end115.if.then118_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

if.then118:                                       ; preds = %if.end115.if.then118_crit_edge, %land.lhs.true.if.then118_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #6
  %35 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %tmp8.i, align 1, !annotation !129
  %call.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 82, ptr noundef nonnull %tmp8.i) #6
  %36 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tmp8.i, align 1
  %38 = or i8 %37, 4
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 82, i8 noundef zeroext %38) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #6
  %39 = ptrtoint ptr %hpriv to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %hpriv, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end115.if.end119_crit_edge, %lor.lhs.false.if.end119_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt642x_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ata_bmdma_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_instance) #6
  %ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %link = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 25, i32 11, i32 6
  %10 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %11, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 25, i32 11, i32 5
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %13, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 25, i32 11, i32 3
  %14 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %15, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 25, i32 11, i32 2
  %16 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %17, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  %18 = load ptr, ptr %ports, align 4
  %call14 = tail call i32 @ata_port_freeze(ptr noundef %18) #6
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %rc.0 = phi i32 [ 1, %if.then8 ], [ %call, %if.then.if.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.ata_host, ptr %dev_instance, i32 1, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  %link17 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %link17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link17, align 128
  %scr_addr.i41 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 8, i32 14
  %23 = ptrtoint ptr %scr_addr.i41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scr_addr.i41, align 8
  %add.ptr.i42 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #6, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp eq i32 %26, 0
  br i1 %tobool20.not, label %if.end.if.end29_crit_edge, label %if.then21

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx16, align 4
  %probe_mask.i43 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 25, i32 11, i32 6
  %29 = ptrtoint ptr %probe_mask.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %probe_mask.i43, align 4
  %or.i44 = or i32 %30, 3
  store i32 %or.i44, ptr %probe_mask.i43, align 4
  %flags.i45 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 25, i32 11, i32 5
  %31 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i45, align 4
  %or1.i46 = or i32 %32, 1
  store i32 %or1.i46, ptr %flags.i45, align 4
  %action.i47 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 25, i32 11, i32 3
  %33 = ptrtoint ptr %action.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %action.i47, align 4
  %or2.i48 = or i32 %34, 14
  store i32 %or2.i48, ptr %action.i47, align 4
  %err_mask.i49 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 25, i32 11, i32 2
  %35 = ptrtoint ptr %err_mask.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err_mask.i49, align 4
  %or3.i50 = or i32 %36, 16
  store i32 %or3.i50, ptr %err_mask.i49, align 4
  %37 = load ptr, ptr %arrayidx16, align 4
  %call28 = tail call i32 @ata_port_freeze(ptr noundef %37) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end.if.end29_crit_edge
  %rc.1 = phi i32 [ 1, %if.then21 ], [ %rc.0, %if.end.if.end29_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_instance, i32 noundef %call4) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %entry.if.end31_crit_edge
  %rc.2 = phi i32 [ %rc.1, %if.end29 ], [ 1, %entry.if.end31_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svia_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !132
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svia_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !135
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_prepare_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svia_noop_freeze(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sff_check_status, align 4
  %call = tail call zeroext i8 %3(ptr noundef %ap) #6
  tail call void @ata_bmdma_irq_clear(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt6420_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %pflags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pflags, align 16
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.skip_scr_crit_edge, label %if.end

entry.skip_scr_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_scr

if.end:                                           ; preds = %entry
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %5 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 196608) #6, !srcloc !135
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link, align 128
  %scr_addr.i41 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 14
  %9 = ptrtoint ptr %scr_addr.i41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scr_addr.i41, align 8
  %add.ptr.i42 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #6, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %add.neg = sub i32 -500, %2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 128
  tail call void @ata_msleep(ptr noundef %13, i32 noundef 200) #6
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 128
  %scr_addr.i43 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 14
  %16 = ptrtoint ptr %scr_addr.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scr_addr.i43, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %19 = and i32 %18, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %19)
  %cmp.not = icmp eq i32 %19, 16777216
  br i1 %cmp.not, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %20
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link, align 128
  %scr_addr.i44 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 8, i32 14
  %23 = ptrtoint ptr %scr_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scr_addr.i44, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !132
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 128
  %scr_addr.i45 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 14
  %29 = ptrtoint ptr %scr_addr.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scr_addr.i45, align 8
  %add.ptr.i46 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #6, !srcloc !132
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %and12 = and i32 %26, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 3
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %print_id, align 4
  %cond = select i1 %cmp13, ptr @.str.12, ptr @.str.13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %34, ptr noundef nonnull %cond, i32 noundef %26, i32 noundef %32) #9
  %35 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link, align 128
  %scr_addr.i47 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 8, i32 14
  %37 = ptrtoint ptr %scr_addr.i47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scr_addr.i47, align 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  br i1 %cmp13, label %do.end.skip_scr_crit_edge, label %if.then21

do.end.skip_scr_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_scr

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %action = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 12, i32 0, i32 3
  %40 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %action, align 4
  %and22 = and i32 %41, -7
  store i32 %and22, ptr %action, align 4
  br label %cleanup

skip_scr:                                         ; preds = %do.end.skip_scr_crit_edge, %entry.skip_scr_crit_edge
  %call24 = tail call i32 @ata_sff_wait_ready(ptr noundef %link, i32 noundef %deadline) #6
  br label %cleanup

cleanup:                                          ; preds = %skip_scr, %if.then21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt6420_bmdma_start(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %3)
  %cmp = icmp eq i8 %3, -96
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %4 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scsicmd, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ata_sff_pause(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @ata_bmdma_start(ptr noundef %qc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_irq_clear(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_pause(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svia_tf_load(ptr noundef %ap, ptr noundef %tf) #2 align 64 {
entry:
  %ttf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ttf) #6
  %0 = call ptr @memset(ptr %ttf, i32 255, i32 24)
  %ctl = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %1 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ctl, align 1
  %last_ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 10
  %3 = ptrtoint ptr %last_ctl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %last_ctl, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not = icmp eq i8 %2, %4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = call ptr @memcpy(ptr %ttf, ptr %tf, i32 24)
  %6 = ptrtoint ptr %ttf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ttf, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %ttf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tf.addr.0 = phi ptr [ %ttf, %if.then ], [ %tf, %entry.if.end_crit_edge ]
  call void @ata_sff_tf_load(ptr noundef %ap, ptr noundef %tf.addr.0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ttf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_tf_load(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt6421_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  %tmp8.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 14
  %10 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 327681, i32 %12)
  %cmp = icmp eq i32 %12, 327681
  br i1 %cmp, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %13 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %14) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #6
  %15 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %tmp8.i, align 1, !annotation !129
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 82, ptr noundef nonnull %tmp8.i) #6
  %16 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp8.i, align 1
  %18 = or i8 %17, 4
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 82, i8 noundef zeroext %18) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %3, align 1
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 0, i32 5
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @ata_sff_error_handler(ptr noundef %ap) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_error_handler(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt6421_pata_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %tmp1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1) #6
  %4 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp1, align 1, !annotation !129
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 179, ptr noundef nonnull %tmp1) #6
  %5 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp1, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt6421_set_pio_mode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %sub = sub i32 171, %5
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %6 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %7 to i32
  %sub1 = add nsw i32 %conv, -8
  %arrayidx = getelementptr [5 x i8], ptr @vt6421_set_pio_mode.pio_bits, i32 0, i32 %sub1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %sub, i8 noundef zeroext %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt6421_set_dma_mode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %sub = sub i32 179, %5
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %7 to i32
  %sub1 = add nsw i32 %conv, -64
  %arrayidx = getelementptr [8 x i8], ptr @vt6421_set_dma_mode.udma_bits, i32 0, i32 %sub1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %sub, i8 noundef zeroext %9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_std_ports(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_slave_link_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8251_scr_read(ptr nocapture noundef readonly %link, i32 noundef %scr, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %v = alloca i32, align 4
  %raw = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 1
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %8 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmp, align 4
  %add = add i32 %mul, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %10 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %v, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %raw) #6
  %11 = ptrtoint ptr %raw to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %raw, align 1, !annotation !129
  %12 = zext i32 %scr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %scr, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb39
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add2 = add i32 %add, 160
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add2, ptr noundef nonnull %raw) #6
  %13 = ptrtoint ptr %raw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %raw, align 1
  %15 = and i8 %14, 3
  %and = zext i8 %15 to i32
  %16 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v, align 4
  %or = or i32 %17, %and
  %18 = and i8 %14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  %storemerge.v = select i1 %tobool.not, i32 16, i32 32
  %storemerge = or i32 %or, %storemerge.v
  %19 = lshr i8 %14, 2
  %20 = and i8 %19, 3
  %and8 = zext i8 %20 to i32
  %arrayidx = getelementptr [4 x i8], ptr @vt8251_scr_read.ipm_tbl, i32 0, i32 %and8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %22 to i32
  %or10 = or i32 %storemerge, %conv9
  %23 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or10, ptr %v, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %device = getelementptr i8, ptr %5, i32 -102
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21127, i16 %25)
  %cmp.not = icmp eq i16 %25, 21127
  br i1 %cmp.not, label %sw.bb11.if.end28_crit_edge, label %do.end, !prof !136

sw.bb11.if.end28_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %do.end, %sw.bb11.if.end28_crit_edge
  %mul36 = shl i32 %add, 2
  %add37 = add i32 %mul36, 176
  %call38 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add37, ptr noundef nonnull %v) #6
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add40 = add i32 %add, 164
  %call41 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add40, ptr noundef nonnull %raw) #6
  %26 = ptrtoint ptr %raw to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %raw, align 1
  %conv42 = zext i8 %27 to i32
  %and43 = shl nuw nsw i32 %conv42, 1
  %shl = and i32 %and43, 4
  %and45 = and i32 %conv42, 1
  %28 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v, align 4
  %30 = lshr i8 %27, 2
  %31 = and i8 %30, 3
  %and50 = zext i8 %31 to i32
  %shl51 = shl nuw nsw i32 %and50, 8
  %or46 = or i32 %and45, %29
  %or47 = or i32 %or46, %shl
  %or52 = or i32 %or47, %shl51
  store i32 %or52, ptr %v, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %if.end28, %sw.bb
  %32 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %v, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raw) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8251_scr_write(ptr nocapture noundef readonly %link, i32 noundef %scr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 1
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %8 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmp, align 4
  %add = add i32 %mul, %9
  %10 = zext i32 %scr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %scr, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %device = getelementptr i8, ptr %5, i32 -102
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21127, i16 %12)
  %cmp.not = icmp eq i16 %12, 21127
  br i1 %cmp.not, label %sw.bb.if.end_crit_edge, label %do.end, !prof !136

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 259, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %mul22 = shl i32 %add, 2
  %add23 = add i32 %mul22, 176
  %call = tail call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add23, i32 noundef %val) #6
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = lshr i32 %val, 1
  %shr = and i32 %and, 2
  %and25 = and i32 %val, 1
  %or = or i32 %shr, %and25
  %13 = lshr i32 %val, 6
  %shl = and i32 %13, 12
  %or29 = or i32 %or, %shl
  %add30 = add i32 %add, 164
  %conv31 = trunc i32 %or29 to i8
  %call32 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add30, i8 noundef zeroext %conv31) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb24 ], [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !96, !98, !100, !102, !103, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__param_vt6420_hotplug, !1, !"__param_vt6420_hotplug", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_via.c", i32 66, i32 1}
!2 = !{ptr @__UNIQUE_ID_vt6420_hotplugtype290, !1, !"__UNIQUE_ID_vt6420_hotplugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vt6420_hotplug291, !4, !"__UNIQUE_ID_vt6420_hotplug291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_via.c", i32 67, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_via.c", i32 179, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_via.c", i32 180, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/ata/sata_via.c", i32 181, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version296, !13, !"__UNIQUE_ID_version296", i1 false, i1 false}
!13 = !{!"../drivers/ata/sata_via.c", i32 183, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_sata_via__301_758_svia_pci_driver_init6, !19, !"__initcall__kmod_sata_via__301_758_svia_pci_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_via.c", i32 758, i32 1}
!20 = !{ptr @__exitcall_svia_pci_driver_exit, !19, !"__exitcall_svia_pci_driver_exit", i1 false, i1 false}
!21 = !{ptr @vt6420_hotplug, !22, !"vt6420_hotplug", i1 false, i1 false}
!22 = !{!"../drivers/ata/sata_via.c", i32 65, i32 12}
!23 = !{ptr @__param_str_vt6420_hotplug, !1, !"__param_str_vt6420_hotplug", i1 false, i1 false}
!24 = !{ptr @svia_pci_driver, !25, !"svia_pci_driver", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_via.c", i32 99, i32 26}
!26 = !{ptr @svia_pci_tbl, !27, !"svia_pci_tbl", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_via.c", i32 86, i32 35}
!28 = distinct !{null, !29, !"__print_once", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_via.c", i32 685, i32 2}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_via.c", i32 699, i32 4}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @svia_init_one._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @svia_init_one._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"vt6421_bar_sizes", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_via.c", i32 422, i32 27}
!40 = distinct !{null, !41, !"svia_bar_sizes", i1 false, i1 false}
!41 = !{!"../drivers/ata/sata_via.c", i32 418, i32 27}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/sata_via.c", i32 474, i32 3}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vt6420_prepare_host._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vt6420_prepare_host._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @vt6420_port_info, !48, !"vt6420_port_info", i1 false, i1 false}
!48 = !{!"../drivers/ata/sata_via.c", i32 147, i32 35}
!49 = !{ptr @vt6420_sata_ops, !50, !"vt6420_sata_ops", i1 false, i1 false}
!50 = !{!"../drivers/ata/sata_via.c", i32 119, i32 35}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/sata_via.c", i32 360, i32 2}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vt6420_prereset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @vt6420_prereset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @svia_base_ops, !59, !"svia_base_ops", i1 false, i1 false}
!59 = !{!"../drivers/ata/sata_via.c", i32 114, i32 35}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/sata_via.c", i32 493, i32 3}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vt6421_prepare_host._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @vt6421_prepare_host._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/sata_via.c", i32 499, i32 3}
!67 = !{ptr @vt6421_prepare_host._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vt6421_prepare_host._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @vt6421_sport_info, !70, !"vt6421_sport_info", i1 false, i1 false}
!70 = !{!"../drivers/ata/sata_via.c", i32 155, i32 35}
!71 = !{ptr @vt6421_sata_ops, !72, !"vt6421_sata_ops", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_via.c", i32 133, i32 35}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/sata_via.c", i32 584, i32 4}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vt6421_error_handler._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @vt6421_error_handler._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @vt6421_pport_info, !79, !"vt6421_pport_info", i1 false, i1 false}
!79 = !{!"../drivers/ata/sata_via.c", i32 163, i32 35}
!80 = !{ptr @vt6421_pata_ops, !81, !"vt6421_pata_ops", i1 false, i1 false}
!81 = !{!"../drivers/ata/sata_via.c", i32 126, i32 35}
!82 = !{ptr @vt6421_set_pio_mode.pio_bits, !83, !"pio_bits", i1 false, i1 false}
!83 = !{!"../drivers/ata/sata_via.c", i32 405, i32 18}
!84 = !{ptr @vt6421_set_dma_mode.udma_bits, !85, !"udma_bits", i1 false, i1 false}
!85 = !{!"../drivers/ata/sata_via.c", i32 413, i32 18}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/sata_via.c", i32 452, i32 42}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/sata_via.c", i32 453, i32 45}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ata/sata_via.c", i32 524, i32 3}
!92 = !{ptr @vt8251_prepare_host._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vt8251_prepare_host._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @vt8251_port_info, !95, !"vt8251_port_info", i1 false, i1 false}
!95 = !{!"../drivers/ata/sata_via.c", i32 171, i32 35}
!96 = !{ptr @vt8251_ops, !97, !"vt8251_ops", i1 false, i1 false}
!97 = !{!"../drivers/ata/sata_via.c", i32 140, i32 35}
!98 = !{ptr @vt8251_scr_read.ipm_tbl, !99, !"ipm_tbl", i1 false, i1 false}
!99 = !{!"../drivers/ata/sata_via.c", i32 203, i32 18}
!100 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ata/sata_via.c", i32 600, i32 2}
!102 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @svia_configure._entry, !101, !"_entry", i1 false, i1 false}
!105 = !{ptr @svia_configure._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ata/sata_via.c", i32 606, i32 3}
!108 = !{ptr @svia_configure.__UNIQUE_ID_ddebug297, !107, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/sata_via.c", i32 615, i32 3}
!111 = !{ptr @svia_configure.__UNIQUE_ID_ddebug298, !110, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/sata_via.c", i32 624, i32 3}
!114 = !{ptr @svia_configure.__UNIQUE_ID_ddebug299, !113, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!115 = !{ptr @.str.30, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/ata/sata_via.c", i32 635, i32 4}
!117 = !{ptr @svia_configure.__UNIQUE_ID_ddebug300, !116, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!118 = !{ptr @svia_sht, !119, !"svia_sht", i1 false, i1 false}
!119 = !{!"../drivers/ata/sata_via.c", i32 110, i32 34}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
!131 = !{i64 2148710359, i64 2148710364, i64 2148710377, i64 2148710421, i64 2148710455, i64 2148710476}
!132 = !{i64 4999079}
!133 = !{i64 2152539428}
!134 = !{i64 2152540783}
!135 = !{i64 4998661}
!136 = !{!"branch_weights", i32 2000, i32 1}
