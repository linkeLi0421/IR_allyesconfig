; ModuleID = '/llk/IR_all_yes/drivers/message/fusion/mptspi.c_pt.bc'
source_filename = "../drivers/message/fusion/mptspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
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
%struct._MPT_ADAPTER = type { i32, i32, [32 x i8], ptr, [100 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i16, i32, i8, i16, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, %struct._SpiCfgData, %struct._RaidCfgData, %struct._SasCfgData, %struct._FcCfgData, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [32 x i32], [64 x i16], %struct._MSG_IOC_FACTS_REPLY, [2 x %struct._MSG_PORT_FACTS_REPLY], [2 x %struct._CONFIG_PAGE_FC_PORT_0], %struct._CONFIG_PAGE_LAN_0, %struct._CONFIG_PAGE_LAN_1, i8, i32, i32, i8, i8, i8, [4 x i8], i8, i8, i8, %struct.list_head, ptr, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], %struct.mutex, i8, i8, ptr, i64, i16, %struct.list_head, %struct.mutex, i8, i8, i32, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct.spinlock, i32, i8, i8, i8, i8, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.work_struct, [2 x i8], %struct.spinlock, %struct.work_struct, [20 x i8], ptr, i32, i32, i32, ptr, %struct.spinlock, i64, i32, [20 x i8], ptr, %struct.delayed_work, i8, i8, i8 }
%struct._SpiCfgData = type { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct._RaidCfgData = type { ptr, ptr, %struct.mutex, %struct.list_head }
%struct._SasCfgData = type { i8 }
%struct._FcCfgData = type { [2 x %struct.anon.92] }
%struct.anon.92 = type { ptr, i32, i32 }
%struct._MSG_IOC_FACTS_REPLY = type { i16, i8, i8, i16, i8, i8, i32, i16, i16, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i16, i8, i8, i32, i16, i8, i8, i32, i32, %union._MPI_FW_VERSION, i16, i16, %struct._SGE_SIMPLE_UNION, i32 }
%union._MPI_FW_VERSION = type { i32 }
%struct._SGE_SIMPLE_UNION = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct._U64 }
%struct._U64 = type { i32, i32 }
%struct._MSG_PORT_FACTS_REPLY = type { i16, i8, i8, i16, i8, i8, i32, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, i32 }
%struct._CONFIG_PAGE_FC_PORT_0 = type { %struct._CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, i32, %struct._U64, %struct._U64, i32, i32, i32, i32, %struct._U64, %struct._U64, i32, i32, i8, i8, i8, i8 }
%struct._CONFIG_PAGE_HEADER = type { i8, i8, i8, i8 }
%struct._CONFIG_PAGE_LAN_0 = type { %struct._CONFIG_PAGE_HEADER, i16, i16, i32 }
%struct._CONFIG_PAGE_LAN_1 = type { %struct._CONFIG_PAGE_HEADER, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._MPT_MGMT = type { %struct.mutex, %struct.completion, [128 x i8], [64 x i8], i8, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.work_queue_wrapper = type { %struct.work_struct, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct._VirtDevice = type { ptr, i8, i64 }
%struct._VirtTarget = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct._MSG_CONFIG = type { i8, i8, i8, i8, i16, i8, i8, i32, [8 x i8], %struct._CONFIG_PAGE_HEADER, i32, %struct._SGE_IO_UNION }
%struct._SGE_IO_UNION = type { %union.anon.85 }
%union.anon.85 = type { %struct._SGE_SIMPLE_UNION }
%struct._CONFIG_PAGE_IOC_4 = type { %struct._CONFIG_PAGE_HEADER, i8, i8, i16, [1 x %struct._IOC_4_SEP] }
%struct._IOC_4_SEP = type { i8, i8, i16 }
%struct._CONFIG_PAGE_IOC_2 = type { %struct._CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, [1 x %struct._CONFIG_PAGE_IOC_2_RAID_VOL] }
%struct._CONFIG_PAGE_IOC_2_RAID_VOL = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct._CONFIG_PAGE_SCSI_DEVICE_1 = type { %struct._CONFIG_PAGE_HEADER, i32, i32, i32 }
%struct._MPT_SCSI_HOST = type { ptr, [255 x i16], ptr, i32, i16, %struct.list_head }
%struct._MSG_RAID_ACTION = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct._SGE_SIMPLE_UNION }
%struct._x_config_parms = type { %union.anon.93, i32, i32, i16, i8, i8, i8 }
%union.anon.93 = type { ptr }
%struct._CONFIG_PAGE_SCSI_DEVICE_0 = type { %struct._CONFIG_PAGE_HEADER, i32, i32 }
%struct._MSG_EVENT_NOTIFY_REPLY = type { i16, i8, i8, [2 x i8], i8, i8, i32, [2 x i8], i16, i32, i32, i32, [0 x i32] }

@__UNIQUE_ID_author287 = internal constant [30 x i8] c"mptspi.author=LSI Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [46 x i8] c"mptspi.description=Fusion MPT SPI Host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [42 x i8] c"mptspi.file=drivers/message/fusion/mptspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [19 x i8] c"mptspi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [23 x i8] c"mptspi.version=3.04.20\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mptspi\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3.04.20\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_mpt_saf_te = internal constant [18 x i8] c"mptspi.mpt_saf_te\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mpt_saf_te = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mpt_saf_te = internal constant %struct.kernel_param { ptr @__param_str_mpt_saf_te, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mpt_saf_te } }, section "__param", align 4
@__UNIQUE_ID_mpt_saf_tetype292 = internal constant [31 x i8] c"mptspi.parmtype=mpt_saf_te:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpt_saf_te293 = internal constant [92 x i8] c"mptspi.parm=mpt_saf_te: Force enabling SEP Processor: enable=1  (default=MPTSCSIH_SAF_TE=0)\00", section ".modinfo", align 1
@mptspi_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mptspi_pci_table, ptr @mptspi_probe, ptr @mptspi_remove, ptr @mptscsih_suspend, ptr @mptspi_resume, ptr @mptscsih_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@mptspiDoneCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptspiInternalCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptspiTaskCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptspi_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mptspi__296_1618_mptspi_init6 = internal global ptr @mptspi_init, section ".initcall6.init", align 4
@__exitcall_mptspi_exit = internal global ptr @mptspi_exit, section ".exitcall.exit", align 4
@mptspi_pci_table = internal global { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4096, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4476, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 64, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mptspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014mptspi: %s: WARNING - Skipping because it's not operational!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mptspi_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/message/fusion/mptspi.c\00", [32 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr = internal global ptr @mptspi_probe._entry, section ".printk_index", align 4
@mptspi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014mptspi: %s: WARNING - Skipping because it's disabled!\0A\00", [39 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.8 = internal global ptr @mptspi_probe._entry.6, section ".printk_index", align 4
@mptspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014mptspi: %s: WARNING - Skipping ioc=%p because SCSI Initiator mode is NOT enabled!\0A\00", [43 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.11 = internal global ptr @mptspi_probe._entry.9, section ".printk_index", align 4
@mptspi_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @mptspi_qcmd, ptr null, ptr null, ptr @.str.28, ptr @mptscsih_info, ptr null, ptr null, ptr null, ptr @mptscsih_abort, ptr @mptscsih_dev_reset, ptr null, ptr @mptscsih_bus_reset, ptr @mptscsih_host_reset, ptr @mptspi_slave_alloc, ptr @mptspi_slave_configure, ptr @mptspi_slave_destroy, ptr @mptspi_target_alloc, ptr @mptspi_target_destroy, ptr null, ptr null, ptr @mptscsih_change_queue_depth, ptr null, ptr null, ptr null, ptr @mptscsih_bios_param, ptr null, ptr @mptscsih_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 127, i32 -1, i16 128, i16 0, i32 8192, i32 0, i32 0, i32 0, i16 7, i8 0, i32 0, i8 0, i32 0, ptr @mptscsih_host_attr_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mptspi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014mptspi: %s: WARNING - Unable to register controller with SCSI subsystem\0A\00", [53 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.14 = internal global ptr @mptspi_probe._entry.12, section ".printk_index", align 4
@mptspi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017mptspi: %s: Resetting sg_tablesize to %d from %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.17 = internal global ptr @mptspi_probe._entry.15, section ".printk_index", align 4
@mptspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ioc->scsi_lookup_lock\00", [41 x i8] zeroinitializer }, align 32
@mptspi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017mptspi: %s: ScsiLookup @ %p\0A\00", [33 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.21 = internal global ptr @mptspi_probe._entry.19, section ".printk_index", align 4
@mptspi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017mptspi: %s: saf_te %x\0A\00", [39 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.24 = internal global ptr @mptspi_probe._entry.22, section ".printk_index", align 4
@mptspi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013mptspi: %s: ERROR - scsi_add_host failed\0A\00", [52 x i8] zeroinitializer }, align 32
@mptspi_probe._entry_ptr.27 = internal global ptr @mptspi_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MPT SPI Host\00", [19 x i8] zeroinitializer }, align 32
@mptscsih_host_attr_groups = external dso_local global [0 x ptr], align 4
@mptspi_slave_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013mptspi: %s: ERROR - slave_alloc kmalloc(%zd) FAILED!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptspi_slave_alloc\00", [45 x i8] zeroinitializer }, align 32
@mptspi_slave_alloc._entry_ptr = internal global ptr @mptspi_slave_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mptspi_slave_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017mptspi: %s: id=%d min_period=0x%02x max_offset=0x%02x max_width=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mptspi_slave_configure\00", [41 x i8] zeroinitializer }, align 32
@mptspi_slave_configure._entry_ptr = internal global ptr @mptspi_slave_configure._entry, section ".printk_index", align 4
@mptspi_writeIOCPage4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014mptspi: %s: WARNING - writeIOCPage4 : no msg frames!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptspi_writeIOCPage4\00", [43 x i8] zeroinitializer }, align 32
@mptspi_writeIOCPage4._entry_ptr = internal global ptr @mptspi_writeIOCPage4._entry, section ".printk_index", align 4
@mptspi_writeIOCPage4._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017mptspi: %s: writeIOCPage4: MaxSEP=%d ActiveSEP=%d id=%d bus=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@mptspi_writeIOCPage4._entry_ptr.37 = internal global ptr @mptspi_writeIOCPage4._entry.35, section ".printk_index", align 4
@mptspi_setTargetNegoParms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017mptspi: %s: Enabling QAS due to byte56=%02x on id=%d!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mptspi_setTargetNegoParms\00", [38 x i8] zeroinitializer }, align 32
@mptspi_setTargetNegoParms._entry_ptr = internal global ptr @mptspi_setTargetNegoParms._entry, section ".printk_index", align 4
@mptspi_setTargetNegoParms._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017mptspi: %s: Disabling QAS due to noQas=%02x on id=%d!\0A\00", [39 x i8] zeroinitializer }, align 32
@mptspi_setTargetNegoParms._entry_ptr.42 = internal global ptr @mptspi_setTargetNegoParms._entry.40, section ".printk_index", align 4
@mptspi_dv_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 698, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mptspi: %s: Integrated RAID quiesce failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mptspi_dv_device\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mptspi_dv_device._entry_ptr = internal global ptr @mptspi_dv_device._entry, section ".printk_index", align 4
@mptspi_dv_device._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.5, i32 709, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mptspi: %s: Integrated RAID resume failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mptspi_dv_device._entry_ptr.49 = internal global ptr @mptspi_dv_device._entry.47, section ".printk_index", align 4
@mptscsih_quiesce_raid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014mptspi: %s: WARNING - %s: no msg frames!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mptscsih_quiesce_raid\00", [42 x i8] zeroinitializer }, align 32
@mptscsih_quiesce_raid._entry_ptr = internal global ptr @mptscsih_quiesce_raid._entry, section ".printk_index", align 4
@mptscsih_quiesce_raid._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.5, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017mptspi: %s: RAID Volume action=%x channel=%d id=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@mptscsih_quiesce_raid._entry_ptr.54 = internal global ptr @mptscsih_quiesce_raid._entry.52, section ".printk_index", align 4
@mptscsih_quiesce_raid._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.5, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017mptspi: %s: %s: TIMED OUT!\0A\00", [34 x i8] zeroinitializer }, align 32
@mptscsih_quiesce_raid._entry_ptr.57 = internal global ptr @mptscsih_quiesce_raid._entry.55, section ".printk_index", align 4
@mptscsih_quiesce_raid._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.5, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014mptspi: %s: WARNING - Issuing Reset from %s!!\0A\00", [47 x i8] zeroinitializer }, align 32
@mptscsih_quiesce_raid._entry_ptr.60 = internal global ptr @mptscsih_quiesce_raid._entry.58, section ".printk_index", align 4
@mptspi_read_spi_device_pg0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 541, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mptspi: %s: dma_alloc_coherent for parameters failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptspi_read_spi_device_pg0\00", [37 x i8] zeroinitializer }, align 32
@mptspi_read_spi_device_pg0._entry_ptr = internal global ptr @mptspi_read_spi_device_pg0._entry, section ".printk_index", align 4
@mptspi_read_spi_device_pg0._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 562, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mptspi: %s: mpt_config failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mptspi_read_spi_device_pg0._entry_ptr.65 = internal global ptr @mptspi_read_spi_device_pg0._entry.63, section ".printk_index", align 4
@mptspi_print_read_nego._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017mptspi: %s: id=%d Read = 0x%08x ( %s factor = 0x%02x @ offset = 0x%02x %s%s%s%s%s%s%s%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mptspi_print_read_nego\00", [41 x i8] zeroinitializer }, align 32
@mptspi_print_read_nego._entry_ptr = internal global ptr @mptspi_print_read_nego._entry, section ".printk_index", align 4
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Wide \00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IU \00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DT \00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QAS \00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HOLDMCS \00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WRFLOW \00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RDSTRM \00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RTI \00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCOMP \00", [25 x i8] zeroinitializer }, align 32
@mptspi_write_spi_device_pg1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.78, ptr @.str.5, i32 876, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mptspi_write_spi_device_pg1\00", [36 x i8] zeroinitializer }, align 32
@mptspi_write_spi_device_pg1._entry_ptr = internal global ptr @mptspi_write_spi_device_pg1._entry, section ".printk_index", align 4
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mptspi: %s: IDP:ON\0A\00", [44 x i8] zeroinitializer }, align 32
@mptspi_write_spi_device_pg1._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.78, ptr @.str.5, i32 924, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@mptspi_write_spi_device_pg1._entry_ptr.82 = internal global ptr @mptspi_write_spi_device_pg1._entry.81, section ".printk_index", align 4
@mptspi_print_write_nego._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\017mptspi: %s: id=%d Requested = 0x%08x ( %s factor = 0x%02x @ offset = 0x%02x %s%s%s%s%s%s%s%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptspi_print_write_nego\00", [40 x i8] zeroinitializer }, align 32
@mptspi_print_write_nego._entry_ptr = internal global ptr @mptspi_print_write_nego._entry, section ".printk_index", align 4
@mptspi_target_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017mptspi: %s: RAID Volume @ channel=%d id=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mptspi_target_alloc\00", [44 x i8] zeroinitializer }, align 32
@mptspi_target_alloc._entry_ptr = internal global ptr @mptspi_target_alloc._entry, section ".printk_index", align 4
@mptspi_dv_renegotiate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&wqw->work)\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mptspi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mptspi_init\00", [20 x i8] zeroinitializer }, align 32
@mptspi_init._entry_ptr = internal global ptr @mptspi_init._entry, section ".printk_index", align 4
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fusion MPT SPI Host driver\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mptscsih_io_done\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mptscsih_taskmgmt_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mptscsih_scandv_complete\00", [39 x i8] zeroinitializer }, align 32
@mptspi_transport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 } { ptr @mptspi_read_parameters, ptr @mptspi_write_period, ptr @mptspi_read_parameters, ptr @mptspi_write_offset, ptr @mptspi_read_parameters, ptr @mptspi_write_width, ptr @mptspi_read_parameters, ptr @mptspi_write_iu, ptr @mptspi_read_parameters, ptr @mptspi_write_dt, ptr @mptspi_read_parameters, ptr @mptspi_write_qas, ptr @mptspi_read_parameters, ptr @mptspi_write_wr_flow, ptr @mptspi_read_parameters, ptr @mptspi_write_rd_strm, ptr @mptspi_read_parameters, ptr @mptspi_write_rti, ptr @mptspi_read_parameters, ptr @mptspi_write_pcomp_en, ptr @mptspi_read_parameters, ptr @mptspi_write_hold_mcs, ptr null, ptr null, ptr @mptspi_deny_binding, i8 -1, i8 -32 }, [56 x i8] zeroinitializer }, align 32
@mpt_dv_raid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.5, i32 1159, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"mptspi: %s: Failed to act on RAID event for physical disk %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpt_dv_raid\00", [20 x i8] zeroinitializer }, align 32
@mpt_dv_raid._entry_ptr = internal global ptr @mpt_dv_raid._entry, section ".printk_index", align 4
@mpt_dv_raid.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mpt_work_wrapper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.5, i32 1142, ptr @.str.99, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mptspi: %s: Integrated RAID requests DV of new device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mpt_work_wrapper\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mpt_work_wrapper._entry_ptr = internal global ptr @mpt_work_wrapper._entry, section ".printk_index", align 4
@mpt_work_wrapper._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.98, ptr @.str.5, i32 1146, ptr @.str.99, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mptspi: %s: Integrated RAID detects new device %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mpt_work_wrapper._entry_ptr.102 = internal global ptr @mpt_work_wrapper._entry.100, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 9]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 80, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [11 x i8] c"mpt_saf_te\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 83, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"mptspi_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1553, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"mptspiDoneCtx\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 94, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"mptspiInternalCtx\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 96, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"mptspiTaskCtx\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 95, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"mptspi_transport_template\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 92, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"mptspi_pci_table\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1240, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1376, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1384, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1400, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"mptspi_driver_template\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 823, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1409, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1482, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1501, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1503, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1507, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1523, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 827, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 730, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 762, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 267, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 305, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 143, i32 7 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 237, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 697, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 708, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 631, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 654, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 662, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 667, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 540, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 562, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 498, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 875, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 910, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 923, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 473, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 433, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1294, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1576, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1583, i32 6 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1585, i32 6 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1587, i32 21 }
@___asan_gen_.410 = private unnamed_addr constant [27 x i8] c"mptspi_transport_functions\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1199, i32 37 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1157, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1162, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1141, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.441 = private constant [35 x i8] c"../drivers/message/fusion/mptspi.c\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1145, i32 2 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_mpt_saf_te293, ptr @__UNIQUE_ID_mpt_saf_tetype292, ptr @__UNIQUE_ID_version291, ptr @__exitcall_mptspi_exit, ptr @__initcall__kmod_mptspi__296_1618_mptspi_init6, ptr @__modver_attr, ptr @__param_mpt_saf_te, ptr @mpt_dv_raid._entry, ptr @mpt_dv_raid._entry_ptr, ptr @mpt_work_wrapper._entry, ptr @mpt_work_wrapper._entry.100, ptr @mpt_work_wrapper._entry_ptr, ptr @mpt_work_wrapper._entry_ptr.102, ptr @mptscsih_quiesce_raid._entry, ptr @mptscsih_quiesce_raid._entry.52, ptr @mptscsih_quiesce_raid._entry.55, ptr @mptscsih_quiesce_raid._entry.58, ptr @mptscsih_quiesce_raid._entry_ptr, ptr @mptscsih_quiesce_raid._entry_ptr.54, ptr @mptscsih_quiesce_raid._entry_ptr.57, ptr @mptscsih_quiesce_raid._entry_ptr.60, ptr @mptspi_dv_device._entry, ptr @mptspi_dv_device._entry.47, ptr @mptspi_dv_device._entry_ptr, ptr @mptspi_dv_device._entry_ptr.49, ptr @mptspi_exit, ptr @mptspi_init._entry, ptr @mptspi_init._entry_ptr, ptr @mptspi_print_read_nego._entry, ptr @mptspi_print_read_nego._entry_ptr, ptr @mptspi_print_write_nego._entry, ptr @mptspi_print_write_nego._entry_ptr, ptr @mptspi_probe._entry, ptr @mptspi_probe._entry.12, ptr @mptspi_probe._entry.15, ptr @mptspi_probe._entry.19, ptr @mptspi_probe._entry.22, ptr @mptspi_probe._entry.25, ptr @mptspi_probe._entry.6, ptr @mptspi_probe._entry.9, ptr @mptspi_probe._entry_ptr, ptr @mptspi_probe._entry_ptr.11, ptr @mptspi_probe._entry_ptr.14, ptr @mptspi_probe._entry_ptr.17, ptr @mptspi_probe._entry_ptr.21, ptr @mptspi_probe._entry_ptr.24, ptr @mptspi_probe._entry_ptr.27, ptr @mptspi_probe._entry_ptr.8, ptr @mptspi_read_spi_device_pg0._entry, ptr @mptspi_read_spi_device_pg0._entry.63, ptr @mptspi_read_spi_device_pg0._entry_ptr, ptr @mptspi_read_spi_device_pg0._entry_ptr.65, ptr @mptspi_setTargetNegoParms._entry, ptr @mptspi_setTargetNegoParms._entry.40, ptr @mptspi_setTargetNegoParms._entry_ptr, ptr @mptspi_setTargetNegoParms._entry_ptr.42, ptr @mptspi_slave_alloc._entry, ptr @mptspi_slave_alloc._entry_ptr, ptr @mptspi_slave_configure._entry, ptr @mptspi_slave_configure._entry_ptr, ptr @mptspi_target_alloc._entry, ptr @mptspi_target_alloc._entry_ptr, ptr @mptspi_writeIOCPage4._entry, ptr @mptspi_writeIOCPage4._entry.35, ptr @mptspi_writeIOCPage4._entry_ptr, ptr @mptspi_writeIOCPage4._entry_ptr.37, ptr @mptspi_write_spi_device_pg1._entry, ptr @mptspi_write_spi_device_pg1._entry.81, ptr @mptspi_write_spi_device_pg1._entry_ptr, ptr @mptspi_write_spi_device_pg1._entry_ptr.82, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mpt_saf_te, ptr @mptspi_driver, ptr @mptspiDoneCtx, ptr @mptspiInternalCtx, ptr @mptspiTaskCtx, ptr @mptspi_transport_template, ptr @mptspi_pci_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @mptspi_driver_template, ptr @.str.13, ptr @.str.16, ptr @mptspi_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @mptspi_dv_renegotiate.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @mptspi_transport_functions, ptr @.str.95, ptr @.str.96, ptr @mpt_dv_raid.__key, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_saf_te to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspiDoneCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspiInternalCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspiTaskCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_pci_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_slave_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_slave_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_writeIOCPage4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_writeIOCPage4._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_setTargetNegoParms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_setTargetNegoParms._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_dv_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_dv_device._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptscsih_quiesce_raid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptscsih_quiesce_raid._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptscsih_quiesce_raid._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptscsih_quiesce_raid._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_read_spi_device_pg0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_read_spi_device_pg0._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_print_read_nego._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_write_spi_device_pg1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_write_spi_device_pg1._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_print_write_nego._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_target_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_dv_renegotiate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptspi_transport_functions to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_dv_raid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_dv_raid.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_work_wrapper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt_work_wrapper._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @mptspi_driver) #8
  %0 = load i8, ptr @mptspiDoneCtx, align 1
  tail call void @mpt_reset_deregister(i8 noundef zeroext %0) #8
  %1 = load i8, ptr @mptspiDoneCtx, align 1
  tail call void @mpt_event_deregister(i8 noundef zeroext %1) #8
  %2 = load i8, ptr @mptspiInternalCtx, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %2) #8
  %3 = load i8, ptr @mptspiTaskCtx, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %3) #8
  %4 = load i8, ptr @mptspiDoneCtx, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %4) #8
  %5 = load ptr, ptr @mptspi_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_reset_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_event_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_release_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2) #11
  %call1 = tail call ptr @spi_attach_transport(ptr noundef nonnull @mptspi_transport_functions) #8
  store ptr %call1, ptr @mptspi_transport_template, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptscsih_io_done, i32 noundef 2, ptr noundef nonnull @.str.91) #8
  store i8 %call2, ptr @mptspiDoneCtx, align 1
  %call3 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptscsih_taskmgmt_complete, i32 noundef 2, ptr noundef nonnull @.str.92) #8
  store i8 %call3, ptr @mptspiTaskCtx, align 1
  %call4 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptscsih_scandv_complete, i32 noundef 2, ptr noundef nonnull @.str.93) #8
  store i8 %call4, ptr @mptspiInternalCtx, align 1
  %0 = load i8, ptr @mptspiDoneCtx, align 1
  %call5 = tail call i32 @mpt_event_register(i8 noundef zeroext %0, ptr noundef nonnull @mptspi_event_process) #8
  %1 = load i8, ptr @mptspiDoneCtx, align 1
  %call6 = tail call i32 @mpt_reset_register(i8 noundef zeroext %1, ptr noundef nonnull @mptspi_ioc_reset) #8
  %call7 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mptspi_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @mptspi_transport_template, align 4
  tail call void @spi_release_transport(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call7, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_probe(ptr noundef %pdev, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpt_attach(ptr noundef %pdev, ptr noundef %id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @mptspiDoneCtx, align 1
  %DoneCtx = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 89
  %3 = ptrtoint ptr %DoneCtx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %DoneCtx, align 1
  %4 = load i8, ptr @mptspiTaskCtx, align 1
  %TaskCtx = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 90
  %5 = ptrtoint ptr %TaskCtx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %TaskCtx, align 8
  %6 = load i8, ptr @mptspiInternalCtx, align 1
  %InternalCtx = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 91
  %7 = ptrtoint ptr %InternalCtx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %InternalCtx, align 1
  %last_state = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %last_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %9)
  %cmp2.not = icmp eq i32 %9, 536870912
  br i1 %cmp2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #11
  br label %out_mptspi_probe

if.end5:                                          ; preds = %if.end
  %active = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %NumberOfPorts = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 77, i32 20
  %12 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %NumberOfPorts, align 2
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15293.not = icmp eq i8 %13, 0
  br i1 %cmp15293.not, label %for.cond.preheader.do.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %name11 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name11) #11
  br label %out_mptspi_probe

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ii.0295 = phi i32 [ %inc21, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ioc_cap.0294 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ProtocolFlags = getelementptr %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 %ii.0295, i32 14
  %14 = ptrtoint ptr %ProtocolFlags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ProtocolFlags, align 2
  %16 = lshr i16 %15, 3
  %.lobit = and i16 %16, 1
  %17 = zext i16 %.lobit to i32
  %spec.select = add i32 %ioc_cap.0294, %17
  %inc21 = add nuw nsw i32 %ii.0295, 1
  %exitcond.not = icmp eq i32 %inc21, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool22.not = icmp eq i32 %spec.select, 0
  br i1 %tobool22.not, label %for.end.do.end26_crit_edge, label %if.end31

for.end.do.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end26:                                         ; preds = %for.end.do.end26_crit_edge, %for.cond.preheader.do.end26_crit_edge
  %name28 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name28, ptr noundef %1) #11
  br label %cleanup

if.end31:                                         ; preds = %for.end
  %call32 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @mptspi_driver_template, i32 noundef 536) #8
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end42

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %name39 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name39) #11
  br label %out_mptspi_probe

if.end42:                                         ; preds = %if.end31
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5549, i16 %19)
  %cmp44 = icmp eq i16 %19, 5549
  br i1 %cmp44, label %if.then46, label %if.end42.do.body49_crit_edge

if.end42.do.body49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %no_write_same = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 36
  %20 = ptrtoint ptr %no_write_same to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %no_write_same, align 8
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %no_write_same, align 8
  br label %do.body49

do.body49:                                        ; preds = %if.then46, %if.end42.do.body49_crit_edge
  %FreeQlock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 46
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %FreeQlock) #8
  %sh59 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 58
  %21 = ptrtoint ptr %sh59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %sh59, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 44
  %22 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 45
  %23 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %n_io_port, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 47
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %irq, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 24
  %25 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 16, ptr %max_cmd_len, align 4
  %devices_per_bus = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %devices_per_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devices_per_bus, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 21
  %28 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 22
  %29 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 256, ptr %max_lun, align 8
  %ir_firmware = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 82
  %30 = ptrtoint ptr %ir_firmware to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ir_firmware, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool60.not = icmp ne i8 %31, 0
  %spec.select298 = zext i1 %tobool60.not to i32
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 20
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select298, ptr %32, align 8
  %PortSCSIID = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 0, i32 13
  %34 = ptrtoint ptr %PortSCSIID to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %PortSCSIID, align 8
  %conv66 = zext i16 %35 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 25
  %36 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv66, ptr %this_id, align 8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 8
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 23
  %39 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %unique_id, align 8
  %req_sz = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 45
  %40 = ptrtoint ptr %req_sz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req_sz, align 8
  %SGE_size = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 146
  %42 = ptrtoint ptr %SGE_size to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %SGE_size, align 2
  %conv68 = zext i8 %43 to i32
  %div = sdiv i32 %41, %conv68
  %sg_addr_size = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 144
  %44 = ptrtoint ptr %sg_addr_size to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sg_addr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %45)
  %cmp70 = icmp eq i8 %45, 8
  %sub = add i32 %div, -1
  %MaxChainDepth = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 77, i32 10
  %46 = ptrtoint ptr %MaxChainDepth to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %MaxChainDepth, align 4
  %conv74 = zext i8 %47 to i32
  %sub75 = add nsw i32 %conv74, -1
  %mul = mul i32 %sub75, %sub
  br i1 %cmp70, label %if.then72, label %if.else82

if.then72:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %sub77 = add i32 %41, -60
  %div80 = sdiv i32 %sub77, %conv68
  %add = add i32 %div80, %div
  br label %if.end97

if.else82:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %sub92 = add i32 %41, -64
  %div95 = sdiv i32 %sub92, %conv68
  %add89 = add i32 %div, 1
  %add90 = add i32 %add89, %div95
  br label %if.end97

if.end97:                                         ; preds = %if.else82, %if.then72
  %add90.sink = phi i32 [ %add90, %if.else82 ], [ %add, %if.then72 ]
  %add96 = add i32 %add90.sink, %mul
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 28
  %48 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sg_tablesize, align 2
  %conv98 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %conv98)
  %cmp99 = icmp slt i32 %add96, %conv98
  br i1 %cmp99, label %do.body102, label %if.end97.if.end120_crit_edge

if.end97.if.end120_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

do.body102:                                       ; preds = %if.end97
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_level, align 4
  %and103 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.do.end117_crit_edge, label %do.end108

do.body102.do.end117_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end117

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  %name110 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name110, i32 noundef %add96, i32 noundef %conv98) #11
  br label %do.end117

do.end117:                                        ; preds = %do.end108, %do.body102.do.end117_crit_edge
  %conv118 = trunc i32 %add96 to i16
  %52 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv118, ptr %sg_tablesize, align 2
  br label %if.end120

if.end120:                                        ; preds = %do.end117, %if.end97.if.end120_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %FreeQlock, i32 noundef %call54) #8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 53
  %53 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %1, ptr %hostdata.i, align 4
  %req_depth = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 44
  %54 = ptrtoint ptr %req_depth to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %req_depth, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 4) #8
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !221

kcalloc.exit.thread:                              ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %ScsiLookup286 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 137
  %58 = ptrtoint ptr %ScsiLookup286 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %ScsiLookup286, align 8
  br label %out_mptspi_probe

if.end7.i.i:                                      ; preds = %if.end120
  %59 = extractvalue { i32, i1 } %56, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 2848) #12
  %ScsiLookup = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 137
  %60 = ptrtoint ptr %ScsiLookup to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i, ptr %ScsiLookup, align 8
  %tobool126.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool126.not, label %if.end7.i.i.out_mptspi_probe_crit_edge, label %do.body129

if.end7.i.i.out_mptspi_probe_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_mptspi_probe

do.body129:                                       ; preds = %if.end7.i.i
  %scsi_lookup_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 138
  tail call void @__raw_spin_lock_init(ptr noundef %scsi_lookup_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @mptspi_probe.__key, i16 noundef signext 3) #8
  %debug_level134 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %debug_level134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug_level134, align 4
  %and135 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body129.do.end148_crit_edge, label %do.end140

do.body129.do.end148_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end148

do.end140:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  %name142 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %ScsiLookup to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ScsiLookup, align 8
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name142, ptr noundef %64) #11
  br label %do.end148

do.end148:                                        ; preds = %do.end140, %do.body129.do.end148_crit_edge
  %65 = load i32, ptr @mpt_saf_te, align 4
  %conv149 = trunc i32 %65 to i8
  %Saf_Te = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 59, i32 15
  %66 = ptrtoint ptr %Saf_Te to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv149, ptr %Saf_Te, align 2
  %67 = ptrtoint ptr %debug_level134 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %debug_level134, align 4
  %and152 = and i32 %68, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.end148.do.end164_crit_edge, label %do.end157

do.end148.do.end164_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end164

do.end157:                                        ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #10
  %name159 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name159, i32 noundef %65) #11
  br label %do.end164

do.end164:                                        ; preds = %do.end157, %do.end148.do.end164_crit_edge
  %noQas = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 59, i32 14
  %69 = ptrtoint ptr %noQas to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %noQas, align 1
  %last_queue_full = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 1, i32 36
  %70 = ptrtoint ptr %last_queue_full to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %last_queue_full, align 4
  %spi_pending = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 1, i32 37, i32 2
  %71 = ptrtoint ptr %spi_pending to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %spi_pending, align 4
  %sdp0length = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 59, i32 12
  %72 = ptrtoint ptr %sdp0length to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sdp0length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp168.not = icmp eq i8 %73, 0
  br i1 %cmp168.not, label %do.end164.if.end171_crit_edge, label %if.then170

do.end164.if.end171_crit_edge:                    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then170:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  %74 = load ptr, ptr @mptspi_transport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 12
  %75 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %transportt, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %do.end164.if.end171_crit_edge
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 54
  %76 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call32, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool173.not = icmp eq i32 %call.i, 0
  br i1 %tobool173.not, label %if.end190, label %do.body175

do.body175:                                       ; preds = %if.end171
  %78 = ptrtoint ptr %debug_level134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debug_level134, align 4
  %and177 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body175.out_mptspi_probe_crit_edge, label %do.end182

do.body175.out_mptspi_probe_crit_edge:            ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_mptspi_probe

do.end182:                                        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  %name184 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name184) #11
  br label %out_mptspi_probe

if.end190:                                        ; preds = %if.end171
  %bus_reset = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 59, i32 16
  %80 = ptrtoint ptr %bus_reset to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bus_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool192.not = icmp eq i8 %81, 0
  br i1 %tobool192.not, label %if.end190.if.end195_crit_edge, label %if.then193

if.end190.if.end195_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then193:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %call194 = tail call i32 @mptscsih_IssueTaskMgmt(ptr noundef %hostdata.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef 0, i32 noundef 0, i32 noundef 5) #8
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.end190.if.end195_crit_edge
  tail call void @scsi_scan_host(ptr noundef nonnull %call32) #8
  br label %cleanup

out_mptspi_probe:                                 ; preds = %do.end182, %do.body175.out_mptspi_probe_crit_edge, %if.end7.i.i.out_mptspi_probe_crit_edge, %kcalloc.exit.thread, %do.end37, %do.end9, %do.end
  %error.0 = phi i32 [ -19, %do.end ], [ %call.i, %do.end182 ], [ %call.i, %do.body175.out_mptspi_probe_crit_edge ], [ -1, %do.end37 ], [ -19, %do.end9 ], [ -12, %if.end7.i.i.out_mptspi_probe_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @mptscsih_remove(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %out_mptspi_probe, %if.end195, %do.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_mptspi_probe ], [ 0, %if.end195 ], [ 0, %do.end26 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 8
  tail call void @scsi_remove_host(ptr noundef %3) #8
  tail call void @mptscsih_remove(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 8
  %call2 = tail call i32 @mptscsih_resume(ptr noundef %pdev) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 52) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.mptspi_dv_renegotiate.exit_crit_edge, label %do.body.i

entry.mptspi_dv_renegotiate.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_dv_renegotiate.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @mptspi_dv_renegotiate.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mptspi_dv_renegotiate_work, ptr %func.i, align 4
  %hd6.i = getelementptr inbounds %struct.work_queue_wrapper, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %hd6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hostdata.i, ptr %hd6.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef nonnull %call7.i.i) #8
  br label %mptspi_dv_renegotiate.exit

mptspi_dv_renegotiate.exit:                       ; preds = %do.body.i, %entry.mptspi_dv_renegotiate.exit_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptscsih_shutdown(ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_attach(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_IssueTaskMgmt(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptscsih_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_qcmd(ptr nocapture noundef readonly %shost, ptr noundef %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %SCpnt) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %channel = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %conv = trunc i32 %12 to i8
  %call5 = tail call i32 @mptscsih_is_phys_disk(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %result9 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %13 = ptrtoint ptr %result9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %result9, align 4
  tail call void @scsi_done(ptr noundef %SCpnt) #8
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 55, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %dv_pending = getelementptr i8, ptr %17, i32 1012
  %18 = ptrtoint ptr %dv_pending to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %dv_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool13.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool13.not, label %if.end10.if.end18_crit_edge, label %do.body

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.body:                                          ; preds = %if.end10
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_level, align 4
  %and = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body.if.end18_crit_edge, label %if.then16

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @scsi_print_command(ptr noundef %SCpnt) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %call19 = tail call i32 @mptscsih_qcmd(ptr noundef %SCpnt) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call19, %if.end18 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptscsih_info(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_abort(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_dev_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_bus_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_host_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_slave_alloc(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %conv = trunc i32 %7 to i8
  %call2 = tail call i32 @mptscsih_is_phys_disk(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef 16) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %9 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun, align 8
  %lun9 = getelementptr inbounds %struct._VirtDevice, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %lun9 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %lun9, align 8
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %12 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %hostdata11 = getelementptr i8, ptr %14, i32 968
  %15 = ptrtoint ptr %hostdata11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hostdata11, align 8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %call7.i.i, align 8
  %num_luns = getelementptr inbounds %struct._VirtTarget, ptr %16, i32 0, i32 13
  %18 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_luns, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %num_luns, align 4
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp14 = icmp eq i32 %21, 1
  br i1 %cmp14, label %if.then16, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %no_uld_attach = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %22 = ptrtoint ptr %no_uld_attach to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load = load i64, ptr %no_uld_attach, align 4
  %bf.set = or i64 %bf.load, 8589934592
  store i64 %bf.set, ptr %no_uld_attach, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end8.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -6, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_slave_configure(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %hostdata = getelementptr i8, ptr %3, i32 968
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %inq_periph_qual.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 24
  %6 = ptrtoint ptr %inq_periph_qual.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %inq_periph_qual.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp ne i8 %7, 0
  %cmp2.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %entry.mptspi_initTarget.exit_crit_edge, label %if.end5.i

entry.mptspi_initTarget.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_initTarget.exit

if.end5.i:                                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  %type6.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %type6.i, align 1
  %11 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp9.i = icmp eq i8 %11, 3
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end5.i.if.end72.i_crit_edge

if.end5.i.if.end72.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %12 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostdata.i, align 4
  %Saf_Te.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %13, i32 0, i32 59, i32 15
  %14 = ptrtoint ptr %Saf_Te.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %Saf_Te.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %tflags20.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %tflags20.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tflags20.i, align 4
  br i1 %tobool.not.i, label %land.lhs.true19.i, label %land.lhs.true.i.if.end72.sink.split.i_crit_edge

land.lhs.true.i.if.end72.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not.i = icmp eq i8 %18, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %land.lhs.true19.i.if.end72.i_crit_edge

land.lhs.true19.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then23.i:                                      ; preds = %land.lhs.true19.i
  %inquiry_len.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 27
  %19 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %inquiry_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %20)
  %cmp25.i = icmp ugt i8 %20, 49
  br i1 %cmp25.i, label %if.then27.i, label %if.then23.i.if.end72.i_crit_edge

if.then23.i.if.end72.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then27.i:                                      ; preds = %if.then23.i
  %inquiry.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 29
  %21 = ptrtoint ptr %inquiry.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %inquiry.i, align 8
  %arrayidx.i = getelementptr i8, ptr %22, i32 44
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %24)
  %cmp29.i = icmp eq i8 %24, 83
  br i1 %cmp29.i, label %land.lhs.true31.i, label %if.then27.i.if.end72.i_crit_edge

if.then27.i.if.end72.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true31.i:                                ; preds = %if.then27.i
  %arrayidx33.i = getelementptr i8, ptr %22, i32 45
  %25 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %26)
  %cmp35.i = icmp eq i8 %26, 65
  br i1 %cmp35.i, label %land.lhs.true37.i, label %land.lhs.true31.i.if.end72.i_crit_edge

land.lhs.true31.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true37.i:                                ; preds = %land.lhs.true31.i
  %arrayidx39.i = getelementptr i8, ptr %22, i32 46
  %27 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %28)
  %cmp41.i = icmp eq i8 %28, 70
  br i1 %cmp41.i, label %land.lhs.true43.i, label %land.lhs.true37.i.if.end72.i_crit_edge

land.lhs.true37.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true43.i:                                ; preds = %land.lhs.true37.i
  %arrayidx45.i = getelementptr i8, ptr %22, i32 47
  %29 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %30)
  %cmp47.i = icmp eq i8 %30, 45
  br i1 %cmp47.i, label %land.lhs.true49.i, label %land.lhs.true43.i.if.end72.i_crit_edge

land.lhs.true43.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true49.i:                                ; preds = %land.lhs.true43.i
  %arrayidx51.i = getelementptr i8, ptr %22, i32 48
  %31 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %32)
  %cmp53.i = icmp eq i8 %32, 84
  br i1 %cmp53.i, label %land.lhs.true55.i, label %land.lhs.true49.i.if.end72.i_crit_edge

land.lhs.true49.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true55.i:                                ; preds = %land.lhs.true49.i
  %arrayidx57.i = getelementptr i8, ptr %22, i32 49
  %33 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %34)
  %cmp59.i = icmp eq i8 %34, 69
  br i1 %cmp59.i, label %land.lhs.true55.i.if.end72.sink.split.i_crit_edge, label %land.lhs.true55.i.if.end72.i_crit_edge

land.lhs.true55.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true55.i.if.end72.sink.split.i_crit_edge: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split.i

if.end72.sink.split.i:                            ; preds = %land.lhs.true55.i.if.end72.sink.split.i_crit_edge, %land.lhs.true.i.if.end72.sink.split.i_crit_edge
  %or64.i = or i8 %17, 32
  %35 = ptrtoint ptr %tflags20.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or64.i, ptr %tflags20.i, align 4
  %channel66.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %channel66.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel66.i, align 1
  %id67.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %id67.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id67.i, align 2
  %40 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hostdata.i, align 4
  %DoneCtx.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 89
  %42 = ptrtoint ptr %DoneCtx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %DoneCtx.i, align 1
  %call.i = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %43, ptr noundef %41) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end72.sink.split.i
  %debug_level.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 10
  %44 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_level.i, align 4
  %and.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i53, label %do.body.i.if.end72.i_crit_edge, label %do.end.i

do.body.i.if.end72.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 2
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i) #11
  br label %if.end72.i

if.end7.i:                                        ; preds = %if.end72.sink.split.i
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %call.i, align 4
  %Reserved.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %Reserved.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %Reserved.i, align 1
  %ChainOffset.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %ChainOffset.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ChainOffset.i, align 2
  %Function.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 4, ptr %Function.i, align 1
  %ExtPageLength.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 4
  %uglygep.i = getelementptr i8, ptr %call.i, i32 12
  %50 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %uglygep.i, align 1
  %pIocPg4.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 59, i32 2
  %51 = ptrtoint ptr %ExtPageLength.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %ExtPageLength.i, align 4
  %52 = ptrtoint ptr %pIocPg4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pIocPg4.i, align 4
  %IocPg4_dma.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 59, i32 3
  %54 = ptrtoint ptr %IocPg4_dma.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %IocPg4_dma.i, align 4
  %ActiveSEP.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_4, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %ActiveSEP.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ActiveSEP.i, align 2
  %inc10.i = add i8 %57, 1
  store i8 %inc10.i, ptr %ActiveSEP.i, align 2
  %conv.i54 = zext i8 %57 to i32
  %arrayidx11.i = getelementptr %struct._CONFIG_PAGE_IOC_4, ptr %53, i32 0, i32 4, i32 %conv.i54
  %58 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %39, ptr %arrayidx11.i, align 2
  %SEPBus.i = getelementptr %struct._CONFIG_PAGE_IOC_4, ptr %53, i32 0, i32 4, i32 %conv.i54, i32 1
  %59 = ptrtoint ptr %SEPBus.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %37, ptr %SEPBus.i, align 1
  %Header.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %53, align 2
  %62 = ptrtoint ptr %Header.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %Header.i, align 4
  %conv15.i = zext i8 %39 to i32
  %conv16.i = zext i8 %37 to i32
  %shl.i = shl nuw nsw i32 %conv16.i, 8
  %or.i = or i32 %shl.i, %conv15.i
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %PageAddress.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 10
  %64 = ptrtoint ptr %PageAddress.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %PageAddress.i, align 4
  %PageLength.i = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %53, i32 0, i32 1
  %65 = ptrtoint ptr %PageLength.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %PageLength.i, align 1
  %conv18.i = zext i8 %66 to i32
  %add.i = add nuw nsw i32 %conv18.i, %conv.i54
  %mul.i = shl nuw nsw i32 %add.i, 2
  %or19.i = or i32 %mul.i, -721420288
  %add_sge.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 32
  %67 = ptrtoint ptr %add_sge.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add_sge.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call.i, i32 0, i32 11
  tail call void %68(ptr noundef %PageBufferSGE.i, i32 noundef %or19.i, i32 noundef %55) #8
  %debug_level21.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 10
  %69 = ptrtoint ptr %debug_level21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug_level21.i, align 4
  %and22.i = and i32 %70, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end7.i.do.end39.i_crit_edge, label %do.end27.i

if.end7.i.do.end39.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

do.end27.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %name29.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %41, i32 0, i32 2
  %MaxSEP.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_4, ptr %53, i32 0, i32 2
  %71 = ptrtoint ptr %MaxSEP.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %MaxSEP.i, align 1
  %conv31.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %ActiveSEP.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ActiveSEP.i, align 2
  %conv33.i = zext i8 %74 to i32
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name29.i, i32 noundef %conv31.i, i32 noundef %conv33.i, i32 noundef %conv15.i, i32 noundef %conv16.i) #11
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end27.i, %if.end7.i.do.end39.i_crit_edge
  %75 = ptrtoint ptr %DoneCtx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %DoneCtx.i, align 1
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %76, ptr noundef %41, ptr noundef nonnull %call.i) #8
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end39.i, %do.end.i, %do.body.i.if.end72.i_crit_edge, %land.lhs.true55.i.if.end72.i_crit_edge, %land.lhs.true49.i.if.end72.i_crit_edge, %land.lhs.true43.i.if.end72.i_crit_edge, %land.lhs.true37.i.if.end72.i_crit_edge, %land.lhs.true31.i.if.end72.i_crit_edge, %if.then27.i.if.end72.i_crit_edge, %if.then23.i.if.end72.i_crit_edge, %land.lhs.true19.i.if.end72.i_crit_edge, %if.end5.i.if.end72.i_crit_edge
  %77 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hostdata.i, align 4
  %id2.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 3
  %79 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %id2.i.i, align 2
  %conv.i.i = zext i8 %80 to i32
  %noQas3.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 59, i32 14
  %81 = ptrtoint ptr %noQas3.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %noQas3.i.i, align 1
  %negoFlags.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 8
  %83 = ptrtoint ptr %negoFlags.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %negoFlags.i.i, align 1
  %scsi_level.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %84 = ptrtoint ptr %scsi_level.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %scsi_level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %85)
  %cmp.i.i = icmp ult i8 %85, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %maxSyncOffset.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 59, i32 6
  %86 = ptrtoint ptr %maxSyncOffset.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %maxSyncOffset.i.i, align 1
  %tflags.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 1
  %88 = ptrtoint ptr %tflags.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tflags.i.i, align 4
  %90 = and i8 %89, -9
  store i8 %90, ptr %tflags.i.i, align 4
  br label %if.end56.i.i

if.else.i.i:                                      ; preds = %if.end72.i
  %wdtr.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %91 = ptrtoint ptr %wdtr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %bf.load.i.i.i = load i64, ptr %wdtr.i.i.i, align 4
  %92 = lshr i64 %bf.load.i.i.i, 54
  %93 = trunc i64 %92 to i8
  %94 = and i8 %93, 1
  %95 = and i64 %bf.load.i.i.i, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool10.not.i.i = icmp eq i64 %95, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i.if.end56.i.i_crit_edge, label %if.then11.i.i

if.else.i.i.if.end56.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  %96 = and i64 %bf.load.i.i.i, 9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %tobool13.not.i.i = icmp eq i64 %96, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.if.end47.i.i_crit_edge, label %if.else15.i.i

if.then11.i.i.if.end47.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

if.else15.i.i:                                    ; preds = %if.then11.i.i
  %inquiry_len.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 27
  %97 = ptrtoint ptr %inquiry_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %inquiry_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %98)
  %cmp.i.i.i = icmp ult i8 %98, 57
  br i1 %cmp.i.i.i, label %if.else15.i.i.if.end47.i.i_crit_edge, label %scsi_device_ius.exit.i.i

if.else15.i.i.if.end47.i.i_crit_edge:             ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

scsi_device_ius.exit.i.i:                         ; preds = %if.else15.i.i
  %inquiry.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 29
  %99 = ptrtoint ptr %inquiry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %inquiry.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %100, i32 56
  %101 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i.i, align 1
  %103 = and i8 %102, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %scsi_device_ius.exit.i.i.if.end47.i.i_crit_edge, label %scsi_device_qas.exit275.i.i

scsi_device_ius.exit.i.i.if.end47.i.i_crit_edge:  ; preds = %scsi_device_ius.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

scsi_device_qas.exit275.i.i:                      ; preds = %scsi_device_ius.exit.i.i
  %105 = and i8 %102, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool23.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool23.not.i.i, label %scsi_device_qas.exit275.i.i.if.end34.i.i_crit_edge, label %do.body.i.i

scsi_device_qas.exit275.i.i.if.end34.i.i_crit_edge: ; preds = %scsi_device_qas.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

do.body.i.i:                                      ; preds = %scsi_device_qas.exit275.i.i
  %debug_level.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 10
  %106 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %debug_level.i.i, align 4
  %and25.i.i = and i32 %107, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %do.body.i.i.if.end34.i.i_crit_edge, label %scsi_device_qas.exit283.i.i

do.body.i.i.if.end34.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

scsi_device_qas.exit283.i.i:                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 2
  %and.i280.i.i = zext i8 %105 to i32
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i.i, i32 noundef %and.i280.i.i, i32 noundef %conv.i.i) #11
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %scsi_device_qas.exit283.i.i, %do.body.i.i.if.end34.i.i_crit_edge, %scsi_device_qas.exit275.i.i.if.end34.i.i_crit_edge
  %noQas.0.i.i = phi i8 [ 1, %scsi_device_qas.exit275.i.i.if.end34.i.i_crit_edge ], [ 0, %scsi_device_qas.exit283.i.i ], [ 0, %do.body.i.i.if.end34.i.i_crit_edge ]
  %108 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp36.i.i = icmp eq i8 %109, 1
  br i1 %cmp36.i.i, label %land.lhs.true38.i.i, label %if.end34.i.i.if.end47.i.i_crit_edge

if.end34.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true38.i.i:                              ; preds = %if.end34.i.i
  %110 = ptrtoint ptr %inquiry_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %inquiry_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %111)
  %cmp.i285.i.i = icmp ult i8 %111, 57
  br i1 %cmp.i285.i.i, label %land.lhs.true38.i.i.if.end47.i.i_crit_edge, label %scsi_device_ius.exit291.i.i

land.lhs.true38.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

scsi_device_ius.exit291.i.i:                      ; preds = %land.lhs.true38.i.i
  %112 = ptrtoint ptr %inquiry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inquiry.i.i.i, align 8
  %arrayidx.i287.i.i = getelementptr i8, ptr %113, i32 56
  %114 = ptrtoint ptr %arrayidx.i287.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i287.i.i, align 1
  %116 = and i8 %115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool40.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool40.not.i.i, label %scsi_device_ius.exit291.i.i.if.end47.i.i_crit_edge, label %if.then41.i.i

scsi_device_ius.exit291.i.i.if.end47.i.i_crit_edge: ; preds = %scsi_device_ius.exit291.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

if.then41.i.i:                                    ; preds = %scsi_device_ius.exit291.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %negoFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %negoFlags.i.i, align 1
  %119 = or i8 %118, 8
  store i8 %119, ptr %negoFlags.i.i, align 1
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then41.i.i, %scsi_device_ius.exit291.i.i.if.end47.i.i_crit_edge, %land.lhs.true38.i.i.if.end47.i.i_crit_edge, %if.end34.i.i.if.end47.i.i_crit_edge, %scsi_device_ius.exit.i.i.if.end47.i.i_crit_edge, %if.else15.i.i.if.end47.i.i_crit_edge, %if.then11.i.i.if.end47.i.i_crit_edge
  %factor.0.i.i = phi i8 [ 8, %if.then41.i.i ], [ 8, %scsi_device_ius.exit291.i.i.if.end47.i.i_crit_edge ], [ 8, %if.end34.i.i.if.end47.i.i_crit_edge ], [ 10, %if.then11.i.i.if.end47.i.i_crit_edge ], [ 9, %if.else15.i.i.if.end47.i.i_crit_edge ], [ 8, %land.lhs.true38.i.i.if.end47.i.i_crit_edge ], [ 9, %scsi_device_ius.exit.i.i.if.end47.i.i_crit_edge ]
  %noQas.1.i.i = phi i8 [ %noQas.0.i.i, %if.then41.i.i ], [ %noQas.0.i.i, %scsi_device_ius.exit291.i.i.if.end47.i.i_crit_edge ], [ %noQas.0.i.i, %if.end34.i.i.if.end47.i.i_crit_edge ], [ 1, %if.then11.i.i.if.end47.i.i_crit_edge ], [ 1, %if.else15.i.i.if.end47.i.i_crit_edge ], [ %noQas.0.i.i, %land.lhs.true38.i.i.if.end47.i.i_crit_edge ], [ 1, %scsi_device_ius.exit.i.i.if.end47.i.i_crit_edge ]
  %maxSyncOffset48.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 59, i32 6
  %120 = ptrtoint ptr %maxSyncOffset48.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %maxSyncOffset48.i.i, align 1
  %raidVolume.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 9
  %122 = ptrtoint ptr %raidVolume.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %raidVolume.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp50.i.i = icmp eq i8 %123, 1
  %spec.select250.i.i = select i1 %cmp50.i.i, i8 0, i8 %noQas.1.i.i
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end47.i.i, %if.else.i.i.if.end56.i.i_crit_edge, %if.then.i.i
  %width.1.i.i = phi i8 [ 0, %if.then.i.i ], [ %94, %if.end47.i.i ], [ %94, %if.else.i.i.if.end56.i.i_crit_edge ]
  %factor.1.i.i = phi i8 [ 10, %if.then.i.i ], [ %factor.0.i.i, %if.end47.i.i ], [ -1, %if.else.i.i.if.end56.i.i_crit_edge ]
  %offset.0.i.i = phi i8 [ %87, %if.then.i.i ], [ %121, %if.end47.i.i ], [ 0, %if.else.i.i.if.end56.i.i_crit_edge ]
  %noQas.2.i.i = phi i8 [ 1, %if.then.i.i ], [ %spec.select250.i.i, %if.end47.i.i ], [ 1, %if.else.i.i.if.end56.i.i_crit_edge ]
  %tagged_supported.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %124 = ptrtoint ptr %tagged_supported.i.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %bf.load.i.i = load i64, ptr %tagged_supported.i.i, align 4
  %125 = and i64 %bf.load.i.i, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %125)
  %tobool57.not.i.i = icmp eq i64 %125, 0
  br i1 %tobool57.not.i.i, label %if.then58.i.i, label %if.end56.i.i.if.end63.i.i_crit_edge

if.end56.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i.i

if.then58.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tflags59.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 1
  %126 = ptrtoint ptr %tflags59.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tflags59.i.i, align 4
  %128 = and i8 %127, -9
  store i8 %128, ptr %tflags59.i.i, align 4
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then58.i.i, %if.end56.i.i.if.end63.i.i_crit_edge
  %nvram64.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 59, i32 1
  %129 = ptrtoint ptr %nvram64.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nvram64.i.i, align 4
  %tobool65.not.i.i = icmp eq ptr %130, null
  br i1 %tobool65.not.i.i, label %if.end63.i.i.if.end113.i.i_crit_edge, label %land.lhs.true66.i.i

if.end63.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i.i

land.lhs.true66.i.i:                              ; preds = %if.end63.i.i
  %arrayidx.i.i = getelementptr i32, ptr %130, i32 %conv.i.i
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %cmp68.not.i.i = icmp eq i32 %132, -1
  br i1 %cmp68.not.i.i, label %land.lhs.true66.i.i.if.end113.i.i_crit_edge, label %if.then70.i.i

land.lhs.true66.i.i.if.end113.i.i_crit_edge:      ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i.i

if.then70.i.i:                                    ; preds = %land.lhs.true66.i.i
  %and73.i.i = lshr i32 %132, 8
  %conv74.i.i = trunc i32 %and73.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %width.1.i.i)
  %tobool75.not.i.i = icmp eq i8 %width.1.i.i, 0
  %and77.i.i = lshr i32 %132, 20
  %133 = trunc i32 %and77.i.i to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %width.2.i.i = select i1 %tobool75.not.i.i, i8 0, i8 %135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %offset.0.i.i)
  %cmp82.not.i.i = icmp eq i8 %offset.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv74.i.i)
  %tobool85.not.i.i = icmp eq i8 %conv74.i.i, 0
  %or.cond.i.i = select i1 %cmp82.not.i.i, i1 true, i1 %tobool85.not.i.i
  br i1 %or.cond.i.i, label %if.then70.i.i.if.end113.i.i_crit_edge, label %if.then86.i.i

if.then70.i.i.if.end113.i.i_crit_edge:            ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i.i

if.then86.i.i:                                    ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv87.i.i = and i32 %and73.i.i, 255
  %minSyncFactor88.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 59, i32 5
  %136 = ptrtoint ptr %minSyncFactor88.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %minSyncFactor88.i.i, align 4
  %conv89.i.i = zext i8 %137 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv87.i.i, i32 %conv89.i.i)
  %cmp90.i.i = icmp ult i32 %conv87.i.i, %conv89.i.i
  %spec.select251.i.i = select i1 %cmp90.i.i, i8 %137, i8 %conv74.i.i
  %138 = tail call i8 @llvm.umax.i8(i8 %factor.1.i.i, i8 %spec.select251.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %138)
  %cmp105.i.i = icmp eq i8 %138, -1
  %spec.select254.i.i = select i1 %cmp105.i.i, i8 0, i8 %offset.0.i.i
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %if.then86.i.i, %if.then70.i.i.if.end113.i.i_crit_edge, %land.lhs.true66.i.i.if.end113.i.i_crit_edge, %if.end63.i.i.if.end113.i.i_crit_edge
  %width.3.i.i = phi i8 [ %width.1.i.i, %land.lhs.true66.i.i.if.end113.i.i_crit_edge ], [ %width.1.i.i, %if.end63.i.i.if.end113.i.i_crit_edge ], [ %width.2.i.i, %if.then70.i.i.if.end113.i.i_crit_edge ], [ %width.2.i.i, %if.then86.i.i ]
  %factor.2.i.i = phi i8 [ %factor.1.i.i, %land.lhs.true66.i.i.if.end113.i.i_crit_edge ], [ %factor.1.i.i, %if.end63.i.i.if.end113.i.i_crit_edge ], [ -1, %if.then70.i.i.if.end113.i.i_crit_edge ], [ %138, %if.then86.i.i ]
  %offset.1.i.i = phi i8 [ %offset.0.i.i, %land.lhs.true66.i.i.if.end113.i.i_crit_edge ], [ %offset.0.i.i, %if.end63.i.i.if.end113.i.i_crit_edge ], [ 0, %if.then70.i.i.if.end113.i.i_crit_edge ], [ %spec.select254.i.i, %if.then86.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %width.3.i.i)
  %tobool114.not.i.i = icmp eq i8 %width.3.i.i, 0
  %139 = tail call i8 @llvm.umax.i8(i8 %factor.2.i.i, i8 10) #8
  %spec.select252.i.i = select i1 %tobool114.not.i.i, i8 %139, i8 %factor.2.i.i
  %minSyncFactor121.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 5
  %140 = ptrtoint ptr %minSyncFactor121.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %spec.select252.i.i, ptr %minSyncFactor121.i.i, align 4
  %maxOffset.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 6
  %141 = ptrtoint ptr %maxOffset.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %offset.1.i.i, ptr %maxOffset.i.i, align 1
  %maxWidth.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 7
  %142 = ptrtoint ptr %maxWidth.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %width.3.i.i, ptr %maxWidth.i.i, align 2
  %conv122.i.i = zext i8 %spec.select252.i.i to i32
  %143 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %parent.i, align 8
  %min_period.i.i = getelementptr i8, ptr %144, i32 976
  %145 = ptrtoint ptr %min_period.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv122.i.i, ptr %min_period.i.i, align 4
  %conv124.i.i = zext i8 %offset.1.i.i to i32
  %146 = load ptr, ptr %parent.i, align 8
  %max_offset.i.i = getelementptr i8, ptr %146, i32 984
  %147 = ptrtoint ptr %max_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv124.i.i, ptr %max_offset.i.i, align 4
  %148 = load ptr, ptr %parent.i, align 8
  %max_width.i.i = getelementptr i8, ptr %148, i32 988
  %149 = ptrtoint ptr %max_width.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load130.i.i = load i16, ptr %max_width.i.i, align 4
  %150 = and i8 %width.3.i.i, 1
  %bf.value.i.i = zext i8 %150 to i16
  %bf.shl.i.i = shl nuw nsw i16 %bf.value.i.i, 14
  %bf.clear131.i.i = and i16 %bf.load130.i.i, -16385
  %bf.set.i.i = or i16 %bf.clear131.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %max_width.i.i, align 4
  %tflags132.i.i = getelementptr inbounds %struct._VirtTarget, ptr %5, i32 0, i32 1
  %151 = ptrtoint ptr %tflags132.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %tflags132.i.i, align 4
  %153 = or i8 %152, 1
  store i8 %153, ptr %tflags132.i.i, align 4
  br i1 %tobool114.not.i.i, label %if.then137.i.i, label %if.end113.i.i.if.end142.i.i_crit_edge

if.end113.i.i.if.end142.i.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142.i.i

if.then137.i.i:                                   ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %negoFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %negoFlags.i.i, align 1
  %156 = or i8 %155, 1
  store i8 %156, ptr %negoFlags.i.i, align 1
  br label %if.end142.i.i

if.end142.i.i:                                    ; preds = %if.then137.i.i, %if.end113.i.i.if.end142.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %offset.1.i.i)
  %tobool143.not.i.i = icmp eq i8 %offset.1.i.i, 0
  br i1 %tobool143.not.i.i, label %if.then144.i.i, label %if.end142.i.i.if.end149.i.i_crit_edge

if.end142.i.i.if.end149.i.i_crit_edge:            ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.i.i

if.then144.i.i:                                   ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %negoFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %negoFlags.i.i, align 1
  %159 = or i8 %158, 2
  store i8 %159, ptr %negoFlags.i.i, align 1
  br label %if.end149.i.i

if.end149.i.i:                                    ; preds = %if.then144.i.i, %if.end142.i.i.if.end149.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.select252.i.i)
  %cmp151.i.i = icmp ugt i8 %spec.select252.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %noQas.2.i.i)
  %tobool156.not305.i.i = icmp eq i8 %noQas.2.i.i, 0
  %tobool156.not.i.i = select i1 %cmp151.i.i, i1 true, i1 %tobool156.not305.i.i
  br i1 %tobool156.not.i.i, label %if.end149.i.i.mptspi_initTarget.exit_crit_edge, label %land.lhs.true157.i.i

if.end149.i.i.mptspi_initTarget.exit_crit_edge:   ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_initTarget.exit

land.lhs.true157.i.i:                             ; preds = %if.end149.i.i
  %160 = ptrtoint ptr %noQas3.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %noQas3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp160.i.i = icmp eq i8 %161, 0
  br i1 %cmp160.i.i, label %if.then162.i.i, label %land.lhs.true157.i.i.mptspi_initTarget.exit_crit_edge

land.lhs.true157.i.i.mptspi_initTarget.exit_crit_edge: ; preds = %land.lhs.true157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_initTarget.exit

if.then162.i.i:                                   ; preds = %land.lhs.true157.i.i
  %162 = ptrtoint ptr %noQas3.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 4, ptr %noQas3.i.i, align 1
  %163 = ptrtoint ptr %negoFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %negoFlags.i.i, align 1
  %165 = or i8 %164, 4
  store i8 %165, ptr %negoFlags.i.i, align 1
  %debug_level172.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 10
  %166 = ptrtoint ptr %debug_level172.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %debug_level172.i.i, align 4
  %and173.i.i = and i32 %167, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i.i)
  %tobool174.not.i.i = icmp eq i32 %and173.i.i, 0
  br i1 %tobool174.not.i.i, label %if.then162.i.i.mptspi_initTarget.exit_crit_edge, label %do.end178.i.i

if.then162.i.i.mptspi_initTarget.exit_crit_edge:  ; preds = %if.then162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_initTarget.exit

do.end178.i.i:                                    ; preds = %if.then162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name180.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %78, i32 0, i32 2
  %call183.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name180.i.i, i32 noundef 1, i32 noundef %conv.i.i) #11
  br label %mptspi_initTarget.exit

mptspi_initTarget.exit:                           ; preds = %do.end178.i.i, %if.then162.i.i.mptspi_initTarget.exit_crit_edge, %land.lhs.true157.i.i.mptspi_initTarget.exit_crit_edge, %if.end149.i.i.mptspi_initTarget.exit_crit_edge, %entry.mptspi_initTarget.exit_crit_edge
  %call2 = tail call i32 @mptscsih_slave_configure(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %mptspi_initTarget.exit.cleanup_crit_edge

mptspi_initTarget.exit.cleanup_crit_edge:         ; preds = %mptspi_initTarget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %mptspi_initTarget.exit
  %168 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hostdata.i, align 4
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %169, i32 0, i32 10
  %170 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %debug_level, align 4
  %and = and i32 %171, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end15_crit_edge, label %do.end

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %169, i32 0, i32 2
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %172 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %id, align 8
  %174 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %parent.i, align 8
  %min_period = getelementptr i8, ptr %175, i32 976
  %176 = ptrtoint ptr %min_period to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %min_period, align 4
  %max_offset = getelementptr i8, ptr %175, i32 984
  %178 = ptrtoint ptr %max_offset to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %max_offset, align 4
  %max_width = getelementptr i8, ptr %175, i32 988
  %180 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load = load i16, ptr %max_width, align 4
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %173, i32 noundef %177, i32 noundef %179, i32 noundef %bf.cast) #11
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %181 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp = icmp eq i32 %182, 1
  br i1 %cmp, label %do.end15.land.lhs.true_crit_edge, label %lor.lhs.false

do.end15.land.lhs.true_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %do.end15
  %id16 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %183 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %id16, align 8
  %185 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hostdata.i, align 4
  %raid_data.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %186, i32 0, i32 60
  %187 = ptrtoint ptr %raid_data.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %raid_data.i, align 8
  %tobool.not.i51 = icmp eq ptr %188, null
  br i1 %tobool.not.i51, label %lor.lhs.false.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false
  %NumActiveVolumes.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_2, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %NumActiveVolumes.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %NumActiveVolumes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool4.not.i = icmp eq i8 %190, 0
  br i1 %tobool4.not.i, label %if.end.i.land.lhs.true_crit_edge, label %for.cond.preheader.i

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i8 %190 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.land.lhs.true_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.land.lhs.true_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.023.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i52 = getelementptr %struct._CONFIG_PAGE_IOC_2, ptr %188, i32 0, i32 6, i32 %i.023.i
  %191 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i52, align 4
  %conv13.i = zext i8 %192 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %184, %conv13.i
  br i1 %cmp14.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.i.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge, %do.end15.land.lhs.true_crit_edge
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %193 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sdev_target, align 8
  %initial_dv = getelementptr inbounds %struct.scsi_target, ptr %194, i32 1, i32 2
  %195 = ptrtoint ptr %initial_dv to i32
  call void @__asan_load2_noabort(i32 %195)
  %bf.load20 = load i16, ptr %initial_dv, align 4
  %196 = and i16 %bf.load20, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool24.not = icmp eq i16 %196, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mptspi_dv_device(ptr noundef %hostdata.i, ptr noundef %sdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %land.lhs.true.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %mptspi_initTarget.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %mptspi_initTarget.exit.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_slave_destroy(ptr noundef %sdev) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  %hostdata = getelementptr i8, ptr %1, i32 968
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %num_luns = getelementptr inbounds %struct._VirtTarget, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_luns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hostdata1 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %6 = ptrtoint ptr %hostdata1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata1, align 8
  %configured_lun = getelementptr inbounds %struct._VirtDevice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %configured_lun to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %configured_lun, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %10 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %11 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %12 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %13 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pg1, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %12, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %add.ptr.i, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mptscsih_slave_destroy(ptr noundef %sdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_target_alloc(ptr noundef %starget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %cmp = icmp eq ptr %hostdata.i, null
  br i1 %cmp, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %conv = trunc i32 %6 to i8
  %ioc_id = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ioc_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %ioc_id, align 1
  %tflags = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %tflags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %tflags, align 4
  %id6 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %9 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id6, align 8
  %conv7 = trunc i32 %10 to i8
  %id8 = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %id8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %id8, align 2
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %conv9 = trunc i32 %13 to i8
  %channel10 = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %channel10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9, ptr %channel10, align 1
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %starget, ptr %call7.i.i, align 8
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %16 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %hostdata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp13 = icmp eq i32 %13, 1
  br i1 %cmp13, label %if.then15, label %if.end5.if.end31_crit_edge

if.end5.if.end31_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then15:                                        ; preds = %if.end5
  %call18 = tail call i32 @mptscsih_is_phys_disk(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then15.cleanup_crit_edge, label %if.end22

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %tflags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tflags, align 4
  %19 = or i8 %18, 64
  store i8 %19, ptr %tflags, align 4
  %20 = ptrtoint ptr %channel10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %channel10, align 1
  %21 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id6, align 8
  %conv28 = trunc i32 %22 to i8
  %call29 = tail call zeroext i8 @mptscsih_raid_id_to_num(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv28) #8
  %23 = ptrtoint ptr %id8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call29, ptr %id8, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.end22, %if.end5.if.end31_crit_edge
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33 = icmp eq i32 %25, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end31.if.end48_crit_edge

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end31
  %26 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id6, align 8
  %28 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hostdata.i, align 4
  %raid_data.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %29, i32 0, i32 60
  %30 = ptrtoint ptr %raid_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %raid_data.i, align 8
  %tobool.not.i134 = icmp eq ptr %31, null
  br i1 %tobool.not.i134, label %land.lhs.true.if.end48_crit_edge, label %if.end.i

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end.i:                                         ; preds = %land.lhs.true
  %NumActiveVolumes.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_2, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %NumActiveVolumes.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %NumActiveVolumes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool4.not.i = icmp eq i8 %33, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end48_crit_edge, label %for.cond.preheader.i

if.end.i.if.end48_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i8 %33 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end48_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.end48_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.023.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._CONFIG_PAGE_IOC_2, ptr %31, i32 0, i32 6, i32 %i.023.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 4
  %conv13.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %27, %conv13.i
  br i1 %cmp14.i, label %if.then38, label %for.cond.i

if.then38:                                        ; preds = %for.body.i
  %raidVolume = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %raidVolume to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %raidVolume, align 4
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 10
  %37 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug_level, align 4
  %and = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then38.if.end48_crit_edge, label %do.end

if.then38.if.end48_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end:                                           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name, i32 noundef 0, i32 noundef %27) #11
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.then38.if.end48_crit_edge, %for.cond.i.if.end48_crit_edge, %if.end.i.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end31.if.end48_crit_edge
  %nvram = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 59, i32 1
  %39 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nvram, align 4
  %tobool49.not = icmp eq ptr %40, null
  br i1 %tobool49.not, label %if.end48.if.else_crit_edge, label %land.lhs.true50

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true50:                                  ; preds = %if.end48
  %41 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id6, align 8
  %arrayidx = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp54.not = icmp eq i32 %44, -1
  br i1 %cmp54.not, label %land.lhs.true50.if.else_crit_edge, label %if.then56

land.lhs.true50.if.else_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then56:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #10
  %and62 = lshr i32 %44, 8
  %shr = and i32 %and62, 255
  %min_period = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1
  %45 = ptrtoint ptr %min_period to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr, ptr %min_period, align 4
  %max_width = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %46 = ptrtoint ptr %max_width to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load = load i16, ptr %max_width, align 4
  %sh.diff = lshr i32 %44, 6
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %47 = and i16 %tr.sh.diff, 16384
  %bf.clear = and i16 %bf.load, -16385
  %48 = or i16 %bf.clear, %47
  %bf.set = xor i16 %48, 16384
  store i16 %bf.set, ptr %max_width, align 4
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true50.if.else_crit_edge, %if.end48.if.else_crit_edge
  %minSyncFactor = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 59, i32 5
  %49 = ptrtoint ptr %minSyncFactor to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %minSyncFactor, align 4
  %conv67 = zext i8 %50 to i32
  %min_period69 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1
  %51 = ptrtoint ptr %min_period69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv67, ptr %min_period69, align 4
  %maxBusWidth = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 59, i32 7
  %52 = ptrtoint ptr %maxBusWidth to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %maxBusWidth, align 2
  %max_width73 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %54 = ptrtoint ptr %max_width73 to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load74 = load i16, ptr %max_width73, align 4
  %55 = and i8 %53, 1
  %bf.value75 = zext i8 %55 to i16
  %bf.shl76 = shl nuw nsw i16 %bf.value75, 14
  %bf.clear77 = and i16 %bf.load74, -16385
  %bf.set78 = or i16 %bf.shl76, %bf.clear77
  store i16 %bf.set78, ptr %max_width73, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then56
  %maxSyncOffset = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 59, i32 6
  %56 = ptrtoint ptr %maxSyncOffset to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %maxSyncOffset, align 1
  %conv82 = zext i8 %57 to i32
  %starget_data83 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %max_offset = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1, i32 1
  %58 = ptrtoint ptr %max_offset to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv82, ptr %max_offset, align 4
  %offset = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %offset, align 4
  %60 = ptrtoint ptr %starget_data83 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 255, ptr %starget_data83, align 4
  tail call void @mptspi_write_width(ptr noundef %starget, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -19, %dev_to_shost.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_target_destroy(ptr nocapture noundef %starget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hostdata, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_show_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_is_phys_disk(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_qcmd(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_slave_configure(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptspi_dv_device(ptr nocapture noundef %hd, ptr noundef %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %hostdata = getelementptr i8, ptr %1, i32 968
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %4 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hd, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end12_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true5
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %raid_data.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %5, i32 0, i32 60
  %11 = ptrtoint ptr %raid_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raid_data.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end12_crit_edge, label %if.end.i

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %land.lhs.true
  %NumActiveVolumes.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_2, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %NumActiveVolumes.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %NumActiveVolumes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end12_crit_edge, label %for.cond.preheader.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i8 %14 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.023.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._CONFIG_PAGE_IOC_2, ptr %12, i32 0, i32 6, i32 %i.023.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 4
  %conv13.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %10, %conv13.i
  br i1 %cmp14.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5:                                   ; preds = %entry
  %channel6 = getelementptr inbounds %struct._VirtTarget, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %channel6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %channel6, align 1
  %id7 = getelementptr inbounds %struct._VirtTarget, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %id7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id7, align 2
  %call8 = tail call fastcc i32 @mptscsih_quiesce_raid(ptr noundef %hd, i32 noundef 1, i8 noundef zeroext %18, i8 noundef zeroext %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end, label %land.lhs.true5.if.end12_crit_edge

land.lhs.true5.if.end12_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %22, ptr noundef nonnull @.str.43, ptr noundef %name) #11
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true5.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %id13 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %23 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id13, align 8
  %shl = shl nuw i32 1, %24
  %spi_pending = getelementptr inbounds %struct._MPT_SCSI_HOST, ptr %hd, i32 0, i32 4
  %25 = ptrtoint ptr %spi_pending to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %spi_pending, align 4
  %27 = trunc i32 %shl to i16
  %conv14 = or i16 %26, %27
  store i16 %conv14, ptr %spi_pending, align 4
  tail call void @spi_dv_device(ptr noundef %sdev) #8
  %28 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id13, align 8
  %shl16 = shl nuw i32 1, %29
  %30 = ptrtoint ptr %spi_pending to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %spi_pending, align 4
  %32 = trunc i32 %shl16 to i16
  %33 = xor i16 %32, -1
  %conv19 = and i16 %31, %33
  store i16 %conv19, ptr %spi_pending, align 4
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp21 = icmp eq i32 %35, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.end12.if.end37_crit_edge

if.end12.if.end37_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true23:                                  ; preds = %if.end12
  %channel24 = getelementptr inbounds %struct._VirtTarget, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %channel24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel24, align 1
  %id25 = getelementptr inbounds %struct._VirtTarget, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %id25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id25, align 2
  %call26 = tail call fastcc i32 @mptscsih_quiesce_raid(ptr noundef %hd, i32 noundef 0, i8 noundef zeroext %37, i8 noundef zeroext %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %land.lhs.true23.if.end37_crit_edge

land.lhs.true23.if.end37_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end32:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i, align 8
  %name35 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %41, ptr noundef nonnull @.str.48, ptr noundef %name35) #11
  br label %if.end37

if.end37:                                         ; preds = %do.end32, %land.lhs.true23.if.end37_crit_edge, %if.end12.if.end37_crit_edge
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 37
  %42 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev_target, align 8
  tail call void @mptspi_read_parameters(ptr noundef %43)
  %44 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev_target, align 8
  tail call void @spi_display_xfer_agreement(ptr noundef %45) #8
  %46 = ptrtoint ptr %sdev_target to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev_target, align 8
  tail call void @mptspi_read_parameters(ptr noundef %47)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %for.body.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt_get_msg_frame(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_put_msg_frame(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptscsih_quiesce_raid(ptr nocapture noundef readonly %hd, i32 noundef %quiesce, i8 noundef zeroext %channel, i8 noundef zeroext %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 4
  %internal_cmds = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 114
  tail call void @mutex_lock_nested(ptr noundef %internal_cmds, i32 noundef 0) #8
  %InternalCtx = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %InternalCtx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %InternalCtx, align 1
  %call = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %3, ptr noundef %1) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %4 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hd, align 4
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef nonnull @.str.51) #11
  br label %out

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiesce)
  %tobool9.not = icmp eq i32 %quiesce, 0
  %. = select i1 %tobool9.not, i8 7, i8 6
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %., ptr %call, align 4
  %Reserved1 = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %Reserved1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %Reserved1, align 1
  %ChainOffset = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %ChainOffset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ChainOffset, align 2
  %Function = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 21, ptr %Function, align 1
  %VolumeID = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %VolumeID to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %id, ptr %VolumeID, align 4
  %VolumeBus = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %VolumeBus to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %channel, ptr %VolumeBus, align 1
  %PhysDiskNum = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %PhysDiskNum to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %PhysDiskNum, align 2
  %MsgFlags = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %MsgFlags, align 1
  %Reserved2 = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %Reserved2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %Reserved2, align 4
  %ActionDataWord = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 10
  %17 = ptrtoint ptr %ActionDataWord to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ActionDataWord, align 4
  %add_sge = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 32
  %18 = ptrtoint ptr %add_sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add_sge, align 8
  %ActionDataSGE = getelementptr inbounds %struct._MSG_RAID_ACTION, ptr %call, i32 0, i32 11
  tail call void %19(ptr noundef %ActionDataSGE, i32 noundef -788529152, i32 noundef -1) #8
  %debug_level14 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %debug_level14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_level14, align 4
  %and15 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end8.do.end30_crit_edge, label %do.end20

if.end8.do.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %name22 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call, align 4
  %conv = zext i8 %23 to i32
  %conv25 = zext i8 %channel to i32
  %conv26 = zext i8 %id to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name22, i32 noundef %conv, i32 noundef %conv25, i32 noundef %conv26) #11
  br label %do.end30

do.end30:                                         ; preds = %do.end20, %if.end8.do.end30_crit_edge
  %status = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 114, i32 4
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %status, align 4
  %25 = ptrtoint ptr %InternalCtx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %InternalCtx, align 1
  tail call void @mpt_put_msg_frame(i8 noundef zeroext %26, ptr noundef %1, ptr noundef nonnull %call) #8
  %done = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 114, i32 1
  %call34 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #8
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status, align 4
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool39.not = icmp eq i8 %29, 0
  br i1 %tobool39.not, label %if.then40, label %if.end74

if.then40:                                        ; preds = %do.end30
  %30 = ptrtoint ptr %debug_level14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_level14, align 4
  %and43 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then40.do.end55_crit_edge, label %do.end48

if.then40.do.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

do.end48:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %name50 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name50, ptr noundef nonnull @.str.51) #11
  br label %do.end55

do.end55:                                         ; preds = %do.end48, %if.then40.do.end55_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %status, align 4
  %34 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool60.not = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool63.not = icmp eq i32 %call34, 0
  %or.cond = select i1 %tobool60.not, i1 %tobool63.not, i1 false
  br i1 %or.cond, label %do.end67, label %do.end55.out_crit_edge

do.end55.out_crit_edge:                           ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end67:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %name69 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name69, ptr noundef nonnull @.str.51) #11
  %call72 = tail call i32 @mpt_HardResetHandler(ptr noundef %1, i32 noundef 1) #8
  tail call void @mpt_free_msg_frame(ptr noundef %1, ptr noundef nonnull %call) #8
  br label %out

if.end74:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %completion_code = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 114, i32 5
  %35 = ptrtoint ptr %completion_code to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %completion_code, align 8
  br label %out

out:                                              ; preds = %if.end74, %do.end67, %do.end55.out_crit_edge, %do.end, %do.body.out_crit_edge
  %ret.0 = phi i32 [ %36, %if.end74 ], [ -62, %do.end55.out_crit_edge ], [ -62, %do.end67 ], [ -11, %do.end ], [ -11, %do.body.out_crit_edge ]
  %status77 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 114, i32 4
  %37 = ptrtoint ptr %status77 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %status77, align 4
  tail call void @mutex_unlock(ptr noundef %internal_cmds) #8
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_dv_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_read_parameters(ptr noundef %starget) #2 align 64 {
entry:
  %spi_dev_pg0_dma.i = alloca i32, align 4
  %cfg.i = alloca %struct._x_config_parms, align 4
  %hdr.i = alloca %struct._CONFIG_PAGE_HEADER, align 4
  %spi_dev_pg0 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_0, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %spi_dev_pg0)
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  %0 = call ptr @memset(ptr %spi_dev_pg0, i32 255, i32 12)
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %dev.i, %entry ], [ %2, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.dev_to_shost.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.body.i.i.dev_to_shost.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %dev_to_shost.exit.i

dev_to_shost.exit.i:                              ; preds = %while.end.i.i, %while.body.i.i.dev_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.dev_to_shost.exit.i_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %3 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostdata.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_dev_pg0_dma.i) #8
  %5 = ptrtoint ptr %spi_dev_pg0_dma.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %spi_dev_pg0_dma.i, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i) #8
  %6 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 1
  %channel.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %dev_to_shost.exit.i.if.end.i_crit_edge

dev_to_shost.exit.i.if.end.i_crit_edge:           ; preds = %dev_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %dev_to_shost.exit.i
  %id.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 8
  %raid_data.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %4, i32 0, i32 60
  %11 = ptrtoint ptr %raid_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raid_data.i.i, align 8
  %tobool.not.i1.i = icmp eq ptr %12, null
  br i1 %tobool.not.i1.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.end.i.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %NumActiveVolumes.i.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_2, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %NumActiveVolumes.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %NumActiveVolumes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %conv.i.i = zext i8 %14 to i32
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.023.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct._CONFIG_PAGE_IOC_2, ptr %12, i32 0, i32 6, i32 %i.023.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 4
  %conv13.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv13.i.i)
  %cmp14.i.i = icmp eq i32 %10, %conv13.i.i
  br i1 %cmp14.i.i, label %for.body.i.i.mptspi_read_spi_device_pg0.exit_crit_edge, label %for.cond.i.i

for.body.i.i.mptspi_read_spi_device_pg0.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_read_spi_device_pg0.exit

if.end.i:                                         ; preds = %for.cond.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %dev_to_shost.exit.i.if.end.i_crit_edge
  %sdp0length.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %4, i32 0, i32 59, i32 12
  %17 = ptrtoint ptr %sdp0length.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sdp0length.i, align 1
  %conv.i = zext i8 %18 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %pcidev.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %4, i32 0, i32 54
  %19 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call.i2.i = call ptr @dma_alloc_attrs(ptr noundef %dev4.i, i32 noundef %mul.i, ptr noundef nonnull %spi_dev_pg0_dma.i, i32 noundef 3264, i32 noundef 0) #8
  %cmp6.i = icmp eq ptr %call.i2.i, null
  br i1 %cmp6.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %4, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev.i, ptr noundef nonnull @.str.61, ptr noundef %name.i) #11
  br label %mptspi_read_spi_device_pg0.exit

if.end10.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %hdr.i, align 4
  %sdp0version.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %4, i32 0, i32 59, i32 11
  %22 = ptrtoint ptr %sdp0version.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sdp0version.i, align 2
  store i8 %23, ptr %hdr.i, align 4
  %24 = ptrtoint ptr %sdp0length.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sdp0length.i, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %6, align 1
  %27 = getelementptr inbounds i8, ptr %cfg.i, i32 12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 1100518260736, ptr %27, align 4
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %hdr.i, ptr %cfg.i, align 4
  %30 = ptrtoint ptr %spi_dev_pg0_dma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %spi_dev_pg0_dma.i, align 4
  %physAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 1
  %32 = ptrtoint ptr %physAddr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %physAddr.i, align 4
  %id14.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %33 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id14.i, align 8
  %pageAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 2
  %35 = ptrtoint ptr %pageAddr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pageAddr.i, align 4
  %call15.i = call i32 @mpt_config(ptr noundef %4, ptr noundef nonnull %cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end24.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %name22.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %4, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev.i, ptr noundef nonnull @.str.64, ptr noundef %name22.i) #11
  br label %out_free.i

if.end24.i:                                       ; preds = %if.end10.i
  %36 = call ptr @memcpy(ptr %spi_dev_pg0, ptr %call.i2.i, i32 %mul.i)
  %37 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hostdata.i.i, align 4
  %debug_level.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_level.i.i, align 4
  %and.i.i = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i3.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i3.i, label %if.end24.i.out_free.i_crit_edge, label %do.end.i.i

if.end24.i.out_free.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

do.end.i.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %NegotiatedParameters.i = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_0, ptr %call.i2.i, i32 0, i32 1
  %41 = ptrtoint ptr %NegotiatedParameters.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %NegotiatedParameters.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  %name.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %38, i32 0, i32 2
  %44 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id14.i, align 8
  %and3.i.i = and i32 %43, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i4.i = icmp eq i32 %and3.i.i, 0
  %cond.i.i = select i1 %tobool4.not.i4.i, ptr @.str.69, ptr @.str.68
  %shr.i.i = lshr i32 %43, 8
  %and5.i.i = and i32 %shr.i.i, 255
  %shr6.i.i = lshr i32 %43, 16
  %and7.i.i = and i32 %shr6.i.i, 255
  %and8.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %cond10.i.i = select i1 %tobool9.not.i.i, ptr @.str.69, ptr @.str.70
  %and11.i.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  %cond13.i.i = select i1 %tobool12.not.i.i, ptr @.str.69, ptr @.str.71
  %and14.i.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %cond16.i.i = select i1 %tobool15.not.i.i, ptr @.str.69, ptr @.str.72
  %and17.i.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  %cond19.i.i = select i1 %tobool18.not.i.i, ptr @.str.69, ptr @.str.73
  %and20.i.i = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  %cond22.i.i = select i1 %tobool21.not.i.i, ptr @.str.69, ptr @.str.74
  %and23.i.i = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  %cond25.i.i = select i1 %tobool24.not.i.i, ptr @.str.69, ptr @.str.75
  %and26.i.i = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  %cond28.i.i = select i1 %tobool27.not.i.i, ptr @.str.69, ptr @.str.76
  %and29.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  %cond31.i.i = select i1 %tobool30.not.i.i, ptr @.str.69, ptr @.str.77
  %call.i5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name.i.i, i32 noundef %45, i32 noundef %43, ptr noundef nonnull %cond.i.i, i32 noundef %and5.i.i, i32 noundef %and7.i.i, ptr noundef nonnull %cond10.i.i, ptr noundef nonnull %cond13.i.i, ptr noundef nonnull %cond16.i.i, ptr noundef nonnull %cond19.i.i, ptr noundef nonnull %cond22.i.i, ptr noundef nonnull %cond25.i.i, ptr noundef nonnull %cond28.i.i, ptr noundef nonnull %cond31.i.i) #11
  br label %out_free.i

out_free.i:                                       ; preds = %do.end.i.i, %if.end24.i.out_free.i_crit_edge, %do.end20.i
  %46 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev.i, align 8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %spi_dev_pg0_dma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %spi_dev_pg0_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev26.i, i32 noundef %mul.i, ptr noundef nonnull %call.i2.i, i32 noundef %49, i32 noundef 0) #8
  br label %mptspi_read_spi_device_pg0.exit

mptspi_read_spi_device_pg0.exit:                  ; preds = %out_free.i, %do.end.i, %for.body.i.i.mptspi_read_spi_device_pg0.exit_crit_edge
  %spi_dev_pg0.4.spi_dev_pg0.4..sroa_idx = getelementptr inbounds i8, ptr %spi_dev_pg0, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_dev_pg0_dma.i) #8
  %50 = ptrtoint ptr %spi_dev_pg0.4.spi_dev_pg0.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %spi_dev_pg0.4.spi_dev_pg0.4. = load i32, ptr %spi_dev_pg0.4.spi_dev_pg0.4..sroa_idx, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %spi_dev_pg0.4.spi_dev_pg0.4.)
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %iu = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %52 = trunc i32 %51 to i16
  %53 = ptrtoint ptr %iu to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load = load i16, ptr %iu, align 4
  %54 = shl i16 %52, 13
  %bf.shl = and i16 %54, 8192
  %bf.clear = and i16 %bf.load, 21007
  %55 = shl i16 %52, 10
  %bf.shl7 = and i16 %55, 2048
  %56 = shl i16 %52, 8
  %bf.shl17 = and i16 %56, 1024
  %57 = shl i16 %52, 4
  %bf.shl27 = and i16 %57, 256
  %58 = shl i16 %52, 2
  %bf.shl37 = and i16 %58, 128
  %59 = and i16 %52, 64
  %60 = lshr i16 %52, 2
  %bf.shl57 = and i16 %60, 32
  %61 = shl i16 %52, 1
  %bf.shl67 = and i16 %61, 16
  %bf.set = or i16 %59, %bf.clear
  %bf.set9 = or i16 %bf.set, %bf.shl
  %bf.set19 = or i16 %bf.set9, %bf.shl7
  %bf.set29 = or i16 %bf.set19, %bf.shl17
  %and71 = lshr i32 %51, 8
  %62 = and i32 %and71, 255
  %63 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %starget_data, align 4
  %and73 = lshr i32 %51, 16
  %64 = and i32 %and73, 255
  %offset = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %offset, align 4
  %sh.diff = lshr i32 %51, 14
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %bf.shl82 = and i16 %tr.sh.diff, -32768
  %bf.clear48.masked.masked.masked = or i16 %bf.set29, %bf.shl27
  %bf.clear58.masked.masked = or i16 %bf.clear48.masked.masked.masked, %bf.shl37
  %bf.clear68.masked = or i16 %bf.clear58.masked.masked, %bf.shl57
  %bf.clear83 = or i16 %bf.clear68.masked, %bf.shl67
  %bf.set84 = or i16 %bf.clear83, %bf.shl82
  store i16 %bf.set84, ptr %iu, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %spi_dev_pg0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_display_xfer_agreement(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_HardResetHandler(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_free_msg_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_config(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr nocapture noundef readonly %pass_pg1) unnamed_addr #2 align 64 {
entry:
  %pg1_dma = alloca i32, align 4
  %cfg = alloca %struct._x_config_parms, align 4
  %hdr = alloca %struct._CONFIG_PAGE_HEADER, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pg1_dma) #8
  %4 = ptrtoint ptr %pg1_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pg1_dma, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr) #8
  %5 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr, i32 0, i32 1
  %6 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr, i32 0, i32 2
  %7 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr, i32 0, i32 3
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %dev_to_shost.exit.if.end_crit_edge

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %dev_to_shost.exit
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %raid_data.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 60
  %12 = ptrtoint ptr %raid_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %raid_data.i, align 8
  %tobool.not.i1 = icmp eq ptr %13, null
  br i1 %tobool.not.i1, label %land.lhs.true.if.end_crit_edge, label %if.end.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %NumActiveVolumes.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_2, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %NumActiveVolumes.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %NumActiveVolumes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %for.cond.preheader.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i8 %15 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.023.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._CONFIG_PAGE_IOC_2, ptr %13, i32 0, i32 6, i32 %i.023.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 4
  %conv13.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %11, %conv13.i
  br i1 %cmp14.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %dev_to_shost.exit.if.end_crit_edge
  %sdp1length = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 59, i32 10
  %18 = ptrtoint ptr %sdp1length to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sdp1length, align 1
  %conv = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 54
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call.i2 = call ptr @dma_alloc_attrs(ptr noundef %dev4, i32 noundef %mul, ptr noundef nonnull %pg1_dma, i32 noundef 3264, i32 noundef 0) #8
  %cmp6 = icmp eq ptr %call.i2, null
  br i1 %cmp6, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %name) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %22 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 260, ptr %hdr, align 4
  %sdp1version = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 59, i32 9
  %23 = ptrtoint ptr %sdp1version to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sdp1version, align 4
  store i8 %24, ptr %hdr, align 4
  %25 = ptrtoint ptr %sdp1length to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sdp1length, align 1
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %5, align 1
  %28 = getelementptr inbounds i8, ptr %cfg, i32 12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %28, align 4
  %30 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %hdr, ptr %cfg, align 4
  %31 = ptrtoint ptr %pg1_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pg1_dma, align 4
  %physAddr = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 1
  %33 = ptrtoint ptr %physAddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %physAddr, align 4
  %action = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 4
  %34 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %action, align 2
  %dir = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 5
  %35 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dir, align 1
  %id14 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %36 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id14, align 8
  %pageAddr = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 2
  %38 = ptrtoint ptr %pageAddr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pageAddr, align 4
  %39 = call ptr @memcpy(ptr %call.i2, ptr %pass_pg1, i32 %mul)
  %40 = load i8, ptr %hdr, align 4
  %41 = ptrtoint ptr %call.i2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %call.i2, align 4
  %42 = load i8, ptr %5, align 1
  %PageLength19 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %call.i2, i32 0, i32 1
  %43 = ptrtoint ptr %PageLength19 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %PageLength19, align 1
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %6, align 2
  %PageNumber22 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %call.i2, i32 0, i32 2
  %46 = ptrtoint ptr %PageNumber22 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %PageNumber22, align 2
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %PageType25 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %call.i2, i32 0, i32 3
  %49 = ptrtoint ptr %PageType25 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %PageType25, align 1
  %RequestedParameters = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %call.i2, i32 0, i32 1
  %50 = ptrtoint ptr %RequestedParameters to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %RequestedParameters, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %53 = and i32 %52, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %53)
  %cmp26 = icmp eq i32 %53, 2048
  br i1 %cmp26, label %if.end10.for.body_crit_edge, label %if.end10.if.end43_crit_edge

if.end10.if.end43_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %conv31 = zext i32 %i.09 to i64
  %call32 = call ptr @scsi_device_lookup_by_target(ptr noundef %starget, i64 noundef %conv31) #8
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %for.body.for.inc_crit_edge, label %land.lhs.true34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true34:                                  ; preds = %for.body
  %type = getelementptr inbounds %struct.scsi_device, ptr %call32, i32 0, i32 22
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp36 = icmp eq i8 %55, 1
  br i1 %cmp36, label %if.then38, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  %name39 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull %call32, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef %name39) #8
  %or = or i32 %52, 134217728
  %56 = call i32 @llvm.bswap.i32(i32 %or)
  %57 = ptrtoint ptr %RequestedParameters to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %RequestedParameters, align 4
  br label %if.end43

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.if.end43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %for.inc.if.end43_crit_edge, %if.then38, %if.end10.if.end43_crit_edge
  %58 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hostdata.i, align 4
  %debug_level.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug_level.i, align 4
  %and.i = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i3 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i3, label %if.end43.mptspi_print_write_nego.exit_crit_edge, label %do.end.i

if.end43.mptspi_print_write_nego.exit_crit_edge:  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %mptspi_print_write_nego.exit

do.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %RequestedParameters to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %RequestedParameters, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %59, i32 0, i32 2
  %65 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id14, align 8
  %and3.i = and i32 %64, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i4 = icmp eq i32 %and3.i, 0
  %cond.i = select i1 %tobool4.not.i4, ptr @.str.69, ptr @.str.68
  %shr.i = lshr i32 %64, 8
  %and5.i = and i32 %shr.i, 255
  %shr6.i = lshr i32 %64, 16
  %and7.i = and i32 %shr6.i, 255
  %and8.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %cond10.i = select i1 %tobool9.not.i, ptr @.str.69, ptr @.str.70
  %and11.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.69, ptr @.str.71
  %and14.i = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %cond16.i = select i1 %tobool15.not.i, ptr @.str.69, ptr @.str.72
  %and17.i = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond19.i = select i1 %tobool18.not.i, ptr @.str.69, ptr @.str.73
  %and20.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %cond22.i = select i1 %tobool21.not.i, ptr @.str.69, ptr @.str.74
  %and23.i = and i32 %64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.69, ptr @.str.75
  %and26.i = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %cond28.i = select i1 %tobool27.not.i, ptr @.str.69, ptr @.str.76
  %and29.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %cond31.i = select i1 %tobool30.not.i, ptr @.str.69, ptr @.str.77
  %call.i5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name.i, i32 noundef %66, i32 noundef %64, ptr noundef nonnull %cond.i, i32 noundef %and5.i, i32 noundef %and7.i, ptr noundef nonnull %cond10.i, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond16.i, ptr noundef nonnull %cond19.i, ptr noundef nonnull %cond22.i, ptr noundef nonnull %cond25.i, ptr noundef nonnull %cond28.i, ptr noundef nonnull %cond31.i) #11
  br label %mptspi_print_write_nego.exit

mptspi_print_write_nego.exit:                     ; preds = %do.end.i, %if.end43.mptspi_print_write_nego.exit_crit_edge
  %call45 = call i32 @mpt_config(ptr noundef %3, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %mptspi_print_write_nego.exit.out_free_crit_edge, label %do.end50

mptspi_print_write_nego.exit.out_free_crit_edge:  ; preds = %mptspi_print_write_nego.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

do.end50:                                         ; preds = %mptspi_print_write_nego.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name52 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef %name52) #11
  br label %out_free

out_free:                                         ; preds = %do.end50, %mptspi_print_write_nego.exit.out_free_crit_edge
  %67 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcidev, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %pg1_dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pg1_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev56, i32 noundef %mul, ptr noundef nonnull %call.i2, i32 noundef %70, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end, %for.body.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pg1_dma) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptscsih_slave_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup_by_target(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mptscsih_raid_id_to_num(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_width(ptr noundef %starget, i32 noundef %width) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %tobool.not = icmp eq i32 %width, 0
  %0 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pg1, align 4
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %dt = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %1 = ptrtoint ptr %dt to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %dt, align 4
  %bf.clear = and i16 %bf.load, -2049
  store i16 %bf.clear, ptr %dt, align 4
  %2 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %starget_data, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %5 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %6 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %7 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %width7 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %8 = trunc i32 %width to i16
  %9 = ptrtoint ptr %width7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load8 = load i16, ptr %width7, align 4
  %bf.shl = shl i16 %8, 15
  %bf.clear9 = and i16 %bf.load8, 32767
  %bf.set10 = or i16 %bf.clear9, %bf.shl
  store i16 %bf.set10, ptr %width7, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %10 = lshr i16 %bf.load8, 13
  %.lobit.i = and i16 %10, 1
  %11 = lshr i16 %bf.load8, 10
  %12 = and i16 %11, 2
  %13 = lshr i16 %bf.load8, 8
  %14 = and i16 %13, 4
  %15 = lshr i16 %bf.load8, 1
  %16 = and i16 %15, 8
  %17 = lshr i16 %bf.load8, 4
  %18 = and i16 %17, 16
  %19 = lshr i16 %bf.load8, 2
  %20 = and i16 %19, 32
  %21 = and i16 %bf.load8, 64
  %22 = shl i16 %bf.load8, 2
  %23 = and i16 %22, 128
  %or891.i = or i16 %12, %21
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %14
  %or3294.i = or i16 %or2493.i, %16
  %or4095.i = or i16 %or3294.i, %18
  %or4896.i = or i16 %or4095.i, %20
  %or5697.i = or i16 %or4896.i, %23
  %or56.i = zext i16 %or5697.i to i32
  %24 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %25, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %27, 16
  %and61.i = and i32 %shl60.i, 16711680
  %28 = zext i16 %bf.shl to i32
  %29 = shl nuw nsw i32 %28, 14
  %or62.i = or i32 %and61.i, %29
  %or69.i = or i32 %or58.i, %or62.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %7, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %6, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %5, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_dv_renegotiate_work(ptr noundef %work) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hd1 = getelementptr inbounds %struct.work_queue_wrapper, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %hd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %3 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %4 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %5 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pg1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %work) #8
  %spi_pending = getelementptr inbounds %struct._MPT_SCSI_HOST, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %spi_pending to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %spi_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %sh12 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %7, i32 0, i32 58
  %10 = ptrtoint ptr %sh12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sh12, align 8
  %call13 = tail call ptr @__scsi_iterate_devices(ptr noundef %11, ptr noundef null) #8
  %tobool15.not40 = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool15.not40, label %if.then.if.end21_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %sdev.038 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call13, %if.then.for.body_crit_edge ]
  %12 = ptrtoint ptr %spi_pending to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %spi_pending, align 4
  %conv = zext i16 %13 to i32
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev.038, i32 0, i32 16
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %15
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.038, i32 0, i32 55, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 -24
  %starget_data.i = getelementptr i8, ptr %17, i32 972
  %iu.i = getelementptr i8, ptr %17, i32 988
  %18 = ptrtoint ptr %iu.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %iu.i, align 4
  %19 = lshr i16 %bf.load.i, 13
  %.lobit.i = and i16 %19, 1
  %20 = lshr i16 %bf.load.i, 10
  %21 = and i16 %20, 2
  %22 = lshr i16 %bf.load.i, 8
  %23 = and i16 %22, 4
  %24 = lshr i16 %bf.load.i, 1
  %25 = and i16 %24, 8
  %26 = lshr i16 %bf.load.i, 4
  %27 = and i16 %26, 16
  %28 = lshr i16 %bf.load.i, 2
  %29 = and i16 %28, 32
  %30 = and i16 %bf.load.i, 64
  %31 = shl i16 %bf.load.i, 2
  %32 = and i16 %31, 128
  %or891.i = or i16 %21, %30
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %23
  %or3294.i = or i16 %or2493.i, %25
  %or4095.i = or i16 %or3294.i, %27
  %or4896.i = or i16 %or4095.i, %29
  %or5697.i = or i16 %or4896.i, %32
  %or56.i = zext i16 %or5697.i to i32
  %33 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %34, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr i8, ptr %17, i32 980
  %35 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %36, 16
  %and61.i = and i32 %shl60.i, 16711680
  %37 = and i16 %bf.load.i, -32768
  %38 = zext i16 %37 to i32
  %39 = shl nuw nsw i32 %38, 14
  %or62.i = or i32 %and61.i, %39
  %or69.i = or i32 %or58.i, %or62.i
  %40 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %2, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %3, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %4, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %add.ptr.i, ptr noundef nonnull %pg1)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %44 = ptrtoint ptr %sh12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sh12, align 8
  %call11 = tail call ptr @__scsi_iterate_devices(ptr noundef %45, ptr noundef nonnull %sdev.038) #8
  %tobool3.not = icmp eq ptr %call11, null
  br i1 %tobool3.not, label %for.inc.if.end21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %entry
  br i1 %tobool15.not40, label %if.else.if.end21_crit_edge, label %if.else.for.body16_crit_edge

if.else.for.body16_crit_edge:                     ; preds = %if.else
  br label %for.body16

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.else.for.body16_crit_edge
  %sdev.141 = phi ptr [ %call19, %for.body16.for.body16_crit_edge ], [ %call13, %if.else.for.body16_crit_edge ]
  tail call fastcc void @mptspi_dv_device(ptr noundef %1, ptr noundef nonnull %sdev.141)
  %46 = ptrtoint ptr %sh12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sh12, align 8
  %call19 = tail call ptr @__scsi_iterate_devices(ptr noundef %47, ptr noundef nonnull %sdev.141) #8
  %tobool15.not = icmp eq ptr %call19, null
  br i1 %tobool15.not, label %for.body16.if.end21_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

for.body16.if.end21_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %for.body16.if.end21_crit_edge, %if.else.if.end21_crit_edge, %for.inc.if.end21_crit_edge, %if.then.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_attach_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mpt_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_io_done(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_taskmgmt_complete(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_scandv_complete(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_event_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_event_process(ptr noundef %ioc, ptr noundef %pEvReply) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 58
  %0 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %2 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %Event = getelementptr inbounds %struct._MSG_EVENT_NOTIFY_REPLY, ptr %pEvReply, i32 0, i32 10
  %4 = ptrtoint ptr %Event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Event, align 4
  %tobool.not = icmp ne ptr %hostdata.i, null
  %.mask = and i32 %5, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %.mask)
  %cmp4 = icmp eq i32 %.mask, 184549376
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then6, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then6:                                         ; preds = %if.end
  %Data = getelementptr inbounds %struct._MSG_EVENT_NOTIFY_REPLY, ptr %pEvReply, i32 0, i32 12
  %6 = ptrtoint ptr %Data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %Data, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = and i32 %8, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %9)
  %cmp8 = icmp eq i32 %9, 589824
  br i1 %cmp8, label %if.then10, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.then6
  %shr14 = lshr i32 %8, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 52) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body2.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hostdata.i, align 4
  %sh.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %12, i32 0, i32 58
  %13 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sh.i, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %12, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.45, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.95, ptr noundef %name.i, i32 noundef %shr14) #11
  br label %if.end16

do.body2.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @mpt_dv_raid.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry6.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mpt_work_wrapper, ptr %func.i, align 4
  %hd10.i = getelementptr inbounds %struct.work_queue_wrapper, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %hd10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hostdata.i, ptr %hd10.i, align 4
  %disk11.i = getelementptr inbounds %struct.work_queue_wrapper, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %disk11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr14, ptr %disk11.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef nonnull %call7.i.i) #8
  br label %if.end16

if.end16:                                         ; preds = %do.body2.i, %do.end.i, %if.then6.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %call17 = tail call i32 @mptscsih_event_process(ptr noundef %ioc, ptr noundef %pEvReply) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_reset_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_ioc_reset(ptr noundef %ioc, i32 noundef %reset_phase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mptscsih_ioc_reset(ptr noundef %ioc, i32 noundef %reset_phase) #8
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %0 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %or.cond = select i1 %cmp.not, i1 %tobool.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reset_phase)
  %cmp2 = icmp eq i32 %reset_phase, 1
  %or.cond15 = and i1 %cmp2, %or.cond
  br i1 %or.cond15, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 58
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 52) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %do.body.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @mptspi_dv_renegotiate.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mptspi_dv_renegotiate_work, ptr %func.i, align 4
  %hd6.i = getelementptr inbounds %struct.work_queue_wrapper, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %hd6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hostdata.i, ptr %hd6.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_period(ptr noundef %starget, i32 noundef %period) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %0 = tail call i32 @llvm.smax.i32(i32 %period, i32 8)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 255)
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %2 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pg1, align 4
  %3 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp5 = icmp eq i32 %4, -1
  br i1 %cmp5, label %if.then6, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mptspi_read_parameters(ptr noundef %starget)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry.if.end7_crit_edge
  %trunc = trunc i32 %1 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %trunc, label %if.end7.if.end23_crit_edge [
    i8 8, label %if.end7.if.end23.sink.split_crit_edge
    i8 9, label %if.then16
  ]

if.end7.if.end23.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then16, %if.end7.if.end23.sink.split_crit_edge
  %.sink = phi i16 [ 2048, %if.then16 ], [ 10240, %if.end7.if.end23.sink.split_crit_edge ]
  %iu = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %6 = ptrtoint ptr %iu to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load19 = load i16, ptr %iu, align 4
  %bf.set21 = or i16 %bf.load19, %.sink
  store i16 %bf.set21, ptr %iu, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.end7.if.end23_crit_edge
  %7 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %8 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %9 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %10 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %starget_data, align 4
  %iu.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %11 = ptrtoint ptr %iu.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %iu.i, align 4
  %12 = lshr i16 %bf.load.i, 13
  %.lobit.i = and i16 %12, 1
  %13 = lshr i16 %bf.load.i, 10
  %14 = and i16 %13, 2
  %15 = lshr i16 %bf.load.i, 8
  %16 = and i16 %15, 4
  %17 = lshr i16 %bf.load.i, 1
  %18 = and i16 %17, 8
  %19 = lshr i16 %bf.load.i, 4
  %20 = and i16 %19, 16
  %21 = lshr i16 %bf.load.i, 2
  %22 = and i16 %21, 32
  %23 = and i16 %bf.load.i, 64
  %24 = shl i16 %bf.load.i, 2
  %25 = and i16 %24, 128
  %or891.i = or i16 %14, %23
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %16
  %or3294.i = or i16 %or2493.i, %18
  %or4095.i = or i16 %or3294.i, %20
  %or4896.i = or i16 %or4095.i, %22
  %or5697.i = or i16 %or4896.i, %25
  %or56.i = zext i16 %or5697.i to i32
  %shl.i = shl nuw nsw i32 %1, 8
  %or58.i = or i32 %shl.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %27, 16
  %and61.i = and i32 %shl60.i, 16711680
  %28 = and i16 %bf.load.i, -32768
  %29 = zext i16 %28 to i32
  %30 = shl nuw nsw i32 %29, 14
  %or62.i = or i32 %and61.i, %30
  %or69.i = or i32 %or58.i, %or62.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %9, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %8, align 4
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %7, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_offset(ptr noundef %starget, i32 noundef %offset) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %offset4 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %0 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pg1, align 4
  %1 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp5 = icmp eq i32 %2, -1
  br i1 %cmp5, label %if.then6, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mptspi_read_parameters(ptr noundef %starget)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry.if.end7_crit_edge
  %3 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %4 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %5 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %6 = tail call i32 @llvm.smax.i32(i32 %offset, i32 0)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %8 = ptrtoint ptr %offset4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %offset4, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %iu.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %9 = ptrtoint ptr %iu.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %iu.i, align 4
  %10 = lshr i16 %bf.load.i, 13
  %.lobit.i = and i16 %10, 1
  %11 = lshr i16 %bf.load.i, 10
  %12 = and i16 %11, 2
  %13 = lshr i16 %bf.load.i, 8
  %14 = and i16 %13, 4
  %15 = lshr i16 %bf.load.i, 1
  %16 = and i16 %15, 8
  %17 = lshr i16 %bf.load.i, 4
  %18 = and i16 %17, 16
  %19 = lshr i16 %bf.load.i, 2
  %20 = and i16 %19, 32
  %21 = and i16 %bf.load.i, 64
  %22 = shl i16 %bf.load.i, 2
  %23 = and i16 %22, 128
  %or891.i = or i16 %12, %21
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %14
  %or3294.i = or i16 %or2493.i, %16
  %or4095.i = or i16 %or3294.i, %18
  %or4896.i = or i16 %or4095.i, %20
  %or5697.i = or i16 %or4896.i, %23
  %or56.i = zext i16 %or5697.i to i32
  %24 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %25, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %shl60.i = shl nuw nsw i32 %7, 16
  %26 = and i16 %bf.load.i, -32768
  %27 = zext i16 %26 to i32
  %28 = shl nuw nsw i32 %27, 14
  %or62.i = or i32 %28, %shl60.i
  %or69.i = or i32 %or58.i, %or62.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %5, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %4, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %3, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_iu(ptr noundef %starget, i32 noundef %iu) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %0 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pg1, align 4
  %1 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mptspi_read_parameters(ptr noundef %starget)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iu)
  %tobool.not = icmp eq i32 %iu, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp3 = icmp slt i32 %4, 9
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %starget_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %6 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %7 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %8 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %iu9 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %9 = trunc i32 %iu to i16
  %10 = ptrtoint ptr %iu9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %iu9, align 4
  %bf.value = shl i16 %9, 13
  %bf.shl = and i16 %bf.value, 8192
  %bf.clear = and i16 %bf.load, -8193
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %iu9, align 4
  %.lobit.i = and i16 %9, 1
  %11 = lshr i16 %bf.load, 10
  %12 = and i16 %11, 2
  %13 = lshr i16 %bf.load, 8
  %14 = and i16 %13, 4
  %15 = lshr i16 %bf.load, 1
  %16 = and i16 %15, 8
  %17 = lshr i16 %bf.load, 4
  %18 = and i16 %17, 16
  %19 = lshr i16 %bf.load, 2
  %20 = and i16 %19, 32
  %21 = and i16 %bf.load, 64
  %22 = shl i16 %bf.load, 2
  %23 = and i16 %22, 128
  %or891.i = or i16 %21, %.lobit.i
  %or1692.i = or i16 %or891.i, %12
  %or2493.i = or i16 %or1692.i, %14
  %or3294.i = or i16 %or2493.i, %16
  %or4095.i = or i16 %or3294.i, %18
  %or4896.i = or i16 %or4095.i, %20
  %or5697.i = or i16 %or4896.i, %23
  %or56.i = zext i16 %or5697.i to i32
  %24 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %starget_data, align 4
  %shl.i = shl i32 %25, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %27, 16
  %and61.i = and i32 %shl60.i, 16711680
  %28 = and i16 %bf.load, -32768
  %29 = zext i16 %28 to i32
  %30 = shl nuw nsw i32 %29, 14
  %or62.i = or i32 %and61.i, %30
  %or69.i = or i32 %or58.i, %or62.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %8, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %7, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %6, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_dt(ptr noundef %starget, i32 noundef %dt) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %starget_data = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %0 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pg1, align 4
  %1 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mptspi_read_parameters(ptr noundef %starget)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dt)
  %tobool.not = icmp eq i32 %dt, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %starget_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp3 = icmp slt i32 %4, 10
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %starget_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %starget_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %6 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %7 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %8 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %dt9 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %9 = trunc i32 %dt to i16
  %10 = ptrtoint ptr %dt9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %dt9, align 4
  %bf.value = shl i16 %9, 11
  %bf.shl = and i16 %bf.value, 2048
  %bf.clear = and i16 %bf.load, -2049
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %dt9, align 4
  %11 = lshr i16 %bf.load, 13
  %.lobit.i = and i16 %11, 1
  %12 = lshr exact i16 %bf.value, 10
  %13 = and i16 %12, 2
  %14 = lshr i16 %bf.load, 8
  %15 = and i16 %14, 4
  %16 = lshr i16 %bf.load, 1
  %17 = and i16 %16, 8
  %18 = lshr i16 %bf.load, 4
  %19 = and i16 %18, 16
  %20 = lshr i16 %bf.load, 2
  %21 = and i16 %20, 32
  %22 = and i16 %bf.load, 64
  %23 = shl i16 %bf.load, 2
  %24 = and i16 %23, 128
  %or891.i = or i16 %22, %13
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %15
  %or3294.i = or i16 %or2493.i, %17
  %or4095.i = or i16 %or3294.i, %19
  %or4896.i = or i16 %or4095.i, %21
  %or5697.i = or i16 %or4896.i, %24
  %or56.i = zext i16 %or5697.i to i32
  %25 = ptrtoint ptr %starget_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %starget_data, align 4
  %shl.i = shl i32 %26, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %27 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %28, 16
  %and61.i = and i32 %shl60.i, 16711680
  %29 = and i16 %bf.load, -32768
  %30 = zext i16 %29 to i32
  %31 = shl nuw nsw i32 %30, 14
  %or62.i = or i32 %and61.i, %31
  %or69.i = or i32 %or58.i, %or62.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %8, align 4
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %7, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %6, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_qas(ptr noundef %starget, i32 noundef %qas) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  %0 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pg1, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %3 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostdata, align 8
  %negoFlags = getelementptr inbounds %struct._VirtTarget, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %negoFlags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %negoFlags, align 1
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %dev_to_shost.exit.if.then_crit_edge

dev_to_shost.exit.if.then_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %dev_to_shost.exit
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata.i, align 4
  %noQas = getelementptr inbounds %struct._MPT_ADAPTER, ptr %9, i32 0, i32 59, i32 14
  %10 = ptrtoint ptr %noQas to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %noQas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %dev_to_shost.exit.if.then_crit_edge
  %qas4 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %12 = ptrtoint ptr %qas4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %qas4, align 4
  %bf.clear = and i16 %bf.load, -1025
  store i16 %bf.clear, ptr %qas4, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %qas6 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %13 = trunc i32 %qas to i16
  %14 = ptrtoint ptr %qas6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load7 = load i16, ptr %qas6, align 4
  %bf.value = shl i16 %13, 10
  %bf.shl = and i16 %bf.value, 1024
  %bf.clear8 = and i16 %bf.load7, -1025
  %bf.set9 = or i16 %bf.clear8, %bf.shl
  store i16 %bf.set9, ptr %qas6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %16 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %17 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %iu.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %18 = ptrtoint ptr %iu.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %iu.i, align 4
  %19 = lshr i16 %bf.load.i, 13
  %.lobit.i = and i16 %19, 1
  %20 = lshr i16 %bf.load.i, 10
  %21 = and i16 %20, 2
  %22 = lshr i16 %bf.load.i, 8
  %23 = and i16 %22, 4
  %24 = lshr i16 %bf.load.i, 1
  %25 = and i16 %24, 8
  %26 = lshr i16 %bf.load.i, 4
  %27 = and i16 %26, 16
  %28 = lshr i16 %bf.load.i, 2
  %29 = and i16 %28, 32
  %30 = and i16 %bf.load.i, 64
  %31 = shl i16 %bf.load.i, 2
  %32 = and i16 %31, 128
  %or891.i = or i16 %21, %30
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %23
  %or3294.i = or i16 %or2493.i, %25
  %or4095.i = or i16 %or3294.i, %27
  %or4896.i = or i16 %or4095.i, %29
  %or5697.i = or i16 %or4896.i, %32
  %or56.i = zext i16 %or5697.i to i32
  %33 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %34, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %35 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %36, 16
  %and61.i = and i32 %shl60.i, 16711680
  %37 = and i16 %bf.load.i, -32768
  %38 = zext i16 %37 to i32
  %39 = shl nuw nsw i32 %38, 14
  %or62.i = or i32 %and61.i, %39
  %or69.i = or i32 %or58.i, %or62.i
  %40 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %17, align 4
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %16, align 4
  %43 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %15, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_wr_flow(ptr noundef %starget, i32 noundef %wr_flow) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %0 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %1 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %wr_flow1 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %3 = trunc i32 %wr_flow to i16
  %4 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pg1, align 4
  %5 = ptrtoint ptr %wr_flow1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %wr_flow1, align 4
  %bf.value = shl i16 %3, 8
  %bf.shl = and i16 %bf.value, 256
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %wr_flow1, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %6 = lshr i16 %bf.load, 13
  %.lobit.i = and i16 %6, 1
  %7 = lshr i16 %bf.load, 10
  %8 = and i16 %7, 2
  %9 = lshr i16 %bf.load, 8
  %10 = and i16 %9, 4
  %11 = lshr i16 %bf.load, 1
  %12 = and i16 %11, 8
  %13 = lshr exact i16 %bf.value, 4
  %14 = and i16 %13, 16
  %15 = lshr i16 %bf.load, 2
  %16 = and i16 %15, 32
  %17 = and i16 %bf.load, 64
  %18 = shl i16 %bf.load, 2
  %19 = and i16 %18, 128
  %or891.i = or i16 %17, %14
  %or1692.i = or i16 %or891.i, %8
  %or2493.i = or i16 %or1692.i, %.lobit.i
  %or3294.i = or i16 %or2493.i, %10
  %or4095.i = or i16 %or3294.i, %12
  %or4896.i = or i16 %or4095.i, %16
  %or5697.i = or i16 %or4896.i, %19
  %or56.i = zext i16 %or5697.i to i32
  %20 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %21, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %23, 16
  %and61.i = and i32 %shl60.i, 16711680
  %24 = and i16 %bf.load, -32768
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 14
  %or62.i = or i32 %and61.i, %26
  %or69.i = or i32 %or58.i, %or62.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %1, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %2, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_rd_strm(ptr noundef %starget, i32 noundef %rd_strm) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %0 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %1 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %rd_strm1 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %3 = trunc i32 %rd_strm to i16
  %4 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pg1, align 4
  %5 = ptrtoint ptr %rd_strm1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %rd_strm1, align 4
  %bf.value = shl i16 %3, 7
  %bf.shl = and i16 %bf.value, 128
  %bf.clear = and i16 %bf.load, -129
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %rd_strm1, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %6 = lshr i16 %bf.load, 13
  %.lobit.i = and i16 %6, 1
  %7 = lshr i16 %bf.load, 10
  %8 = and i16 %7, 2
  %9 = lshr i16 %bf.load, 8
  %10 = and i16 %9, 4
  %11 = lshr i16 %bf.load, 1
  %12 = and i16 %11, 8
  %13 = lshr i16 %bf.load, 4
  %14 = and i16 %13, 16
  %15 = lshr exact i16 %bf.value, 2
  %16 = and i16 %15, 32
  %17 = and i16 %bf.load, 64
  %18 = shl i16 %bf.load, 2
  %19 = and i16 %18, 128
  %or891.i = or i16 %17, %16
  %or1692.i = or i16 %or891.i, %8
  %or2493.i = or i16 %or1692.i, %.lobit.i
  %or3294.i = or i16 %or2493.i, %10
  %or4095.i = or i16 %or3294.i, %12
  %or4896.i = or i16 %or4095.i, %14
  %or5697.i = or i16 %or4896.i, %19
  %or56.i = zext i16 %or5697.i to i32
  %20 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %21, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %23, 16
  %and61.i = and i32 %shl60.i, 16711680
  %24 = and i16 %bf.load, -32768
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 14
  %or62.i = or i32 %and61.i, %26
  %or69.i = or i32 %or58.i, %or62.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %1, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %2, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_rti(ptr noundef %starget, i32 noundef %rti) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %0 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %1 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %rti1 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %3 = trunc i32 %rti to i16
  %4 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pg1, align 4
  %5 = ptrtoint ptr %rti1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %rti1, align 4
  %bf.value = shl i16 %3, 6
  %bf.shl = and i16 %bf.value, 64
  %bf.clear = and i16 %bf.load, -65
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %rti1, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %6 = lshr i16 %bf.load, 13
  %.lobit.i = and i16 %6, 1
  %7 = lshr i16 %bf.load, 10
  %8 = and i16 %7, 2
  %9 = lshr i16 %bf.load, 8
  %10 = and i16 %9, 4
  %11 = lshr i16 %bf.load, 1
  %12 = and i16 %11, 8
  %13 = lshr i16 %bf.load, 4
  %14 = and i16 %13, 16
  %15 = lshr i16 %bf.load, 2
  %16 = and i16 %15, 32
  %17 = shl i16 %bf.load, 2
  %18 = and i16 %17, 128
  %or891.i = or i16 %8, %bf.shl
  %or1692.i = or i16 %or891.i, %.lobit.i
  %or2493.i = or i16 %or1692.i, %10
  %or3294.i = or i16 %or2493.i, %12
  %or4095.i = or i16 %or3294.i, %14
  %or4896.i = or i16 %or4095.i, %16
  %or5697.i = or i16 %or4896.i, %18
  %or56.i = zext i16 %or5697.i to i32
  %19 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %20, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %22, 16
  %and61.i = and i32 %shl60.i, 16711680
  %23 = and i16 %bf.load, -32768
  %24 = zext i16 %23 to i32
  %25 = shl nuw nsw i32 %24, 14
  %or62.i = or i32 %and61.i, %25
  %or69.i = or i32 %or58.i, %or62.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %0, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %1, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %2, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_pcomp_en(ptr noundef %starget, i32 noundef %pcomp_en) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %0 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %1 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %pcomp_en1 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %3 = trunc i32 %pcomp_en to i16
  %4 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pg1, align 4
  %5 = ptrtoint ptr %pcomp_en1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %pcomp_en1, align 4
  %bf.value = shl i16 %3, 5
  %bf.shl = and i16 %bf.value, 32
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %pcomp_en1, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %6 = lshr i16 %bf.load, 13
  %.lobit.i = and i16 %6, 1
  %7 = lshr i16 %bf.load, 10
  %8 = and i16 %7, 2
  %9 = lshr i16 %bf.load, 8
  %10 = and i16 %9, 4
  %11 = lshr i16 %bf.load, 1
  %12 = and i16 %11, 8
  %13 = lshr i16 %bf.load, 4
  %14 = and i16 %13, 16
  %15 = lshr i16 %bf.load, 2
  %16 = and i16 %15, 32
  %17 = and i16 %bf.load, 64
  %18 = shl nuw nsw i16 %bf.shl, 2
  %or891.i = or i16 %17, %18
  %or1692.i = or i16 %or891.i, %8
  %or2493.i = or i16 %or1692.i, %.lobit.i
  %or3294.i = or i16 %or2493.i, %10
  %or4095.i = or i16 %or3294.i, %12
  %or4896.i = or i16 %or4095.i, %14
  %or5697.i = or i16 %or4896.i, %16
  %or56.i = zext i16 %or5697.i to i32
  %19 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %20, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %22, 16
  %and61.i = and i32 %shl60.i, 16711680
  %23 = and i16 %bf.load, -32768
  %24 = zext i16 %23 to i32
  %25 = shl nuw nsw i32 %24, 14
  %or62.i = or i32 %and61.i, %25
  %or69.i = or i32 %or58.i, %or62.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %0, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %1, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %2, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptspi_write_hold_mcs(ptr noundef %starget, i32 noundef %hold_mcs) #2 align 64 {
entry:
  %pg1 = alloca %struct._CONFIG_PAGE_SCSI_DEVICE_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pg1) #8
  %0 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 1
  %1 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 2
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_1, ptr %pg1, i32 0, i32 3
  %hold_mcs1 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 2
  %3 = trunc i32 %hold_mcs to i16
  %4 = ptrtoint ptr %pg1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pg1, align 4
  %5 = ptrtoint ptr %hold_mcs1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %hold_mcs1, align 4
  %bf.value = shl i16 %3, 4
  %bf.shl = and i16 %bf.value, 16
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %hold_mcs1, align 4
  %starget_data.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 15
  %6 = lshr i16 %bf.load, 13
  %.lobit.i = and i16 %6, 1
  %7 = lshr i16 %bf.load, 10
  %8 = and i16 %7, 2
  %9 = lshr i16 %bf.load, 8
  %10 = and i16 %9, 4
  %11 = lshr exact i16 %bf.value, 1
  %12 = and i16 %11, 8
  %13 = lshr i16 %bf.load, 4
  %14 = and i16 %13, 16
  %15 = lshr i16 %bf.load, 2
  %16 = and i16 %15, 32
  %17 = and i16 %bf.load, 64
  %18 = shl i16 %bf.load, 2
  %19 = and i16 %18, 128
  %or891.i = or i16 %17, %12
  %or1692.i = or i16 %or891.i, %8
  %or2493.i = or i16 %or1692.i, %.lobit.i
  %or3294.i = or i16 %or2493.i, %10
  %or4095.i = or i16 %or3294.i, %14
  %or4896.i = or i16 %or4095.i, %16
  %or5697.i = or i16 %or4896.i, %19
  %or56.i = zext i16 %or5697.i to i32
  %20 = ptrtoint ptr %starget_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %starget_data.i, align 4
  %shl.i = shl i32 %21, 8
  %and.i = and i32 %shl.i, 65280
  %or58.i = or i32 %and.i, %or56.i
  %offset.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 1, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %shl60.i = shl i32 %23, 16
  %and61.i = and i32 %shl60.i, 16711680
  %24 = and i16 %bf.load, -32768
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 14
  %or62.i = or i32 %and61.i, %26
  %or69.i = or i32 %or58.i, %or62.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or69.i)
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %1, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %2, align 4
  call fastcc void @mptspi_write_spi_device_pg1(ptr noundef %starget, ptr noundef nonnull %pg1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pg1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptspi_deny_binding(ptr nocapture noundef readonly %starget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 4
  %raid_data.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %raid_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %raid_data.i, align 8
  %tobool.not.i4 = icmp eq ptr %9, null
  br i1 %tobool.not.i4, label %dev_to_shost.exit.land.end_crit_edge, label %if.end.i

dev_to_shost.exit.land.end_crit_edge:             ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i:                                         ; preds = %dev_to_shost.exit
  %NumActiveVolumes.i = getelementptr inbounds %struct._CONFIG_PAGE_IOC_2, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %NumActiveVolumes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %NumActiveVolumes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %if.end.i.land.end_crit_edge, label %for.cond.preheader.i

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

for.cond.preheader.i:                             ; preds = %if.end.i
  %conv.i = zext i8 %11 to i32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.land.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.land.end_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.023.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._CONFIG_PAGE_IOC_2, ptr %9, i32 0, i32 6, i32 %i.023.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 4
  %conv13.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv13.i)
  %cmp14.i = icmp eq i32 %5, %conv13.i
  br i1 %cmp14.i, label %land.rhs, label %for.cond.i

land.rhs:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %dev_to_shost.exit.land.end_crit_edge
  %16 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %if.end.i.land.end_crit_edge ], [ 0, %dev_to_shost.exit.land.end_crit_edge ], [ 0, %for.cond.i.land.end_crit_edge ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_event_process(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpt_work_wrapper(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hd1 = getelementptr inbounds %struct.work_queue_wrapper, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %hd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sh, align 8
  %disk3 = getelementptr inbounds %struct.work_queue_wrapper, ptr %work, i32 0, i32 2
  %6 = ptrtoint ptr %disk3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disk3, align 4
  tail call void @kfree(ptr noundef %work) #8
  %call = tail call i32 @mpt_findImVolumes(ptr noundef %3) #8
  %pIocPg3 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 60, i32 1
  %8 = ptrtoint ptr %pIocPg3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pIocPg3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @__scsi_iterate_devices(ptr noundef %5, ptr noundef null) #8
  %tobool5.not49 = icmp eq ptr %call4, null
  br i1 %tobool5.not49, label %if.end.do.end18_crit_edge, label %for.body.lr.ph

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

for.body.lr.ph:                                   ; preds = %if.end
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sdev.050 = phi ptr [ %call4, %for.body.lr.ph ], [ %call15, %cleanup.for.body_crit_edge ]
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.050, i32 0, i32 55, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %hostdata = getelementptr i8, ptr %11, i32 968
  %12 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostdata, align 8
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev.050, i32 0, i32 17
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not = icmp eq i32 %15, 1
  br i1 %cmp.not, label %if.end8, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %id = getelementptr inbounds %struct._VirtTarget, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 2
  %conv = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp9.not = icmp eq i32 %7, %conv
  br i1 %cmp9.not, label %do.end, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %dev = getelementptr inbounds %struct.scsi_target, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.99, ptr noundef %dev, ptr noundef nonnull @.str.97, ptr noundef %name) #11
  tail call fastcc void @mptspi_dv_device(ptr noundef %1, ptr noundef nonnull %sdev.050)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call15 = tail call ptr @__scsi_iterate_devices(ptr noundef %5, ptr noundef nonnull %sdev.050) #8
  %tobool5.not = icmp eq ptr %call15, null
  br i1 %tobool5.not, label %cleanup.do.end18_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.do.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %cleanup.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  %name19 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.99, ptr noundef %shost_gendev, ptr noundef nonnull @.str.101, ptr noundef %name19, i32 noundef %7) #11
  %20 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sh, align 8
  %shost_gendev22 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  tail call void @scsi_scan_target(ptr noundef %shost_gendev22, i32 noundef 1, i32 noundef %7, i64 noundef 0, i32 noundef 1) #8
  br label %cleanup23

cleanup23:                                        ; preds = %do.end18, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_findImVolumes(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_target(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_ioc_reset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !177, !179, !181, !183, !184, !185, !186, !187, !189, !191, !193, !195, !197, !198, !199, !200, !202, !204, !205, !206, !207, !208, !210, !211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/message/fusion/mptspi.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/message/fusion/mptspi.c", i32 78, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/message/fusion/mptspi.c", i32 79, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/message/fusion/mptspi.c", i32 80, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_mpt_saf_te, !14, !"__param_mpt_saf_te", i1 false, i1 false}
!14 = !{!"../drivers/message/fusion/mptspi.c", i32 84, i32 1}
!15 = !{ptr @__UNIQUE_ID_mpt_saf_tetype292, !14, !"__UNIQUE_ID_mpt_saf_tetype292", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_mpt_saf_te293, !17, !"__UNIQUE_ID_mpt_saf_te293", i1 false, i1 false}
!17 = !{!"../drivers/message/fusion/mptspi.c", i32 85, i32 1}
!18 = !{ptr @__initcall__kmod_mptspi__296_1618_mptspi_init6, !19, !"__initcall__kmod_mptspi__296_1618_mptspi_init6", i1 false, i1 false}
!19 = !{!"../drivers/message/fusion/mptspi.c", i32 1618, i32 1}
!20 = !{ptr @__exitcall_mptspi_exit, !21, !"__exitcall_mptspi_exit", i1 false, i1 false}
!21 = !{!"../drivers/message/fusion/mptspi.c", i32 1619, i32 1}
!22 = !{ptr @__param_str_mpt_saf_te, !14, !"__param_str_mpt_saf_te", i1 false, i1 false}
!23 = !{ptr @mpt_saf_te, !24, !"mpt_saf_te", i1 false, i1 false}
!24 = !{!"../drivers/message/fusion/mptspi.c", i32 83, i32 12}
!25 = !{ptr @mptspi_driver, !26, !"mptspi_driver", i1 false, i1 false}
!26 = !{!"../drivers/message/fusion/mptspi.c", i32 1553, i32 26}
!27 = !{ptr @mptspi_pci_table, !28, !"mptspi_pci_table", i1 false, i1 false}
!28 = !{!"../drivers/message/fusion/mptspi.c", i32 1240, i32 29}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/message/fusion/mptspi.c", i32 1376, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mptspi_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @mptspi_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/message/fusion/mptspi.c", i32 1384, i32 3}
!37 = !{ptr @mptspi_probe._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mptspi_probe._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/message/fusion/mptspi.c", i32 1400, i32 3}
!41 = !{ptr @mptspi_probe._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mptspi_probe._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/message/fusion/mptspi.c", i32 1409, i32 3}
!45 = !{ptr @mptspi_probe._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mptspi_probe._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/message/fusion/mptspi.c", i32 1482, i32 3}
!49 = !{ptr @mptspi_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mptspi_probe._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mptspi_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/message/fusion/mptspi.c", i32 1501, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/message/fusion/mptspi.c", i32 1503, i32 2}
!56 = !{ptr @mptspi_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mptspi_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/message/fusion/mptspi.c", i32 1507, i32 2}
!60 = !{ptr @mptspi_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mptspi_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/message/fusion/mptspi.c", i32 1523, i32 3}
!64 = !{ptr @mptspi_probe._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mptspi_probe._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/message/fusion/mptspi.c", i32 827, i32 13}
!68 = !{ptr @mptspi_driver_template, !69, !"mptspi_driver_template", i1 false, i1 false}
!69 = !{!"../drivers/message/fusion/mptspi.c", i32 823, i32 34}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/message/fusion/mptspi.c", i32 730, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mptspi_slave_alloc._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mptspi_slave_alloc._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/message/fusion/mptspi.c", i32 762, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mptspi_slave_configure._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mptspi_slave_configure._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/message/fusion/mptspi.c", i32 267, i32 3}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mptspi_writeIOCPage4._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mptspi_writeIOCPage4._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/message/fusion/mptspi.c", i32 305, i32 2}
!87 = !{ptr @mptspi_writeIOCPage4._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mptspi_writeIOCPage4._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/message/fusion/mptspi.c", i32 143, i32 7}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mptspi_setTargetNegoParms._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @mptspi_setTargetNegoParms._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/message/fusion/mptspi.c", i32 237, i32 3}
!96 = !{ptr @mptspi_setTargetNegoParms._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mptspi_setTargetNegoParms._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/message/fusion/mptspi.c", i32 697, i32 3}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mptspi_dv_device._entry, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @mptspi_dv_device._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/message/fusion/mptspi.c", i32 708, i32 3}
!107 = !{ptr @mptspi_dv_device._entry.47, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mptspi_dv_device._entry_ptr.49, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/message/fusion/mptspi.c", i32 631, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mptscsih_quiesce_raid._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mptscsih_quiesce_raid._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/message/fusion/mptspi.c", i32 654, i32 2}
!116 = !{ptr @mptscsih_quiesce_raid._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mptscsih_quiesce_raid._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/message/fusion/mptspi.c", i32 662, i32 3}
!120 = !{ptr @mptscsih_quiesce_raid._entry.55, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mptscsih_quiesce_raid._entry_ptr.57, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/message/fusion/mptspi.c", i32 667, i32 4}
!124 = !{ptr @mptscsih_quiesce_raid._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mptscsih_quiesce_raid._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/message/fusion/mptspi.c", i32 540, i32 3}
!128 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mptspi_read_spi_device_pg0._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mptspi_read_spi_device_pg0._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/message/fusion/mptspi.c", i32 562, i32 3}
!133 = !{ptr @mptspi_read_spi_device_pg0._entry.63, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @mptspi_read_spi_device_pg0._entry_ptr.65, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/message/fusion/mptspi.c", i32 498, i32 2}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mptspi_print_read_nego._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mptspi_print_read_nego._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/message/fusion/mptspi.c", i32 875, i32 3}
!152 = !{ptr @mptspi_write_spi_device_pg1._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mptspi_write_spi_device_pg1._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/message/fusion/mptspi.c", i32 910, i32 5}
!156 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @mptspi_write_spi_device_pg1._entry.81, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/message/fusion/mptspi.c", i32 923, i32 3}
!159 = !{ptr @mptspi_write_spi_device_pg1._entry_ptr.82, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/message/fusion/mptspi.c", i32 473, i32 2}
!162 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @mptspi_print_write_nego._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @mptspi_print_write_nego._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/message/fusion/mptspi.c", i32 433, i32 3}
!167 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mptspi_target_alloc._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @mptspi_target_alloc._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @mptspi_dv_renegotiate.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../drivers/message/fusion/mptspi.c", i32 1294, i32 2}
!172 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mptspiDoneCtx, !174, !"mptspiDoneCtx", i1 false, i1 false}
!174 = !{!"../drivers/message/fusion/mptspi.c", i32 94, i32 11}
!175 = !{ptr @mptspiInternalCtx, !176, !"mptspiInternalCtx", i1 false, i1 false}
!176 = !{!"../drivers/message/fusion/mptspi.c", i32 96, i32 11}
!177 = !{ptr @mptspiTaskCtx, !178, !"mptspiTaskCtx", i1 false, i1 false}
!178 = !{!"../drivers/message/fusion/mptspi.c", i32 95, i32 11}
!179 = !{ptr @mptspi_transport_template, !180, !"mptspi_transport_template", i1 false, i1 false}
!180 = !{!"../drivers/message/fusion/mptspi.c", i32 92, i32 40}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/message/fusion/mptspi.c", i32 1576, i32 2}
!183 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mptspi_init._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mptspi_init._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/message/fusion/mptspi.c", i32 1583, i32 6}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/message/fusion/mptspi.c", i32 1585, i32 6}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/message/fusion/mptspi.c", i32 1587, i32 21}
!193 = !{ptr @mptspi_transport_functions, !194, !"mptspi_transport_functions", i1 false, i1 false}
!194 = !{!"../drivers/message/fusion/mptspi.c", i32 1199, i32 37}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/message/fusion/mptspi.c", i32 1157, i32 3}
!197 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @mpt_dv_raid._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @mpt_dv_raid._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @mpt_dv_raid.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../drivers/message/fusion/mptspi.c", i32 1162, i32 2}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/message/fusion/mptspi.c", i32 1141, i32 3}
!204 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mpt_work_wrapper._entry, !203, !"_entry", i1 false, i1 false}
!207 = !{ptr @mpt_work_wrapper._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/message/fusion/mptspi.c", i32 1145, i32 2}
!210 = !{ptr @mpt_work_wrapper._entry.100, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @mpt_work_wrapper._entry_ptr.102, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"branch_weights", i32 1, i32 2000}
!222 = !{!"auto-init"}
