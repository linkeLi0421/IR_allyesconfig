; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_promise.c_pt.bc'
source_filename = "../drivers/ata/sata_promise.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
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
%struct.pdc_port_priv = type { ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_bmdma_prd = type { i32, i32 }

@__initcall__kmod_sata_promise__293_1224_pdc_ata_pci_driver_init6 = internal global ptr @pdc_ata_pci_driver_init, section ".initcall6.init", align 4
@pdc_ata_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pdc_ata_pci_tbl, ptr @pdc_ata_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pdc_ata_pci_driver_exit = internal global ptr @pdc_ata_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [32 x i8] c"sata_promise.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [69 x i8] c"sata_promise.description=Promise ATA TX2/TX4/TX4000 low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [43 x i8] c"sata_promise.file=drivers/ata/sata_promise\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [25 x i8] c"sata_promise.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version298 = internal constant [26 x i8] c"sata_promise.version=2.12\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sata_promise\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.12\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@pdc_ata_pci_tbl = internal constant { [18 x %struct.pci_device_id], [128 x i8] } { [18 x %struct.pci_device_id] [%struct.pci_device_id { i32 4186, i32 13169, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 13171, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 13173, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 13174, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 13680, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 13681, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 13684, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 13687, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 15731, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 15733, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 13080, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4186, i32 13081, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4186, i32 13589, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4186, i32 13593, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4186, i32 15639, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4186, i32 15640, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4186, i32 26153, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@pdc_port_info = internal constant { [7 x %struct.ata_port_info], [60 x i8] } { [7 x %struct.ata_port_info] [%struct.ata_port_info { i32 33554946, i32 0, i32 31, i32 7, i32 127, ptr @pdc_old_sata_ops, ptr null }, %struct.ata_port_info { i32 513, i32 0, i32 31, i32 7, i32 127, ptr @pdc_pata_ops, ptr null }, %struct.ata_port_info { i32 67109378, i32 0, i32 31, i32 7, i32 127, ptr @pdc_old_sata_ops, ptr null }, %struct.ata_port_info { i32 67109377, i32 0, i32 31, i32 7, i32 127, ptr @pdc_pata_ops, ptr null }, %struct.ata_port_info { i32 50332162, i32 0, i32 31, i32 7, i32 127, ptr @pdc_sata_ops, ptr null }, %struct.ata_port_info { i32 16777729, i32 0, i32 31, i32 7, i32 127, ptr @pdc_pata_ops, ptr null }, %struct.ata_port_info { i32 83886594, i32 0, i32 31, i32 7, i32 127, ptr @pdc_sata_ops, ptr null }], [60 x i8] zeroinitializer }, align 32
@pdc_ata_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pdc_ata_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1188, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate host\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pdc_ata_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ata/sata_promise.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pdc_ata_init_one._entry_ptr = internal global ptr @pdc_ata_init_one._entry, section ".printk_index", align 4
@pdc_ata_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&hpriv->hard_reset_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ata\00", [28 x i8] zeroinitializer }, align 32
@pdc_ata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 127, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pdc_old_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @pdc_old_sata_check_atapi_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_freeze, ptr @pdc_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_sata_ops }, [44 x i8] zeroinitializer }, align 32
@pdc_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_pata_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_freeze, ptr @pdc_thaw, ptr null, ptr @pdc_pata_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_common_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_common_ops }, [44 x i8] zeroinitializer }, align 32
@pdc_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_sata, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_sata_freeze, ptr @pdc_sata_thaw, ptr null, ptr null, ptr @pdc_sata_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_sata_scr_read, ptr @pdc_sata_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_sata_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_common_ops }, [44 x i8] zeroinitializer }, align 32
@pdc_common_ops = internal constant { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @pdc_check_atapi_dma, ptr @pdc_qc_prep, ptr @pdc_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_error_handler, ptr inttoptr (i32 -2 to ptr), ptr @pdc_post_internal_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc_tf_load_mmio, ptr null, ptr @pdc_exec_command_mmio, ptr null, ptr null, ptr null, ptr @pdc_irq_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pdc_fill_sg.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_fill_sg\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ata%u: PRD[%u] = (0x%X, 0x%X)\0A\00", [33 x i8] zeroinitializer }, align 32
@pdc_fill_sg.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pdc_fill_sg.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pdc_port_no_to_ata_no.sataii_tx4_port_remap = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\01\00\02", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hotplug_status %#x\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_status 0x%08x\00", [45 x i8] zeroinitializer }, align 32
@ata_wait_idle.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.18 = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 10, i64 40, i64 42, i64 168, i64 170, i64 173, i64 190]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"pdc_ata_pci_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 307, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1230, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"pdc_ata_pci_tbl\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 283, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"pdc_port_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 212, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"pdc_ata_init_one.__print_once\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1188, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1194, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1207, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1208, i32 52 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"pdc_ata_sht\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 161, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"pdc_old_sata_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 196, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"pdc_pata_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 203, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"pdc_sata_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 183, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"pdc_common_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 167, i32 41 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 599, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"sataii_tx4_port_remap\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 673, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 964, i32 27 }
@___asan_gen_.103 = private constant [30 x i8] c"../drivers/ata/sata_promise.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 842, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 2045, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_version298, ptr @__exitcall_pdc_ata_pci_driver_exit, ptr @__initcall__kmod_sata_promise__293_1224_pdc_ata_pci_driver_init6, ptr @__modver_attr, ptr @pdc_ata_init_one._entry, ptr @pdc_ata_init_one._entry_ptr, ptr @pdc_ata_pci_driver_exit, ptr @pdc_ata_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pdc_ata_pci_tbl, ptr @pdc_port_info, ptr @pdc_ata_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pdc_ata_init_one.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @pdc_ata_sht, ptr @pdc_old_sata_ops, ptr @pdc_pata_ops, ptr @pdc_sata_ops, ptr @pdc_common_ops, ptr @.str.11, ptr @.str.12, ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_ata_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_ata_pci_tbl to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_port_info to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_ata_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_ata_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_ata_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_ata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_old_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_common_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_ata_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pdc_ata_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pdc_ata_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @pdc_ata_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_ata_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [7 x %struct.ata_port_info], ptr @pdc_port_info, i32 0, i32 %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ppi) #8
  %2 = call ptr @memset(ptr %ppi, i32 255, i32 16)
  %.b122 = load i1, ptr @pdc_ata_init_one.__print_once, align 1
  br i1 %.b122, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pdc_ata_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull @.str.1) #8
  %3 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end3.cleanup_crit_edge [
    i32 -16, label %if.then5
    i32 0, label %if.end9
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pcim_pin_device(ptr noundef %pdev) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call10 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %arrayidx11 = getelementptr ptr, ptr %call10, i32 3
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx11, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool12.not, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9
  %i.0130 = phi i32 [ 0, %if.end9 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx16 = getelementptr [4 x ptr], ptr %ppi, i32 0, i32 %i.0130
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %arrayidx16, align 4
  %inc = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %and18 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.end.if.end32_crit_edge, label %if.then20

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then20:                                        ; preds = %for.end
  %add.ptr21 = getelementptr i8, ptr %5, i32 69
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool26.not = icmp sgt i8 %9, -1
  br i1 %tobool26.not, label %if.then27, label %if.then20.if.end32_crit_edge

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr28 = getelementptr %struct.ata_port_info, ptr %arrayidx, i32 1
  %inc29 = or i32 %spec.store.select, 1
  %arrayidx30 = getelementptr [4 x ptr], ptr %ppi, i32 0, i32 %spec.store.select
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr28, ptr %arrayidx30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then20.if.end32_crit_edge, %for.end.if.end32_crit_edge
  %n_ports.1 = phi i32 [ %spec.store.select, %for.end.if.end32_crit_edge ], [ %spec.store.select, %if.then20.if.end32_crit_edge ], [ %inc29, %if.then27 ]
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call34 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev33, ptr noundef nonnull %ppi, i32 noundef %n_ports.1) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end, label %if.end38

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev33, i32 noundef 44, i32 noundef 3520) #8
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %do.body44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body44:                                        ; preds = %if.end38
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @pdc_ata_init_one.__key, i16 noundef signext 3) #8
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call34, i32 0, i32 5
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %private_data, align 4
  %call48 = call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call34, i32 0, i32 2
  %12 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call48, ptr %iomap, align 4
  %and.i = and i32 %7, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 83886080
  %n_ports52 = getelementptr inbounds %struct.ata_host, ptr %call34, i32 0, i32 3
  %13 = ptrtoint ptr %n_ports52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_ports52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp53131.not = icmp eq i32 %14, 0
  br i1 %cmp53131.not, label %do.body44.for.end64_crit_edge, label %do.body44.for.body55_crit_edge

do.body44.for.body55_crit_edge:                   ; preds = %do.body44
  br label %for.body55

do.body44.for.end64_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

for.body55:                                       ; preds = %pdc_port_no_to_ata_no.exit.for.body55_crit_edge, %do.body44.for.body55_crit_edge
  %i.1132 = phi i32 [ %inc63, %pdc_port_no_to_ata_no.exit.for.body55_crit_edge ], [ 0, %do.body44.for.body55_crit_edge ]
  %arrayidx56 = getelementptr %struct.ata_host, ptr %call34, i32 0, i32 12, i32 %i.1132
  %15 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx56, align 4
  br i1 %cmp.i.not, label %cond.true.i, label %for.body55.pdc_port_no_to_ata_no.exit_crit_edge

for.body55.pdc_port_no_to_ata_no.exit_crit_edge:  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %pdc_port_no_to_ata_no.exit

cond.true.i:                                      ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [4 x i8], ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap, i32 0, i32 %i.1132
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i123 = zext i8 %18 to i32
  br label %pdc_port_no_to_ata_no.exit

pdc_port_no_to_ata_no.exit:                       ; preds = %cond.true.i, %for.body55.pdc_port_no_to_ata_no.exit_crit_edge
  %cond.i = phi i32 [ %conv.i123, %cond.true.i ], [ %i.1132, %for.body55.pdc_port_no_to_ata_no.exit_crit_edge ]
  %mul = shl i32 %cond.i, 7
  %add = add i32 %mul, 512
  %mul58 = shl i32 %cond.i, 8
  %add59 = add i32 %mul58, 1024
  %add.ptr60 = getelementptr i8, ptr %5, i32 %add
  %add.ptr61 = getelementptr i8, ptr %5, i32 %add59
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr60, ptr %ioaddr.i, align 32
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr60, ptr %data_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr60, i32 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %error_addr.i, align 8
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %feature_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr60, i32 8
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr4.i, ptr %nsect_addr.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %add.ptr60, i32 12
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr6.i, ptr %lbal_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr60, i32 16
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr8.i, ptr %lbam_addr.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %add.ptr60, i32 20
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 7
  %26 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr10.i, ptr %lbah_addr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %add.ptr60, i32 24
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 8
  %27 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr12.i, ptr %device_addr.i, align 32
  %add.ptr14.i = getelementptr i8, ptr %add.ptr60, i32 28
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 9
  %28 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr14.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 10
  %29 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr14.i, ptr %command_addr.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %add.ptr60, i32 56
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 12
  %30 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr17.i, ptr %ctl_addr.i, align 16
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 11
  %31 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr17.i, ptr %altstatus_addr.i, align 4
  %scr_addr21.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 14
  %32 = ptrtoint ptr %scr_addr21.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr61, ptr %scr_addr21.i, align 8
  call void @ata_port_pbar_desc(ptr noundef %16, i32 noundef 3, i32 noundef -1, ptr noundef nonnull @.str.9) #8
  call void @ata_port_pbar_desc(ptr noundef %16, i32 noundef 3, i32 noundef %add, ptr noundef nonnull @.str.10) #8
  %inc63 = add nuw i32 %i.1132, 1
  %33 = ptrtoint ptr %n_ports52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_ports52, align 4
  %cmp53 = icmp ult i32 %inc63, %34
  br i1 %cmp53, label %pdc_port_no_to_ata_no.exit.for.body55_crit_edge, label %pdc_port_no_to_ata_no.exit.for.end64_crit_edge

pdc_port_no_to_ata_no.exit.for.end64_crit_edge:   ; preds = %pdc_port_no_to_ata_no.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

pdc_port_no_to_ata_no.exit.for.body55_crit_edge:  ; preds = %pdc_port_no_to_ata_no.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

for.end64:                                        ; preds = %pdc_port_no_to_ata_no.exit.for.end64_crit_edge, %do.body44.for.end64_crit_edge
  %35 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomap, align 4
  %arrayidx.i124 = getelementptr ptr, ptr %36, i32 3
  %37 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i124, align 4
  %ports.i = getelementptr inbounds %struct.ata_host, ptr %call34, i32 0, i32 12
  %39 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ports.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %and.i125 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i126 = icmp eq i32 %and.i125, 0
  %..i = select i1 %tobool.not.i126, i32 108, i32 96
  %add.ptr.i127 = getelementptr i8, ptr %38, i32 68
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #8, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %44 = or i32 %43, 2097152
  %45 = call i32 @llvm.bswap.i32(i32 %44) #8
  %or6.i = or i32 %45, 65536
  %tmp.0.i = select i1 %tobool.not.i126, i32 %or6.i, i32 %45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %46 = call i32 @llvm.bswap.i32(i32 %tmp.0.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %46) #8, !srcloc !82
  %add.ptr11.i = getelementptr i8, ptr %38, i32 %..i
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @arm_heavy_mb() #8
  %48 = or i32 %47, -16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %48) #8, !srcloc !82
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !79
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i126, label %do.body34.i, label %do.body28.i

do.body28.i:                                      ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  %and31.i = and i32 %50, -16711681
  %51 = call i32 @llvm.bswap.i32(i32 %and31.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %51) #8, !srcloc !82
  br label %pdc_host_init.exit

do.body34.i:                                      ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  %or37.i = or i32 %50, 16711680
  %52 = call i32 @llvm.bswap.i32(i32 %or37.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %52) #8, !srcloc !82
  %add.ptr45.i = getelementptr i8, ptr %38, i32 1052
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %54 = and i32 %53, -769
  %55 = or i32 %54, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %55) #8, !srcloc !82
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @msleep(i32 noundef 10) #8
  %add.ptr63.i = getelementptr i8, ptr %38, i32 1136
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #8, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %58 = and i32 %57, 1072758783
  %59 = or i32 %58, 589824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 %59) #8, !srcloc !82
  br label %pdc_host_init.exit

pdc_host_init.exit:                               ; preds = %do.body34.i, %do.body28.i
  %call.i128 = call i32 @dma_set_mask(ptr noundef %dev33, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp.i129 = icmp eq i32 %call.i128, 0
  br i1 %cmp.i129, label %if.end69, label %pdc_host_init.exit.cleanup_crit_edge

pdc_host_init.exit.cleanup_crit_edge:             ; preds = %pdc_host_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %pdc_host_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev33, i64 noundef 4294967295) #8
  call void @pci_set_master(ptr noundef %pdev) #8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  %call70 = call i32 @ata_host_activate(ptr noundef nonnull %call34, i32 noundef %61, ptr noundef nonnull @pdc_interrupt, i32 noundef 128, ptr noundef nonnull @pdc_ata_sht) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %pdc_host_init.exit.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end, %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %if.end69 ], [ -12, %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -16, %if.then5 ], [ -12, %if.end38.cleanup_crit_edge ], [ %call.i128, %pdc_host_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ppi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_instance, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull %dev_instance) #8
  %ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %flags = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  %and9 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then6.if.end15_crit_edge, label %do.body

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %or = or i32 %9, 255
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !82
  br label %if.end15

if.end15:                                         ; preds = %do.body, %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %hotplug_status.0 = phi i32 [ %and9, %do.body ], [ 0, %if.then6.if.end15_crit_edge ], [ 0, %if.end.if.end15_crit_edge ]
  %add.ptr18 = getelementptr i8, ptr %3, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp eq i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hotplug_status.0)
  %cmp22 = icmp eq i32 %hotplug_status.0, 0
  %or.cond = select i1 %cmp, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.end15.done_irq_crit_edge, label %if.end24

if.end15.done_irq_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_irq

if.end24:                                         ; preds = %if.end15
  %12 = and i32 %11, -65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp26 = icmp eq i32 %12, 0
  %or.cond114 = select i1 %cmp26, i1 %cmp22, i1 false
  br i1 %or.cond114, label %if.end24.done_irq_crit_edge, label %do.body31

if.end24.done_irq_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_irq

do.body31:                                        ; preds = %if.end24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %12) #8, !srcloc !82
  %14 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports, align 4
  %flags37 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags37, align 4
  %and.i = and i32 %17, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 83886080
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %18 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp39122.not = icmp eq i32 %19, 0
  br i1 %cmp39122.not, label %do.body31.done_irq_crit_edge, label %do.body31.for.body_crit_edge

do.body31.for.body_crit_edge:                     ; preds = %do.body31
  br label %for.body

do.body31.done_irq_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_irq

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body31.for.body_crit_edge
  %i.0125 = phi i32 [ %inc64, %for.inc.for.body_crit_edge ], [ 0, %do.body31.for.body_crit_edge ]
  %handled.0123 = phi i32 [ %handled.2, %for.inc.for.body_crit_edge ], [ 0, %do.body31.for.body_crit_edge ]
  %arrayidx41 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.0125
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx41, align 4
  br i1 %cmp.i.not, label %cond.true.i, label %for.body.pdc_port_no_to_ata_no.exit_crit_edge

for.body.pdc_port_no_to_ata_no.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %pdc_port_no_to_ata_no.exit

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [4 x i8], ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap, i32 0, i32 %i.0125
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i115 = zext i8 %23 to i32
  br label %pdc_port_no_to_ata_no.exit

pdc_port_no_to_ata_no.exit:                       ; preds = %cond.true.i, %for.body.pdc_port_no_to_ata_no.exit_crit_edge
  %cond.i = phi i32 [ %conv.i115, %cond.true.i ], [ %i.0125, %for.body.pdc_port_no_to_ata_no.exit_crit_edge ]
  %shl = shl i32 17, %cond.i
  %and43 = and i32 %shl, %hotplug_status.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %pdc_port_no_to_ata_no.exit
  call void @__sanitizer_cov_trace_pc() #10
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #8
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25, i32 11, i32 6
  %24 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %25, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25, i32 11, i32 5
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %27, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25, i32 11, i32 3
  %28 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %29, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25, i32 11, i32 2
  %30 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %31, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.13, i32 noundef %and43) #8
  %call46 = tail call i32 @ata_port_freeze(ptr noundef %21) #8
  %inc = add i32 %handled.0123, 1
  br label %for.inc

if.end47:                                         ; preds = %pdc_port_no_to_ata_no.exit
  %shl48 = shl i32 2, %i.0125
  %and49 = and i32 %shl48, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.for.inc_crit_edge, label %if.then51

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then51:                                        ; preds = %if.end47
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 25, i32 3
  %32 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %33)
  %34 = icmp ugt i32 %33, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %21, i32 0, i32 19, i32 %33
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i116 = or i1 %34, %tobool.not11.i
  br i1 %tobool.not.i116, label %if.then51.for.inc_crit_edge, label %lor.lhs.false.i, !prof !95

if.then51.for.inc_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.then51
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %38, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.land.lhs.true55_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true55_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true55

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i117 = getelementptr %struct.ata_port, ptr %21, i32 0, i32 19, i32 %33, i32 6
  %39 = ptrtoint ptr %flags.i117 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i117, align 4
  %and.i118 = and i32 %40, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i118)
  %cmp.i119 = icmp eq i32 %and.i118, 1
  br i1 %cmp.i119, label %if.end.i.land.lhs.true55_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.land.lhs.true55_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end.i.land.lhs.true55_crit_edge, %lor.lhs.false.i.land.lhs.true55_crit_edge
  %tf = getelementptr %struct.ata_port, ptr %21, i32 0, i32 19, i32 %33, i32 4
  %41 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tf, align 4
  %and57 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true55.for.inc_crit_edge

land.lhs.true55.for.inc_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then59:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call fastcc i32 @pdc_host_intr(ptr noundef %21, ptr noundef nonnull %arrayidx.i.i)
  %add61 = add i32 %call60, %handled.0123
  br label %for.inc

for.inc:                                          ; preds = %if.then59, %land.lhs.true55.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.then51.for.inc_crit_edge, %if.end47.for.inc_crit_edge, %if.then45
  %handled.2 = phi i32 [ %inc, %if.then45 ], [ %handled.0123, %if.end47.for.inc_crit_edge ], [ %handled.0123, %land.lhs.true55.for.inc_crit_edge ], [ %add61, %if.then59 ], [ %handled.0123, %if.then51.for.inc_crit_edge ], [ %handled.0123, %if.end.i.for.inc_crit_edge ]
  %inc64 = add nuw i32 %i.0125, 1
  %43 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_ports, align 4
  %cmp39 = icmp ult i32 %inc64, %44
  br i1 %cmp39, label %for.inc.for.body_crit_edge, label %for.inc.done_irq_crit_edge

for.inc.done_irq_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %done_irq

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

done_irq:                                         ; preds = %for.inc.done_irq_crit_edge, %do.body31.done_irq_crit_edge, %if.end24.done_irq_crit_edge, %if.end15.done_irq_crit_edge
  %handled.3 = phi i32 [ 0, %if.end15.done_irq_crit_edge ], [ 0, %if.end24.done_irq_crit_edge ], [ 0, %do.body31.done_irq_crit_edge ], [ %handled.2, %for.inc.done_irq_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %dev_instance) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.3)
  %tobool66.not = icmp ne i32 %handled.3, 0
  %cond = zext i1 %tobool66.not to i32
  br label %cleanup

cleanup:                                          ; preds = %done_irq, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %done_irq ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdc_old_sata_check_atapi_dma(ptr nocapture noundef readnone %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %3 = and i32 %2, 2147221503
  %4 = or i32 %3, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !82
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %add.ptr5 = getelementptr i8, ptr %1, i32 96
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %4 = and i32 %3, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #8, !srcloc !82
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_pata_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr1 = getelementptr i8, ptr %1, i32 99
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_pata_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  tail call fastcc void @pdc_reset_port(ptr noundef %1)
  %call = tail call i32 @ata_sff_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_common_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pkt_dma = getelementptr inbounds %struct.pdc_port_priv, ptr %call.i, i32 0, i32 1
  %call.i21 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 128, ptr noundef %pkt_dma, i32 noundef 3264, i32 noundef 0) #8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i21, ptr %call.i, align 4
  %tobool8.not = icmp eq ptr %call.i21, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_reset_port(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 248
  %add.ptr1.i = getelementptr i8, ptr %5, i32 252
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then
  %i.07.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !82
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %7 = and i32 %6, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 16777216
  br i1 %cmp4.not.i, label %if.end.i, label %do.body.i.if.end_crit_edge

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #8
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %10 = or i32 %9, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !82
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end
  %i.054 = phi i32 [ 11, %if.end ], [ %dec, %if.end11.for.body_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %and8 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end11:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #8
  %or12 = or i32 %12, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or12)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !82
  %dec = add nsw i32 %i.054, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.body.for.end_crit_edge
  %tmp.1 = phi i32 [ %12, %for.body.for.end_crit_edge ], [ %or12, %if.end11.for.end_crit_edge ]
  %and16 = and i32 %tmp.1, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %and16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !82
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %call25 = tail call i32 @sata_scr_valid(ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.end.if.end31_crit_edge, label %land.lhs.true

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %for.end
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and28 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end31_crit_edge, label %if.then30

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %scr_addr.i50 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 14
  %19 = ptrtoint ptr %scr_addr.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scr_addr.i50, align 8
  %add.ptr.i51 = getelementptr i8, ptr %20, i32 216
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #8, !srcloc !79
  %22 = lshr i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 119
  %conv6.i = or i8 %24, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i51, i8 %conv6.i) #8, !srcloc !114
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i51, i8 %24) #8, !srcloc !114
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %28 = ptrtoint ptr %scr_addr.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scr_addr.i50, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 216
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %31 = lshr i32 %30, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %32 = trunc i32 %31 to i8
  %conv.i.i = or i8 %32, 12
  %add.ptr5.i.i = getelementptr i8, ptr %29, i32 217
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %conv.i.i) #8, !srcloc !114
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %34 = ptrtoint ptr %scr_addr.i50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scr_addr.i50, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %add.ptr.i53 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 -1) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %add.ptr4.i = getelementptr i8, ptr %35, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 65535) #8, !srcloc !82
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true.if.end31_crit_edge, %for.end.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_softreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdc_check_atapi_dma(ptr nocapture noundef readonly %qc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scsicmd1 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %0 = ptrtoint ptr %scsicmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsicmd1, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 -86, label %entry.sw.bb_crit_edge
    i8 42, label %entry.sw.bb_crit_edge26
    i8 10, label %entry.sw.bb_crit_edge27
    i8 -88, label %entry.sw.bb_crit_edge28
    i8 40, label %entry.sw.bb_crit_edge29
    i8 8, label %entry.sw.bb_crit_edge30
    i8 -83, label %entry.sw.bb_crit_edge31
    i8 -66, label %entry.sw.bb_crit_edge32
  ]

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %pio.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %5)
  %cmp = icmp eq i8 %5, 42
  br i1 %cmp, label %if.then, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr i8, ptr %3, i32 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %shl = shl nuw i32 %conv6, 24
  %arrayidx7 = getelementptr i8, ptr %3, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or = or i32 %shl9, %shl
  %arrayidx10 = getelementptr i8, ptr %3, i32 4
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %or13 = or i32 %or, %shl12
  %arrayidx14 = getelementptr i8, ptr %3, i32 5
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %or16 = or i32 %or13, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45151, i32 %or16)
  %cmp17 = icmp ugt i32 %or16, -45151
  %spec.select = select i1 %cmp17, i32 1, i32 %pio.0
  br label %if.end20

if.end20:                                         ; preds = %if.then, %sw.epilog.if.end20_crit_edge
  %pio.2 = phi i32 [ %spec.select, %if.then ], [ %pio.0, %sw.epilog.if.end20_crit_edge ]
  ret i32 %pio.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_qc_prep(ptr noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %entry.sw.bb1_crit_edge
    i8 9, label %sw.bb14
    i8 10, label %sw.bb15
    i8 8, label %entry.sw.bb16_crit_edge
  ]

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pdc_fill_sg(ptr noundef %qc)
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %7 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qc, align 4
  %bmdma_prd_dma = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %bmdma_prd_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bmdma_prd_dma, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %18, label %do.body.i [
    i8 2, label %sw.bb.i
    i8 0, label %sw.bb1.pdc_pkt_header.exit_crit_edge
  ]

sw.bb1.pdc_pkt_header.exit_crit_edge:             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pdc_pkt_header.exit

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tf, align 4
  %and.i = shl i32 %21, 23
  %22 = and i32 %and.i, 67108864
  %23 = xor i32 %22, 67108864
  br label %pdc_pkt_header.exit

do.body.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_promise.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

pdc_pkt_header.exit:                              ; preds = %sw.bb.i, %sw.bb1.pdc_pkt_header.exit_crit_edge
  %.sink.i = phi i32 [ %23, %sw.bb.i ], [ 134217728, %sw.bb1.pdc_pkt_header.exit_crit_edge ]
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %16, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %arrayidx7.i = getelementptr i32, ptr %16, i32 1
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %16, i32 2
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %..i = select i1 %cmp.i, i8 -96, i8 -80
  %arrayidx13.i = getelementptr i8, ptr %16, i32 12
  %28 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 54, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %16, i32 13
  %29 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %..i, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %16, i32 14
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 46, ptr %arrayidx15.i, align 1
  %ctl.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctl.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %16, i32 15
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx16.i, align 1
  %34 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tf, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %arrayidx.i37 = getelementptr i8, ptr %37, i32 16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %pdc_pkt_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 65, ptr %arrayidx.i37, align 1
  %hob_feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %hob_feature.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hob_feature.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %37, i32 17
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx2.i, align 1
  %feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %feature.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %37, i32 18
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %37, i32 19
  %45 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 66, ptr %arrayidx6.i, align 1
  %hob_nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %46 = ptrtoint ptr %hob_nsect.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hob_nsect.i, align 1
  %arrayidx8.i34 = getelementptr i8, ptr %37, i32 20
  %48 = ptrtoint ptr %arrayidx8.i34 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx8.i34, align 1
  %nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %49 = ptrtoint ptr %nsect.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nsect.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %37, i32 21
  %51 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %37, i32 22
  %52 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 67, ptr %arrayidx12.i, align 1
  %hob_lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %53 = ptrtoint ptr %hob_lbal.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hob_lbal.i, align 4
  %arrayidx14.i35 = getelementptr i8, ptr %37, i32 23
  %55 = ptrtoint ptr %arrayidx14.i35 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx14.i35, align 1
  %lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %56 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %lbal.i, align 1
  %arrayidx16.i36 = getelementptr i8, ptr %37, i32 24
  %58 = ptrtoint ptr %arrayidx16.i36 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx16.i36, align 1
  %arrayidx18.i = getelementptr i8, ptr %37, i32 25
  %59 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 68, ptr %arrayidx18.i, align 1
  %hob_lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %hob_lbam.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hob_lbam.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %37, i32 26
  %62 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx20.i, align 1
  %lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %63 = ptrtoint ptr %lbam.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %lbam.i, align 2
  %arrayidx22.i = getelementptr i8, ptr %37, i32 27
  %65 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %37, i32 28
  %66 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 69, ptr %arrayidx24.i, align 1
  %hob_lbah.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %67 = ptrtoint ptr %hob_lbah.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %hob_lbah.i, align 2
  br label %if.end

if.else:                                          ; preds = %pdc_pkt_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 33, ptr %arrayidx.i37, align 1
  %feature.i38 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %70 = ptrtoint ptr %feature.i38 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %feature.i38, align 1
  %arrayidx2.i39 = getelementptr i8, ptr %37, i32 17
  %72 = ptrtoint ptr %arrayidx2.i39 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx2.i39, align 1
  %arrayidx4.i40 = getelementptr i8, ptr %37, i32 18
  %73 = ptrtoint ptr %arrayidx4.i40 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 34, ptr %arrayidx4.i40, align 1
  %nsect.i41 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %74 = ptrtoint ptr %nsect.i41 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nsect.i41, align 4
  %arrayidx6.i42 = getelementptr i8, ptr %37, i32 19
  %76 = ptrtoint ptr %arrayidx6.i42 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx6.i42, align 1
  %arrayidx8.i43 = getelementptr i8, ptr %37, i32 20
  %77 = ptrtoint ptr %arrayidx8.i43 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 35, ptr %arrayidx8.i43, align 1
  %lbal.i44 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %78 = ptrtoint ptr %lbal.i44 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %lbal.i44, align 1
  %arrayidx10.i45 = getelementptr i8, ptr %37, i32 21
  %80 = ptrtoint ptr %arrayidx10.i45 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx10.i45, align 1
  %arrayidx12.i46 = getelementptr i8, ptr %37, i32 22
  %81 = ptrtoint ptr %arrayidx12.i46 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 36, ptr %arrayidx12.i46, align 1
  %lbam.i47 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %82 = ptrtoint ptr %lbam.i47 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %lbam.i47, align 2
  %arrayidx14.i48 = getelementptr i8, ptr %37, i32 23
  %84 = ptrtoint ptr %arrayidx14.i48 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx14.i48, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink74 = phi i32 [ 24, %if.else ], [ 29, %if.then ]
  %.sink = phi i8 [ 37, %if.else ], [ %68, %if.then ]
  %.sink73 = phi i32 [ 25, %if.else ], [ 30, %if.then ]
  %i.0 = phi i32 [ 26, %if.else ], [ 31, %if.then ]
  %arrayidx16.i49 = getelementptr i8, ptr %37, i32 %.sink74
  %85 = ptrtoint ptr %arrayidx16.i49 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink, ptr %arrayidx16.i49, align 1
  %lbah.i50 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %86 = ptrtoint ptr %lbah.i50 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %lbah.i50, align 1
  %arrayidx18.i51 = getelementptr i8, ptr %37, i32 %.sink73
  %88 = ptrtoint ptr %arrayidx18.i51 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx18.i51, align 1
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %91 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tf, align 4
  %and.i52 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i, label %if.end.pdc_pkt_footer.exit_crit_edge, label %if.then.i

if.end.pdc_pkt_footer.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pdc_pkt_footer.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %i.0, 1
  %arrayidx.i53 = getelementptr i8, ptr %90, i32 %i.0
  %93 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 38, ptr %arrayidx.i53, align 1
  %device.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %94 = ptrtoint ptr %device.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %device.i, align 4
  %inc1.i = add nuw nsw i32 %i.0, 2
  %arrayidx2.i54 = getelementptr i8, ptr %90, i32 %inc.i
  %96 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx2.i54, align 1
  br label %pdc_pkt_footer.exit

pdc_pkt_footer.exit:                              ; preds = %if.then.i, %if.end.pdc_pkt_footer.exit_crit_edge
  %i.addr.0.i = phi i32 [ %inc1.i, %if.then.i ], [ %i.0, %if.end.pdc_pkt_footer.exit_crit_edge ]
  %inc3.i = add nuw nsw i32 %i.addr.0.i, 1
  %arrayidx4.i55 = getelementptr i8, ptr %90, i32 %i.addr.0.i
  %97 = ptrtoint ptr %arrayidx4.i55 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 47, ptr %arrayidx4.i55, align 1
  %command.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %98 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %command.i, align 1
  %arrayidx6.i56 = getelementptr i8, ptr %90, i32 %inc3.i
  %100 = ptrtoint ptr %arrayidx6.i56 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx6.i56, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pdc_fill_sg(ptr noundef %qc)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pdc_fill_sg(ptr noundef %qc)
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb15, %entry.sw.bb16_crit_edge
  %101 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %qc, align 4
  %bmdma_prd_dma.i = getelementptr inbounds %struct.ata_port, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %bmdma_prd_dma.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bmdma_prd_dma.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  %cdb_len2.i = getelementptr inbounds %struct.ata_device, ptr %106, i32 0, i32 17
  %107 = ptrtoint ptr %cdb_len2.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cdb_len2.i, align 32
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %102, i32 0, i32 48
  %109 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %private_data.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %protocol, align 4
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %114, label %do.body.i60 [
    i8 10, label %sw.bb.i59
    i8 8, label %sw.bb16.sw.epilog.i_crit_edge
  ]

sw.bb16.sw.epilog.i_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i59:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tf, align 4
  %and.i58 = shl i32 %117, 23
  %118 = and i32 %and.i58, 67108864
  %119 = xor i32 %118, 67108864
  br label %sw.epilog.i

do.body.i60:                                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_promise.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #8, !srcloc !124
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb.i59, %sw.bb16.sw.epilog.i_crit_edge
  %.sink.i61 = phi i32 [ %119, %sw.bb.i59 ], [ 134217728, %sw.bb16.sw.epilog.i_crit_edge ]
  %120 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink.i61, ptr %112, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %104) #8
  %arrayidx11.i = getelementptr i32, ptr %112, i32 1
  %122 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx11.i, align 4
  %arrayidx12.i62 = getelementptr i32, ptr %112, i32 2
  %123 = ptrtoint ptr %arrayidx12.i62 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %arrayidx12.i62, align 4
  %link.i = getelementptr inbounds %struct.ata_port, ptr %102, i32 0, i32 25
  %call.i = tail call i32 @sata_scr_valid(ptr noundef %link.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %if.else15.i, label %sw.epilog.i.if.end18.i_crit_edge

sw.epilog.i.if.end18.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.else15.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %device.i63 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %124 = ptrtoint ptr %device.i63 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %device.i63, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else15.i, %sw.epilog.i.if.end18.i_crit_edge
  %dev_sel.0.i = phi i8 [ %125, %if.else15.i ], [ -32, %sw.epilog.i.if.end18.i_crit_edge ]
  %arrayidx19.i = getelementptr i8, ptr %112, i32 12
  %126 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 38, ptr %arrayidx19.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %112, i32 13
  %127 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %dev_sel.0.i, ptr %arrayidx21.i, align 1
  %arrayidx22.i64 = getelementptr i8, ptr %112, i32 14
  %128 = ptrtoint ptr %arrayidx22.i64 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 54, ptr %arrayidx22.i64, align 1
  %arrayidx24.i65 = getelementptr i8, ptr %112, i32 15
  %129 = ptrtoint ptr %arrayidx24.i65 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %dev_sel.0.i, ptr %arrayidx24.i65, align 1
  %arrayidx25.i = getelementptr i8, ptr %112, i32 16
  %130 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 34, ptr %arrayidx25.i, align 1
  %nsect.i66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %131 = ptrtoint ptr %nsect.i66 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nsect.i66, align 4
  %arrayidx27.i = getelementptr i8, ptr %112, i32 17
  %133 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx27.i, align 1
  %arrayidx28.i67 = getelementptr i8, ptr %112, i32 18
  %134 = ptrtoint ptr %arrayidx28.i67 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 35, ptr %arrayidx28.i67, align 1
  %lbal.i68 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %135 = ptrtoint ptr %lbal.i68 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %lbal.i68, align 1
  %arrayidx30.i = getelementptr i8, ptr %112, i32 19
  %137 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx30.i, align 1
  %138 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %139)
  %cmp.not.i = icmp eq i8 %139, 10
  %..i69 = zext i1 %cmp.not.i to i8
  %arrayidx38.i = getelementptr i8, ptr %112, i32 20
  %140 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 33, ptr %arrayidx38.i, align 1
  %arrayidx40.i = getelementptr i8, ptr %112, i32 21
  %141 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %..i69, ptr %arrayidx40.i, align 1
  %arrayidx41.i = getelementptr i8, ptr %112, i32 22
  %142 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 36, ptr %arrayidx41.i, align 1
  %lbam.i70 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %143 = ptrtoint ptr %lbam.i70 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %lbam.i70, align 2
  %arrayidx43.i = getelementptr i8, ptr %112, i32 23
  %145 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx43.i, align 1
  %arrayidx44.i = getelementptr i8, ptr %112, i32 24
  %146 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 37, ptr %arrayidx44.i, align 1
  %lbah.i71 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %147 = ptrtoint ptr %lbah.i71 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %lbah.i71, align 1
  %arrayidx46.i = getelementptr i8, ptr %112, i32 25
  %149 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx46.i, align 1
  %arrayidx47.i = getelementptr i8, ptr %112, i32 26
  %150 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 39, ptr %arrayidx47.i, align 1
  %command.i72 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %151 = ptrtoint ptr %command.i72 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %command.i72, align 1
  %arrayidx49.i = getelementptr i8, ptr %112, i32 27
  %153 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %arrayidx49.i, align 1
  %arrayidx50.i = getelementptr i8, ptr %112, i32 28
  %154 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 62, ptr %arrayidx50.i, align 1
  %arrayidx52.i = getelementptr i8, ptr %112, i32 29
  %155 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %dev_sel.0.i, ptr %arrayidx52.i, align 1
  %and54.i = and i32 %108, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %pdc_atapi_pkt.exit, label %do.body59.i, !prof !125

do.body59.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_promise.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 548, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

pdc_atapi_pkt.exit:                               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %cdb3.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %.tr.i = trunc i32 %108 to i8
  %156 = shl i8 %.tr.i, 4
  %157 = and i8 %156, -32
  %conv70.i = or i8 %157, 8
  %arrayidx71.i = getelementptr i8, ptr %112, i32 30
  %158 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv70.i, ptr %arrayidx71.i, align 1
  %add.ptr.i = getelementptr i8, ptr %112, i32 31
  %159 = call ptr @memcpy(ptr %add.ptr.i, ptr %cdb3.i, i32 %108)
  br label %sw.epilog

sw.epilog:                                        ; preds = %pdc_atapi_pkt.exit, %sw.bb14, %pdc_pkt_footer.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %conv = zext i8 %1 to i32
  %2 = tail call i32 @llvm.fshl.i32(i32 %conv, i32 %conv, i32 31)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb8_crit_edge
    i32 1, label %entry.sw.bb8_crit_edge13
  ]

entry.sw.bb8_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.bb1_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %8 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tf, align 4
  %and4 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %sw.bb1.sw.bb8_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1.sw.bb8_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb1.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge13
  %10 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qc, align 4
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 31
  %14 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 32
  %port_no2.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 7
  %22 = ptrtoint ptr %port_no2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_no2.i, align 4
  %24 = trunc i32 %23 to i8
  %conv.i = add i8 %24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %conv3.i = zext i8 %conv.i to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 2
  %add.ptr.i = getelementptr i8, ptr %19, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !82
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %13, align 4
  %arrayidx8.i = getelementptr i8, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %arrayidx8.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %pkt_dma.i = getelementptr inbounds %struct.pdc_port_priv, ptr %13, i32 0, i32 1
  %29 = ptrtoint ptr %pkt_dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pkt_dma.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %add.ptr15.i = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %31) #8, !srcloc !82
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  br label %return

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %sw.bb8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags, align 16
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pdc_reset_port(ptr noundef %ap)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ata_sff_error_handler(ptr noundef %ap) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_post_internal_cmd(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  tail call fastcc void @pdc_reset_port(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_tf_load_mmio(ptr noundef %ap, ptr noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 10, label %entry.do.end_crit_edge
    i8 2, label %entry.do.end_crit_edge27
  ]

entry.do.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1027, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @ata_sff_tf_load(ptr noundef %ap, ptr noundef %tf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_exec_command_mmio(ptr noundef %ap, ptr noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 10, label %entry.do.end_crit_edge
    i8 2, label %entry.do.end_crit_edge27
  ]

entry.do.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1034, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @ata_sff_exec_command(ptr noundef %ap, ptr noundef %tf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_irq_clear(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_fill_sg(ptr nocapture noundef readonly %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %bmdma_prd = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %bmdma_prd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmdma_prd, align 8
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %6 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_elem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp144.not = icmp eq i32 %7, 0
  br i1 %cmp144.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sg2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %8 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg2, align 4
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %sg.0147 = phi ptr [ %9, %for.body.lr.ph ], [ %call19, %while.end.for.body_crit_edge ]
  %si.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %while.end.for.body_crit_edge ]
  %idx.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1.lcssa, %while.end.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0147, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not140 = icmp eq i32 %11, 0
  br i1 %tobool3.not140, label %for.body.while.end_crit_edge, label %while.body.preheader

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0147, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address, align 4
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.preheader
  %idx.1143 = phi i32 [ %inc, %do.end.while.body_crit_edge ], [ %idx.0145, %while.body.preheader ]
  %sg_len.0142 = phi i32 [ %sub16, %do.end.while.body_crit_edge ], [ %11, %while.body.preheader ]
  %addr.0141 = phi i32 [ %add17, %do.end.while.body_crit_edge ], [ %13, %while.body.preheader ]
  %and4 = and i32 %addr.0141, 65535
  %add = add i32 %and4, %sg_len.0142
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp5 = icmp ugt i32 %add, 65536
  %sub = sub nuw nsw i32 65536, %and4
  %spec.select = select i1 %cmp5, i32 %sub, i32 %sg_len.0142
  %14 = tail call i32 @llvm.bswap.i32(i32 %addr.0141)
  %arrayidx = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %idx.1143
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %and9 = and i32 %spec.select, 65535
  %16 = tail call i32 @llvm.bswap.i32(i32 %and9)
  %flags_len = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %idx.1143, i32 1
  %17 = ptrtoint ptr %flags_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_fill_sg.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_fill_sg, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !133

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc_fill_sg.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.12, i32 noundef %19, i32 noundef %idx.1143, i32 noundef %addr.0141, i32 noundef %spec.select) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %while.body
  %inc = add i32 %idx.1143, 1
  %sub16 = sub i32 %sg_len.0142, %spec.select
  %add17 = add i32 %spec.select, %addr.0141
  %tobool3.not = icmp eq i32 %sub16, 0
  br i1 %tobool3.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %for.body.while.end_crit_edge
  %idx.1.lcssa = phi i32 [ %idx.0145, %for.body.while.end_crit_edge ], [ %inc, %do.end.while.end_crit_edge ]
  %inc18 = add nuw i32 %si.0146, 1
  %call19 = tail call ptr @sg_next(ptr noundef %sg.0147) #8
  %20 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_elem, align 4
  %cmp = icmp ult i32 %inc18, %21
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %idx.1.lcssa, %while.end.for.end_crit_edge ]
  %sub20 = add i32 %idx.0.lcssa, -1
  %flags_len22 = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %sub20, i32 1
  %22 = ptrtoint ptr %flags_len22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags_len22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %24)
  %cmp23 = icmp ugt i32 %24, 164
  br i1 %cmp23, label %if.then24, label %for.end.if.end75_crit_edge

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then24:                                        ; preds = %for.end
  %arrayidx21 = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %sub20
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx21, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %sub29 = add i32 %24, -164
  %28 = tail call i32 @llvm.bswap.i32(i32 %sub29)
  %29 = ptrtoint ptr %flags_len22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flags_len22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_fill_sg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_fill_sg, %if.then45)) #8
          to label %do.end50 [label %if.then45], !srcloc !133

if.then45:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %print_id46 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %print_id46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id46, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc_fill_sg.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.12, i32 noundef %31, i32 noundef %sub20, i32 noundef %27, i32 noundef 164) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %if.then24
  %sub52 = add i32 %sub29, %27
  %32 = tail call i32 @llvm.bswap.i32(i32 %sub52)
  %arrayidx53 = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %idx.0.lcssa
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx53, align 4
  %flags_len56 = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %idx.0.lcssa, i32 1
  %34 = ptrtoint ptr %flags_len56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1543503872, ptr %flags_len56, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_fill_sg.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_fill_sg, %if.then69)) #8
          to label %if.end75 [label %if.then69], !srcloc !133

if.then69:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %print_id70 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %print_id70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %print_id70, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc_fill_sg.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.12, i32 noundef %36, i32 noundef %idx.0.lcssa, i32 noundef %sub52, i32 noundef 164) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %do.end50, %for.end.if.end75_crit_edge
  %sub76.pre-phi = phi i32 [ %sub20, %for.end.if.end75_crit_edge ], [ %idx.0.lcssa, %do.end50 ], [ %idx.0.lcssa, %if.then69 ]
  %flags_len78 = getelementptr %struct.ata_bmdma_prd, ptr %3, i32 %sub76.pre-phi, i32 1
  %37 = ptrtoint ptr %flags_len78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags_len78, align 4
  %or = or i32 %38, 128
  store i32 %or, ptr %flags_len78, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_tf_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_exec_command(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_sata(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_sata_freeze(ptr noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %9, %ap
  br i1 %cmp2.not.i, label %do.end10.i, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i.i
  br i1 %exitcond.not.i, label %do.body5.i, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

do.body5.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_promise.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 690, 0\0A.popsection", ""() #8, !srcloc !134
  unreachable

do.end10.i:                                       ; preds = %land.rhs.i
  %and.i21.i = and i32 %7, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %and.i21.i)
  %cmp.i.not.i = icmp eq i32 %and.i21.i, 83886080
  br i1 %cmp.i.not.i, label %cond.true.i.i, label %do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge

do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge: ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pdc_sata_ata_port_to_ata_no.exit

cond.true.i.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr [4 x i8], ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap, i32 0, i32 %i.026.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i23.i = zext i8 %11 to i32
  br label %pdc_sata_ata_port_to_ata_no.exit

pdc_sata_ata_port_to_ata_no.exit:                 ; preds = %cond.true.i.i, %do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge
  %cond.i24.i = phi i32 [ %conv.i23.i, %cond.true.i.i ], [ %i.026.i, %do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %shl = shl i32 1114112, %cond.i24.i
  %or = or i32 %13, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !82
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 32
  %add.ptr.i = getelementptr i8, ptr %17, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %19 = and i32 %18, 2147221503
  %20 = or i32 %19, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #8, !srcloc !82
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_sata_thaw(ptr noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %9, %ap
  br i1 %cmp2.not.i, label %do.end10.i, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i.i
  br i1 %exitcond.not.i, label %do.body5.i, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

do.body5.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_promise.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 690, 0\0A.popsection", ""() #8, !srcloc !134
  unreachable

do.end10.i:                                       ; preds = %land.rhs.i
  %and.i21.i = and i32 %7, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %and.i21.i)
  %cmp.i.not.i = icmp eq i32 %and.i21.i, 83886080
  br i1 %cmp.i.not.i, label %cond.true.i.i, label %do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge

do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge: ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pdc_sata_ata_port_to_ata_no.exit

cond.true.i.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr [4 x i8], ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap, i32 0, i32 %i.026.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i23.i = zext i8 %11 to i32
  br label %pdc_sata_ata_port_to_ata_no.exit

pdc_sata_ata_port_to_ata_no.exit:                 ; preds = %cond.true.i.i, %do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge
  %cond.i24.i = phi i32 [ %conv.i23.i, %cond.true.i.i ], [ %i.026.i, %do.end10.i.pdc_sata_ata_port_to_ata_no.exit_crit_edge ]
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 32
  %add.ptr.i = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %add.ptr5.i = getelementptr i8, ptr %13, i32 96
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %16 = and i32 %15, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %16) #8, !srcloc !82
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  %add.ptr = getelementptr i8, ptr %5, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %shl = shl i32 17, %cond.i24.i
  %or = or i32 %19, %shl
  %shl4 = shl i32 1114112, %cond.i24.i
  %neg = xor i32 %shl4, -1
  %and = and i32 %or, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #8, !srcloc !82
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_sata_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 248
  %add.ptr1.i = getelementptr i8, ptr %5, i32 252
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then
  %i.07.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !82
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %7 = and i32 %6, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 16777216
  br i1 %cmp4.not.i, label %if.end.i, label %do.body.i.if.end_crit_edge

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #8
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 31
  %11 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr1.i8 = getelementptr i8, ptr %16, i32 73
  %ioaddr.i.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8
  %17 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i.i, align 32
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 -512, %sub.ptr.rhs.cast.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  %div.i.i = sdiv i32 %sub.i.i, 128
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %20) #8
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i8) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %shl.i = shl i32 16, %div.i.i
  %22 = trunc i32 %shl.i to i8
  %23 = xor i8 %22, -1
  %conv6.i = and i8 %21, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i8, i8 %conv6.i) #8, !srcloc !114
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i8) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #8
  %conv14.i = or i8 %21, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i8, i8 %conv14.i) #8, !srcloc !114
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i8) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock(ptr noundef %20) #8
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 128
  tail call fastcc void @pdc_reset_port(ptr noundef %28)
  %call = tail call i32 @sata_std_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_sata_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_sata_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 14
  %3 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !82
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_sata_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %dev1.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %call.i = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #8
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %pkt_dma.i = getelementptr inbounds %struct.pdc_port_priv, ptr %call.i.i, i32 0, i32 1
  %call.i21.i = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 128, ptr noundef %pkt_dma.i, i32 noundef 3264, i32 noundef 0) #8
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i21.i, ptr %call.i.i, align 4
  %tobool8.not.i = icmp eq ptr %call.i21.i, null
  br i1 %tobool8.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end5.i
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %private_data.i, align 4
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 14
  %8 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scr_addr, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %11 = and i32 %10, -50331649
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #8, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end5.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_host_intr(ptr noundef %ap, ptr noundef %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 32
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 16254720, i32 7894784
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %and4 = and i32 %., %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then8, !prof !125

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pdc_error_intr(ptr noundef %ap, ptr noundef %qc, i32 noundef %5, i32 noundef %.)
  br label %cleanup

if.end9:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  %conv = zext i8 %7 to i32
  %8 = tail call i32 @llvm.fshl.i32(i32 %conv, i32 %conv, i32 31)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %8, label %sw.default [
    i32 1, label %if.end9.sw.bb_crit_edge
    i32 0, label %if.end9.sw.bb_crit_edge30
    i32 5, label %if.end9.sw.bb_crit_edge31
    i32 4, label %if.end9.sw.bb_crit_edge32
  ]

if.end9.sw.bb_crit_edge32:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge31:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge30:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge30, %if.end9.sw.bb_crit_edge31, %if.end9.sw.bb_crit_edge32
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %sw.bb
  %max.addr.0.i.i = phi i32 [ 1000, %sw.bb ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #8
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %14(ptr noundef %ap) #8
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %15 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %ata_sff_busy_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

ata_sff_busy_wait.exit.i:                         ; preds = %do.body.i.i
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge: ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ata_wait_idle.exit

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_host_intr, %if.then7.i)) #8
          to label %ata_wait_idle.exit [label %if.then7.i], !srcloc !133

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %16 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.17, i32 noundef %17, i32 noundef %conv.i) #8
  br label %ata_wait_idle.exit

ata_wait_idle.exit:                               ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge
  %and2.i = and i32 %conv.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %..i = zext i1 %tobool3.not.i to i32
  %retval.0.i = select i1 %tobool.not.i, i32 %..i, i32 2
  %err_mask12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %18 = ptrtoint ptr %err_mask12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err_mask12, align 4
  %or = or i32 %19, %retval.0.i
  store i32 %or, ptr %err_mask12, align 4
  tail call void @ata_qc_complete(ptr noundef %qc) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %idle_irq = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 30, i32 1
  %20 = ptrtoint ptr %idle_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idle_irq, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %idle_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %ata_wait_idle.exit, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %sw.default ], [ 1, %ata_wait_idle.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_error_intr(ptr noundef %ap, ptr nocapture noundef %qc, i32 noundef %port_status, i32 noundef %err_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #8
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.14, i32 noundef %port_status) #8
  %call = tail call i32 @sata_scr_valid(ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %entry.if.end24_crit_edge, label %if.then19

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !79
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %serror22 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 1
  %6 = ptrtoint ptr %serror22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %serror22, align 4
  %or23 = or i32 %7, %5
  store i32 %or23, ptr %serror22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %entry.if.end24_crit_edge
  %and = and i32 %err_mask, %port_status
  %and12 = and i32 %and, 12588800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and7 = and i32 %and, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and2 = and i32 %and, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and1 = lshr i32 %and, 21
  %and1.lobit = and i32 %and1, 1
  %or5 = or i32 %and1.lobit, 256
  %ac_err_mask.1 = select i1 %tobool3.not, i32 %and1.lobit, i32 %or5
  %or10 = or i32 %ac_err_mask.1, 16
  %ac_err_mask.2 = select i1 %tobool8.not, i32 %ac_err_mask.1, i32 %or10
  %or15 = or i32 %ac_err_mask.2, 32
  %ac_err_mask.3 = select i1 %tobool13.not, i32 %ac_err_mask.2, i32 %or15
  %err_mask25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %8 = ptrtoint ptr %err_mask25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err_mask25, align 4
  %or26 = or i32 %9, %ac_err_mask.3
  store i32 %or26, ptr %err_mask25, align 4
  tail call fastcc void @pdc_reset_port(ptr noundef %ap)
  %call27 = tail call i32 @ata_port_abort(ptr noundef %ap) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_sata_promise__293_1224_pdc_ata_pci_driver_init6, !1, !"__initcall__kmod_sata_promise__293_1224_pdc_ata_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_promise.c", i32 1224, i32 1}
!2 = !{ptr @__exitcall_pdc_ata_pci_driver_exit, !1, !"__exitcall_pdc_ata_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_promise.c", i32 1226, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_promise.c", i32 1227, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_promise.c", i32 1228, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version298, !11, !"__UNIQUE_ID_version298", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_promise.c", i32 1230, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @pdc_ata_pci_driver, !17, !"pdc_ata_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_promise.c", i32 307, i32 26}
!18 = !{ptr @pdc_ata_pci_tbl, !19, !"pdc_ata_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_promise.c", i32 283, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_promise.c", i32 1159, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_promise.c", i32 1188, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pdc_ata_init_one._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pdc_ata_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @pdc_ata_init_one.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_promise.c", i32 1194, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ata/sata_promise.c", i32 1207, i32 44}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ata/sata_promise.c", i32 1208, i32 52}
!37 = !{ptr @pdc_port_info, !38, !"pdc_port_info", i1 false, i1 false}
!38 = !{!"../drivers/ata/sata_promise.c", i32 212, i32 35}
!39 = !{ptr @pdc_old_sata_ops, !40, !"pdc_old_sata_ops", i1 false, i1 false}
!40 = !{!"../drivers/ata/sata_promise.c", i32 196, i32 35}
!41 = !{ptr @pdc_pata_ops, !42, !"pdc_pata_ops", i1 false, i1 false}
!42 = !{!"../drivers/ata/sata_promise.c", i32 203, i32 35}
!43 = !{ptr @pdc_common_ops, !44, !"pdc_common_ops", i1 false, i1 false}
!44 = !{!"../drivers/ata/sata_promise.c", i32 167, i32 41}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ata/sata_promise.c", i32 599, i32 4}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pdc_fill_sg.__UNIQUE_ID_ddebug290, !46, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!49 = !{ptr @pdc_fill_sg.__UNIQUE_ID_ddebug291, !50, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!50 = !{!"../drivers/ata/sata_promise.c", i32 615, i32 3}
!51 = !{ptr @pdc_fill_sg.__UNIQUE_ID_ddebug292, !52, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!52 = !{!"../drivers/ata/sata_promise.c", i32 622, i32 3}
!53 = !{ptr @pdc_sata_ops, !54, !"pdc_sata_ops", i1 false, i1 false}
!54 = !{!"../drivers/ata/sata_promise.c", i32 183, i32 35}
!55 = !{ptr @pdc_port_no_to_ata_no.sataii_tx4_port_remap, !56, !"sataii_tx4_port_remap", i1 false, i1 false}
!56 = !{!"../drivers/ata/sata_promise.c", i32 673, i32 29}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_promise.c", i32 964, i32 27}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/sata_promise.c", i32 842, i32 25}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, !62, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @pdc_ata_sht, !67, !"pdc_ata_sht", i1 false, i1 false}
!67 = !{!"../drivers/ata/sata_promise.c", i32 161, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 5011894}
!78 = !{i64 2155822904}
!79 = !{i64 5012114}
!80 = !{i64 2155817303}
!81 = !{i64 2155817525}
!82 = !{i64 5011696}
!83 = !{i64 2155818230}
!84 = !{i64 2155818460}
!85 = !{i64 2155819187}
!86 = !{i64 2155820607}
!87 = !{i64 2155820828}
!88 = !{i64 2155821524}
!89 = !{i64 2155822038}
!90 = !{i64 2155822259}
!91 = !{i64 2155812091}
!92 = !{i64 2155812332}
!93 = !{i64 2155813096}
!94 = !{i64 2155813321}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2155802935}
!97 = !{i64 2155803154}
!98 = !{i64 2155803840}
!99 = !{i64 2155805841}
!100 = !{i64 2155806347}
!101 = !{i64 2155806566}
!102 = !{i64 2155807252}
!103 = !{i64 2155787108}
!104 = !{i64 2155781541}
!105 = !{i64 2155782271}
!106 = !{i64 2155784185}
!107 = !{i64 2155784398}
!108 = !{i64 2155785054}
!109 = !{i64 2155785815}
!110 = !{i64 2155786202}
!111 = !{i64 2155786858}
!112 = !{i64 2155779116}
!113 = !{i64 2155779342}
!114 = !{i64 5011499}
!115 = !{i64 2155779941}
!116 = !{i64 2155780715}
!117 = !{i64 2155781314}
!118 = !{i64 2155778009}
!119 = !{i64 2155778244}
!120 = !{i64 2155778582}
!121 = !{i64 2155783049}
!122 = !{i64 2155783491}
!123 = !{i64 2155770773, i64 2155771263, i64 2155770810, i64 2155770866, i64 2155770900, i64 2155770924, i64 2155770965, i64 2155770986, i64 2155771014, i64 2155771048}
!124 = !{i64 2155788605, i64 2155789096, i64 2155788642, i64 2155788698, i64 2155788732, i64 2155788756, i64 2155788797, i64 2155788818, i64 2155788846, i64 2155788880}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2155790317, i64 2155790808, i64 2155790354, i64 2155790410, i64 2155790444, i64 2155790468, i64 2155790509, i64 2155790530, i64 2155790558, i64 2155790592}
!127 = !{i64 2155813773}
!128 = !{i64 2155814475}
!129 = !{i64 2155814623}
!130 = !{i64 2155814853}
!131 = !{i64 2155815578}
!132 = !{i64 2155811569}
!133 = !{i64 2148723394, i64 2148723399, i64 2148723412, i64 2148723456, i64 2148723490, i64 2148723511}
!134 = !{i64 2155801178, i64 2155801669, i64 2155801215, i64 2155801271, i64 2155801305, i64 2155801329, i64 2155801370, i64 2155801391, i64 2155801419, i64 2155801453}
!135 = !{i64 2155804362}
!136 = !{i64 2155804596}
!137 = !{i64 2155805335}
!138 = !{i64 2155807774}
!139 = !{i64 2155808008}
!140 = !{i64 2155808747}
!141 = !{i64 2155808973}
!142 = !{i64 2155809184}
!143 = !{i64 2155809460}
!144 = !{i64 2155810219}
!145 = !{i64 2155810495}
!146 = !{i64 2155787689}
!147 = !{i64 2155787929}
!148 = !{i64 2155777072}
!149 = !{i64 2155777293}
!150 = !{i64 2155811013}
