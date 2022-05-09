; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_it821x.c_pt.bc'
source_filename = "../drivers/ata/pata_it821x.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.it821x_dev = type { i8, i8, [2 x [2 x i8]], [2 x i16], [2 x i16], [2 x i16], i16 }

@__initcall__kmod_pata_it821x__290_978_it821x_pci_driver_init6 = internal global ptr @it821x_pci_driver_init, section ".initcall6.init", align 4
@it821x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @it821x, ptr @it821x_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @it821x_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_it821x_pci_driver_exit = internal global ptr @it821x_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [28 x i8] c"pata_it821x.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [83 x i8] c"pata_it821x.description=low-level driver for the IT8211/IT8212 IDE RAID controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [41 x i8] c"pata_it821x.file=drivers/ata/pata_it821x\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"pata_it821x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [26 x i8] c"pata_it821x.version=0.4.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_it821x\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_noraid = internal constant [19 x i8] c"pata_it821x.noraid\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@it8212_noraid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_noraid = internal constant %struct.kernel_param { ptr @__param_str_noraid, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @it8212_noraid } }, section "__param", align 4
@__UNIQUE_ID_noraidtype296 = internal constant [32 x i8] c"pata_it821x.parmtype=noraid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_noraid297 = internal constant [52 x i8] c"pata_it821x.parm=noraid:Force card into bypass mode\00", section ".modinfo", align 1
@it821x = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4739, i32 33297, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4739, i32 33298, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6131, i32 4112, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@it821x_init_one.info_smart = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @it821x_smart_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@it821x_smart_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @it821x_check_atapi_dma, ptr null, ptr @it821x_smart_qc_issue, ptr null, ptr @ata_cable_80wire, ptr null, ptr null, ptr null, ptr @it821x_smart_set_mode, ptr @it821x_read_id, ptr @it821x_dev_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it821x_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@it821x_init_one.info_passthru = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @it821x_passthru_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@it821x_passthru_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @it821x_check_atapi_dma, ptr null, ptr @it821x_passthru_qc_issue, ptr null, ptr @ata_cable_unknown, ptr null, ptr @it821x_passthru_set_piomode, ptr @it821x_passthru_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it821x_port_start, ptr null, ptr null, ptr @it821x_passthru_dev_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it821x_passthru_bmdma_start, ptr @it821x_passthru_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@it821x_init_one.info_rdc = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @it821x_rdc_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@it821x_rdc_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @it821x_check_atapi_dma, ptr null, ptr @it821x_passthru_qc_issue, ptr null, ptr @it821x_rdc_cable, ptr null, ptr @it821x_passthru_set_piomode, ptr @it821x_passthru_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it821x_port_start, ptr null, ptr null, ptr @it821x_passthru_dev_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it821x_passthru_bmdma_start, ptr @it821x_passthru_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@it821x_init_one.info_rdc_11 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @it821x_rdc_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@it821x_init_one.mode = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pass through\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smart\00", [26 x i8] zeroinitializer }, align 32
@it821x_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 926, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"forcing bypass mode.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"it821x_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_it821x.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@it821x_init_one._entry_ptr = internal global ptr @it821x_init_one._entry, section ".printk_index", align 4
@it821x_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 932, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"controller in %s mode.\0A\00", [40 x i8] zeroinitializer }, align 32
@it821x_init_one._entry_ptr.12 = internal global ptr @it821x_init_one._entry.10, section ".printk_index", align 4
@it821x_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@it821x_smart_qc_issue.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.7, ptr @.str.14, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"it821x_smart_qc_issue\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ata%u.%02u: it821x: can't process command 0x%02X\0A\00", [46 x i8] zeroinitializer }, align 32
@it821x_smart_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ata%u.%02u: configured for DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"it821x_smart_set_mode\00", [42 x i8] zeroinitializer }, align 32
@it821x_smart_set_mode._entry_ptr = internal global ptr @it821x_smart_set_mode._entry, section ".printk_index", align 4
@it821x_smart_set_mode._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.7, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ata%u.%02u: configured for PIO\0A\00", [62 x i8] zeroinitializer }, align 32
@it821x_smart_set_mode._entry_ptr.19 = internal global ptr @it821x_smart_set_mode._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Integrated Technology Express\00", [34 x i8] zeroinitializer }, align 32
@it821x_dev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ata%u.%02u: %sRAID%d volume\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"it821x_dev_config\00", [46 x i8] zeroinitializer }, align 32
@it821x_dev_config._entry_ptr = internal global ptr @it821x_dev_config._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bootable \00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@it821x_dev_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.7, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ata%u.%02u: %sRAID%d volume (%dK stripe)\0A\00", [52 x i8] zeroinitializer }, align 32
@it821x_dev_config._entry_ptr.27 = internal global ptr @it821x_dev_config._entry.25, section ".printk_index", align 4
@it821x_port_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 778, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Revision 0x10, workarounds activated.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"it821x_port_start\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@it821x_port_start._entry_ptr = internal global ptr @it821x_port_start._entry, section ".printk_index", align 4
@it821x_probe_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ata%u: pata_it821x: Firmware %02X/%02X/%02X%02X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"it821x_probe_firmware\00", [42 x i8] zeroinitializer }, align 32
@it821x_probe_firmware._entry_ptr = internal global ptr @it821x_probe_firmware._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@it821x_firmware_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013ata%u: %s: rejected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"it821x_firmware_command\00", [40 x i8] zeroinitializer }, align 32
@it821x_firmware_command._entry_ptr = internal global ptr @it821x_firmware_command._entry, section ".printk_index", align 4
@it821x_firmware_command._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.7, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013ata%u: %s: timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@it821x_firmware_command._entry_ptr.37 = internal global ptr @it821x_firmware_command._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ata_wait_idle.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.39, ptr @.str.40, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(40 wire cable)\00", [16 x i8] zeroinitializer }, align 32
@it821x_display_disk.types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID0\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID1\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RAID 0+1\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JBOD\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISK\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MWDMA\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%5s%d\00", [26 x i8] zeroinitializer }, align 32
@it821x_display_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.7, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ata%u: %d: %-6s %-8s          %s %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"it821x_display_disk\00", [44 x i8] zeroinitializer }, align 32
@it821x_display_disk._entry_ptr = internal global ptr @it821x_display_disk._entry, section ".printk_index", align 4
@it821x_display_disk._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.7, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ata%u: %d: %-6s %-8s Volume: %1d %s %s\0A\00", [54 x i8] zeroinitializer }, align 32
@it821x_display_disk._entry_ptr.55 = internal global ptr @it821x_display_disk._entry.53, section ".printk_index", align 4
@it821x_display_disk._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.7, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ata%u: %d: Rebuilding: %d%%\0A\00", [33 x i8] zeroinitializer }, align 32
@it821x_display_disk._entry_ptr.58 = internal global ptr @it821x_display_disk._entry.56, section ".printk_index", align 4
@it821x_passthru_set_piomode.pio = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 -21880, i16 -23678, i16 -24191, i16 13106, i16 12577], [22 x i8] zeroinitializer }, align 32
@it821x_passthru_set_piomode.pio_want = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\00\00\02", [27 x i8] zeroinitializer }, align 32
@it821x_passthru_set_dmamode.dma = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -30618, i16 12834, i16 12577], [26 x i8] zeroinitializer }, align 32
@it821x_passthru_set_dmamode.mwdma_want = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\00\02", [29 x i8] zeroinitializer }, align 32
@it821x_passthru_set_dmamode.udma = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 17459, i16 16945, i16 12577, i16 8481, i16 4369, i16 8721, i16 4369], [18 x i8] zeroinitializer }, align 32
@it821x_passthru_set_dmamode.udma_want = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\02\01\02\00\00\01\00", [25 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 32, i64 36, i64 37, i64 41, i64 48, i64 52, i64 53, i64 57, i64 145, i64 196, i64 197, i64 200, i64 202, i64 236, i64 239, i64 252]
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"it821x_pci_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 967, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 984, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"it8212_noraid\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 113, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"it821x\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 959, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"info_smart\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 880, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"it821x_smart_port_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 807, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"info_passthru\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 887, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"it821x_passthru_port_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 821, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"info_rdc\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 894, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"it821x_rdc_port_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 837, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"info_rdc_11\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 901, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 910, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 910, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 910, i32 49 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 926, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 932, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [11 x i8] c"it821x_sht\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 803, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 434, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 476, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 481, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 555, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 512, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 516, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 777, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 715, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 682, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 692, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 2045, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 612, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 614, i32 21 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 615, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 615, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 615, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 615, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 615, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 625, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 628, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 635, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 639, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 642, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 645, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 258, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant [9 x i8] c"pio_want\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 259, i32 18 }
@___asan_gen_.281 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 287, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant [11 x i8] c"mwdma_want\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 288, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant [5 x i8] c"udma\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 289, i32 19 }
@___asan_gen_.290 = private unnamed_addr constant [10 x i8] c"udma_want\00", align 1
@___asan_gen_.291 = private constant [29 x i8] c"../drivers/ata/pata_it821x.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 290, i32 18 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_noraid297, ptr @__UNIQUE_ID_noraidtype296, ptr @__UNIQUE_ID_version295, ptr @__exitcall_it821x_pci_driver_exit, ptr @__initcall__kmod_pata_it821x__290_978_it821x_pci_driver_init6, ptr @__modver_attr, ptr @__param_noraid, ptr @it821x_dev_config._entry, ptr @it821x_dev_config._entry.25, ptr @it821x_dev_config._entry_ptr, ptr @it821x_dev_config._entry_ptr.27, ptr @it821x_display_disk._entry, ptr @it821x_display_disk._entry.53, ptr @it821x_display_disk._entry.56, ptr @it821x_display_disk._entry_ptr, ptr @it821x_display_disk._entry_ptr.55, ptr @it821x_display_disk._entry_ptr.58, ptr @it821x_firmware_command._entry, ptr @it821x_firmware_command._entry.35, ptr @it821x_firmware_command._entry_ptr, ptr @it821x_firmware_command._entry_ptr.37, ptr @it821x_init_one._entry, ptr @it821x_init_one._entry.10, ptr @it821x_init_one._entry_ptr, ptr @it821x_init_one._entry_ptr.12, ptr @it821x_pci_driver_exit, ptr @it821x_port_start._entry, ptr @it821x_port_start._entry_ptr, ptr @it821x_probe_firmware._entry, ptr @it821x_probe_firmware._entry_ptr, ptr @it821x_smart_set_mode._entry, ptr @it821x_smart_set_mode._entry.17, ptr @it821x_smart_set_mode._entry_ptr, ptr @it821x_smart_set_mode._entry_ptr.19, ptr @it821x_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @it8212_noraid, ptr @it821x, ptr @it821x_init_one.info_smart, ptr @it821x_smart_port_ops, ptr @it821x_init_one.info_passthru, ptr @it821x_passthru_port_ops, ptr @it821x_init_one.info_rdc, ptr @it821x_rdc_port_ops, ptr @it821x_init_one.info_rdc_11, ptr @it821x_init_one.mode, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @it821x_sht, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @it821x_display_disk.types, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @it821x_passthru_set_piomode.pio, ptr @it821x_passthru_set_piomode.pio_want, ptr @it821x_passthru_set_dmamode.dma, ptr @it821x_passthru_set_dmamode.mwdma_want, ptr @it821x_passthru_set_dmamode.udma, ptr @it821x_passthru_set_dmamode.udma_want], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8212_noraid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one.info_smart to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_smart_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one.info_passthru to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one.info_rdc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_rdc_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one.info_rdc_11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one.mode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_smart_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_smart_set_mode._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_dev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_dev_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_port_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_probe_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_firmware_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_firmware_command._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_display_disk.types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_display_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_display_disk._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_display_disk._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_set_piomode.pio to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_set_piomode.pio_want to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_set_dmamode.dma to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_set_dmamode.mwdma_want to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_set_dmamode.udma to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it821x_passthru_set_dmamode.udma_want to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @it821x_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @it821x_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @it821x_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %conf = alloca i8, align 1
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conf) #10
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %conf, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #10
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %ppi, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6131, i16 %3)
  %cmp = icmp eq i16 %3, 6131
  br i1 %cmp, label %if.then2, label %if.else9

if.then2:                                         ; preds = %if.end
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %5)
  %cmp4 = icmp eq i8 %5, 17
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @it821x_init_one.info_rdc_11, ptr %ppi, align 8
  br label %if.end29

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @it821x_init_one.info_rdc, ptr %ppi, align 8
  br label %if.end29

if.else9:                                         ; preds = %if.end
  %8 = load i32, ptr @it8212_noraid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.else9.if.end12_crit_edge, label %do.end

if.else9.if.end12_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  tail call fastcc void @it821x_disable_raid(ptr noundef %pdev)
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.else9.if.end12_crit_edge
  %call13 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %conf) #10
  %9 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %conf, align 1
  %11 = and i8 %10, 1
  store i8 %11, ptr %conf, align 1
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %idxprom = zext i8 %11 to i32
  %arrayidx20 = getelementptr [2 x ptr], ptr @it821x_init_one.mode, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx20, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.11, ptr noundef %13) #13
  %14 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %conf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp22 = icmp eq i8 %15, 0
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @it821x_init_one.info_passthru, ptr %ppi, align 8
  br label %if.end29

if.else26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @it821x_init_one.info_smart, ptr %ppi, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24, %if.else, %if.then6
  %call30 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @it821x_sht, ptr noundef null, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @it8212_noraid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @it821x_disable_raid(ptr noundef %pdev)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it821x_disable_raid(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4739, i16 %1)
  %cmp.not = icmp eq i16 %1, 4739
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32238, i16 %3)
  %cmp3.not = icmp eq i16 %3, -32238
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 94, i8 noundef zeroext 1) #10
  %call5 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 80, i8 noundef zeroext 0) #10
  %call6 = tail call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext 71) #10
  %call7 = tail call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 64, i16 noundef zeroext -24333) #10
  %call8 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 76, i32 noundef 33817092) #10
  %call9 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 66, i8 noundef zeroext 54) #10
  %call10 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext 32) #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @it821x_check_atapi_dma(ptr nocapture noundef readonly %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 13
  %0 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes.i, align 4
  %extrabytes.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 14
  %2 = ptrtoint ptr %extrabytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extrabytes.i, align 4
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %cmp = icmp ult i32 %4, 2048
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 48
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  %. = select i1 %tobool7.not, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_smart_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.body [
    i8 -56, label %entry.sw.bb_crit_edge
    i8 37, label %entry.sw.bb_crit_edge16
    i8 -54, label %entry.sw.bb_crit_edge17
    i8 53, label %entry.sw.bb_crit_edge18
    i8 32, label %entry.sw.bb_crit_edge19
    i8 36, label %entry.sw.bb_crit_edge20
    i8 48, label %entry.sw.bb_crit_edge21
    i8 52, label %entry.sw.bb_crit_edge22
    i8 -60, label %entry.sw.bb_crit_edge23
    i8 41, label %entry.sw.bb_crit_edge24
    i8 -59, label %entry.sw.bb_crit_edge25
    i8 57, label %entry.sw.bb_crit_edge26
    i8 -20, label %entry.sw.bb_crit_edge27
    i8 -111, label %entry.sw.bb_crit_edge28
    i8 -4, label %entry.sw.bb_crit_edge29
    i8 -17, label %entry.sw.bb_crit_edge30
  ]

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30
  %call = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @it821x_smart_qc_issue.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it821x_smart_qc_issue, %if.then)) #10
          to label %return [label %if.then], !srcloc !170

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno, align 4
  %add = add i32 %14, %12
  %15 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %command, align 1
  %conv9 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @it821x_smart_qc_issue.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef %add, i32 noundef %conv9) #10
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ 1, %if.then ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_80wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_smart_set_mode(ptr noundef %link, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 0) #10
  %tobool.not39 = icmp eq ptr %call, null
  br i1 %tobool.not39, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.040 = phi ptr [ %call21, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %pio_mode, align 16
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 12
  %1 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %dma_mode, align 1
  %2 = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 25
  %arrayidx = getelementptr [256 x i16], ptr %2, i32 0, i32 49
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %5 = and i16 %4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  %6 = ptrtoint ptr %dev.040 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.040, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %print_id12 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %print_id12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id12, align 4
  %pmp14 = getelementptr inbounds %struct.ata_link, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %pmp14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmp14, align 4
  %devno15 = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 1
  %14 = ptrtoint ptr %devno15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devno15, align 4
  %add16 = add i32 %15, %13
  br i1 %tobool1.not, label %do.end8, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %11, i32 noundef %add16) #13
  %xfer_mode = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 13
  %16 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 32, ptr %xfer_mode, align 2
  %xfer_shift = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 14
  %17 = ptrtoint ptr %xfer_shift to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %xfer_shift, align 4
  %flags = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and5 = and i32 %19, -4097
  store i32 %and5, ptr %flags, align 4
  br label %for.inc

do.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %add16) #13
  %xfer_mode18 = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 13
  %20 = ptrtoint ptr %xfer_mode18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %xfer_mode18, align 2
  %xfer_shift19 = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 14
  %21 = ptrtoint ptr %xfer_shift19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xfer_shift19, align 4
  %flags20 = getelementptr inbounds %struct.ata_device, ptr %dev.040, i32 0, i32 3
  %22 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags20, align 4
  %or = or i32 %23, 4096
  store i32 %or, ptr %flags20, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end8, %do.end
  %call21 = tail call ptr @ata_dev_next(ptr noundef nonnull %dev.040, ptr noundef %link, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_read_id(ptr noundef %adev, ptr noundef %tf, ptr noundef %id) #2 align 64 {
entry:
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #10
  %0 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %call = tail call i32 @ata_do_dev_read_id(ptr noundef %adev, ptr noundef %tf, ptr noundef %id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ata_id_c_string(ptr noundef %id, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #10
  %arrayidx = getelementptr i16, ptr %id, i32 83
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %3 = and i16 %2, -17
  store i16 %3, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr i16, ptr %id, i32 84
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx2, align 2
  %6 = and i16 %5, -16385
  store i16 %6, ptr %arrayidx2, align 2
  %arrayidx6 = getelementptr i16, ptr %id, i32 85
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx6, align 2
  %9 = and i16 %8, -5
  store i16 %9, ptr %arrayidx6, align 2
  %arrayidx10 = getelementptr i16, ptr %id, i32 76
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayidx10, align 2
  %call12 = call ptr @strstr(ptr noundef nonnull %model_num, ptr noundef nonnull @.str.20)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15 = getelementptr i16, ptr %id, i32 49
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx15, align 2
  %13 = or i16 %12, 3
  store i16 %13, ptr %arrayidx15, align 2
  %14 = and i16 %2, -213
  %15 = or i16 %14, 68
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx, align 2
  %arrayidx26 = getelementptr i16, ptr %id, i32 86
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx26, align 2
  %19 = or i16 %18, 4
  store i16 %19, ptr %arrayidx26, align 2
  %arrayidx30 = getelementptr i16, ptr %id, i32 80
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx30, align 2
  %22 = or i16 %21, 7936
  store i16 %22, ptr %arrayidx30, align 2
  %arrayidx34 = getelementptr i16, ptr %id, i32 10
  %23 = call ptr @memset(ptr %arrayidx34, i32 32, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it821x_dev_config(ptr noundef %adev) #2 align 64 {
entry:
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #10
  %0 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %1 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %1, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #10
  %max_sectors = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 16
  %2 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp ugt i32 %3, 255
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %max_sectors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call ptr @strstr(ptr noundef nonnull %model_num, ptr noundef nonnull @.str.20)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end36_crit_edge, label %if.then4

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then4:                                         ; preds = %if.end
  %arrayidx = getelementptr [256 x i16], ptr %1, i32 0, i32 129
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp5 = icmp eq i16 %6, 1
  br i1 %cmp5, label %do.end, label %do.end17

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 128
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  %add = add i32 %16, %14
  %arrayidx9 = getelementptr [256 x i16], ptr %1, i32 0, i32 147
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool11.not = icmp eq i16 %18, 0
  %cond = select i1 %tobool11.not, ptr @.str.24, ptr @.str.23
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %add, ptr noundef nonnull %cond, i32 noundef 1) #13
  br label %if.end36

do.end17:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %6 to i32
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 128
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 128
  %print_id21 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %print_id21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %print_id21, align 4
  %pmp23 = getelementptr inbounds %struct.ata_link, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %pmp23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pmp23, align 4
  %devno24 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %27 = ptrtoint ptr %devno24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devno24, align 4
  %add25 = add i32 %28, %26
  %arrayidx26 = getelementptr [256 x i16], ptr %1, i32 0, i32 147
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool28.not = icmp eq i16 %30, 0
  %cond29 = select i1 %tobool28.not, ptr @.str.24, ptr @.str.23
  %arrayidx32 = getelementptr %struct.ata_device, ptr %adev, i32 0, i32 25, i32 0, i32 73
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx32, align 4
  %conv33 = zext i16 %32 to i32
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %24, i32 noundef %add25, ptr noundef nonnull %cond29, i32 noundef %conv, i32 noundef %conv33) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end17, %do.end, %if.end.if.end36_crit_edge
  %horkage = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 2
  %33 = ptrtoint ptr %horkage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %horkage, align 8
  %and = and i32 %34, -18
  %or = or i32 %and, 16
  store i32 %or, ptr %horkage, align 8
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_port_start(ptr noundef %ap) #2 align 64 {
entry:
  %id.i.i = alloca [41 x i8], align 1
  %mbuf.i.i = alloca [8 x i8], align 8
  %conf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conf) #10
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %conf, align 1, !annotation !169
  %call = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #10
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  %call6 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %conf) #10
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %conf, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %call.i, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %call.i, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  %call.i58 = call fastcc ptr @it821x_firmware_command(ptr noundef %ap) #10
  %cmp.not.i = icmp eq ptr %call.i58, null
  br i1 %cmp.not.i, label %if.then10.if.end12_crit_edge, label %do.end.i

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end.i:                                         ; preds = %if.then10
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call.i58, i32 505
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr i8, ptr %call.i58, i32 506
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %17 to i32
  %arrayidx3.i = getelementptr i8, ptr %call.i58, i32 507
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %19 to i32
  %arrayidx5.i = getelementptr i8, ptr %call.i58, i32 508
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %21 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %13, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %it821x_display_disk.exit.i.for.body.i_crit_edge, %do.end.i
  %i.021.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %it821x_display_disk.exit.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.021.i, 7
  %add.ptr.i = getelementptr i8, ptr %call.i58, i32 %mul.i
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %id.i.i) #10
  %22 = call ptr @memset(ptr %id.i.i, i32 255, i32 41)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mbuf.i.i) #10
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i, i32 52
  %23 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %mbuf.i.i, align 8
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp.i.i = icmp ugt i8 %25, 4
  br i1 %cmp.i.i, label %for.body.i.it821x_display_disk.exit.i_crit_edge, label %if.end.i.i

for.body.i.it821x_display_disk.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %it821x_display_disk.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @ata_id_c_string(ptr noundef %add.ptr.i, ptr noundef nonnull %id.i.i, i32 noundef 0, i32 noundef 41) #10
  %arrayidx2.i.i = getelementptr i8, ptr %add.ptr.i, i32 51
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.i.if.then20.i.i_crit_edge

if.end.i.i.if.then20.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %arrayidx6.i.i = getelementptr i8, ptr %add.ptr.i, i32 49
  %28 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool7.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool7.not.i.i, label %if.else22.i.i, label %if.else.i.i.if.then20.i.i_crit_edge

if.else.i.i.if.then20.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i.if.then20.i.i_crit_edge, %if.end.i.i.if.then20.i.i_crit_edge
  %.sink.i.i = phi i8 [ %27, %if.end.i.i.if.then20.i.i_crit_edge ], [ %29, %if.else.i.i.if.then20.i.i_crit_edge ]
  %mtype.0.ph.i.i = phi ptr [ @.str.47, %if.end.i.i.if.then20.i.i_crit_edge ], [ @.str.48, %if.else.i.i.if.then20.i.i_crit_edge ]
  %30 = call i8 @llvm.cttz.i8(i8 %.sink.i.i, i1 true) #10, !range !171
  %arrayidx1592.i.i = getelementptr i8, ptr %add.ptr.i, i32 76
  %31 = ptrtoint ptr %arrayidx1592.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1592.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not93.i.i = icmp eq i8 %32, 0
  %spec.select94.i.i = select i1 %tobool16.not93.i.i, ptr @.str.41, ptr @.str.24
  %sub.i.i = zext i8 %30 to i32
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mbuf.i.i, i32 noundef 8, ptr noundef nonnull @.str.49, ptr noundef nonnull %mtype.0.ph.i.i, i32 noundef %sub.i.i) #10
  br label %if.end25.i.i

if.else22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15.i.i = getelementptr i8, ptr %add.ptr.i, i32 76
  %33 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.not.i.i = icmp eq i8 %34, 0
  %spec.select.i.i = select i1 %tobool16.not.i.i, ptr @.str.41, ptr @.str.24
  %35 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1346981632, ptr %mbuf.i.i, align 8
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else22.i.i, %if.then20.i.i
  %spec.select98.i.i = phi ptr [ %spec.select.i.i, %if.else22.i.i ], [ %spec.select94.i.i, %if.then20.i.i ]
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp28.i.i = icmp eq i8 %37, 4
  br i1 %cmp28.i.i, label %do.end.i.i, label %do.end39.i.i

do.end.i.i:                                       ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %print_id.i, align 4
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %39, i32 noundef %i.021.i, ptr noundef nonnull %mbuf.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %id.i.i, ptr noundef nonnull %spec.select98.i.i) #13
  br label %if.end50.i.i

do.end39.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv27.i.i = zext i8 %37 to i32
  %40 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %print_id.i, align 4
  %arrayidx45.i.i = getelementptr [5 x ptr], ptr @it821x_display_disk.types, i32 0, i32 %conv27.i.i
  %42 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx45.i.i, align 4
  %arrayidx46.i.i = getelementptr i8, ptr %add.ptr.i, i32 53
  %44 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx46.i.i, align 1
  %conv47.i.i = zext i8 %45 to i32
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %41, i32 noundef %i.021.i, ptr noundef nonnull %mbuf.i.i, ptr noundef %43, i32 noundef %conv47.i.i, ptr noundef nonnull %id.i.i, ptr noundef nonnull %spec.select98.i.i) #13
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %do.end39.i.i, %do.end.i.i
  %arrayidx51.i.i = getelementptr i8, ptr %add.ptr.i, i32 125
  %46 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx51.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %47)
  %cmp53.i.i = icmp ult i8 %47, 100
  br i1 %cmp53.i.i, label %do.end58.i.i, label %if.end50.i.i.it821x_display_disk.exit.i_crit_edge

if.end50.i.i.it821x_display_disk.exit.i_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %it821x_display_disk.exit.i

do.end58.i.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv52.i.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %print_id.i, align 4
  %call63.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %49, i32 noundef %i.021.i, i32 noundef %conv52.i.i) #13
  br label %it821x_display_disk.exit.i

it821x_display_disk.exit.i:                       ; preds = %do.end58.i.i, %if.end50.i.i.it821x_display_disk.exit.i_crit_edge, %for.body.i.it821x_display_disk.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mbuf.i.i) #10
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %id.i.i) #10
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %it821x_display_disk.exit.i.for.body.i_crit_edge

it821x_display_disk.exit.i.for.body.i_crit_edge:  ; preds = %it821x_display_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %it821x_display_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call.i58) #10
  br label %if.end12

if.end12:                                         ; preds = %for.end.i, %if.then10.if.end12_crit_edge, %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %50 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %conf, align 1
  %conv13 = zext i8 %51 to i32
  %port_no14 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %52 = ptrtoint ptr %port_no14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_no14, align 4
  %add = add i32 %53, 1
  %shl = shl nuw i32 1, %add
  %and15 = and i32 %shl, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp ne i32 %and15, 0
  %spec.select = zext i1 %tobool16.not to i8
  %54 = getelementptr inbounds %struct.it821x_dev, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %spec.select, ptr %54, align 1
  %arrayidx20 = getelementptr %struct.it821x_dev, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %arrayidx20, align 1
  %arrayidx23 = getelementptr %struct.it821x_dev, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %arrayidx23, align 1
  %last_device = getelementptr inbounds %struct.it821x_dev, ptr %call.i, i32 0, i32 6
  %58 = ptrtoint ptr %last_device to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %last_device, align 2
  %revision = getelementptr i8, ptr %3, i32 -92
  %59 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %60)
  %cmp25 = icmp eq i8 %60, 16
  br i1 %cmp25, label %if.then27, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end12
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load28 = load i8, ptr %call.i, align 4
  %bf.set30 = or i8 %bf.load28, 64
  store i8 %bf.set30, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %tobool32.not = icmp sgt i8 %bf.load28, -1
  br i1 %tobool32.not, label %do.end, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.28) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then27.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_dev_read_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @it821x_firmware_command(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 9
  %1 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ctl, align 4
  %3 = or i8 %2, 2
  store i8 %3, ptr %ctl, align 4
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %4 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_addr, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %3) #10, !srcloc !173
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end
  %max.addr.0.i.i = phi i32 [ 1000, %if.end ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #10
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 39
  %9 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %10(ptr noundef %ap) #10
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %11 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %ata_sff_busy_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

ata_sff_busy_wait.exit.i:                         ; preds = %do.body.i.i
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge: ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_wait_idle.exit

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@it821x_firmware_command, %if.then7.i)) #10
          to label %ata_wait_idle.exit [label %if.then7.i], !srcloc !170

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef %conv.i) #10
  br label %ata_wait_idle.exit

ata_wait_idle.exit:                               ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %14 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 -96) #10, !srcloc !173
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 10
  %16 = ptrtoint ptr %command_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 -6) #10, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %ata_wait_idle.exit
  %inc1 = phi i32 [ 1, %ata_wait_idle.exit ], [ %inc, %if.end19.while.body_crit_edge ]
  %19 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %status_addr, align 4
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  %conv9 = zext i8 %21 to i32
  %and = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %22 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %print_id, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %23, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %and15 = and i32 %conv9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_addr, align 4
  tail call void @__raw_readsw(ptr noundef %25, ptr noundef nonnull %call7.i, i32 noundef 256) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %inc = add nuw nsw i32 %inc1, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %while.end, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %print_id24 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %26 = ptrtoint ptr %print_id24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id24, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %27, ptr noundef nonnull @.str.34) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then17, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ %call7.i, %if.then17 ], [ null, %while.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_passthru_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.it821x_passthru_dev_select.exit_crit_edge, label %land.lhs.true.i

entry.it821x_passthru_dev_select.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %it821x_passthru_dev_select.exit

land.lhs.true.i:                                  ; preds = %entry
  %last_device.i = getelementptr inbounds %struct.it821x_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %last_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %last_device.i, align 2
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %5, %conv.i
  br i1 %cmp.not.i, label %land.lhs.true.i.it821x_passthru_dev_select.exit_crit_edge, label %if.then.i

land.lhs.true.i.it821x_passthru_dev_select.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %it821x_passthru_dev_select.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %devno.i = getelementptr %struct.ata_port, ptr %1, i32 0, i32 25, i32 14, i32 %5, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  %arrayidx3.i = getelementptr %struct.it821x_dev, ptr %7, i32 0, i32 3, i32 %11
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx3.i, align 2
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %14 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no.i.i, align 4
  %clock_mode.i.i = getelementptr inbounds %struct.it821x_dev, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %clock_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clock_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 0
  %22 = lshr i16 %13, 8
  %conf.0.v.i.i = select i1 %cmp.i.i, i16 %22, i16 %13
  %conf.0.i.i = trunc i16 %conf.0.v.i.i to i8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -136
  %mul.i.i = shl i32 %19, 2
  %add.i.i = add i32 %mul.i.i, 84
  %call.i.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i, i8 noundef zeroext %conf.0.i.i) #10
  %conv4.i = trunc i32 %5 to i16
  %23 = ptrtoint ptr %last_device.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv4.i, ptr %last_device.i, align 2
  br label %it821x_passthru_dev_select.exit

it821x_passthru_dev_select.exit:                  ; preds = %if.then.i, %land.lhs.true.i.it821x_passthru_dev_select.exit_crit_edge, %entry.it821x_passthru_dev_select.exit_crit_edge
  tail call void @ata_sff_dev_select(ptr noundef %1, i32 noundef %5) #10
  %call = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it821x_passthru_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devno, align 4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %4 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -8
  %arrayidx = getelementptr [5 x i8], ptr @it821x_passthru_set_piomode.pio_want, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr %struct.it821x_dev, ptr %1, i32 0, i32 2, i32 %3
  %arrayidx2 = getelementptr %struct.it821x_dev, ptr %1, i32 0, i32 2, i32 %3, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx2, align 1
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx1, align 2
  %arrayidx6 = getelementptr [5 x i16], ptr @it821x_passthru_set_piomode.pio, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr %struct.it821x_dev, ptr %1, i32 0, i32 3, i32 %3
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx7, align 2
  tail call fastcc void @it821x_clock_strategy(ptr noundef %ap, ptr noundef %adev)
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx7, align 2
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %15 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %21 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_no.i, align 4
  %clock_mode.i = getelementptr inbounds %struct.it821x_dev, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %clock_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i = icmp eq i8 %24, 0
  %25 = lshr i16 %14, 8
  %conf.0.v.i = select i1 %cmp.i, i16 %25, i16 %14
  %conf.0.i = trunc i16 %conf.0.v.i to i8
  %add.ptr.i = getelementptr i8, ptr %18, i32 -136
  %mul.i = shl i32 %22, 2
  %add.i = add i32 %mul.i, 84
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add.i, i8 noundef zeroext %conf.0.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it821x_passthru_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %conf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %8 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conf) #10
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %conf, align 1, !annotation !169
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %11 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %12)
  %cmp = icmp ugt i8 %12, 63
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -64
  %arrayidx = getelementptr [7 x i8], ptr @it821x_passthru_set_dmamode.udma_want, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 %9
  %arrayidx5 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 %9, i32 1
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx5, align 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %arrayidx4, align 2
  %arrayidx9 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 4, i32 %9
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr [7 x i16], ptr @it821x_passthru_set_dmamode.udma, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 5, i32 %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %12)
  %cmp12 = icmp ugt i8 %12, 68
  %20 = or i16 %19, -32640
  %spec.select = select i1 %cmp12, i16 %20, i16 %19
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %spec.select, ptr %arrayidx11, align 2
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %conf) #10
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %5, align 4
  %23 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool20.not, i8 -25, i8 -97
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %conf, align 1
  %and = and i8 %25, %cond
  br label %if.end27

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %7, 1
  %add = add i32 %9, 3
  %add23 = add i32 %add, %mul
  %shl = shl nuw i32 1, %add23
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %conf, align 1
  %28 = trunc i32 %shl to i8
  %29 = xor i8 %28, -1
  %conv26 = and i8 %27, %29
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19
  %storemerge113 = phi i8 [ %conv26, %if.else ], [ %and, %if.then19 ]
  %30 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge113, ptr %conf, align 1
  %call28 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 80, i8 noundef zeroext %storemerge113) #10
  call fastcc void @it821x_clock_strategy(ptr noundef %ap, ptr noundef %adev)
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx11, align 2
  %33 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data, align 4
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 -136
  %39 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_no, align 4
  %clock_mode.i = getelementptr inbounds %struct.it821x_dev, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %clock_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.i = icmp eq i8 %42, 0
  %43 = lshr i16 %32, 8
  %conf.0.v.i = select i1 %cmp.i, i16 %43, i16 %32
  %conf.0.i = trunc i16 %conf.0.v.i to i8
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %34, align 4
  %45 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp6.i = icmp eq i8 %45, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devno, align 4
  %mul.i = shl i32 %40, 2
  %add.i = add i32 %mul.i, 86
  %add9.i = add i32 %add.i, %47
  br label %it821x_program_udma.exit

if.else10.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %mul11.i = shl i32 %40, 2
  %add12.i = add i32 %mul11.i, 86
  %call13.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add12.i, i8 noundef zeroext %conf.0.i) #10
  %add16.i = add i32 %mul11.i, 87
  br label %it821x_program_udma.exit

it821x_program_udma.exit:                         ; preds = %if.else10.i, %if.then8.i
  %add16.sink.i = phi i32 [ %add16.i, %if.else10.i ], [ %add9.i, %if.then8.i ]
  %call17.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add16.sink.i, i8 noundef zeroext %conf.0.i) #10
  br label %if.end70

if.else31:                                        ; preds = %entry
  %sub35 = add nsw i32 %conv, -32
  %arrayidx36 = getelementptr [3 x i8], ptr @it821x_passthru_set_dmamode.mwdma_want, i32 0, i32 %sub35
  %48 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 %9
  %arrayidx39 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 %9, i32 1
  %50 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx39, align 1
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %arrayidx38, align 2
  %arrayidx43 = getelementptr [3 x i16], ptr @it821x_passthru_set_dmamode.dma, i32 0, i32 %sub35
  %52 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx43, align 2
  %arrayidx45 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 4, i32 %9
  %54 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx45, align 2
  %arrayidx47 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 5, i32 %9
  %55 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %arrayidx47, align 2
  %call48 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %conf) #10
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load49 = load i8, ptr %5, align 4
  %57 = and i8 %bf.load49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool53.not = icmp eq i8 %57, 0
  br i1 %tobool53.not, label %if.else60, label %if.then54

if.then54:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool55.not = icmp eq i32 %7, 0
  %cond56 = select i1 %tobool55.not, i8 24, i8 96
  %58 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %conf, align 1
  %or58 = or i8 %59, %cond56
  br label %if.end68

if.else60:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  %mul61 = shl i32 %7, 1
  %add62 = add i32 %9, 3
  %add63 = add i32 %add62, %mul61
  %shl64 = shl nuw i32 1, %add63
  %60 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %conf, align 1
  %62 = trunc i32 %shl64 to i8
  %conv67 = or i8 %61, %62
  br label %if.end68

if.end68:                                         ; preds = %if.else60, %if.then54
  %storemerge = phi i8 [ %conv67, %if.else60 ], [ %or58, %if.then54 ]
  %63 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge, ptr %conf, align 1
  %call69 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 80, i8 noundef zeroext %storemerge) #10
  call fastcc void @it821x_clock_strategy(ptr noundef %ap, ptr noundef %adev)
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %it821x_program_udma.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it821x_passthru_dev_select(ptr noundef %ap, i32 noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_device = getelementptr inbounds %struct.it821x_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %last_device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %last_device, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %device)
  %cmp.not = icmp eq i32 %conv, %device
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %devno = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 %device, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %arrayidx3 = getelementptr %struct.it821x_dev, ptr %1, i32 0, i32 3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %12 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i, align 4
  %clock_mode.i = getelementptr inbounds %struct.it821x_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %clock_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  %16 = lshr i16 %7, 8
  %conf.0.v.i = select i1 %cmp.i, i16 %16, i16 %7
  %conf.0.i = trunc i16 %conf.0.v.i to i8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -136
  %mul.i = shl i32 %13, 2
  %add.i = add i32 %mul.i, 84
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add.i, i8 noundef zeroext %conf.0.i) #10
  %conv4 = trunc i32 %device to i16
  %17 = ptrtoint ptr %last_device to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv4, ptr %last_device, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @ata_sff_dev_select(ptr noundef %ap, i32 noundef %device) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it821x_passthru_bmdma_start(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %arrayidx = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not = icmp eq i16 %9, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i, align 4
  %clock_mode.i = getelementptr inbounds %struct.it821x_dev, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %clock_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  %18 = lshr i16 %9, 8
  %conf.0.v.i = select i1 %cmp.i, i16 %18, i16 %9
  %conf.0.i = trunc i16 %conf.0.v.i to i8
  %add.ptr.i = getelementptr i8, ptr %13, i32 -136
  %mul.i = shl i32 %15, 2
  %add.i = add i32 %mul.i, 84
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add.i, i8 noundef zeroext %conf.0.i) #10
  br label %if.end12

if.else:                                          ; preds = %entry
  %arrayidx5 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 5, i32 %7
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp7.not = icmp eq i16 %20, 0
  br i1 %cmp7.not, label %if.else.if.end12_crit_edge, label %land.lhs.true

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %5, align 4
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %land.lhs.true.if.end12_crit_edge, label %it821x_program_udma.exit

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

it821x_program_udma.exit:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %host.i27 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %23 = ptrtoint ptr %host.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host.i27, align 4
  %dev.i28 = getelementptr inbounds %struct.ata_host, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %26, i32 -136
  %port_no.i30 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %port_no.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_no.i30, align 4
  %clock_mode.i31 = getelementptr inbounds %struct.it821x_dev, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %clock_mode.i31 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %clock_mode.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i32 = icmp eq i8 %30, 0
  %31 = lshr i16 %20, 8
  %conf.0.v.i33 = select i1 %cmp.i32, i16 %31, i16 %20
  %conf.0.i34 = trunc i16 %conf.0.v.i33 to i8
  %mul11.i = shl i32 %28, 2
  %add12.i = add i32 %mul11.i, 86
  %call13.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i29, i32 noundef %add12.i, i8 noundef zeroext %conf.0.i34) #10
  %add16.i = add i32 %mul11.i, 87
  %call17.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i29, i32 noundef %add16.i, i8 noundef zeroext %conf.0.i34) #10
  br label %if.end12

if.end12:                                         ; preds = %it821x_program_udma.exit, %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.then
  tail call void @ata_bmdma_start(ptr noundef %qc) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it821x_passthru_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  tail call void @ata_bmdma_stop(ptr noundef %qc) #10
  %arrayidx = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not = icmp eq i16 %9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 3, i32 %7
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx3, align 2
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no.i, align 4
  %clock_mode.i = getelementptr inbounds %struct.it821x_dev, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %clock_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i = icmp eq i8 %21, 0
  %22 = lshr i16 %11, 8
  %conf.0.v.i = select i1 %cmp.i, i16 %22, i16 %11
  %conf.0.i = trunc i16 %conf.0.v.i to i8
  %add.ptr.i = getelementptr i8, ptr %15, i32 -136
  %mul.i = shl i32 %19, 2
  %add.i = add i32 %mul.i, 84
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add.i, i8 noundef zeroext %conf.0.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @it821x_clock_strategy(ptr nocapture noundef readonly %ap, ptr noundef %adev) unnamed_addr #2 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #10
  %8 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %v, align 1, !annotation !169
  %want = getelementptr inbounds %struct.it821x_dev, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %want to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %want, align 2
  %arrayidx4 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp = icmp ugt i8 %10, %12
  %arrayidx10 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 0, i32 1
  %arrayidx14 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 2, i32 1, i32 1
  %clock.0.in.in = select i1 %cmp, ptr %arrayidx10, ptr %arrayidx14
  %13 = ptrtoint ptr %clock.0.in.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %clock.0.in = load i8, ptr %clock.0.in.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %clock.0.in)
  %cmp24 = icmp eq i8 %clock.0.in, 2
  br i1 %cmp24, label %if.end27, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end27:                                         ; preds = %entry
  %altclock.0.in.in = select i1 %cmp, ptr %arrayidx14, ptr %arrayidx10
  %14 = ptrtoint ptr %altclock.0.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %altclock.0.in = load i8, ptr %altclock.0.in.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %altclock.0.in)
  %cmp28 = icmp eq i8 %altclock.0.in, 2
  br i1 %cmp28, label %if.end27.cleanup_crit_edge, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27.if.end31_crit_edge, %entry.if.end31_crit_edge
  %clock.1.in172 = phi i8 [ %altclock.0.in, %if.end27.if.end31_crit_edge ], [ %clock.0.in, %entry.if.end31_crit_edge ]
  %clock_mode = getelementptr inbounds %struct.it821x_dev, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clock_mode, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %clock.1.in172, i8 %16)
  %cmp33 = icmp eq i8 %clock.1.in172, %16
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clock.1.in172)
  %cmp37 = icmp ne i8 %clock.1.in172, 0
  %. = zext i1 %cmp37 to i8
  %.122 = zext i1 %cmp37 to i32
  %17 = ptrtoint ptr %clock_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %., ptr %clock_mode, align 1
  %call44 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %v) #10
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %18 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no, align 4
  %add = add i32 %19, 1
  %shl = shl nuw i32 1, %add
  %20 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %v, align 1
  %22 = trunc i32 %shl to i8
  %23 = xor i8 %22, -1
  %conv46 = and i8 %21, %23
  %shl49 = shl nuw i32 %.122, %add
  %24 = trunc i32 %shl49 to i8
  %conv51 = or i8 %conv46, %24
  store i8 %conv51, ptr %v, align 1
  %call52 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 80, i8 noundef zeroext %conv51) #10
  %tobool.not = icmp eq ptr %call, null
  %.pre = and i32 %7, 255
  br i1 %tobool.not, label %if.end36.if.end66_crit_edge, label %land.lhs.true

if.end36.if.end66_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end36
  %sub = sub nsw i32 1, %.pre
  %arrayidx54 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 5, i32 %sub
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp56.not = icmp eq i16 %26, 0
  br i1 %cmp56.not, label %land.lhs.true.if.end66_crit_edge, label %if.then58

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then58:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 4
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 -136
  %33 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_no, align 4
  %clock_mode.i = getelementptr inbounds %struct.it821x_dev, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %clock_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i = icmp eq i8 %36, 0
  %37 = lshr i16 %26, 8
  %conf.0.v.i = select i1 %cmp.i, i16 %37, i16 %26
  %conf.0.i = trunc i16 %conf.0.v.i to i8
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %28, align 4
  %39 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp6.i = icmp eq i8 %39, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 1
  %40 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devno.i, align 4
  %mul.i = shl i32 %34, 2
  %add.i = add i32 %mul.i, 86
  %add9.i = add i32 %add.i, %41
  br label %it821x_program_udma.exit

if.else10.i:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %mul11.i = shl i32 %34, 2
  %add12.i = add i32 %mul11.i, 86
  %call13.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add12.i, i8 noundef zeroext %conf.0.i) #10
  %add16.i = add i32 %mul11.i, 87
  br label %it821x_program_udma.exit

it821x_program_udma.exit:                         ; preds = %if.else10.i, %if.then8.i
  %add16.sink.i = phi i32 [ %add16.i, %if.else10.i ], [ %add9.i, %if.then8.i ]
  %call17.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add16.sink.i, i8 noundef zeroext %conf.0.i) #10
  %arrayidx65 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 3, i32 %sub
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx65, align 2
  %44 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host, align 4
  %dev.i124 = getelementptr inbounds %struct.ata_host, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %dev.i124 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i124, align 4
  %48 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private_data, align 4
  %50 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_no, align 4
  %clock_mode.i127 = getelementptr inbounds %struct.it821x_dev, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %clock_mode.i127 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %clock_mode.i127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.i128 = icmp eq i8 %53, 0
  %54 = lshr i16 %43, 8
  %conf.0.v.i129 = select i1 %cmp.i128, i16 %54, i16 %43
  %conf.0.i130 = trunc i16 %conf.0.v.i129 to i8
  %add.ptr.i131 = getelementptr i8, ptr %47, i32 -136
  %mul.i132 = shl i32 %51, 2
  %add.i133 = add i32 %mul.i132, 84
  %call.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i131, i32 noundef %add.i133, i8 noundef zeroext %conf.0.i130) #10
  br label %if.end66

if.end66:                                         ; preds = %it821x_program_udma.exit, %land.lhs.true.if.end66_crit_edge, %if.end36.if.end66_crit_edge
  %arrayidx68 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 5, i32 %.pre
  %55 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx68, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp70.not = icmp eq i16 %56, 0
  br i1 %cmp70.not, label %if.end66.cleanup_crit_edge, label %if.then72

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %if.end66
  %57 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private_data, align 4
  %59 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host, align 4
  %dev.i136 = getelementptr inbounds %struct.ata_host, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i136, align 4
  %add.ptr.i137 = getelementptr i8, ptr %62, i32 -136
  %63 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_no, align 4
  %clock_mode.i139 = getelementptr inbounds %struct.it821x_dev, ptr %58, i32 0, i32 1
  %65 = ptrtoint ptr %clock_mode.i139 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %clock_mode.i139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp.i140 = icmp eq i8 %66, 0
  %67 = lshr i16 %56, 8
  %conf.0.v.i141 = select i1 %cmp.i140, i16 %67, i16 %56
  %conf.0.i142 = trunc i16 %conf.0.v.i141 to i8
  %68 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i143 = load i8, ptr %58, align 4
  %69 = and i8 %bf.load.i143, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp6.i144 = icmp eq i8 %69, 0
  br i1 %cmp6.i144, label %if.then8.i149, label %if.else10.i154

if.then8.i149:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %devno, align 4
  %mul.i146 = shl i32 %64, 2
  %add.i147 = add i32 %mul.i146, 86
  %add9.i148 = add i32 %add.i147, %71
  br label %it821x_program_udma.exit157

if.else10.i154:                                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %mul11.i150 = shl i32 %64, 2
  %add12.i151 = add i32 %mul11.i150, 86
  %call13.i152 = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i137, i32 noundef %add12.i151, i8 noundef zeroext %conf.0.i142) #10
  %add16.i153 = add i32 %mul11.i150, 87
  br label %it821x_program_udma.exit157

it821x_program_udma.exit157:                      ; preds = %if.else10.i154, %if.then8.i149
  %add16.sink.i155 = phi i32 [ %add16.i153, %if.else10.i154 ], [ %add9.i148, %if.then8.i149 ]
  %call17.i156 = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i137, i32 noundef %add16.sink.i155, i8 noundef zeroext %conf.0.i142) #10
  %arrayidx78 = getelementptr %struct.it821x_dev, ptr %5, i32 0, i32 3, i32 %.pre
  %72 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx78, align 2
  %74 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host, align 4
  %dev.i159 = getelementptr inbounds %struct.ata_host, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %dev.i159 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i159, align 4
  %78 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %private_data, align 4
  %80 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_no, align 4
  %clock_mode.i162 = getelementptr inbounds %struct.it821x_dev, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %clock_mode.i162 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %clock_mode.i162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp.i163 = icmp eq i8 %83, 0
  %84 = lshr i16 %73, 8
  %conf.0.v.i164 = select i1 %cmp.i163, i16 %84, i16 %73
  %conf.0.i165 = trunc i16 %conf.0.v.i164 to i8
  %add.ptr.i166 = getelementptr i8, ptr %77, i32 -136
  %mul.i167 = shl i32 %81, 2
  %add.i168 = add i32 %mul.i167, 84
  %call.i169 = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i166, i32 noundef %add.i168, i8 noundef zeroext %conf.0.i165) #10
  br label %cleanup

cleanup:                                          ; preds = %it821x_program_udma.exit157, %if.end66.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dev_select(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it821x_rdc_cable(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %r40 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r40) #10
  %0 = ptrtoint ptr %r40 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %r40, align 2, !annotation !169
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -136
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull %r40) #10
  %5 = ptrtoint ptr %r40 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %r40, align 2
  %conv = zext i16 %6 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %add = add i32 %8, 2
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r40) #10
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_pata_it821x__290_978_it821x_pci_driver_init6, !1, !"__initcall__kmod_pata_it821x__290_978_it821x_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_it821x.c", i32 978, i32 1}
!2 = !{ptr @__exitcall_it821x_pci_driver_exit, !1, !"__exitcall_it821x_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_it821x.c", i32 980, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_it821x.c", i32 981, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_it821x.c", i32 982, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version295, !11, !"__UNIQUE_ID_version295", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_it821x.c", i32 984, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__param_noraid, !17, !"__param_noraid", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_it821x.c", i32 986, i32 1}
!18 = !{ptr @__UNIQUE_ID_noraidtype296, !17, !"__UNIQUE_ID_noraidtype296", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_noraid297, !20, !"__UNIQUE_ID_noraid297", i1 false, i1 false}
!20 = !{!"../drivers/ata/pata_it821x.c", i32 987, i32 1}
!21 = !{ptr @it8212_noraid, !22, !"it8212_noraid", i1 false, i1 false}
!22 = !{!"../drivers/ata/pata_it821x.c", i32 113, i32 12}
!23 = !{ptr @it821x_pci_driver, !24, !"it821x_pci_driver", i1 false, i1 false}
!24 = !{!"../drivers/ata/pata_it821x.c", i32 967, i32 26}
!25 = !{ptr @it821x, !26, !"it821x", i1 false, i1 false}
!26 = !{!"../drivers/ata/pata_it821x.c", i32 959, i32 35}
!27 = !{ptr @it821x_init_one.info_smart, !28, !"info_smart", i1 false, i1 false}
!28 = !{!"../drivers/ata/pata_it821x.c", i32 880, i32 36}
!29 = !{ptr @it821x_init_one.info_passthru, !30, !"info_passthru", i1 false, i1 false}
!30 = !{!"../drivers/ata/pata_it821x.c", i32 887, i32 36}
!31 = !{ptr @it821x_init_one.info_rdc, !32, !"info_rdc", i1 false, i1 false}
!32 = !{!"../drivers/ata/pata_it821x.c", i32 894, i32 36}
!33 = !{ptr @it821x_init_one.info_rdc_11, !34, !"info_rdc_11", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_it821x.c", i32 901, i32 36}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_it821x.c", i32 910, i32 33}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ata/pata_it821x.c", i32 910, i32 49}
!39 = !{ptr @it821x_init_one.mode, !40, !"mode", i1 false, i1 false}
!40 = !{!"../drivers/ata/pata_it821x.c", i32 910, i32 21}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ata/pata_it821x.c", i32 926, i32 4}
!43 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @it821x_init_one._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @it821x_init_one._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_it821x.c", i32 932, i32 3}
!51 = !{ptr @it821x_init_one._entry.10, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @it821x_init_one._entry_ptr.12, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @it821x_smart_port_ops, !54, !"it821x_smart_port_ops", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_it821x.c", i32 807, i32 35}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/pata_it821x.c", i32 434, i32 2}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @it821x_smart_qc_issue.__UNIQUE_ID_ddebug289, !56, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/pata_it821x.c", i32 476, i32 4}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @it821x_smart_set_mode._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @it821x_smart_set_mode._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_it821x.c", i32 481, i32 4}
!66 = !{ptr @it821x_smart_set_mode._entry.17, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @it821x_smart_set_mode._entry_ptr.19, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/pata_it821x.c", i32 555, i32 24}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_it821x.c", i32 512, i32 4}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @it821x_dev_config._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @it821x_dev_config._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/pata_it821x.c", i32 516, i32 4}
!79 = !{ptr @it821x_dev_config._entry.25, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @it821x_dev_config._entry_ptr.27, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ata/pata_it821x.c", i32 777, i32 4}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @it821x_port_start._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @it821x_port_start._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ata/pata_it821x.c", i32 715, i32 3}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @it821x_probe_firmware._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @it821x_probe_firmware._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/pata_it821x.c", i32 682, i32 4}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @it821x_firmware_command._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @it821x_firmware_command._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ata/pata_it821x.c", i32 692, i32 2}
!99 = !{ptr @it821x_firmware_command._entry.35, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @it821x_firmware_command._entry_ptr.37, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, !102, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ata/pata_it821x.c", i32 612, i32 20}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/pata_it821x.c", i32 615, i32 3}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ata/pata_it821x.c", i32 615, i32 12}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/pata_it821x.c", i32 615, i32 21}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/pata_it821x.c", i32 615, i32 33}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/pata_it821x.c", i32 615, i32 41}
!118 = !{ptr @it821x_display_disk.types, !119, !"types", i1 false, i1 false}
!119 = !{!"../drivers/ata/pata_it821x.c", i32 614, i32 21}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ata/pata_it821x.c", i32 625, i32 11}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/pata_it821x.c", i32 628, i32 11}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/pata_it821x.c", i32 635, i32 21}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/ata/pata_it821x.c", i32 637, i32 16}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/pata_it821x.c", i32 639, i32 3}
!130 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @it821x_display_disk._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @it821x_display_disk._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/ata/pata_it821x.c", i32 642, i32 3}
!135 = !{ptr @it821x_display_disk._entry.53, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @it821x_display_disk._entry_ptr.55, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/pata_it821x.c", i32 645, i32 3}
!139 = !{ptr @it821x_display_disk._entry.56, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @it821x_display_disk._entry_ptr.58, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @it821x_passthru_port_ops, !142, !"it821x_passthru_port_ops", i1 false, i1 false}
!142 = !{!"../drivers/ata/pata_it821x.c", i32 821, i32 35}
!143 = !{ptr @it821x_passthru_set_piomode.pio, !144, !"pio", i1 false, i1 false}
!144 = !{!"../drivers/ata/pata_it821x.c", i32 258, i32 19}
!145 = !{ptr @it821x_passthru_set_piomode.pio_want, !146, !"pio_want", i1 false, i1 false}
!146 = !{!"../drivers/ata/pata_it821x.c", i32 259, i32 18}
!147 = !{ptr @it821x_passthru_set_dmamode.dma, !148, !"dma", i1 false, i1 false}
!148 = !{!"../drivers/ata/pata_it821x.c", i32 287, i32 19}
!149 = !{ptr @it821x_passthru_set_dmamode.mwdma_want, !150, !"mwdma_want", i1 false, i1 false}
!150 = !{!"../drivers/ata/pata_it821x.c", i32 288, i32 18}
!151 = !{ptr @it821x_passthru_set_dmamode.udma, !152, !"udma", i1 false, i1 false}
!152 = !{!"../drivers/ata/pata_it821x.c", i32 289, i32 19}
!153 = !{ptr @it821x_passthru_set_dmamode.udma_want, !154, !"udma_want", i1 false, i1 false}
!154 = !{!"../drivers/ata/pata_it821x.c", i32 290, i32 18}
!155 = !{ptr @it821x_rdc_port_ops, !156, !"it821x_rdc_port_ops", i1 false, i1 false}
!156 = !{!"../drivers/ata/pata_it821x.c", i32 837, i32 35}
!157 = !{ptr @it821x_sht, !158, !"it821x_sht", i1 false, i1 false}
!158 = !{!"../drivers/ata/pata_it821x.c", i32 803, i32 34}
!159 = !{ptr @__param_str_noraid, !17, !"__param_str_noraid", i1 false, i1 false}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"auto-init"}
!170 = !{i64 2148717597, i64 2148717602, i64 2148717615, i64 2148717659, i64 2148717693, i64 2148717714}
!171 = !{i8 0, i8 9}
!172 = !{i64 2152547047}
!173 = !{i64 5005702}
!174 = !{i64 5006097}
!175 = !{i64 2152545442}
