; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_ali.c_pt.bc'
source_filename = "../drivers/ata/pata_ali.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__param_str_atapi_dma = internal constant [19 x i8] c"pata_ali.atapi_dma\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ali_atapi_dma = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_atapi_dma = internal constant %struct.kernel_param { ptr @__param_str_atapi_dma, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ali_atapi_dma } }, section "__param", align 4
@__UNIQUE_ID_atapi_dmatype289 = internal constant [32 x i8] c"pata_ali.parmtype=atapi_dma:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atapi_dma290 = internal constant [63 x i8] c"pata_ali.parm=atapi_dma:Enable ATAPI DMA (0=disable, 1=enable)\00", section ".modinfo", align 1
@ali_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ali, ptr @ali_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ali_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@ali_isa_bridge = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author311 = internal constant [25 x i8] c"pata_ali.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [51 x i8] c"pata_ali.description=low-level driver for ALi PATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [35 x i8] c"pata_ali.file=drivers/ata/pata_ali\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [21 x i8] c"pata_ali.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version315 = internal constant [23 x i8] c"pata_ali.version=0.7.8\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_ali\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.7.8\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_pata_ali__316_651_ali_init6 = internal global ptr @ali_init, section ".initcall6.init", align 4
@__exitcall_ali_exit = internal global ptr @ali_exit, section ".exitcall.exit", align 4
@ali = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 21032, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 21033, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ali_init_one.info_early = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 0, ptr @ali_early_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_early_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @ali_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_data_xfer32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@ali_init_one.info_20 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 33025, i32 0, i32 31, i32 7, i32 0, ptr @ali_20_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_20_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @ali_check_atapi_dma, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr @ali_20_filter, ptr null, ptr null, ptr null, ptr null, ptr @ali_lock_sectors, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_dma_base_ops }, [44 x i8] zeroinitializer }, align 32
@ali_init_one.info_20_udma = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 33025, i32 0, i32 31, i32 7, i32 7, ptr @ali_20_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_init_one.info_c2 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 33025, i32 0, i32 31, i32 7, i32 31, ptr @ali_c2_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_c2_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @ali_check_atapi_dma, ptr null, ptr null, ptr null, ptr @ali_c2_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_lock_sectors, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_c2_c3_postreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_dma_base_ops }, [44 x i8] zeroinitializer }, align 32
@ali_init_one.info_c3 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 33025, i32 0, i32 31, i32 7, i32 31, ptr @ali_c2_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_init_one.info_c4 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 33025, i32 0, i32 31, i32 7, i32 63, ptr @ali_c4_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_c4_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @ali_check_atapi_dma, ptr null, ptr null, ptr null, ptr @ali_c2_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_lock_sectors, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_dma_base_ops }, [44 x i8] zeroinitializer }, align 32
@ali_init_one.info_c5 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 32769, i32 0, i32 31, i32 7, i32 127, ptr @ali_c5_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ali_c5_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @ali_check_atapi_dma, ptr null, ptr null, ptr null, ptr @ali_c2_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_warn_atapi_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_dma_base_ops }, [44 x i8] zeroinitializer }, align 32
@ali_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ali_dma_base_ops = internal constant { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_set_piomode, ptr @ali_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma32_port_ops }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WDC\00", [28 x i8] zeroinitializer }, align 32
@ali_warn_atapi_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014ata%u.%02u: WARNING: ATAPI DMA disabled for reliability issues.  It can be enabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ali_warn_atapi_dma\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pata_ali.c\00", [41 x i8] zeroinitializer }, align 32
@ali_warn_atapi_dma._entry_ptr = internal global ptr @ali_warn_atapi_dma._entry, section ".printk_index", align 4
@ali_warn_atapi_dma._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014ata%u.%02u: WARNING: via pata_ali.atapi_dma modparam or corresponding sysfs node.\0A\00", [43 x i8] zeroinitializer }, align 32
@ali_warn_atapi_dma._entry_ptr.9 = internal global ptr @ali_warn_atapi_dma._entry.7, section ".printk_index", align 4
@ata_bmdma32_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ali_set_dmamode.udma_timing = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0C\0B\0A\09\08\0F\0D", [25 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 194, i64 195, i64 196]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 4209, i64 4303]
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"ali_atapi_dma\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 40, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ali_pci_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 615, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"ali_isa_bridge\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 44, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 649, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [4 x i8] c"ali\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 608, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"info_early\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 494, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"ali_early_port_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 366, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [8 x i8] c"info_20\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 500, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ali_20_port_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 383, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"info_20_udma\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 508, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"info_c2\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 517, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ali_c2_port_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 394, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [8 x i8] c"info_c3\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 526, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"info_c4\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 535, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ali_c4_port_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 405, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [8 x i8] c"info_c5\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 544, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"ali_c5_port_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 415, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [8 x i8] c"ali_sht\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 358, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"ali_dma_base_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 373, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 125, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 290, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 292, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"udma_timing\00", align 1
@___asan_gen_.98 = private constant [26 x i8] c"../drivers/ata/pata_ali.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 243, i32 12 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_atapi_dma290, ptr @__UNIQUE_ID_atapi_dmatype289, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__UNIQUE_ID_version315, ptr @__exitcall_ali_exit, ptr @__initcall__kmod_pata_ali__316_651_ali_init6, ptr @__modver_attr, ptr @__param_atapi_dma, ptr @ali_exit, ptr @ali_warn_atapi_dma._entry, ptr @ali_warn_atapi_dma._entry.7, ptr @ali_warn_atapi_dma._entry_ptr, ptr @ali_warn_atapi_dma._entry_ptr.9, ptr @ali_atapi_dma, ptr @ali_pci_driver, ptr @ali_isa_bridge, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ali, ptr @ali_init_one.info_early, ptr @ali_early_port_ops, ptr @ali_init_one.info_20, ptr @ali_20_port_ops, ptr @ali_init_one.info_20_udma, ptr @ali_init_one.info_c2, ptr @ali_c2_port_ops, ptr @ali_init_one.info_c3, ptr @ali_init_one.info_c4, ptr @ali_c4_port_ops, ptr @ali_init_one.info_c5, ptr @ali_c5_port_ops, ptr @ali_sht, ptr @ali_dma_base_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ali_set_dmamode.udma_timing], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_atapi_dma to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_isa_bridge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_early to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_early_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_20_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_20_udma to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_c2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_c2_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_c3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_c4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_c4_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_init_one.info_c5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_c5_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_dma_base_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_warn_atapi_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_warn_atapi_dma._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_set_dmamode.udma_timing to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ali_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @ali_pci_driver) #7
  %0 = load ptr, ptr @ali_isa_bridge, align 4
  tail call void @pci_dev_put(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_get_device(i32 noundef 4281, i32 noundef 5427, ptr noundef null) #7
  store ptr %call, ptr @ali_isa_bridge, align 4
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ali_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @ali_isa_bridge, align 4
  tail call void @pci_dev_put(ptr noundef %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp, align 1, !annotation !88
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp = icmp ult i8 %3, 32
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ali_init_one.info_early, ptr %ppi, align 8
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %3)
  %cmp5 = icmp ult i8 %3, -62
  br i1 %cmp5, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ali_init_one.info_20, ptr %ppi, align 8
  br label %if.end36

if.else9:                                         ; preds = %if.else
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.else30 [
    i8 -62, label %if.then14
    i8 -61, label %if.then21
    i8 -60, label %if.then28
  ]

if.then14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ali_init_one.info_c2, ptr %ppi, align 8
  br label %if.end36

if.then21:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ali_init_one.info_c3, ptr %ppi, align 8
  br label %if.end36

if.then28:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ali_init_one.info_c4, ptr %ppi, align 8
  br label %if.end36

if.else30:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ali_init_one.info_c5, ptr %ppi, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then28, %if.then21, %if.then14, %if.then7, %if.then2
  tail call fastcc void @ali_init_chipset(ptr noundef %pdev)
  %11 = load ptr, ptr @ali_isa_bridge, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end36.if.end55_crit_edge, label %land.lhs.true

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end36
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision, align 4
  %14 = add i8 %13, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %14)
  %15 = icmp ult i8 %14, -94
  br i1 %15, label %if.then47, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then47:                                        ; preds = %land.lhs.true
  %call48 = call i32 @pci_read_config_byte(ptr noundef nonnull %11, i32 noundef 94, ptr noundef nonnull %tmp) #7
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp, align 1
  %18 = and i8 %17, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %18)
  %cmp50 = icmp eq i8 %18, 18
  br i1 %cmp50, label %if.then52, label %if.then47.if.end55_crit_edge

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ali_init_one.info_20_udma, ptr %ppi, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then47.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %20 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ppi, align 8
  %mwdma_mask = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %mwdma_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mwdma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool57.not = icmp eq i32 %23, 0
  br i1 %tobool57.not, label %land.lhs.true58, label %if.end55.if.else63_crit_edge

if.end55.if.else63_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

land.lhs.true58:                                  ; preds = %if.end55
  %udma_mask = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %udma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool60.not = icmp eq i32 %25, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true58.if.else63_crit_edge

land.lhs.true58.if.else63_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 @ata_pci_sff_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @ali_sht, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

if.else63:                                        ; preds = %land.lhs.true58.if.else63_crit_edge, %if.end55.if.else63_crit_edge
  %call65 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @ali_sht, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else63, %if.then61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.else63 ], [ %call62, %if.then61 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ali_init_chipset(ptr noundef %pdev)
  tail call void @ata_host_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ali_init_chipset(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !88
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %1 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %2)
  %cmp = icmp ult i8 %2, 33
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 83, ptr noundef nonnull %tmp) #7
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp, align 1
  %5 = or i8 %4, 3
  br label %if.end46

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 74, ptr noundef nonnull %tmp) #7
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmp, align 1
  %8 = or i8 %7, 32
  %call9 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 74, i8 noundef zeroext %8) #7
  %call10 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 75, ptr noundef nonnull %tmp) #7
  %9 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %10)
  %cmp13 = icmp ult i8 %10, -62
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp, align 1
  %13 = or i8 %12, 1
  %14 = and i8 %12, 127
  %storemerge103 = select i1 %cmp13, i8 %14, i8 %13
  store i8 %storemerge103, ptr %tmp, align 1
  %15 = or i8 %storemerge103, 8
  %call30 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 75, i8 noundef zeroext %15) #7
  %call31 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 83, ptr noundef nonnull %tmp) #7
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -58, i8 %17)
  %cmp34 = icmp ugt i8 %17, -58
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp, align 1
  %. = select i1 %cmp34, i8 3, i8 1
  %20 = or i8 %19, %.
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then
  %storemerge.sink = phi i8 [ %20, %if.else ], [ %5, %if.then ]
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %storemerge.sink, ptr %tmp, align 1
  %call45 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 83, i8 noundef zeroext %storemerge.sink) #7
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %domain_nr.i, align 8
  %call48 = call ptr @pci_get_domain_bus_and_slot(i32 noundef %25, i32 noundef 0, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call48, null
  br i1 %tobool.not, label %if.end46.if.end82_crit_edge, label %land.lhs.true

if.end46.if.end82_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end46
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %call48, i32 0, i32 7
  %26 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4281, i16 %27)
  %cmp50 = icmp eq i16 %27, 4281
  br i1 %cmp50, label %land.lhs.true52, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

land.lhs.true52:                                  ; preds = %land.lhs.true
  %28 = load ptr, ptr @ali_isa_bridge, align 4
  %tobool53.not = icmp eq ptr %28, null
  br i1 %tobool53.not, label %land.lhs.true52.if.end82_crit_edge, label %if.then54

land.lhs.true52.if.end82_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then54:                                        ; preds = %land.lhs.true52
  %call55 = call i32 @pci_read_config_byte(ptr noundef nonnull %28, i32 noundef 121, ptr noundef nonnull %tmp) #7
  %29 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %30)
  %cmp58 = icmp eq i8 %30, -62
  br i1 %cmp58, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load ptr, ptr @ali_isa_bridge, align 4
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tmp, align 1
  %34 = or i8 %33, 4
  %call64 = call i32 @pci_write_config_byte(ptr noundef %31, i32 noundef 121, i8 noundef zeroext %34) #7
  br label %if.end82

if.else65:                                        ; preds = %if.then54
  %35 = add i8 %30, 61
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %36 = icmp ult i8 %35, 2
  br i1 %36, label %if.then75, label %if.else65.if.end82_crit_edge

if.else65.if.end82_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then75:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  %37 = load ptr, ptr @ali_isa_bridge, align 4
  %38 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tmp, align 1
  %40 = or i8 %39, 2
  %call79 = call i32 @pci_write_config_byte(ptr noundef %37, i32 noundef 121, i8 noundef zeroext %40) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %if.else65.if.end82_crit_edge, %if.then60, %land.lhs.true52.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %if.end46.if.end82_crit_edge
  call void @pci_dev_put(ptr noundef %call48) #7
  %call83 = call i32 @ata_pci_bmdma_clear_simplex(ptr noundef %pdev) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_sff_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %fifo.i35 = alloca i8, align 1
  %fifo.i = alloca i8, align 1
  %t = alloca %struct.ata_timing, align 2
  %p = alloca %struct.ata_timing, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #7
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = call ptr @memset(ptr %t, i32 255, i32 20)
  %1 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %2 to i16
  %call1 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %t, i32 noundef 30000, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p) #7
  %pio_mode2 = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %3 = call ptr @memset(ptr %p, i32 255, i32 20)
  %4 = ptrtoint ptr %pio_mode2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pio_mode2, align 16
  %conv3 = zext i8 %5 to i16
  %call4 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv3, ptr noundef nonnull %p, i32 noundef 30000, i32 noundef 1) #7
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 15) #7
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i.not = icmp eq i8 %7, -1
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = zext i8 %7 to i16
  %call9 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv8, ptr noundef nonnull %p, i32 noundef 30000, i32 noundef 1) #7
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 15) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p) #7
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %8 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i, align 4
  %add.i = add i32 %15, 84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo.i) #7
  %16 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %fifo.i, align 1, !annotation !88
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %17 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devno.i, align 4
  %mul.i = shl i32 %18, 2
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef %add.i, ptr noundef nonnull %fifo.i) #7
  %shl.i = shl i32 15, %mul.i
  %19 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fifo.i, align 1
  %21 = trunc i32 %shl.i to i8
  %22 = xor i8 %21, -1
  %conv1.i = and i8 %20, %22
  store i8 %conv1.i, ptr %fifo.i, align 1
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add.i, i8 noundef zeroext %conv1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo.i) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  call fastcc void @ali_program_modes(ptr noundef %ap, ptr noundef %adev, ptr noundef nonnull %t, i8 noundef zeroext 0)
  %23 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp15 = icmp eq i32 %24, 1
  br i1 %cmp15, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %host.i36 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %25 = ptrtoint ptr %host.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host.i36, align 4
  %dev.i37 = getelementptr inbounds %struct.ata_host, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %28, i32 -136
  %port_no.i39 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %29 = ptrtoint ptr %port_no.i39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_no.i39, align 4
  %add.i40 = add i32 %30, 84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo.i35) #7
  %31 = ptrtoint ptr %fifo.i35 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %fifo.i35, align 1, !annotation !88
  %devno.i41 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %32 = ptrtoint ptr %devno.i41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devno.i41, align 4
  %mul.i42 = shl i32 %33, 2
  %call.i43 = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i38, i32 noundef %add.i40, ptr noundef nonnull %fifo.i35) #7
  %shl.i44 = shl i32 15, %mul.i42
  %34 = ptrtoint ptr %fifo.i35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fifo.i35, align 1
  %36 = trunc i32 %shl.i44 to i8
  %37 = xor i8 %36, -1
  %conv1.i45 = and i8 %35, %37
  %shl2.i = shl i32 5, %mul.i42
  %38 = trunc i32 %shl2.i to i8
  %conv4.i = or i8 %conv1.i45, %38
  store i8 %conv4.i, ptr %fifo.i35, align 1
  %call5.i46 = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i38, i32 noundef %add.i40, i8 noundef zeroext %conv4.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo.i35) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_data_xfer32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_timing_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ali_program_modes(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev, ptr noundef %t, i8 noundef zeroext %ultra) unnamed_addr #2 align 64 {
entry:
  %udma = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma) #7
  %8 = ptrtoint ptr %udma to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %udma, align 1, !annotation !88
  %cmp.not = icmp eq ptr %t, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %5, 2
  %add6 = add i32 %mul, 90
  %add7 = add i32 %add6, %7
  %add3 = add i32 %mul, 89
  %add = add i32 %mul, 88
  %setup = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 1
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %setup, align 2
  %11 = tail call i16 @llvm.umax.i16(i16 %10, i16 1)
  %12 = tail call i16 @llvm.umin.i16(i16 %11, i16 8)
  %conv30 = and i16 %12, 7
  %13 = ptrtoint ptr %setup to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv30, ptr %setup, align 2
  %act8b = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %act8b to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %act8b, align 2
  %16 = tail call i16 @llvm.umax.i16(i16 %15, i16 1)
  %17 = tail call i16 @llvm.umin.i16(i16 %16, i16 8)
  %conv56 = and i16 %17, 7
  %18 = ptrtoint ptr %act8b to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv56, ptr %act8b, align 2
  %rec8b = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 3
  %19 = ptrtoint ptr %rec8b to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rec8b, align 2
  %21 = tail call i16 @llvm.umax.i16(i16 %20, i16 1)
  %22 = tail call i16 @llvm.umin.i16(i16 %21, i16 16)
  %conv82 = and i16 %22, 15
  %23 = ptrtoint ptr %rec8b to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv82, ptr %rec8b, align 2
  %active = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %24 = ptrtoint ptr %active to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %active, align 2
  %26 = tail call i16 @llvm.umax.i16(i16 %25, i16 1)
  %27 = tail call i16 @llvm.umin.i16(i16 %26, i16 8)
  %conv108 = and i16 %27, 7
  %28 = ptrtoint ptr %active to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv108, ptr %active, align 2
  %recover = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %29 = ptrtoint ptr %recover to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %recover, align 2
  %31 = tail call i16 @llvm.umax.i16(i16 %30, i16 1)
  %32 = tail call i16 @llvm.umin.i16(i16 %31, i16 16)
  %conv134 = and i16 %32, 15
  %33 = ptrtoint ptr %recover to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv134, ptr %recover, align 2
  %conv137 = trunc i16 %conv30 to i8
  %call = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %conv137) #7
  %34 = ptrtoint ptr %act8b to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %act8b, align 2
  %conv139 = trunc i16 %35 to i8
  %shl = shl i8 %conv139, 4
  %36 = ptrtoint ptr %rec8b to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rec8b, align 2
  %conv141 = trunc i16 %37 to i8
  %or = or i8 %shl, %conv141
  %call143 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add3, i8 noundef zeroext %or) #7
  %38 = ptrtoint ptr %active to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %active, align 2
  %conv145 = trunc i16 %39 to i8
  %shl146 = shl i8 %conv145, 4
  %40 = ptrtoint ptr %recover to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %recover, align 2
  %conv148 = trunc i16 %41 to i8
  %or149 = or i8 %shl146, %conv148
  %call151 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add7, i8 noundef zeroext %or149) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mul11 = shl i32 %7, 2
  %add9 = add i32 %5, 86
  %call152 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add9, ptr noundef nonnull %udma) #7
  %shl153 = shl i32 15, %mul11
  %42 = ptrtoint ptr %udma to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %udma, align 1
  %44 = trunc i32 %shl153 to i8
  %45 = xor i8 %44, -1
  %conv156 = and i8 %43, %45
  %conv157 = zext i8 %ultra to i32
  %shl158 = shl i32 %conv157, %mul11
  %46 = trunc i32 %shl158 to i8
  %conv161 = or i8 %conv156, %46
  store i8 %conv161, ptr %udma, align 1
  %call162 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add9, i8 noundef zeroext %conv161) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_check_atapi_dma(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ali_atapi_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cdb = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %1 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cdb, align 4
  %call = tail call i32 @atapi_cmd_type(i8 noundef zeroext %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp eq i32 %call, 4
  %. = select i1 %cmp, i32 -95, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_20_filter(ptr noundef %adev, i32 noundef %mask) #2 align 64 {
entry:
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #7
  %0 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %1 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  %and = and i32 %mask, -1048449
  %spec.select = select i1 %cmp.not, i32 %mask, i32 %and
  %3 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %3, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #7
  %call = call ptr @strstr(ptr noundef nonnull %model_num, ptr noundef nonnull @.str.3)
  %tobool.not = icmp eq ptr %call, null
  %and4 = and i32 %spec.select, -1044481
  %mask.addr.1 = select i1 %tobool.not, i32 %spec.select, i32 %and4
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #7
  ret i32 %mask.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali_lock_sectors(ptr nocapture noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_sectors = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 16
  %0 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %max_sectors, align 4
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 128
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12, i32 0, i32 5
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ali_warn_atapi_dma.exit_crit_edge, label %land.lhs.true.i

entry.ali_warn_atapi_dma.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ali_warn_atapi_dma.exit

land.lhs.true.i:                                  ; preds = %entry
  %class.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %5 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp eq i32 %6, 3
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.ali_warn_atapi_dma.exit_crit_edge

land.lhs.true.i.ali_warn_atapi_dma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ali_warn_atapi_dma.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %7 = load i32, ptr @ali_atapi_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.lhs.true1.i.ali_warn_atapi_dma.exit_crit_edge

land.lhs.true1.i.ali_warn_atapi_dma.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ali_warn_atapi_dma.exit

do.end.i:                                         ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 128
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmp.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %14 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devno.i, align 4
  %add.i = add i32 %15, %13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %add.i) #10
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 128
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %print_id11.i = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %print_id11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %print_id11.i, align 4
  %pmp13.i = getelementptr inbounds %struct.ata_link, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %pmp13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pmp13.i, align 4
  %24 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devno.i, align 4
  %add15.i = add i32 %25, %23
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %21, i32 noundef %add15.i) #10
  br label %ali_warn_atapi_dma.exit

ali_warn_atapi_dma.exit:                          ; preds = %do.end.i, %land.lhs.true1.i.ali_warn_atapi_dma.exit_crit_edge, %land.lhs.true.i.ali_warn_atapi_dma.exit_crit_edge, %entry.ali_warn_atapi_dma.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atapi_cmd_type(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali_warn_atapi_dma(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 128
  %flags = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 12, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %4 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = load i32, ptr @ali_atapi_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %do.end, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno, align 4
  %add = add i32 %14, %12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %10, i32 noundef %add) #10
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %print_id11 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %print_id11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id11, align 4
  %pmp13 = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %pmp13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp13, align 4
  %23 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devno, align 4
  %add15 = add i32 %24, %22
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %20, i32 noundef %add15) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %udma.i = alloca i8, align 1
  %fifo.i = alloca i8, align 1
  %t = alloca %struct.ata_timing, align 2
  %reg4b = alloca i8, align 1
  %p = alloca %struct.ata_timing, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #7
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = call ptr @memset(ptr %t, i32 255, i32 20)
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -136
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %5 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no.i, align 4
  %add.i = add i32 %8, 84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo.i) #7
  %9 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %fifo.i, align 1, !annotation !88
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  %mul.i = shl i32 %11, 2
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add.i, ptr noundef nonnull %fifo.i) #7
  %shl.i = shl i32 15, %mul.i
  %12 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifo.i, align 1
  %14 = trunc i32 %shl.i to i8
  %15 = xor i8 %14, -1
  %conv1.i = and i8 %13, %15
  %shl2.i = shl i32 8, %mul.i
  %16 = trunc i32 %shl2.i to i8
  %conv4.i = or i8 %conv1.i, %16
  store i8 %conv4.i, ptr %fifo.i, align 1
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add.i, i8 noundef zeroext %conv4.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %17 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %18)
  %cmp1 = icmp ugt i8 %18, 63
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %conv = zext i8 %18 to i32
  %sub = add nsw i32 %conv, -64
  %arrayidx = getelementptr [7 x i8], ptr @ali_set_dmamode.udma_timing, i32 0, i32 %sub
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %dev.i52 = getelementptr inbounds %struct.ata_host, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %24, i32 -136
  %port_no.i54 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %25 = ptrtoint ptr %port_no.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_no.i54, align 4
  %devno.i55 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %27 = ptrtoint ptr %devno.i55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devno.i55, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma.i) #7
  %29 = ptrtoint ptr %udma.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %udma.i, align 1, !annotation !88
  %mul11.i = shl i32 %28, 2
  %add9.i = add i32 %26, 86
  %call152.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i53, i32 noundef %add9.i, ptr noundef nonnull %udma.i) #7
  %shl153.i = shl i32 15, %mul11.i
  %30 = ptrtoint ptr %udma.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %udma.i, align 1
  %32 = trunc i32 %shl153.i to i8
  %33 = xor i8 %32, -1
  %conv156.i = and i8 %31, %33
  %conv157.i = zext i8 %20 to i32
  %shl158.i = shl i32 %conv157.i, %mul11.i
  %34 = trunc i32 %shl158.i to i8
  %conv161.i = or i8 %conv156.i, %34
  store i8 %conv161.i, ptr %udma.i, align 1
  %call162.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i53, i32 noundef %add9.i, i8 noundef zeroext %conv161.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma.i) #7
  %35 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %36)
  %cmp8 = icmp ugt i8 %36, 66
  br i1 %cmp8, label %if.then10, label %if.then3.if.end30_crit_edge

if.then3.if.end30_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg4b) #7
  %37 = ptrtoint ptr %reg4b to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %reg4b, align 1, !annotation !88
  %call11 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 75, ptr noundef nonnull %reg4b) #7
  %38 = ptrtoint ptr %reg4b to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg4b, align 1
  %40 = or i8 %39, 1
  store i8 %40, ptr %reg4b, align 1
  %call14 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 75, i8 noundef zeroext %40) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg4b) #7
  br label %if.end30

if.else:                                          ; preds = %if.end
  %conv17 = zext i8 %18 to i16
  %call18 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv17, ptr noundef nonnull %t, i32 noundef 30000, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else.if.end29_crit_edge, label %if.then19

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then19:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p) #7
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %41 = call ptr @memset(ptr %p, i32 255, i32 20)
  %42 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pio_mode, align 16
  %conv20 = zext i8 %43 to i16
  %call21 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv20, ptr noundef nonnull %p, i32 noundef 30000, i32 noundef 1) #7
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 15) #7
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 12
  %44 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp.i.not = icmp eq i8 %45, -1
  br i1 %cmp.i.not, label %if.then19.if.end28_crit_edge, label %if.then24

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = zext i8 %45 to i16
  %call27 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv26, ptr noundef nonnull %p, i32 noundef 30000, i32 noundef 1) #7
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 15) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then19.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else.if.end29_crit_edge
  call fastcc void @ali_program_modes(ptr noundef %ap, ptr noundef %adev, ptr noundef nonnull %t, i8 noundef zeroext 0)
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then10, %if.then3.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_c2_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #7
  %4 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ata66, align 1, !annotation !88
  %subsystem_vendor.i = getelementptr i8, ptr %3, i32 -100
  %5 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_vendor.i, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %6, label %entry.if.end_crit_edge [
    i16 4303, label %land.lhs.true.i
    i16 4209, label %land.lhs.true9.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %subsystem_device.i = getelementptr i8, ptr %3, i32 -98
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4271, i16 %9)
  %cmp3.i = icmp eq i16 %9, 4271
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %entry
  %subsystem_device10.i = getelementptr i8, ptr %3, i32 -98
  %10 = ptrtoint ptr %subsystem_device10.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_device10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31977, i16 %11)
  %cmp12.i = icmp eq i16 %11, -31977
  br i1 %cmp12.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end_crit_edge

land.lhs.true9.i.if.end_crit_edge:                ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %ata66) #7
  %12 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ata66, align 1
  %conv = zext i8 %13 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %14 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no, align 4
  %shl = shl nuw i32 1, %15
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %. = select i1 %tobool2.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end ], [ 3, %land.lhs.true.i.cleanup_crit_edge ], [ 3, %land.lhs.true9.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ali_c2_c3_postreset(ptr noundef %link, ptr noundef %classes) #2 align 64 {
entry:
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #7
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %r, align 1, !annotation !88
  %1 = load ptr, ptr @ali_isa_bridge, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %shl = shl i32 4, %5
  %call = call i32 @pci_read_config_byte(ptr noundef nonnull %1, i32 noundef 88, ptr noundef nonnull %r) #7
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %r, align 1
  %8 = trunc i32 %shl to i8
  %9 = xor i8 %8, -1
  %conv1 = and i8 %7, %9
  store i8 %conv1, ptr %r, align 1
  %10 = load ptr, ptr @ali_isa_bridge, align 4
  %call2 = call i32 @pci_write_config_byte(ptr noundef %10, i32 noundef 88, i8 noundef zeroext %conv1) #7
  %11 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %r, align 1
  %conv4 = or i8 %12, %8
  store i8 %conv4, ptr %r, align 1
  %13 = load ptr, ptr @ali_isa_bridge, align 4
  %call5 = call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 88, i8 noundef zeroext %conv4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @ata_sff_postreset(ptr noundef %link, ptr noundef %classes) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_postreset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_clear_simplex(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__param_atapi_dma, !1, !"__param_atapi_dma", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_ali.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_atapi_dmatype289, !1, !"__UNIQUE_ID_atapi_dmatype289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_atapi_dma290, !4, !"__UNIQUE_ID_atapi_dma290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_ali.c", i32 42, i32 1}
!5 = !{ptr @__UNIQUE_ID_author311, !6, !"__UNIQUE_ID_author311", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_ali.c", i32 645, i32 1}
!7 = !{ptr @__UNIQUE_ID_description312, !8, !"__UNIQUE_ID_description312", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_ali.c", i32 646, i32 1}
!9 = !{ptr @__UNIQUE_ID_file313, !10, !"__UNIQUE_ID_file313", i1 false, i1 false}
!10 = !{!"../drivers/ata/pata_ali.c", i32 647, i32 1}
!11 = !{ptr @__UNIQUE_ID_license314, !10, !"__UNIQUE_ID_license314", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version315, !13, !"__UNIQUE_ID_version315", i1 false, i1 false}
!13 = !{!"../drivers/ata/pata_ali.c", i32 649, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_pata_ali__316_651_ali_init6, !19, !"__initcall__kmod_pata_ali__316_651_ali_init6", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_ali.c", i32 651, i32 1}
!20 = !{ptr @__exitcall_ali_exit, !21, !"__exitcall_ali_exit", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_ali.c", i32 652, i32 1}
!22 = !{ptr @ali_atapi_dma, !23, !"ali_atapi_dma", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_ali.c", i32 40, i32 12}
!24 = !{ptr @ali_isa_bridge, !25, !"ali_isa_bridge", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_ali.c", i32 44, i32 24}
!26 = !{ptr @__param_str_atapi_dma, !1, !"__param_str_atapi_dma", i1 false, i1 false}
!27 = !{ptr @ali_pci_driver, !28, !"ali_pci_driver", i1 false, i1 false}
!28 = !{!"../drivers/ata/pata_ali.c", i32 615, i32 26}
!29 = !{ptr @ali, !30, !"ali", i1 false, i1 false}
!30 = !{!"../drivers/ata/pata_ali.c", i32 608, i32 35}
!31 = !{ptr @ali_init_one.info_early, !32, !"info_early", i1 false, i1 false}
!32 = !{!"../drivers/ata/pata_ali.c", i32 494, i32 36}
!33 = !{ptr @ali_init_one.info_20, !34, !"info_20", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_ali.c", i32 500, i32 36}
!35 = !{ptr @ali_init_one.info_20_udma, !36, !"info_20_udma", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_ali.c", i32 508, i32 36}
!37 = !{ptr @ali_init_one.info_c2, !38, !"info_c2", i1 false, i1 false}
!38 = !{!"../drivers/ata/pata_ali.c", i32 517, i32 36}
!39 = !{ptr @ali_init_one.info_c3, !40, !"info_c3", i1 false, i1 false}
!40 = !{!"../drivers/ata/pata_ali.c", i32 526, i32 36}
!41 = !{ptr @ali_init_one.info_c4, !42, !"info_c4", i1 false, i1 false}
!42 = !{!"../drivers/ata/pata_ali.c", i32 535, i32 36}
!43 = !{ptr @ali_init_one.info_c5, !44, !"info_c5", i1 false, i1 false}
!44 = !{!"../drivers/ata/pata_ali.c", i32 544, i32 36}
!45 = !{ptr @ali_early_port_ops, !46, !"ali_early_port_ops", i1 false, i1 false}
!46 = !{!"../drivers/ata/pata_ali.c", i32 366, i32 35}
!47 = !{ptr @ali_20_port_ops, !48, !"ali_20_port_ops", i1 false, i1 false}
!48 = !{!"../drivers/ata/pata_ali.c", i32 383, i32 35}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_ali.c", i32 125, i32 24}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/pata_ali.c", i32 290, i32 3}
!53 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ali_warn_atapi_dma._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ali_warn_atapi_dma._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/pata_ali.c", i32 292, i32 3}
!59 = !{ptr @ali_warn_atapi_dma._entry.7, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ali_warn_atapi_dma._entry_ptr.9, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ali_dma_base_ops, !62, !"ali_dma_base_ops", i1 false, i1 false}
!62 = !{!"../drivers/ata/pata_ali.c", i32 373, i32 41}
!63 = !{ptr @ali_set_dmamode.udma_timing, !64, !"udma_timing", i1 false, i1 false}
!64 = !{!"../drivers/ata/pata_ali.c", i32 243, i32 12}
!65 = !{ptr @ali_c2_port_ops, !66, !"ali_c2_port_ops", i1 false, i1 false}
!66 = !{!"../drivers/ata/pata_ali.c", i32 394, i32 35}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ata/pata_ali.c", i32 52, i32 12}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ata/pata_ali.c", i32 59, i32 12}
!71 = distinct !{null, !72, !"cable_dmi_table", i1 false, i1 false}
!72 = !{!"../drivers/ata/pata_ali.c", i32 50, i32 35}
!73 = !{ptr @ali_c4_port_ops, !74, !"ali_c4_port_ops", i1 false, i1 false}
!74 = !{!"../drivers/ata/pata_ali.c", i32 405, i32 35}
!75 = !{ptr @ali_c5_port_ops, !76, !"ali_c5_port_ops", i1 false, i1 false}
!76 = !{!"../drivers/ata/pata_ali.c", i32 415, i32 35}
!77 = !{ptr @ali_sht, !78, !"ali_sht", i1 false, i1 false}
!78 = !{!"../drivers/ata/pata_ali.c", i32 358, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
