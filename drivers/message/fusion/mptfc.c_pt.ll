; ModuleID = '/llk/IR_all_yes/drivers/message/fusion/mptfc.c_pt.bc'
source_filename = "../drivers/message/fusion/mptfc.c"
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
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct._x_config_parms = type { %union.anon.93, i32, i32, i16, i8, i8, i8 }
%union.anon.93 = type { ptr }
%struct.mptfc_rport_info = type { %struct.list_head, ptr, ptr, %struct._CONFIG_PAGE_FC_DEVICE_0, i8 }
%struct._CONFIG_PAGE_FC_DEVICE_0 = type { %struct._CONFIG_PAGE_HEADER, %struct._U64, %struct._U64, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct._VirtTarget = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct._CONFIG_PAGE_FC_PORT_1 = type { %struct._CONFIG_PAGE_HEADER, i32, %struct._U64, %struct._U64, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct._MSG_EVENT_NOTIFY_REPLY = type { i16, i8, i8, [2 x i8], i8, i8, i32, [2 x i8], i16, i32, i32, i32, [0 x i32] }

@__UNIQUE_ID_author312 = internal constant [29 x i8] c"mptfc.author=LSI Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [44 x i8] c"mptfc.description=Fusion MPT FC Host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [40 x i8] c"mptfc.file=drivers/message/fusion/mptfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [18 x i8] c"mptfc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version316 = internal constant [22 x i8] c"mptfc.version=3.04.20\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptfc\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3.04.20\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_mptfc_dev_loss_tmo = internal constant [25 x i8] c"mptfc.mptfc_dev_loss_tmo\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mptfc_dev_loss_tmo = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_mptfc_dev_loss_tmo = internal constant %struct.kernel_param { ptr @__param_str_mptfc_dev_loss_tmo, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mptfc_dev_loss_tmo } }, section "__param", align 4
@__UNIQUE_ID_mptfc_dev_loss_tmotype317 = internal constant [38 x i8] c"mptfc.parmtype=mptfc_dev_loss_tmo:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mptfc_dev_loss_tmo318 = internal constant [155 x i8] c"mptfc.parm=mptfc_dev_loss_tmo: Initial time the driver programs the  transport to wait for an rport to  return following a device loss event.  Default=60.\00", section ".modinfo", align 1
@__param_str_max_lun = internal constant [14 x i8] c"mptfc.max_lun\00", align 1
@max_lun = internal global { i32, [28 x i8] } { i32 16895, [28 x i8] zeroinitializer }, align 32
@__param_max_lun = internal constant %struct.kernel_param { ptr @__param_str_max_lun, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @max_lun } }, section "__param", align 4
@__UNIQUE_ID_max_luntype319 = internal constant [27 x i8] c"mptfc.parmtype=max_lun:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_lun320 = internal constant [44 x i8] c"mptfc.parm=max_lun: max lun, default=16895 \00", section ".modinfo", align 1
@mptfc_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mptfc_pci_table, ptr @mptfc_probe, ptr @mptfc_remove, ptr @mptscsih_suspend, ptr @mptscsih_resume, ptr @mptscsih_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@mptfc_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mptfcDoneCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptfcInternalCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptfcTaskCtx = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@__initcall__kmod_mptfc__323_1551_mptfc_init6 = internal global ptr @mptfc_init, section ".initcall6.init", align 4
@__exitcall_mptfc_exit = internal global ptr @mptfc_exit, section ".exitcall.exit", align 4
@mptfc_pci_table = internal global { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 4096, i32 1569, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1572, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1570, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1576, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1574, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1602, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1600, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1606, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 1606, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@mptfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014mptfc: %s: WARNING - Skipping because it's not operational!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mptfc_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/message/fusion/mptfc.c\00", [33 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr = internal global ptr @mptfc_probe._entry, section ".printk_index", align 4
@mptfc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014mptfc: %s: WARNING - Skipping because it's disabled!\0A\00", [40 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr.8 = internal global ptr @mptfc_probe._entry.6, section ".printk_index", align 4
@mptfc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014mptfc: %s: WARNING - Skipping ioc=%p because SCSI Initiator mode is NOT enabled!\0A\00", [44 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr.11 = internal global ptr @mptfc_probe._entry.9, section ".printk_index", align 4
@mptfc_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @mptfc_qcmd, ptr null, ptr null, ptr @.str.34, ptr @mptscsih_info, ptr null, ptr null, ptr null, ptr @mptfc_abort, ptr @mptfc_dev_reset, ptr null, ptr @mptfc_bus_reset, ptr @mptscsih_host_reset, ptr @mptfc_slave_alloc, ptr @mptscsih_slave_configure, ptr @mptscsih_slave_destroy, ptr @mptfc_target_alloc, ptr @mptfc_target_destroy, ptr null, ptr null, ptr @mptscsih_change_queue_depth, ptr null, ptr null, ptr null, ptr @mptscsih_bios_param, ptr null, ptr @mptscsih_show_info, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr @.str.1, ptr null, i32 1024, i32 -1, i16 128, i16 0, i32 8192, i32 0, i32 0, i32 0, i16 7, i8 0, i32 0, i8 0, i32 0, ptr @mptscsih_host_attr_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mptfc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014mptfc: %s: WARNING - Unable to register controller with SCSI subsystem\0A\00", [54 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr.14 = internal global ptr @mptfc_probe._entry.12, section ".printk_index", align 4
@mptfc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ioc->fc_rescan_work_lock\00", [38 x i8] zeroinitializer }, align 32
@mptfc_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ioc->fc_rescan_work)\00", [56 x i8] zeroinitializer }, align 32
@mptfc_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&ioc->fc_setup_reset_work)\00", [51 x i8] zeroinitializer }, align 32
@mptfc_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ioc->fc_lsc_work)\00", [59 x i8] zeroinitializer }, align 32
@mptfc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017mptfc: %s: Resetting sg_tablesize to %d from %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr.24 = internal global ptr @mptfc_probe._entry.22, section ".printk_index", align 4
@mptfc_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ioc->scsi_lookup_lock\00", [41 x i8] zeroinitializer }, align 32
@mptfc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017mptfc: %s: ScsiLookup @ %p\0A\00", [34 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr.29 = internal global ptr @mptfc_probe._entry.27, section ".printk_index", align 4
@mptfc_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013mptfc: %s: ERROR - scsi_add_host failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mptfc_probe._entry_ptr.32 = internal global ptr @mptfc_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mptfc_wq_%d\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPT FC Host\00", [20 x i8] zeroinitializer }, align 32
@mptscsih_host_attr_groups = external dso_local global [0 x ptr], align 4
@__func__.mptfc_abort = private unnamed_addr constant [12 x i8] c"mptfc_abort\00", align 1
@mptfc_block_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\017mptfc: %s: mptfc_block_error_handler.%d: %d:%llu, port status is %x, active flag %d, deferring %s recovery.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mptfc_block_error_handler\00", [38 x i8] zeroinitializer }, align 32
@mptfc_block_error_handler._entry_ptr = internal global ptr @mptfc_block_error_handler._entry, section ".printk_index", align 4
@mptfc_block_error_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017mptfc: %s: %s.%d: %d:%llu, failing recovery, port state %x, active %d, vdevice %p.\0A\00", [42 x i8] zeroinitializer }, align 32
@mptfc_block_error_handler._entry_ptr.39 = internal global ptr @mptfc_block_error_handler._entry.37, section ".printk_index", align 4
@mptfc_block_error_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.5, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017mptfc: %s: %s.%d: %d:%llu, executing recovery.\0A\00", [46 x i8] zeroinitializer }, align 32
@mptfc_block_error_handler._entry_ptr.42 = internal global ptr @mptfc_block_error_handler._entry.40, section ".printk_index", align 4
@__func__.mptfc_dev_reset = private unnamed_addr constant [16 x i8] c"mptfc_dev_reset\00", align 1
@__func__.mptfc_bus_reset = private unnamed_addr constant [16 x i8] c"mptfc_bus_reset\00", align 1
@mptfc_slave_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mptfc: %s: ERROR - slave_alloc kmalloc(%zd) FAILED!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mptfc_slave_alloc\00", [46 x i8] zeroinitializer }, align 32
@mptfc_slave_alloc._entry_ptr = internal global ptr @mptfc_slave_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mptfc_dump_lun_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017mptfc: %s: mptfc_slv_alloc.%d: num_luns %d, sdev.id %d, CurrentTargetID %d, %x %llx %llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mptfc_dump_lun_info\00", [44 x i8] zeroinitializer }, align 32
@mptfc_dump_lun_info._entry_ptr = internal global ptr @mptfc_dump_lun_info._entry, section ".printk_index", align 4
@mptfc_rescan_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017mptfc: %s: mptfc_rescan.%d: %llx deleted\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptfc_rescan_devices\00", [43 x i8] zeroinitializer }, align 32
@mptfc_rescan_devices._entry_ptr = internal global ptr @mptfc_rescan_devices._entry, section ".printk_index", align 4
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s%08xh\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FwRev=\00", [25 x i8] zeroinitializer }, align 32
@mptfc_register_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017mptfc: %s: mptfc_reg_dev.%d: %x, %llx / %llx, tid %d, rport tid %d, tmo %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptfc_register_dev\00", [45 x i8] zeroinitializer }, align 32
@mptfc_register_dev._entry_ptr = internal global ptr @mptfc_register_dev._entry, section ".printk_index", align 4
@mptfc_setup_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017mptfc: %s: mptfc_setup_reset.%d: %llx deleted\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mptfc_setup_reset\00", [46 x i8] zeroinitializer }, align 32
@mptfc_setup_reset._entry_ptr = internal global ptr @mptfc_setup_reset._entry, section ".printk_index", align 4
@mptfc_GetFcPortPage0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016mptfc: %s: Firmware discovery not complete.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptfc_GetFcPortPage0\00", [43 x i8] zeroinitializer }, align 32
@mptfc_GetFcPortPage0._entry_ptr = internal global ptr @mptfc_GetFcPortPage0._entry, section ".printk_index", align 4
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2 Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4 Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@mptfc_display_port_link_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015mptfc: %s: FC Link Established, Speed = %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mptfc_display_port_link_speed\00", [34 x i8] zeroinitializer }, align 32
@mptfc_display_port_link_speed._entry_ptr = internal global ptr @mptfc_display_port_link_speed._entry, section ".printk_index", align 4
@mptfc_display_port_link_speed._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014mptfc: %s: WARNING - FC Link Speed Change, Old Speed = %s, New Speed = %s\0A\00", [51 x i8] zeroinitializer }, align 32
@mptfc_display_port_link_speed._entry_ptr.65 = internal global ptr @mptfc_display_port_link_speed._entry.63, section ".printk_index", align 4
@mptfc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 1458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mptfc_init\00", [21 x i8] zeroinitializer }, align 32
@mptfc_init._entry_ptr = internal global ptr @mptfc_init._entry, section ".printk_index", align 4
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fusion MPT FC Host driver\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mptscsih_scandv_complete\00", [39 x i8] zeroinitializer }, align 32
@mptfc_transport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @mptfc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 0, i32 0, i8 127, i8 88, i8 7, i8 112 }, [48 x i8] zeroinitializer }, align 32
@mptfc_event_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017mptfc: %s: MPT event (=%02Xh) routed to SCSI host driver!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mptfc_event_process\00", [44 x i8] zeroinitializer }, align 32
@mptfc_event_process._entry_ptr = internal global ptr @mptfc_event_process._entry, section ".printk_index", align 4
@mptfc_ioc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017mptfc: %s: : IOC %s_reset routed to FC host driver!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mptfc_ioc_reset\00", [16 x i8] zeroinitializer }, align 32
@mptfc_ioc_reset._entry_ptr = internal global ptr @mptfc_ioc_reset._entry, section ".printk_index", align 4
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pre\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"post\00", [27 x i8] zeroinitializer }, align 32
@switch.table.mptfc_rescan_devices = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 77, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"mptfc_dev_loss_tmo\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 81, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [8 x i8] c"max_lun\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 90, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"mptfc_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1353, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"mptfc_transport_template\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 162, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"mptfcDoneCtx\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 94, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"mptfcInternalCtx\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 96, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"mptfcTaskCtx\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 95, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"mptfc_pci_table\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 139, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1192, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1200, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1216, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"mptfc_driver_template\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 108, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1225, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1232, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1233, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1234, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1235, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1279, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1298, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1300, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1308, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1316, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 112, i32 13 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 205, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 219, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 227, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 617, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 577, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1158, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 992, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 994, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 485, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1103, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 814, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 697, i32 60 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 698, i32 61 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 699, i32 55 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 700, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 706, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 710, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1458, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1471, i32 6 }
@___asan_gen_.328 = private unnamed_addr constant [26 x i8] c"mptfc_transport_functions\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 164, i32 36 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1376, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private constant [34 x i8] c"../drivers/message/fusion/mptfc.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1418, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [34 x i8] c"switch.table.mptfc_rescan_devices\00", align 1
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__UNIQUE_ID_max_lun320, ptr @__UNIQUE_ID_max_luntype319, ptr @__UNIQUE_ID_mptfc_dev_loss_tmo318, ptr @__UNIQUE_ID_mptfc_dev_loss_tmotype317, ptr @__UNIQUE_ID_version316, ptr @__exitcall_mptfc_exit, ptr @__initcall__kmod_mptfc__323_1551_mptfc_init6, ptr @__modver_attr, ptr @__param_max_lun, ptr @__param_mptfc_dev_loss_tmo, ptr @mptfc_GetFcPortPage0._entry, ptr @mptfc_GetFcPortPage0._entry_ptr, ptr @mptfc_block_error_handler._entry, ptr @mptfc_block_error_handler._entry.37, ptr @mptfc_block_error_handler._entry.40, ptr @mptfc_block_error_handler._entry_ptr, ptr @mptfc_block_error_handler._entry_ptr.39, ptr @mptfc_block_error_handler._entry_ptr.42, ptr @mptfc_display_port_link_speed._entry, ptr @mptfc_display_port_link_speed._entry.63, ptr @mptfc_display_port_link_speed._entry_ptr, ptr @mptfc_display_port_link_speed._entry_ptr.65, ptr @mptfc_dump_lun_info._entry, ptr @mptfc_dump_lun_info._entry_ptr, ptr @mptfc_event_process._entry, ptr @mptfc_event_process._entry_ptr, ptr @mptfc_exit, ptr @mptfc_init._entry, ptr @mptfc_init._entry_ptr, ptr @mptfc_ioc_reset._entry, ptr @mptfc_ioc_reset._entry_ptr, ptr @mptfc_probe._entry, ptr @mptfc_probe._entry.12, ptr @mptfc_probe._entry.22, ptr @mptfc_probe._entry.27, ptr @mptfc_probe._entry.30, ptr @mptfc_probe._entry.6, ptr @mptfc_probe._entry.9, ptr @mptfc_probe._entry_ptr, ptr @mptfc_probe._entry_ptr.11, ptr @mptfc_probe._entry_ptr.14, ptr @mptfc_probe._entry_ptr.24, ptr @mptfc_probe._entry_ptr.29, ptr @mptfc_probe._entry_ptr.32, ptr @mptfc_probe._entry_ptr.8, ptr @mptfc_register_dev._entry, ptr @mptfc_register_dev._entry_ptr, ptr @mptfc_rescan_devices._entry, ptr @mptfc_rescan_devices._entry_ptr, ptr @mptfc_setup_reset._entry, ptr @mptfc_setup_reset._entry_ptr, ptr @mptfc_slave_alloc._entry, ptr @mptfc_slave_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mptfc_dev_loss_tmo, ptr @max_lun, ptr @mptfc_driver, ptr @mptfc_transport_template, ptr @mptfcDoneCtx, ptr @mptfcInternalCtx, ptr @mptfcTaskCtx, ptr @mptfc_pci_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @mptfc_driver_template, ptr @.str.13, ptr @mptfc_probe.__key, ptr @.str.15, ptr @mptfc_probe.__key.16, ptr @.str.17, ptr @mptfc_probe.__key.18, ptr @.str.19, ptr @mptfc_probe.__key.20, ptr @.str.21, ptr @.str.23, ptr @mptfc_probe.__key.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @mptfc_transport_functions, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @switch.table.mptfc_rescan_devices], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_dev_loss_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfcDoneCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfcInternalCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfcTaskCtx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_pci_table to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_block_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_block_error_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_block_error_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_slave_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_dump_lun_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_rescan_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_register_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_setup_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_GetFcPortPage0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_display_port_link_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_display_port_link_speed._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_transport_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_event_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptfc_ioc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mptfc_rescan_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mptfc_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @mptfc_driver) #11
  %0 = load ptr, ptr @mptfc_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %0) #11
  %1 = load i8, ptr @mptfcDoneCtx, align 1
  tail call void @mpt_reset_deregister(i8 noundef zeroext %1) #11
  %2 = load i8, ptr @mptfcDoneCtx, align 1
  tail call void @mpt_event_deregister(i8 noundef zeroext %2) #11
  %3 = load i8, ptr @mptfcInternalCtx, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %3) #11
  %4 = load i8, ptr @mptfcTaskCtx, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %4) #11
  %5 = load i8, ptr @mptfcDoneCtx, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_reset_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_event_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2) #14
  %0 = load i32, ptr @mptfc_dev_loss_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 60, ptr @mptfc_dev_loss_tmo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @fc_attach_transport(ptr noundef nonnull @mptfc_transport_functions) #11
  store ptr %call1, ptr @mptfc_transport_template, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptscsih_io_done, i32 noundef 3, ptr noundef nonnull @.str.69) #11
  store i8 %call4, ptr @mptfcDoneCtx, align 1
  %call5 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptscsih_taskmgmt_complete, i32 noundef 3, ptr noundef nonnull @.str.69) #11
  store i8 %call5, ptr @mptfcTaskCtx, align 1
  %call6 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptscsih_scandv_complete, i32 noundef 3, ptr noundef nonnull @.str.69) #11
  store i8 %call6, ptr @mptfcInternalCtx, align 1
  %1 = load i8, ptr @mptfcDoneCtx, align 1
  %call7 = tail call i32 @mpt_event_register(i8 noundef zeroext %1, ptr noundef nonnull @mptfc_event_process) #11
  %2 = load i8, ptr @mptfcDoneCtx, align 1
  %call8 = tail call i32 @mpt_reset_register(i8 noundef zeroext %2, ptr noundef nonnull @mptfc_ioc_reset) #11
  %call9 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mptfc_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end3.cleanup_crit_edge, label %if.then11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr @mptfc_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_probe(ptr noundef %pdev, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpt_attach(ptr noundef %pdev, ptr noundef %id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @mptfcDoneCtx, align 1
  %DoneCtx = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 89
  %3 = ptrtoint ptr %DoneCtx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %DoneCtx, align 1
  %4 = load i8, ptr @mptfcTaskCtx, align 1
  %TaskCtx = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 90
  %5 = ptrtoint ptr %TaskCtx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %TaskCtx, align 8
  %6 = load i8, ptr @mptfcInternalCtx, align 1
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
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #14
  br label %out_mptfc_probe

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
  %cmp15336.not = icmp eq i8 %13, 0
  br i1 %cmp15336.not, label %for.cond.preheader.do.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %name11 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name11) #14
  br label %out_mptfc_probe

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ii.0338 = phi i32 [ %inc21, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ioc_cap.0337 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ProtocolFlags = getelementptr %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 %ii.0338, i32 14
  %14 = ptrtoint ptr %ProtocolFlags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ProtocolFlags, align 2
  %16 = lshr i16 %15, 3
  %.lobit = and i16 %16, 1
  %17 = zext i16 %.lobit to i32
  %spec.select = add i32 %ioc_cap.0337, %17
  %inc21 = add nuw nsw i32 %ii.0338, 1
  %exitcond.not = icmp eq i32 %inc21, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool22.not = icmp eq i32 %spec.select, 0
  br i1 %tobool22.not, label %for.end.do.end26_crit_edge, label %if.end31

for.end.do.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end26:                                         ; preds = %for.end.do.end26_crit_edge, %for.cond.preheader.do.end26_crit_edge
  %name28 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name28, ptr noundef %1) #14
  br label %cleanup

if.end31:                                         ; preds = %for.end
  %call32 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @mptfc_driver_template, i32 noundef 536) #11
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %do.body43

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %name39 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name39) #14
  br label %out_mptfc_probe

do.body43:                                        ; preds = %if.end31
  %fc_rescan_work_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 130
  tail call void @__raw_spin_lock_init(ptr noundef %fc_rescan_work_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @mptfc_probe.__key, i16 noundef signext 3) #11
  %fc_rescan_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 131
  tail call void @__init_work(ptr noundef %fc_rescan_work, i32 noundef 0) #11
  %18 = ptrtoint ptr %fc_rescan_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %fc_rescan_work, align 8
  %lockdep_map = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 131, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @mptfc_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry51 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 131, i32 1
  %19 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 131, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry51, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 131, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mptfc_rescan_devices, ptr %func, align 4
  %fc_setup_reset_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 126
  tail call void @__init_work(ptr noundef %fc_setup_reset_work, i32 noundef 0) #11
  %22 = ptrtoint ptr %fc_setup_reset_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %fc_setup_reset_work, align 8
  %lockdep_map61 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 126, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map61, ptr noundef nonnull @.str.19, ptr noundef nonnull @mptfc_probe.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry63 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 126, i32 1
  %23 = ptrtoint ptr %entry63 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry63, ptr %entry63, align 4
  %prev.i325 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 126, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i325 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry63, ptr %prev.i325, align 4
  %func65 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 126, i32 2
  %25 = ptrtoint ptr %func65 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mptfc_setup_reset, ptr %func65, align 4
  %fc_lsc_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 128
  tail call void @__init_work(ptr noundef %fc_lsc_work, i32 noundef 0) #11
  %26 = ptrtoint ptr %fc_lsc_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %fc_lsc_work, align 4
  %lockdep_map74 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 128, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map74, ptr noundef nonnull @.str.21, ptr noundef nonnull @mptfc_probe.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry76 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 128, i32 1
  %27 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i326 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 128, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i326 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry76, ptr %prev.i326, align 4
  %func78 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 128, i32 2
  %29 = ptrtoint ptr %func78 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mptfc_link_status_change, ptr %func78, align 4
  %FreeQlock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 46
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %FreeQlock) #11
  %sh92 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 58
  %30 = ptrtoint ptr %sh92 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32, ptr %sh92, align 8
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 44
  %31 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 45
  %32 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %n_io_port, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 47
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %irq, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 24
  %34 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16, ptr %max_cmd_len, align 4
  %MaxDevices = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 78, i32 0, i32 12
  %35 = ptrtoint ptr %MaxDevices to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %MaxDevices, align 2
  %conv95 = zext i16 %36 to i32
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 21
  %37 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv95, ptr %max_id, align 4
  %38 = load i32, ptr @max_lun, align 4
  %conv96 = sext i32 %38 to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 22
  %39 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv96, ptr %max_lun, align 8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 8
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 23
  %42 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %unique_id, align 8
  %req_sz = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 45
  %43 = ptrtoint ptr %req_sz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %req_sz, align 8
  %SGE_size = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 146
  %45 = ptrtoint ptr %SGE_size to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %SGE_size, align 2
  %conv98 = zext i8 %46 to i32
  %div = sdiv i32 %44, %conv98
  %sg_addr_size = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 144
  %47 = ptrtoint ptr %sg_addr_size to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sg_addr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %48)
  %cmp100 = icmp eq i8 %48, 8
  %sub = add i32 %div, -1
  %MaxChainDepth = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 77, i32 10
  %49 = ptrtoint ptr %MaxChainDepth to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %MaxChainDepth, align 4
  %conv104 = zext i8 %50 to i32
  %sub105 = add nsw i32 %conv104, -1
  %mul = mul i32 %sub105, %sub
  br i1 %cmp100, label %if.then102, label %if.else

if.then102:                                       ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %sub107 = add i32 %44, -60
  %div110 = sdiv i32 %sub107, %conv98
  %add = add i32 %div110, %div
  br label %if.end126

if.else:                                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %sub121 = add i32 %44, -64
  %div124 = sdiv i32 %sub121, %conv98
  %add118 = add i32 %div, 1
  %add119 = add i32 %add118, %div124
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then102
  %add119.sink = phi i32 [ %add119, %if.else ], [ %add, %if.then102 ]
  %add125 = add i32 %add119.sink, %mul
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 28
  %51 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sg_tablesize, align 2
  %conv127 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add125, i32 %conv127)
  %cmp128 = icmp slt i32 %add125, %conv127
  br i1 %cmp128, label %do.body131, label %if.end126.if.end149_crit_edge

if.end126.if.end149_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

do.body131:                                       ; preds = %if.end126
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 10
  %53 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_level, align 4
  %and132 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body131.do.end146_crit_edge, label %do.end137

do.body131.do.end146_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end146

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  %name139 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name139, i32 noundef %add125, i32 noundef %conv127) #14
  br label %do.end146

do.end146:                                        ; preds = %do.end137, %do.body131.do.end146_crit_edge
  %conv147 = trunc i32 %add125 to i16
  %55 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv147, ptr %sg_tablesize, align 2
  br label %if.end149

if.end149:                                        ; preds = %do.end146, %if.end126.if.end149_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %FreeQlock, i32 noundef %call87) #11
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 53
  %56 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %1, ptr %hostdata.i, align 4
  %req_depth = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 44
  %57 = ptrtoint ptr %req_depth to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %req_depth, align 4
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 4) #11
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !198

kcalloc.exit.thread:                              ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %ScsiLookup329 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 137
  %61 = ptrtoint ptr %ScsiLookup329 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ScsiLookup329, align 8
  br label %out_mptfc_probe

if.end7.i.i:                                      ; preds = %if.end149
  %62 = extractvalue { i32, i1 } %59, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %62, i32 noundef 3520) #15
  %ScsiLookup = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 137
  %63 = ptrtoint ptr %ScsiLookup to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call8.i.i, ptr %ScsiLookup, align 8
  %tobool155.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool155.not, label %if.end7.i.i.out_mptfc_probe_crit_edge, label %do.body158

if.end7.i.i.out_mptfc_probe_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mptfc_probe

do.body158:                                       ; preds = %if.end7.i.i
  %scsi_lookup_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 138
  tail call void @__raw_spin_lock_init(ptr noundef %scsi_lookup_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @mptfc_probe.__key.25, i16 noundef signext 3) #11
  %debug_level163 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 10
  %64 = ptrtoint ptr %debug_level163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug_level163, align 4
  %and164 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body158.do.end177_crit_edge, label %do.end169

do.body158.do.end177_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end177

do.end169:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #13
  %name171 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %ScsiLookup to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ScsiLookup, align 8
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name171, ptr noundef %67) #14
  br label %do.end177

do.end177:                                        ; preds = %do.end169, %do.body158.do.end177_crit_edge
  %last_queue_full = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 1, i32 36
  %68 = ptrtoint ptr %last_queue_full to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %last_queue_full, align 4
  %69 = load ptr, ptr @mptfc_transport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 12
  %70 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %transportt, align 4
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 54
  %71 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call32, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool179.not = icmp eq i32 %call.i, 0
  br i1 %tobool179.not, label %if.end196, label %do.body181

do.body181:                                       ; preds = %do.end177
  %73 = ptrtoint ptr %debug_level163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug_level163, align 4
  %and183 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %do.body181.out_mptfc_probe_crit_edge, label %do.end188

do.body181.out_mptfc_probe_crit_edge:             ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mptfc_probe

do.end188:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #13
  %name190 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 2
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name190) #14
  br label %out_mptfc_probe

if.end196:                                        ; preds = %do.end177
  %fc_rescan_work_q_name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 132
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call32, i32 0, i32 17
  %75 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %host_no, align 4
  %call198 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fc_rescan_work_q_name, i32 noundef 20, ptr noundef nonnull @.str.33, i32 noundef %76)
  %call201 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %fc_rescan_work_q_name, i32 noundef 655370, i32 noundef 1) #11
  %fc_rescan_work_q = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 133
  %77 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call201, ptr %fc_rescan_work_q, align 8
  %tobool203.not = icmp eq ptr %call201, null
  br i1 %tobool203.not, label %if.then204, label %for.cond206.preheader

for.cond206.preheader:                            ; preds = %if.end196
  %78 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %NumberOfPorts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp210340.not = icmp eq i8 %79, 0
  br i1 %cmp210340.not, label %for.cond206.preheader.for.end216_crit_edge, label %for.cond206.preheader.for.body212_crit_edge

for.cond206.preheader.for.body212_crit_edge:      ; preds = %for.cond206.preheader
  br label %for.body212

for.cond206.preheader.for.end216_crit_edge:       ; preds = %for.cond206.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end216

if.then204:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_remove_host(ptr noundef nonnull %call32) #11
  br label %out_mptfc_probe

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %for.cond206.preheader.for.body212_crit_edge
  %ii.1341 = phi i32 [ %inc215, %for.body212.for.body212_crit_edge ], [ 0, %for.cond206.preheader.for.body212_crit_edge ]
  tail call fastcc void @mptfc_GetFcPortPage0(ptr noundef %1, i32 noundef %ii.1341)
  %inc215 = add nuw nsw i32 %ii.1341, 1
  %80 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %NumberOfPorts, align 2
  %conv209 = zext i8 %81 to i32
  %cmp210 = icmp ult i32 %inc215, %conv209
  br i1 %cmp210, label %for.body212.for.body212_crit_edge, label %for.body212.for.end216_crit_edge

for.body212.for.end216_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end216

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body212

for.end216:                                       ; preds = %for.body212.for.end216_crit_edge, %for.cond206.preheader.for.end216_crit_edge
  tail call fastcc void @mptfc_SetFcPortPage1_defaults(ptr noundef %1)
  %82 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fc_rescan_work_q, align 8
  %call.i327 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %fc_rescan_work) #11
  %84 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fc_rescan_work_q, align 8
  tail call void @flush_workqueue(ptr noundef %85) #11
  br label %cleanup

out_mptfc_probe:                                  ; preds = %if.then204, %do.end188, %do.body181.out_mptfc_probe_crit_edge, %if.end7.i.i.out_mptfc_probe_crit_edge, %kcalloc.exit.thread, %do.end37, %do.end9, %do.end
  %error.0 = phi i32 [ -19, %do.end ], [ %call.i, %do.end188 ], [ %call.i, %do.body181.out_mptfc_probe_crit_edge ], [ -12, %if.then204 ], [ -1, %do.end37 ], [ -19, %do.end9 ], [ -12, %if.end7.i.i.out_mptfc_probe_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @mptscsih_remove(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %out_mptfc_probe, %for.end216, %do.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_mptfc_probe ], [ 0, %for.end216 ], [ 0, %do.end26 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptfc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fc_rescan_work_q = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 133
  %2 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fc_rescan_work_q, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fc_rescan_work_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 130
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fc_rescan_work_lock) #11
  %4 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fc_rescan_work_q, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fc_rescan_work_lock, i32 noundef %call3) #11
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 58
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 8
  tail call void @fc_remove_host(ptr noundef %6) #11
  %fc_rports = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 127
  %7 = ptrtoint ptr %fc_rports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fc_rports, align 4
  %cmp15.not74 = icmp eq ptr %8, %fc_rports
  br i1 %cmp15.not74, label %if.end.for.cond23.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond23.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %list_del.exit.for.cond23.preheader_crit_edge, %if.end.for.cond23.preheader_crit_edge
  %NumberOfPorts = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 77, i32 20
  %9 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %NumberOfPorts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp2578.not = icmp eq i8 %10, 0
  br i1 %cmp2578.not, label %for.cond23.preheader.for.end46_crit_edge, label %for.body27.lr.ph

for.cond23.preheader.for.end46_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.body27.lr.ph:                                 ; preds = %for.cond23.preheader
  %fc_data = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 62
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 54
  br label %for.body27

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %p.075 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %p.075 to i32
  call void @__asan_load4_noabort(i32 %11)
  %n.0 = load ptr, ptr %p.075, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.075) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.075, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %p.075 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.075, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %p.075 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %p.075, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.075, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p.075) #11
  %cmp15.not = icmp eq ptr %n.0, %fc_rports
  br i1 %cmp15.not, label %list_del.exit.for.cond23.preheader_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.cond23.preheader_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond23.preheader

for.body27:                                       ; preds = %for.inc45.for.body27_crit_edge, %for.body27.lr.ph
  %ii.079 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc, %for.inc45.for.body27_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.anon.92], ptr %fc_data, i32 0, i32 %ii.079
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %for.body27.for.inc45_crit_edge, label %if.then29

for.body27.for.inc45_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45

if.then29:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %pg_sz = getelementptr [2 x %struct.anon.92], ptr %fc_data, i32 0, i32 %ii.079, i32 2
  %24 = ptrtoint ptr %pg_sz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pg_sz, align 4
  %dma = getelementptr [2 x %struct.anon.92], ptr %fc_data, i32 0, i32 %ii.079, i32 1
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull %21, i32 noundef %27, i32 noundef 0) #11
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %if.then29, %for.body27.for.inc45_crit_edge
  %inc = add nuw nsw i32 %ii.079, 1
  %29 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %NumberOfPorts, align 2
  %conv24 = zext i8 %30 to i32
  %cmp25 = icmp ult i32 %inc, %conv24
  br i1 %cmp25, label %for.inc45.for.body27_crit_edge, label %for.inc45.for.end46_crit_edge

for.inc45.for.end46_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end46

for.inc45.for.body27_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27

for.end46:                                        ; preds = %for.inc45.for.end46_crit_edge, %for.cond23.preheader.for.end46_crit_edge
  %31 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sh, align 8
  tail call void @scsi_remove_host(ptr noundef %32) #11
  tail call void @mptscsih_remove(ptr noundef %pdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_resume(ptr noundef) #0

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptfc_rescan_devices(ptr noundef %work) #2 align 64 {
entry:
  %rport_ids.i.i = alloca %struct.fc_rport_identifiers, align 8
  %hdr.i = alloca %struct._CONFIG_PAGE_HEADER, align 4
  %cfg.i = alloca %struct._x_config_parms, align 4
  %page0_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3768
  %fc_rports = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %fc_rports to i32
  call void @__asan_load4_noabort(i32 %0)
  %ri.0110 = load ptr, ptr %fc_rports, align 4
  %cmp.not111 = icmp eq ptr %ri.0110, %fc_rports
  br i1 %cmp.not111, label %entry.for.cond13.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond13.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc.for.cond13.preheader_crit_edge, %entry.for.cond13.preheader_crit_edge
  %NumberOfPorts = getelementptr i8, ptr %work, i32 -2778
  %1 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %NumberOfPorts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp15114.not = icmp eq i8 %2, 0
  br i1 %cmp15114.not, label %for.cond13.preheader.for.cond26.preheader_crit_edge, label %for.body17.lr.ph

for.cond13.preheader.for.cond26.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond26.preheader

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %sh1.i = getelementptr i8, ptr %work, i32 -3296
  %prod_name.i = getelementptr i8, ptr %work, i32 -3728
  %FWVersion.i = getelementptr i8, ptr %work, i32 -2760
  %MaxFrameSize.i = getelementptr i8, ptr %work, i32 -2612
  %WWNN.i = getelementptr i8, ptr %work, i32 -2640
  %High.i = getelementptr i8, ptr %work, i32 -2636
  %WWPN.i = getelementptr i8, ptr %work, i32 -2632
  %High7.i = getelementptr i8, ptr %work, i32 -2628
  %PortIdentifier.i = getelementptr i8, ptr %work, i32 -2644
  %SupportedServiceClass.i = getelementptr i8, ptr %work, i32 -2624
  %CurrentSpeed.i = getelementptr i8, ptr %work, i32 -2616
  %SupportedSpeeds.i = getelementptr i8, ptr %work, i32 -2620
  %PortState.i = getelementptr i8, ptr %work, i32 -2646
  %Flags.i = getelementptr i8, ptr %work, i32 -2652
  %High119.i = getelementptr i8, ptr %work, i32 -2604
  %FabricWWPN.i = getelementptr i8, ptr %work, i32 -2600
  %3 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 3
  %MaxBuses.i = getelementptr i8, ptr %work, i32 -2769
  %MaxDevices.i = getelementptr i8, ptr %work, i32 -2770
  %physAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 1
  %action.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 4
  %dir.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 5
  %pageAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 2
  %timeout.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 6
  %pcidev.i = getelementptr i8, ptr %work, i32 -3312
  %6 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %rport_ids.i.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %rport_ids.i.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.fc_rport_identifiers, ptr %rport_ids.i.i, i32 0, i32 3
  %prev.i2.i.i.i = getelementptr i8, ptr %work, i32 -96
  %debug_level.i.i = getelementptr i8, ptr %work, i32 -3572
  %name.i.i = getelementptr i8, ptr %work, i32 -3760
  br label %for.body17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ri.0112 = phi ptr [ %ri.0, %for.inc.for.body_crit_edge ], [ %ri.0110, %entry.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.0112, i32 0, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i8 %10, 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %ri.0112 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ri.0 = load ptr, ptr %ri.0112, align 4
  %cmp.not = icmp eq ptr %ri.0, %fc_rports
  br i1 %cmp.not, label %for.inc.for.cond13.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond13.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond13.preheader

for.cond26.preheader:                             ; preds = %mptfc_GetFcDevPage0.exit.for.cond26.preheader_crit_edge, %for.cond13.preheader.for.cond26.preheader_crit_edge
  %14 = ptrtoint ptr %fc_rports to i32
  call void @__asan_load4_noabort(i32 %14)
  %ri.1117 = load ptr, ptr %fc_rports, align 4
  %cmp29.not118 = icmp eq ptr %ri.1117, %fc_rports
  br i1 %cmp29.not118, label %for.cond26.preheader.for.end71_crit_edge, label %for.body32.lr.ph

for.cond26.preheader.for.end71_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71

for.body32.lr.ph:                                 ; preds = %for.cond26.preheader
  %debug_level = getelementptr i8, ptr %work, i32 -3572
  %name = getelementptr i8, ptr %work, i32 -3760
  %sh = getelementptr i8, ptr %work, i32 -3296
  br label %for.body32

for.body17:                                       ; preds = %mptfc_GetFcDevPage0.exit.for.body17_crit_edge, %for.body17.lr.ph
  %ii.0115 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %mptfc_GetFcDevPage0.exit.for.body17_crit_edge ]
  call fastcc void @mptfc_GetFcPortPage0(ptr noundef %add.ptr, i32 noundef %ii.0115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ii.0115)
  %cmp.not.i = icmp eq i32 %ii.0115, 0
  br i1 %cmp.not.i, label %if.end.i, label %for.body17.mptfc_init_host_attr.exit_crit_edge

for.body17.mptfc_init_host_attr.exit_crit_edge:   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_init_host_attr.exit

if.end.i:                                         ; preds = %for.body17
  %15 = ptrtoint ptr %sh1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sh1.i, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 51
  %17 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shost_data.i, align 8
  %symbolic_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %18, i32 0, i32 28
  %19 = ptrtoint ptr %prod_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prod_name.i, align 8
  %21 = ptrtoint ptr %FWVersion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %FWVersion.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name.i, i32 noundef 256, ptr noundef nonnull @.str.49, ptr noundef %20, ptr noundef nonnull @.str.50, i32 noundef %22) #11
  %23 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shost_data.i, align 8
  %tgtid_bind_type.i = getelementptr inbounds %struct.fc_host_attrs, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %tgtid_bind_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %tgtid_bind_type.i, align 8
  %26 = ptrtoint ptr %MaxFrameSize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %MaxFrameSize.i, align 4
  %28 = load ptr, ptr %shost_data.i, align 8
  %maxframe_size.i = getelementptr inbounds %struct.fc_host_attrs, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %maxframe_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %maxframe_size.i, align 8
  %30 = ptrtoint ptr %High.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %High.i, align 4
  %conv.i = zext i32 %31 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %32 = ptrtoint ptr %WWNN.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %WWNN.i, align 4
  %conv5.i = zext i32 %33 to i64
  %or.i = or i64 %shl.i, %conv5.i
  %34 = load ptr, ptr %shost_data.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or.i, ptr %34, align 8
  %36 = ptrtoint ptr %High7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %High7.i, align 4
  %conv8.i = zext i32 %37 to i64
  %shl9.i = shl nuw i64 %conv8.i, 32
  %38 = ptrtoint ptr %WWPN.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %WWPN.i, align 4
  %conv12.i = zext i32 %39 to i64
  %or13.i = or i64 %shl9.i, %conv12.i
  %40 = load ptr, ptr %shost_data.i, align 8
  %port_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %or13.i, ptr %port_name.i, align 8
  %42 = ptrtoint ptr %PortIdentifier.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %PortIdentifier.i, align 4
  %44 = load ptr, ptr %shost_data.i, align 8
  %port_id.i = getelementptr inbounds %struct.fc_host_attrs, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %port_id.i, align 8
  %46 = ptrtoint ptr %SupportedServiceClass.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %SupportedServiceClass.i, align 4
  %and.i = shl i32 %47, 1
  %48 = and i32 %and.i, 14
  %49 = load ptr, ptr %shost_data.i, align 8
  %supported_classes.i = getelementptr inbounds %struct.fc_host_attrs, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %supported_classes.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %supported_classes.i, align 8
  %51 = ptrtoint ptr %CurrentSpeed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %CurrentSpeed.i, align 4
  %switch.tableidx = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %53 = icmp ult i32 %switch.tableidx, 8
  br i1 %53, label %switch.lookup, label %if.end.i.if.end51.i_crit_edge

if.end.i.if.end51.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.mptfc_rescan_devices, i32 0, i32 %switch.tableidx
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %switch.lookup, %if.end.i.if.end51.i_crit_edge
  %speed.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.if.end51.i_crit_edge ]
  %55 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shost_data.i, align 8
  %speed53.i = getelementptr inbounds %struct.fc_host_attrs, ptr %56, i32 0, i32 26
  %57 = ptrtoint ptr %speed53.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %speed.0.i, ptr %speed53.i, align 4
  %58 = ptrtoint ptr %SupportedSpeeds.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %SupportedSpeeds.i, align 4
  %60 = and i32 %59, 15
  %61 = load ptr, ptr %shost_data.i, align 8
  %supported_speeds.i = getelementptr inbounds %struct.fc_host_attrs, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %supported_speeds.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %supported_speeds.i, align 4
  %63 = ptrtoint ptr %PortState.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %PortState.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %switch.selectcmp.i = icmp eq i8 %64, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 7, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %switch.selectcmp193.i = icmp eq i8 %64, 2
  %switch.select194.i = select i1 %switch.selectcmp193.i, i32 2, i32 %switch.select.i
  %65 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %shost_data.i, align 8
  %port_state91.i = getelementptr inbounds %struct.fc_host_attrs, ptr %66, i32 0, i32 24
  %67 = ptrtoint ptr %port_state91.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.select194.i, ptr %port_state91.i, align 8
  %68 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %Flags.i, align 4
  %and92.i = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.else95.i, label %if.end51.i.if.end113.i_crit_edge

if.end51.i.if.end113.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.else95.i:                                      ; preds = %if.end51.i
  %and97.i = and i32 %69, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.else100.i, label %if.else95.i.if.end113.i_crit_edge

if.else95.i.if.end113.i_crit_edge:                ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.else100.i:                                     ; preds = %if.else95.i
  %and102.i = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.else105.i, label %if.else100.i.if.end113.i_crit_edge

if.else100.i.if.end113.i_crit_edge:               ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.else105.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #13
  %and107.i = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  %spec.select192.i = select i1 %tobool108.not.i, i32 0, i32 3
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else105.i, %if.else100.i.if.end113.i_crit_edge, %if.else95.i.if.end113.i_crit_edge, %if.end51.i.if.end113.i_crit_edge
  %port_type.0.i = phi i32 [ 6, %if.end51.i.if.end113.i_crit_edge ], [ 5, %if.else95.i.if.end113.i_crit_edge ], [ 4, %if.else100.i.if.end113.i_crit_edge ], [ %spec.select192.i, %if.else105.i ]
  %70 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shost_data.i, align 8
  %port_type115.i = getelementptr inbounds %struct.fc_host_attrs, ptr %71, i32 0, i32 23
  %72 = ptrtoint ptr %port_type115.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %port_type.0.i, ptr %port_type115.i, align 4
  %73 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %Flags.i, align 4
  %and117.i = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  %WWNN.sink.i = select i1 %tobool118.not.i, ptr %WWNN.i, ptr %FabricWWPN.i
  %shl128.sink.in.in.in.i = select i1 %tobool118.not.i, ptr %High.i, ptr %High119.i
  %75 = ptrtoint ptr %shl128.sink.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %shl128.sink.in.in.i = load i32, ptr %shl128.sink.in.in.in.i, align 4
  %shl128.sink.in.i = zext i32 %shl128.sink.in.in.i to i64
  %shl128.sink.i = shl nuw i64 %shl128.sink.in.i, 32
  %76 = ptrtoint ptr %WWNN.sink.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %WWNN.sink.i, align 4
  %conv131.i = zext i32 %77 to i64
  %or132.i = or i64 %shl128.sink.i, %conv131.i
  %78 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %shost_data.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %or132.i, ptr %fabric_name.i, align 8
  br label %mptfc_init_host_attr.exit

mptfc_init_host_attr.exit:                        ; preds = %if.end113.i, %for.body17.mptfc_init_host_attr.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i) #11
  %81 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %hdr.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg.i) #11
  %82 = call ptr @memset(ptr %cfg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page0_dma.i) #11
  %83 = ptrtoint ptr %page0_dma.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %page0_dma.i, align 4, !annotation !199
  %84 = ptrtoint ptr %MaxBuses.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %MaxBuses.i, align 1
  %conv.i101 = zext i8 %85 to i32
  %86 = ptrtoint ptr %MaxDevices.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %MaxDevices.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.i = icmp eq i8 %87, 0
  %conv2.i = zext i8 %87 to i32
  %spec.select.i = select i1 %cmp.i, i32 256, i32 %conv2.i
  %mul.i = mul nuw nsw i32 %conv.i101, 36
  %mul7.i = mul nuw nsw i32 %mul.i, %spec.select.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul7.i, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %mptfc_init_host_attr.exit.mptfc_GetFcDevPage0.exit_crit_edge, label %if.end8.i.i27.i

mptfc_init_host_attr.exit.mptfc_GetFcDevPage0.exit_crit_edge: ; preds = %mptfc_init_host_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcDevPage0.exit

if.end8.i.i27.i:                                  ; preds = %mptfc_init_host_attr.exit
  %mul8.i = shl nuw nsw i32 %conv.i101, 2
  %mul9.i = mul nuw nsw i32 %spec.select.i, %mul8.i
  %call9.i.i26.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul9.i, i32 noundef 3520) #15
  %tobool11.not.i = icmp eq ptr %call9.i.i26.i, null
  br i1 %tobool11.not.i, label %if.end8.i.i27.i.mptfc_GetFcDevPage0.exit_crit_edge, label %if.end8.i.i27.i.do.body.i_crit_edge

if.end8.i.i27.i.do.body.i_crit_edge:              ; preds = %if.end8.i.i27.i
  br label %do.body.i

if.end8.i.i27.i.mptfc_GetFcDevPage0.exit_crit_edge: ; preds = %if.end8.i.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcDevPage0.exit

do.body.i:                                        ; preds = %if.end55.i.do.body.i_crit_edge, %if.end8.i.i27.i.do.body.i_crit_edge
  %p_p0.0.i = phi ptr [ %p_p0.1.i, %if.end55.i.do.body.i_crit_edge ], [ %call9.i.i.i, %if.end8.i.i27.i.do.body.i_crit_edge ]
  %p_pp0.0.i = phi ptr [ %p_pp0.1.i, %if.end55.i.do.body.i_crit_edge ], [ %call9.i.i26.i, %if.end8.i.i27.i.do.body.i_crit_edge ]
  %port_id.0.i = phi i32 [ %port_id.1.i, %if.end55.i.do.body.i_crit_edge ], [ 16777215, %if.end8.i.i27.i.do.body.i_crit_edge ]
  %num_targ.0.i = phi i32 [ %num_targ.1.i, %if.end55.i.do.body.i_crit_edge ], [ 0, %if.end8.i.i27.i.do.body.i_crit_edge ]
  %88 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %hdr.i, align 4
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %3, align 1
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %4, align 2
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 6, ptr %5, align 1
  %92 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %hdr.i, ptr %cfg.i, align 4
  %93 = ptrtoint ptr %physAddr.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %physAddr.i, align 4
  %94 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %action.i, align 2
  %95 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %dir.i, align 1
  %96 = ptrtoint ptr %pageAddr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %port_id.0.i, ptr %pageAddr.i, align 4
  %97 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %timeout.i, align 4
  %call14.i = call i32 @mpt_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.not.i, label %if.end18.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end18.i:                                       ; preds = %do.body.i
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp21.i = icmp eq i8 %99, 0
  br i1 %cmp21.i, label %if.end18.i.do.end.i_crit_edge, label %if.end24.i

if.end18.i.do.end.i_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end24.i:                                       ; preds = %if.end18.i
  %conv20.i = zext i8 %99 to i32
  %mul27.i = shl nuw nsw i32 %conv20.i, 2
  %100 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul27.i, ptr noundef nonnull %page0_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %tobool29.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not.i, label %if.end24.i.do.end.i_crit_edge, label %if.end31.i

if.end24.i.do.end.i_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end31.i:                                       ; preds = %if.end24.i
  %102 = ptrtoint ptr %page0_dma.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page0_dma.i, align 4
  %104 = ptrtoint ptr %physAddr.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %physAddr.i, align 4
  %105 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %action.i, align 2
  %call34.i = call i32 @mpt_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp eq i32 %call34.i, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.end31.i.if.end55.i_crit_edge

if.end31.i.if.end55.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %PortIdentifier.i103 = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 3
  %106 = ptrtoint ptr %PortIdentifier.i103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %PortIdentifier.i103, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #11
  %109 = ptrtoint ptr %PortIdentifier.i103 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %PortIdentifier.i103, align 4
  %WWNN.i104 = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %WWNN.i104 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %WWNN.i104, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #11
  %113 = ptrtoint ptr %WWNN.i104 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %WWNN.i104, align 4
  %High.i105 = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %High.i105 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %High.i105, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #11
  %117 = ptrtoint ptr %High.i105 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %High.i105, align 4
  %WWPN.i106 = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %WWPN.i106 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %WWPN.i106, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #11
  %121 = ptrtoint ptr %WWPN.i106 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %WWPN.i106, align 4
  %High48.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %High48.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %High48.i, align 4
  %124 = call i32 @llvm.bswap.i32(i32 %123) #11
  %125 = ptrtoint ptr %High48.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %High48.i, align 4
  %BBCredit.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 6
  %126 = ptrtoint ptr %BBCredit.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %BBCredit.i, align 2
  %128 = call i16 @llvm.bswap.i16(i16 %127) #11
  %129 = ptrtoint ptr %BBCredit.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %BBCredit.i, align 2
  %MaxRxFrameSize.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %call.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %MaxRxFrameSize.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %MaxRxFrameSize.i, align 4
  %132 = call i16 @llvm.bswap.i16(i16 %131) #11
  %133 = ptrtoint ptr %MaxRxFrameSize.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %MaxRxFrameSize.i, align 4
  %inc.i = add i32 %num_targ.0.i, 1
  %134 = call ptr @memcpy(ptr %p_p0.0.i, ptr %call.i.i, i32 36)
  %incdec.ptr.i = getelementptr %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %p_p0.0.i, i32 1
  %incdec.ptr54.i = getelementptr ptr, ptr %p_pp0.0.i, i32 1
  %135 = ptrtoint ptr %p_pp0.0.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %p_p0.0.i, ptr %p_pp0.0.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then37.i, %if.end31.i.if.end55.i_crit_edge
  %p_p0.1.i = phi ptr [ %incdec.ptr.i, %if.then37.i ], [ %p_p0.0.i, %if.end31.i.if.end55.i_crit_edge ]
  %p_pp0.1.i = phi ptr [ %incdec.ptr54.i, %if.then37.i ], [ %p_pp0.0.i, %if.end31.i.if.end55.i_crit_edge ]
  %port_id.1.i = phi i32 [ %108, %if.then37.i ], [ %port_id.0.i, %if.end31.i.if.end55.i_crit_edge ]
  %num_targ.1.i = phi i32 [ %inc.i, %if.then37.i ], [ %num_targ.0.i, %if.end31.i.if.end55.i_crit_edge ]
  %136 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcidev.i, align 8
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  %138 = ptrtoint ptr %page0_dma.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %page0_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev57.i, i32 noundef %mul27.i, ptr noundef nonnull %call.i.i, i32 noundef %139, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711681, i32 %port_id.1.i)
  %cmp62.i = icmp ult i32 %port_id.1.i, 16711681
  %or.cond.i = select i1 %cmp35.i, i1 %cmp62.i, i1 false
  br i1 %or.cond.i, label %if.end55.i.do.body.i_crit_edge, label %if.end55.i.do.end.i_crit_edge

if.end55.i.do.end.i_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end55.i.do.body.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %if.end55.i.do.end.i_crit_edge, %if.end24.i.do.end.i_crit_edge, %if.end18.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %num_targ.2.i = phi i32 [ %num_targ.0.i, %do.body.i.do.end.i_crit_edge ], [ %num_targ.0.i, %if.end18.i.do.end.i_crit_edge ], [ %num_targ.1.i, %if.end55.i.do.end.i_crit_edge ], [ %num_targ.0.i, %if.end24.i.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_targ.2.i)
  %tobool64.not.i = icmp eq i32 %num_targ.2.i, 0
  br i1 %tobool64.not.i, label %do.end.i.mptfc_GetFcDevPage0.exit_crit_edge, label %if.then65.i

do.end.i.mptfc_GetFcDevPage0.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcDevPage0.exit

if.then65.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_targ.2.i)
  %cmp66.i = icmp sgt i32 %num_targ.2.i, 1
  br i1 %cmp66.i, label %if.end69.thread.i, label %if.end69.i

if.end69.thread.i:                                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sort(ptr noundef nonnull %call9.i.i26.i, i32 noundef %num_targ.2.i, i32 noundef 4, ptr noundef nonnull @mptfc_FcDevPage0_cmp_func, ptr noundef null) #11
  br label %for.body.i.preheader

if.end69.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_targ.2.i)
  %cmp7038.i = icmp eq i32 %num_targ.2.i, 1
  br i1 %cmp7038.i, label %if.end69.i.for.body.i.preheader_crit_edge, label %if.end69.i.mptfc_GetFcDevPage0.exit_crit_edge

if.end69.i.mptfc_GetFcDevPage0.exit_crit_edge:    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcDevPage0.exit

if.end69.i.for.body.i.preheader_crit_edge:        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end69.i.for.body.i.preheader_crit_edge, %if.end69.thread.i
  br label %for.body.i

for.body.i:                                       ; preds = %mptfc_register_dev.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %ii.039.i = phi i32 [ %inc72.i, %mptfc_register_dev.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.ptr.i = getelementptr ptr, ptr %call9.i.i26.i, i32 %ii.039.i
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rport_ids.i.i) #11
  %Flags.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %Flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %Flags.i.i.i, align 1
  %144 = and i8 %143, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %144)
  %.not.i.i.i = icmp eq i8 %144, 1
  br i1 %.not.i.i.i, label %if.end6.i.i.i, label %for.body.i.mptfc_register_dev.exit.i_crit_edge

for.body.i.mptfc_register_dev.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_register_dev.exit.i

if.end6.i.i.i:                                    ; preds = %for.body.i
  %Protocol.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 4
  %145 = ptrtoint ptr %Protocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %Protocol.i.i.i, align 4
  %147 = and i8 %146, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool9.not.i.i.i = icmp eq i8 %147, 0
  br i1 %tobool9.not.i.i.i, label %if.end6.i.i.i.mptfc_register_dev.exit.i_crit_edge, label %if.end.i.i

if.end6.i.i.i.mptfc_register_dev.exit.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_register_dev.exit.i

if.end.i.i:                                       ; preds = %if.end6.i.i.i
  %WWNN.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 1
  %High.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 1, i32 1
  %148 = ptrtoint ptr %High.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %High.i.i.i, align 4
  %conv12.i.i.i = zext i32 %149 to i64
  %shl.i.i.i = shl nuw i64 %conv12.i.i.i, 32
  %150 = ptrtoint ptr %WWNN.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %WWNN.i.i.i, align 4
  %conv14.i.i.i = zext i32 %151 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv14.i.i.i
  %152 = ptrtoint ptr %rport_ids.i.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %or.i.i.i, ptr %rport_ids.i.i, align 8
  %WWPN.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 2
  %High15.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %High15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %High15.i.i.i, align 4
  %conv16.i.i.i = zext i32 %154 to i64
  %shl17.i.i.i = shl nuw i64 %conv16.i.i.i, 32
  %155 = ptrtoint ptr %WWPN.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %WWPN.i.i.i, align 4
  %conv20.i.i.i = zext i32 %156 to i64
  %or21.i.i.i = or i64 %shl17.i.i.i, %conv20.i.i.i
  %157 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %or21.i.i.i, ptr %6, align 8
  %PortIdentifier.i.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 3
  %158 = ptrtoint ptr %PortIdentifier.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %PortIdentifier.i.i.i, align 4
  %160 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %7, align 8
  %161 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %8, align 4
  %162 = and i8 %146, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.i.i = icmp eq i8 %162, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %ri.0.in.i.i = phi ptr [ %fc_rports, %if.end.i.i ], [ %ri.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %163 = ptrtoint ptr %ri.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %ri.0.i.i = load ptr, ptr %ri.0.in.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %ri.0.i.i, %fc_rports
  br i1 %cmp5.not.i.i, label %if.then25.critedge.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %WWPN.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.0.i.i, i32 0, i32 3, i32 2
  %High.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.0.i.i, i32 0, i32 3, i32 2, i32 1
  %164 = ptrtoint ptr %High.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %High.i.i, align 4
  %conv8.i.i = zext i32 %165 to i64
  %shl.i.i = shl nuw i64 %conv8.i.i, 32
  %166 = ptrtoint ptr %WWPN.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %WWPN.i.i, align 4
  %conv11.i.i = zext i32 %167 to i64
  %or12.i.i = or i64 %shl.i.i, %conv11.i.i
  %cmp13.i.i = icmp eq i64 %or12.i.i, %or21.i.i.i
  br i1 %cmp13.i.i, label %if.then15.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

if.then15.i.i:                                    ; preds = %for.body.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ri.0.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i30.i, label %if.then15.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then15.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i30.i:                                 ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ri.0.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i.i.i, align 4
  %170 = ptrtoint ptr %ri.0.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ri.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev1.i.i.i.i.i, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %171, ptr %169, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i30.i, %if.then15.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %174 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ri.0.i.i, ptr noundef %175, ptr noundef %fc_rports) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.if.end32.i.i_crit_edge

__list_del_entry.exit.i.i.i.if.end32.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %ri.0.i.i, ptr %prev.i2.i.i.i, align 4
  %177 = ptrtoint ptr %ri.0.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %fc_rports, ptr %ri.0.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ri.0.i.i, i32 0, i32 1
  %178 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %175, ptr %prev3.i.i.i.i.i, align 4
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %ri.0.i.i, ptr %175, align 4
  br label %if.end32.i.i

if.then25.critedge.i.i:                           ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %180 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %180, i32 noundef 3520, i32 noundef 56) #16
  %tobool27.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool27.not.i.i, label %if.then25.critedge.i.i.mptfc_register_dev.exit.i_crit_edge, label %if.end29.i.i

if.then25.critedge.i.i.mptfc_register_dev.exit.i_crit_edge: ; preds = %if.then25.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_register_dev.exit.i

if.end29.i.i:                                     ; preds = %if.then25.critedge.i.i
  %181 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i154.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %182, ptr noundef %fc_rports) #11
  br i1 %call.i.i154.i.i, label %if.end.i.i155.i.i, label %if.end29.i.i.if.end32.i.i_crit_edge

if.end29.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i

if.end.i.i155.i.i:                                ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call7.i.i.i.i, ptr %prev.i2.i.i.i, align 4
  %184 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %fc_rports, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %182, ptr %prev3.i.i.i.i, align 4
  %186 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %call7.i.i.i.i, ptr %182, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end.i.i155.i.i, %if.end29.i.i.if.end32.i.i_crit_edge, %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.if.end32.i.i_crit_edge
  %ri.1.i.i = phi ptr [ %ri.0.i.i, %__list_del_entry.exit.i.i.i.if.end32.i.i_crit_edge ], [ %ri.0.i.i, %if.end.i.i.i.i.i ], [ %call7.i.i.i.i, %if.end29.i.i.if.end32.i.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i155.i.i ]
  %pg033.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 3
  %187 = call ptr @memcpy(ptr %pg033.i.i, ptr %141, i32 36)
  %flags.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 4
  %188 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %flags.i.i, align 4
  %190 = and i8 %189, -3
  store i8 %190, ptr %flags.i.i, align 4
  %191 = and i8 %189, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool40.not.i.i = icmp eq i8 %191, 0
  br i1 %tobool40.not.i.i, label %if.then41.i.i, label %if.end32.i.i.mptfc_register_dev.exit.i_crit_edge

if.end32.i.i.mptfc_register_dev.exit.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_register_dev.exit.i

if.then41.i.i:                                    ; preds = %if.end32.i.i
  %or44.i.i = or i8 %190, 1
  %192 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %or44.i.i, ptr %flags.i.i, align 4
  %193 = ptrtoint ptr %sh1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sh1.i, align 8
  %call46.i.i = call ptr @fc_remote_port_add(ptr noundef %194, i32 noundef %ii.0115, ptr noundef nonnull %rport_ids.i.i) #11
  %tobool47.not.i.i = icmp eq ptr %call46.i.i, null
  br i1 %tobool47.not.i.i, label %if.else.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %if.then41.i.i
  %rport49.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %rport49.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call46.i.i, ptr %rport49.i.i, align 4
  br i1 %cmp5.not.i.i, label %if.then51.i.i, label %if.then48.i.i.if.end52.i.i_crit_edge

if.then48.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i.i

if.then51.i.i:                                    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %196 = load i32, ptr @mptfc_dev_loss_tmo, align 4
  %dev_loss_tmo.i.i = getelementptr inbounds %struct.fc_rport, ptr %call46.i.i, i32 0, i32 2
  %197 = ptrtoint ptr %dev_loss_tmo.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %dev_loss_tmo.i.i, align 8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then51.i.i, %if.then48.i.i.if.end52.i.i_crit_edge
  %starget.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %starget.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %starget.i.i, align 4
  %tobool53.not.i.i = icmp eq ptr %199, null
  br i1 %tobool53.not.i.i, label %if.end52.i.i.if.end60.i.i_crit_edge, label %if.then54.i.i

if.end52.i.i.if.end60.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i.i

if.then54.i.i:                                    ; preds = %if.end52.i.i
  %hostdata.i.i = getelementptr inbounds %struct.scsi_target, ptr %199, i32 0, i32 14
  %200 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hostdata.i.i, align 8
  %tobool56.not.i.i = icmp eq ptr %201, null
  br i1 %tobool56.not.i.i, label %if.then54.i.i.if.end60.i.i_crit_edge, label %if.then57.i.i

if.then54.i.i.if.end60.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i.i

if.then57.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %CurrentTargetID.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 12
  %202 = ptrtoint ptr %CurrentTargetID.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %CurrentTargetID.i.i, align 2
  %id.i.i = getelementptr inbounds %struct._VirtTarget, ptr %201, i32 0, i32 3
  %204 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %id.i.i, align 2
  %CurrentBus.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 13
  %205 = ptrtoint ptr %CurrentBus.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %CurrentBus.i.i, align 1
  %channel58.i.i = getelementptr inbounds %struct._VirtTarget, ptr %201, i32 0, i32 4
  %207 = ptrtoint ptr %channel58.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %channel58.i.i, align 1
  %deleted.i.i = getelementptr inbounds %struct._VirtTarget, ptr %201, i32 0, i32 11
  %208 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %deleted.i.i, align 2
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.then57.i.i, %if.then54.i.i.if.end60.i.i_crit_edge, %if.end52.i.i.if.end60.i.i_crit_edge
  %dd_data.i.i = getelementptr inbounds %struct.fc_rport, ptr %call46.i.i, i32 0, i32 11
  %209 = ptrtoint ptr %dd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dd_data.i.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %ri.1.i.i, ptr %210, align 4
  call void @fc_remote_port_rolechg(ptr noundef nonnull %call46.i.i, i32 noundef %spec.select.i.i) #11
  %212 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %debug_level.i.i, align 4
  %and80.i.i = and i32 %213, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i)
  %tobool81.not.i.i = icmp eq i32 %and80.i.i, 0
  br i1 %tobool81.not.i.i, label %if.end60.i.i.mptfc_register_dev.exit.i_crit_edge, label %do.end.i.i

if.end60.i.i.mptfc_register_dev.exit.i_crit_edge: ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_register_dev.exit.i

do.end.i.i:                                       ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %High72.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 3, i32 1, i32 1
  %214 = ptrtoint ptr %High72.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %High72.i.i, align 4
  %conv73.i.i = zext i32 %215 to i64
  %shl74.i.i = shl nuw i64 %conv73.i.i, 32
  %WWNN.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 3, i32 1
  %216 = ptrtoint ptr %WWNN.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %WWNN.i.i, align 4
  %conv78.i.i = zext i32 %217 to i64
  %or79.i.i = or i64 %shl74.i.i, %conv78.i.i
  %High63.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 3, i32 2, i32 1
  %218 = ptrtoint ptr %High63.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %High63.i.i, align 4
  %conv64.i.i = zext i32 %219 to i64
  %shl65.i.i = shl nuw i64 %conv64.i.i, 32
  %WWPN62.i.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1.i.i, i32 0, i32 3, i32 2
  %220 = ptrtoint ptr %WWPN62.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %WWPN62.i.i, align 4
  %conv69.i.i = zext i32 %221 to i64
  %or70.i.i = or i64 %shl65.i.i, %conv69.i.i
  %222 = ptrtoint ptr %sh1.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sh1.i, align 8
  %host_no.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %223, i32 0, i32 17
  %224 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %host_no.i.i, align 4
  %226 = ptrtoint ptr %PortIdentifier.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %PortIdentifier.i.i.i, align 4
  %CurrentTargetID86.i.i = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %141, i32 0, i32 12
  %228 = ptrtoint ptr %CurrentTargetID86.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %CurrentTargetID86.i.i, align 2
  %conv87.i.i = zext i8 %229 to i32
  %230 = ptrtoint ptr %rport49.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %rport49.i.i, align 4
  %scsi_target_id.i.i = getelementptr inbounds %struct.fc_rport, ptr %231, i32 0, i32 9
  %232 = ptrtoint ptr %scsi_target_id.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %scsi_target_id.i.i, align 4
  %dev_loss_tmo90.i.i = getelementptr inbounds %struct.fc_rport, ptr %231, i32 0, i32 2
  %234 = ptrtoint ptr %dev_loss_tmo90.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %dev_loss_tmo90.i.i, align 8
  %call91.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name.i.i, i32 noundef %225, i32 noundef %227, i64 noundef %or79.i.i, i64 noundef %or70.i.i, i32 noundef %conv87.i.i, i32 noundef %233, i32 noundef %235) #14
  br label %mptfc_register_dev.exit.i

if.else.i.i:                                      ; preds = %if.then41.i.i
  %call.i.i156.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ri.1.i.i) #11
  br i1 %call.i.i156.i.i, label %if.end.i.i159.i.i, label %if.else.i.i.list_del.exit.i.i_crit_edge

if.else.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i159.i.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i157.i.i = getelementptr inbounds %struct.list_head, ptr %ri.1.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %prev.i.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %prev.i.i157.i.i, align 4
  %238 = ptrtoint ptr %ri.1.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ri.1.i.i, align 4
  %prev1.i.i.i158.i.i = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %prev1.i.i.i158.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %237, ptr %prev1.i.i.i158.i.i, align 4
  %241 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile ptr %239, ptr %237, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i159.i.i, %if.else.i.i.list_del.exit.i.i_crit_edge
  %242 = ptrtoint ptr %ri.1.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr inttoptr (i32 256 to ptr), ptr %ri.1.i.i, align 4
  %prev.i160.i.i = getelementptr inbounds %struct.list_head, ptr %ri.1.i.i, i32 0, i32 1
  %243 = ptrtoint ptr %prev.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i160.i.i, align 4
  call void @kfree(ptr noundef %ri.1.i.i) #11
  br label %mptfc_register_dev.exit.i

mptfc_register_dev.exit.i:                        ; preds = %list_del.exit.i.i, %do.end.i.i, %if.end60.i.i.mptfc_register_dev.exit.i_crit_edge, %if.end32.i.i.mptfc_register_dev.exit.i_crit_edge, %if.then25.critedge.i.i.mptfc_register_dev.exit.i_crit_edge, %if.end6.i.i.i.mptfc_register_dev.exit.i_crit_edge, %for.body.i.mptfc_register_dev.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rport_ids.i.i) #11
  %inc72.i = add nuw nsw i32 %ii.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc72.i, %num_targ.2.i
  br i1 %exitcond.not.i, label %mptfc_register_dev.exit.i.mptfc_GetFcDevPage0.exit_crit_edge, label %mptfc_register_dev.exit.i.for.body.i_crit_edge

mptfc_register_dev.exit.i.for.body.i_crit_edge:   ; preds = %mptfc_register_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mptfc_register_dev.exit.i.mptfc_GetFcDevPage0.exit_crit_edge: ; preds = %mptfc_register_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcDevPage0.exit

mptfc_GetFcDevPage0.exit:                         ; preds = %mptfc_register_dev.exit.i.mptfc_GetFcDevPage0.exit_crit_edge, %if.end69.i.mptfc_GetFcDevPage0.exit_crit_edge, %do.end.i.mptfc_GetFcDevPage0.exit_crit_edge, %if.end8.i.i27.i.mptfc_GetFcDevPage0.exit_crit_edge, %mptfc_init_host_attr.exit.mptfc_GetFcDevPage0.exit_crit_edge
  %retval.1.i.i34.i = phi ptr [ %call9.i.i.i, %do.end.i.mptfc_GetFcDevPage0.exit_crit_edge ], [ %call9.i.i.i, %if.end8.i.i27.i.mptfc_GetFcDevPage0.exit_crit_edge ], [ null, %mptfc_init_host_attr.exit.mptfc_GetFcDevPage0.exit_crit_edge ], [ %call9.i.i.i, %if.end69.i.mptfc_GetFcDevPage0.exit_crit_edge ], [ %call9.i.i.i, %mptfc_register_dev.exit.i.mptfc_GetFcDevPage0.exit_crit_edge ]
  %pp0_array.0.i = phi ptr [ %call9.i.i26.i, %do.end.i.mptfc_GetFcDevPage0.exit_crit_edge ], [ null, %if.end8.i.i27.i.mptfc_GetFcDevPage0.exit_crit_edge ], [ null, %mptfc_init_host_attr.exit.mptfc_GetFcDevPage0.exit_crit_edge ], [ %call9.i.i26.i, %if.end69.i.mptfc_GetFcDevPage0.exit_crit_edge ], [ %call9.i.i26.i, %mptfc_register_dev.exit.i.mptfc_GetFcDevPage0.exit_crit_edge ]
  call void @kfree(ptr noundef %pp0_array.0.i) #11
  call void @kfree(ptr noundef %retval.1.i.i34.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page0_dma.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #11
  %inc = add nuw nsw i32 %ii.0115, 1
  %244 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %NumberOfPorts, align 2
  %conv14 = zext i8 %245 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %mptfc_GetFcDevPage0.exit.for.body17_crit_edge, label %mptfc_GetFcDevPage0.exit.for.cond26.preheader_crit_edge

mptfc_GetFcDevPage0.exit.for.cond26.preheader_crit_edge: ; preds = %mptfc_GetFcDevPage0.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond26.preheader

mptfc_GetFcDevPage0.exit.for.body17_crit_edge:    ; preds = %mptfc_GetFcDevPage0.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

for.body32:                                       ; preds = %for.inc65.for.body32_crit_edge, %for.body32.lr.ph
  %ri.1119 = phi ptr [ %ri.1117, %for.body32.lr.ph ], [ %ri.1, %for.inc65.for.body32_crit_edge ]
  %flags33 = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1119, i32 0, i32 4
  %246 = ptrtoint ptr %flags33 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %flags33, align 4
  %248 = and i8 %247, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool36.not = icmp eq i8 %248, 0
  br i1 %tobool36.not, label %for.body32.for.inc65_crit_edge, label %if.then37

for.body32.for.inc65_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

if.then37:                                        ; preds = %for.body32
  %and40 = and i8 %247, -4
  %249 = ptrtoint ptr %flags33 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %and40, ptr %flags33, align 4
  %rport = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1119, i32 0, i32 1
  %250 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rport, align 4
  call void @fc_remote_port_delete(ptr noundef %251) #11
  %252 = ptrtoint ptr %rport to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr null, ptr %rport, align 4
  %starget43 = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1119, i32 0, i32 2
  %253 = ptrtoint ptr %starget43 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %starget43, align 4
  %tobool44.not = icmp eq ptr %254, null
  br i1 %tobool44.not, label %if.then37.if.end49_crit_edge, label %if.then45

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then45:                                        ; preds = %if.then37
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %254, i32 0, i32 14
  %255 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hostdata, align 8
  %tobool46.not = icmp eq ptr %256, null
  br i1 %tobool46.not, label %if.then45.if.end49_crit_edge, label %if.then47

if.then45.if.end49_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %deleted = getelementptr inbounds %struct._VirtTarget, ptr %256, i32 0, i32 11
  %257 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %deleted, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then45.if.end49_crit_edge, %if.then37.if.end49_crit_edge
  %258 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %debug_level, align 4
  %and55 = and i32 %259, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end49.for.inc65_crit_edge, label %do.end

if.end49.for.inc65_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

do.end:                                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %High = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1119, i32 0, i32 3, i32 2, i32 1
  %260 = ptrtoint ptr %High to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %High, align 4
  %conv50 = zext i32 %261 to i64
  %shl = shl nuw i64 %conv50, 32
  %WWPN = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.1119, i32 0, i32 3, i32 2
  %262 = ptrtoint ptr %WWPN to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %WWPN, align 4
  %conv53 = zext i32 %263 to i64
  %or54 = or i64 %shl, %conv53
  %264 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %sh, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %265, i32 0, i32 17
  %266 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %host_no, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %267, i64 noundef %or54) #14
  br label %for.inc65

for.inc65:                                        ; preds = %do.end, %if.end49.for.inc65_crit_edge, %for.body32.for.inc65_crit_edge
  %268 = ptrtoint ptr %ri.1119 to i32
  call void @__asan_load4_noabort(i32 %268)
  %ri.1 = load ptr, ptr %ri.1119, align 4
  %cmp29.not = icmp eq ptr %ri.1, %fc_rports
  br i1 %cmp29.not, label %for.inc65.for.end71_crit_edge, label %for.inc65.for.body32_crit_edge

for.inc65.for.body32_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

for.inc65.for.end71_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71

for.end71:                                        ; preds = %for.inc65.for.end71_crit_edge, %for.cond26.preheader.for.end71_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptfc_setup_reset(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_rports = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %fc_rports to i32
  call void @__asan_load4_noabort(i32 %0)
  %ri.049 = load ptr, ptr %fc_rports, align 4
  %cmp.not50 = icmp eq ptr %ri.049, %fc_rports
  br i1 %cmp.not50, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %debug_level = getelementptr i8, ptr %work, i32 -3428
  %name = getelementptr i8, ptr %work, i32 -3616
  %sh = getelementptr i8, ptr %work, i32 -3152
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ri.051 = phi ptr [ %ri.049, %for.body.lr.ph ], [ %ri.0, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.051, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 4
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %and7 = and i8 %2, -2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and7, ptr %flags, align 4
  %rport = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.051, i32 0, i32 1
  %5 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rport, align 4
  tail call void @fc_remote_port_delete(ptr noundef %6) #11
  %7 = ptrtoint ptr %rport to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rport, align 4
  %starget10 = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.051, i32 0, i32 2
  %8 = ptrtoint ptr %starget10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %starget10, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.then.if.end15_crit_edge, label %if.then12

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.then
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata, align 8
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then12.if.end15_crit_edge, label %if.then14

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %deleted = getelementptr inbounds %struct._VirtTarget, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %deleted, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %13 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_level, align 4
  %and20 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end15.for.inc_crit_edge, label %do.end

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %High = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.051, i32 0, i32 3, i32 2, i32 1
  %15 = ptrtoint ptr %High to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %High, align 4
  %conv16 = zext i32 %16 to i64
  %shl = shl nuw i64 %conv16, 32
  %WWPN = getelementptr inbounds %struct.mptfc_rport_info, ptr %ri.051, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %WWPN to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %WWPN, align 4
  %conv19 = zext i32 %18 to i64
  %or = or i64 %shl, %conv19
  %19 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sh, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name, i32 noundef %22, i64 noundef %or) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %ri.051 to i32
  call void @__asan_load4_noabort(i32 %23)
  %ri.0 = load ptr, ptr %ri.051, align 4
  %cmp.not = icmp eq ptr %ri.0, %fc_rports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptfc_link_status_change(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3768
  %NumberOfPorts = getelementptr i8, ptr %work, i32 -2778
  %0 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %NumberOfPorts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp6.not = icmp eq i8 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ii.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @mptfc_GetFcPortPage0(ptr noundef %add.ptr, i32 noundef %ii.07)
  %inc = add nuw nsw i32 %ii.07, 1
  %2 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %NumberOfPorts, align 2
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptfc_GetFcPortPage0(ptr noundef %ioc, i32 noundef %portnum) unnamed_addr #2 align 64 {
entry:
  %hdr = alloca %struct._CONFIG_PAGE_HEADER, align 1
  %cfg = alloca %struct._x_config_parms, align 4
  %page0_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr) #11
  %0 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #11
  %1 = getelementptr inbounds i8, ptr %cfg, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page0_dma) #11
  %3 = ptrtoint ptr %page0_dma to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %page0_dma, align 4, !annotation !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %portnum)
  %cmp = icmp sgt i32 %portnum, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr, i32 0, i32 3
  %5 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hdr, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %4, align 1
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hdr, ptr %cfg, align 4
  %physAddr = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %physAddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %physAddr, align 4
  %action = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 4
  %12 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %action, align 2
  %dir = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 5
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dir, align 1
  %pageAddr = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %pageAddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %portnum, ptr %pageAddr, align 4
  %timeout = getelementptr inbounds %struct._x_config_parms, ptr %cfg, i32 0, i32 6
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %timeout, align 4
  %call = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp5 = icmp eq i8 %17, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %conv = zext i8 %17 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 54
  %18 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %page0_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %try_again.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

try_again.preheader:                              ; preds = %if.end8
  %20 = call ptr @memset(ptr %call.i, i32 0, i32 %mul)
  %21 = ptrtoint ptr %page0_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page0_dma, align 4
  %23 = ptrtoint ptr %physAddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %physAddr, align 4
  %24 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %action, align 2
  %call152 = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp163 = icmp eq i32 %call152, 0
  br i1 %cmp163, label %if.then18.lr.ph, label %try_again.preheader.if.end73_crit_edge

try_again.preheader.if.end73_crit_edge:           ; preds = %try_again.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then18.lr.ph:                                  ; preds = %try_again.preheader
  %arrayidx = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %17)
  %cmp19 = icmp ugt i8 %17, 19
  %.mul = select i1 %cmp19, i32 76, i32 %mul
  %Flags = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 1
  %PortIdentifier = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 6
  %WWNN = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 7
  %High = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 7, i32 1
  %WWPN = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 8
  %High32 = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 8, i32 1
  %SupportedServiceClass = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 9
  %SupportedSpeeds = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 10
  %CurrentSpeed = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 11
  %MaxFrameSize = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 12
  %FabricWWNN = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 13
  %High43 = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 13, i32 1
  %FabricWWPN = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 14
  %High50 = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 14, i32 1
  %DiscoveredPortsCount = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 15
  %MaxInitiators = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 16
  %PortState = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 79, i32 %portnum, i32 4
  br label %if.then18

if.then18:                                        ; preds = %if.then68.if.then18_crit_edge, %if.then18.lr.ph
  %count.04 = phi i32 [ 400, %if.then18.lr.ph ], [ %dec, %if.then68.if.then18_crit_edge ]
  %25 = call ptr @memcpy(ptr %arrayidx, ptr %call.i, i32 %.mul)
  %26 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %Flags, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %Flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %Flags, align 4
  %30 = ptrtoint ptr %PortIdentifier to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %PortIdentifier, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %PortIdentifier to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %PortIdentifier, align 4
  %34 = ptrtoint ptr %WWNN to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %WWNN, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %WWNN to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %WWNN, align 4
  %38 = ptrtoint ptr %High to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %High, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %High to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %High, align 4
  %42 = ptrtoint ptr %WWPN to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %WWPN, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %WWPN to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %WWPN, align 4
  %46 = ptrtoint ptr %High32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %High32, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %High32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %High32, align 4
  %50 = ptrtoint ptr %SupportedServiceClass to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %SupportedServiceClass, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %SupportedServiceClass to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %SupportedServiceClass, align 4
  %54 = ptrtoint ptr %SupportedSpeeds to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %SupportedSpeeds, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %SupportedSpeeds to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %SupportedSpeeds, align 4
  %58 = ptrtoint ptr %CurrentSpeed to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %CurrentSpeed, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %CurrentSpeed to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %CurrentSpeed, align 4
  %62 = ptrtoint ptr %MaxFrameSize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %MaxFrameSize, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %MaxFrameSize to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %MaxFrameSize, align 4
  %66 = ptrtoint ptr %FabricWWNN to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %FabricWWNN, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %FabricWWNN to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %FabricWWNN, align 4
  %70 = ptrtoint ptr %High43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %High43, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %High43 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %High43, align 4
  %74 = ptrtoint ptr %FabricWWPN to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %FabricWWPN, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %FabricWWPN to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %FabricWWPN, align 4
  %78 = ptrtoint ptr %High50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %High50, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %High50 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %High50, align 4
  %82 = ptrtoint ptr %DiscoveredPortsCount to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %DiscoveredPortsCount, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %DiscoveredPortsCount to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %DiscoveredPortsCount, align 4
  %86 = ptrtoint ptr %MaxInitiators to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %MaxInitiators, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %MaxInitiators to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %MaxInitiators, align 4
  %90 = ptrtoint ptr %PortState to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %PortState, align 2
  %92 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values)
  switch i8 %91, label %if.then18.if.end72_crit_edge [
    i8 1, label %if.then18.if.then65_crit_edge
    i8 2, label %land.lhs.true
  ]

if.then18.if.then65_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

if.then18.if.end72_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true:                                    ; preds = %if.then18
  %and = and i32 %28, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp63 = icmp eq i32 %and, 0
  br i1 %cmp63, label %land.lhs.true.if.then65_crit_edge, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.if.then65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

if.then65:                                        ; preds = %land.lhs.true.if.then65_crit_edge, %if.then18.if.then65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.04)
  %cmp66.not = icmp eq i32 %count.04, 0
  br i1 %cmp66.not, label %do.end, label %if.then68

if.then68:                                        ; preds = %if.then65
  %dec = add nsw i32 %count.04, -1
  call void @msleep(i32 noundef 100) #11
  %93 = call ptr @memset(ptr %call.i, i32 0, i32 %mul)
  %94 = ptrtoint ptr %page0_dma to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %page0_dma, align 4
  %96 = ptrtoint ptr %physAddr to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %physAddr, align 4
  %97 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %action, align 2
  %call15 = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg) #11
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then68.if.then18_crit_edge, label %if.then68.if.end73_crit_edge

if.then68.if.end73_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then68.if.then18_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

do.end:                                           ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name) #14
  %98 = ptrtoint ptr %PortState to i32
  call void @__asan_load1_noabort(i32 %98)
  %.pr = load i8, ptr %PortState, align 2
  br label %if.end72

if.end72:                                         ; preds = %do.end, %if.then18.if.end72_crit_edge
  %99 = phi i8 [ %.pr, %do.end ], [ %91, %if.then18.if.end72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %99)
  %cmp2.not.i = icmp eq i8 %99, 3
  br i1 %cmp2.not.i, label %if.end72.if.end73_crit_edge, label %if.end72.land.lhs.true.i_crit_edge

if.end72.land.lhs.true.i_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end72.if.end73_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

land.lhs.true.i:                                  ; preds = %if.end72.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge
  %arrayidx.i8 = getelementptr %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 129, i32 %portnum
  %100 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i8, align 1
  %102 = ptrtoint ptr %CurrentSpeed to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %CurrentSpeed, align 4
  %conv.i9 = trunc i32 %103 to i8
  %conv4.i = and i32 %103, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp5.not.i = icmp eq i32 %conv4.i, 0
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end73_crit_edge, label %if.then7.i

land.lhs.true.i.if.end73_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then7.i:                                       ; preds = %land.lhs.true.i
  %104 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %101, label %cond.false15.i [
    i8 1, label %if.then7.i.cond.end20.i_crit_edge
    i8 2, label %cond.end20.fold.split.i
  ]

if.then7.i.cond.end20.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20.i

cond.false15.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %101)
  %cmp17.i = icmp eq i8 %101, 8
  %cond.i = select i1 %cmp17.i, ptr @.str.59, ptr @.str.60
  br label %cond.end20.i

cond.end20.fold.split.i:                          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.end20.fold.split.i, %cond.false15.i, %if.then7.i.cond.end20.i_crit_edge
  %cond21.i = phi ptr [ @.str.57, %if.then7.i.cond.end20.i_crit_edge ], [ %cond.i, %cond.false15.i ], [ @.str.58, %cond.end20.fold.split.i ]
  %105 = zext i8 %conv.i9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %conv.i9, label %cond.false31.i [
    i8 1, label %cond.end20.i.cond.end38.i_crit_edge
    i8 2, label %cond.end38.fold.split.i
  ]

cond.end20.i.cond.end38.i_crit_edge:              ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end38.i

cond.false31.i:                                   ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv4.i)
  %cmp33.i = icmp eq i32 %conv4.i, 8
  %cond35.i = select i1 %cmp33.i, ptr @.str.59, ptr @.str.60
  br label %cond.end38.i

cond.end38.fold.split.i:                          ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end38.i

cond.end38.i:                                     ; preds = %cond.end38.fold.split.i, %cond.false31.i, %cond.end20.i.cond.end38.i_crit_edge
  %cond39.i = phi ptr [ @.str.57, %cond.end20.i.cond.end38.i_crit_edge ], [ %cond35.i, %cond.false31.i ], [ @.str.58, %cond.end38.fold.split.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp41.i = icmp eq i8 %101, 0
  br i1 %cmp41.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call.i1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name.i, ptr noundef nonnull %cond39.i) #14
  br label %if.end57.i

if.else.i:                                        ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %conv.i9)
  %cmp46.not.i = icmp eq i8 %101, %conv.i9
  br i1 %cmp46.not.i, label %if.else.i.if.end57.i_crit_edge, label %do.end51.i

if.else.i.if.end57.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

do.end51.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %name53.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name53.i, ptr noundef nonnull %cond21.i, ptr noundef nonnull %cond39.i) #14
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end51.i, %if.else.i.if.end57.i_crit_edge, %do.end.i
  %106 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i9, ptr %arrayidx.i8, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.end57.i, %land.lhs.true.i.if.end73_crit_edge, %if.end72.if.end73_crit_edge, %if.then68.if.end73_crit_edge, %try_again.preheader.if.end73_crit_edge
  %107 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pcidev, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %page0_dma to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %page0_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev75, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %110, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page0_dma) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptfc_SetFcPortPage1_defaults(ptr noundef %ioc) unnamed_addr #2 align 64 {
entry:
  %hdr.i40 = alloca %struct._CONFIG_PAGE_HEADER, align 1
  %cfg.i41 = alloca %struct._x_config_parms, align 4
  %hdr.i = alloca %struct._CONFIG_PAGE_HEADER, align 1
  %cfg.i = alloca %struct._x_config_parms, align 4
  %page1_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %NumberOfPorts = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 77, i32 20
  %0 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %NumberOfPorts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp62.not = icmp eq i8 %1, 0
  br i1 %cmp62.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %cfg.i, i32 12
  %4 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 2
  %physAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 1
  %action.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 4
  %pageAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 2
  %fc_data.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 62
  %pcidev41.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 54
  %6 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i40, i32 0, i32 1
  %7 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i40, i32 0, i32 2
  %8 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i40, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %cfg.i41, i32 12
  %physAddr.i47 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i41, i32 0, i32 1
  %action.i48 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i41, i32 0, i32 4
  %dir.i49 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i41, i32 0, i32 5
  %pageAddr.i50 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i41, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ii.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg.i) #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -281474959933441, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page1_dma.i) #11
  %11 = ptrtoint ptr %page1_dma.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %page1_dma.i, align 4, !annotation !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ii.063)
  %cmp.i = icmp ugt i32 %ii.063, 1
  br i1 %cmp.i, label %for.body.mptfc_GetFcPortPage1.exit.thread_crit_edge, label %if.end.i

for.body.mptfc_GetFcPortPage1.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcPortPage1.exit.thread

if.end.i:                                         ; preds = %for.body
  %12 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %hdr.i, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %2, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %5, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %4, align 1
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hdr.i, ptr %cfg.i, align 4
  %17 = ptrtoint ptr %physAddr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %physAddr.i, align 4
  %18 = ptrtoint ptr %pageAddr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ii.063, ptr %pageAddr.i, align 4
  %call.i = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.mptfc_GetFcPortPage1.exit.thread_crit_edge

if.end.i.mptfc_GetFcPortPage1.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcPortPage1.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp5.i = icmp eq i8 %20, 0
  br i1 %cmp5.i, label %if.end3.i.mptfc_GetFcPortPage1.exit.thread_crit_edge, label %start_over.preheader.i

if.end3.i.mptfc_GetFcPortPage1.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcPortPage1.exit.thread

start_over.preheader.i:                           ; preds = %if.end3.i
  %arrayidx.i = getelementptr [2 x %struct.anon.92], ptr %fc_data.i, i32 0, i32 %ii.063
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %cmp9115.i = icmp eq ptr %22, null
  br i1 %cmp9115.i, label %start_over.preheader.i.if.then11.i_crit_edge, label %if.else.lr.ph.i

start_over.preheader.i.if.then11.i_crit_edge:     ; preds = %start_over.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.else.lr.ph.i:                                  ; preds = %start_over.preheader.i
  %dma.i = getelementptr [2 x %struct.anon.92], ptr %fc_data.i, i32 0, i32 %ii.063, i32 1
  %pg_sz.i = getelementptr [2 x %struct.anon.92], ptr %fc_data.i, i32 0, i32 %ii.063, i32 2
  br label %if.else.i

if.then11.i:                                      ; preds = %if.then36.i.if.then11.i_crit_edge, %start_over.preheader.i.if.then11.i_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %conv13.i = zext i8 %24 to i32
  %mul.i = shl nuw nsw i32 %conv13.i, 2
  %25 = call i32 @llvm.umax.i32(i32 %mul.i, i32 32) #11
  %26 = ptrtoint ptr %pcidev41.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev41.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %25, ptr noundef nonnull %page1_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then11.i.mptfc_GetFcPortPage1.exit.thread_crit_edge, label %if.then11.i.if.end44.i_crit_edge

if.then11.i.if.end44.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then11.i.mptfc_GetFcPortPage1.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_GetFcPortPage1.exit.thread

if.else.i:                                        ; preds = %if.then36.i.if.else.i_crit_edge, %if.else.lr.ph.i
  %28 = phi ptr [ %22, %if.else.lr.ph.i ], [ %40, %if.then36.i.if.else.i_crit_edge ]
  %29 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma.i, align 4
  %31 = ptrtoint ptr %page1_dma.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %page1_dma.i, align 4
  %32 = ptrtoint ptr %pg_sz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pg_sz.i, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 1
  %conv32.i = zext i8 %35 to i32
  %mul33.i = shl nuw nsw i32 %conv32.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul33.i, i32 %33)
  %cmp34.i = icmp sgt i32 %mul33.i, %33
  br i1 %cmp34.i, label %if.then36.i, label %if.else.i.if.end44.i_crit_edge

if.else.i.if.end44.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then36.i:                                      ; preds = %if.else.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.i, align 4
  %37 = ptrtoint ptr %pcidev41.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcidev41.i, align 8
  %dev42.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void @dma_free_attrs(ptr noundef %dev42.i, i32 noundef %33, ptr noundef nonnull %28, i32 noundef %30, i32 noundef 0) #11
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %cmp9.i = icmp eq ptr %40, null
  br i1 %cmp9.i, label %if.then36.i.if.then11.i_crit_edge, label %if.then36.i.if.else.i_crit_edge

if.then36.i.if.else.i_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then36.i.if.then11.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.end44.i:                                       ; preds = %if.else.i.if.end44.i_crit_edge, %if.then11.i.if.end44.i_crit_edge
  %page1_alloc.0.i = phi ptr [ %call.i.i, %if.then11.i.if.end44.i_crit_edge ], [ %28, %if.else.i.if.end44.i_crit_edge ]
  %data_sz.0.i = phi i32 [ %25, %if.then11.i.if.end44.i_crit_edge ], [ %33, %if.else.i.if.end44.i_crit_edge ]
  %41 = ptrtoint ptr %page1_dma.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page1_dma.i, align 4
  %43 = ptrtoint ptr %physAddr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %physAddr.i, align 4
  %44 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %action.i, align 2
  %call47.i = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp eq i32 %call47.i, 0
  br i1 %cmp48.i, label %if.end, label %if.else63.i

if.else63.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.i, align 4
  %46 = ptrtoint ptr %pcidev41.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev41.i, align 8
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %page1_dma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %page1_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev69.i, i32 noundef %data_sz.0.i, ptr noundef nonnull %page1_alloc.0.i, i32 noundef %49, i32 noundef 0) #11
  br label %mptfc_GetFcPortPage1.exit.thread

mptfc_GetFcPortPage1.exit.thread:                 ; preds = %if.else63.i, %if.then11.i.mptfc_GetFcPortPage1.exit.thread_crit_edge, %if.end3.i.mptfc_GetFcPortPage1.exit.thread_crit_edge, %if.end.i.mptfc_GetFcPortPage1.exit.thread_crit_edge, %for.body.mptfc_GetFcPortPage1.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page1_dma.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #11
  br label %for.inc

if.end:                                           ; preds = %if.end44.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %page1_alloc.0.i, ptr %arrayidx.i, align 4
  %pg_sz58.i = getelementptr [2 x %struct.anon.92], ptr %fc_data.i, i32 0, i32 %ii.063, i32 2
  %51 = ptrtoint ptr %pg_sz58.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %data_sz.0.i, ptr %pg_sz58.i, align 4
  %52 = ptrtoint ptr %page1_dma.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page1_dma.i, align 4
  %dma62.i = getelementptr [2 x %struct.anon.92], ptr %fc_data.i, i32 0, i32 %ii.063, i32 1
  %54 = ptrtoint ptr %dma62.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %dma62.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page1_dma.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #11
  %InitiatorDeviceTimeout = getelementptr inbounds %struct._CONFIG_PAGE_FC_PORT_1, ptr %page1_alloc.0.i, i32 0, i32 10
  %55 = ptrtoint ptr %InitiatorDeviceTimeout to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %InitiatorDeviceTimeout, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp5 = icmp eq i8 %56, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end.i46_crit_edge

if.end.if.end.i46_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

land.lhs.true:                                    ; preds = %if.end
  %InitiatorIoPendTimeout = getelementptr inbounds %struct._CONFIG_PAGE_FC_PORT_1, ptr %page1_alloc.0.i, i32 0, i32 11
  %57 = ptrtoint ptr %InitiatorIoPendTimeout to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %InitiatorIoPendTimeout, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp8 = icmp eq i8 %58, 1
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.if.end.i46_crit_edge

land.lhs.true.if.end.i46_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

land.lhs.true10:                                  ; preds = %land.lhs.true
  %Flags = getelementptr inbounds %struct._CONFIG_PAGE_FC_PORT_1, ptr %page1_alloc.0.i, i32 0, i32 1
  %59 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %Flags, align 4
  %61 = and i32 %60, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %61)
  %62 = icmp eq i32 %61, 67108864
  br i1 %62, label %land.lhs.true10.for.inc_crit_edge, label %land.lhs.true10.if.end.i46_crit_edge

land.lhs.true10.if.end.i46_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i46:                                       ; preds = %land.lhs.true10.if.end.i46_crit_edge, %land.lhs.true.if.end.i46_crit_edge, %if.end.if.end.i46_crit_edge
  %63 = ptrtoint ptr %InitiatorDeviceTimeout to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %InitiatorDeviceTimeout, align 2
  %InitiatorIoPendTimeout21 = getelementptr inbounds %struct._CONFIG_PAGE_FC_PORT_1, ptr %page1_alloc.0.i, i32 0, i32 11
  %64 = ptrtoint ptr %InitiatorIoPendTimeout21 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %InitiatorIoPendTimeout21, align 1
  %Flags22 = getelementptr inbounds %struct._CONFIG_PAGE_FC_PORT_1, ptr %page1_alloc.0.i, i32 0, i32 1
  %65 = ptrtoint ptr %Flags22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %Flags22, align 4
  %and23 = and i32 %66, -83886081
  %or = or i32 %and23, 67108864
  store i32 %or, ptr %Flags22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i40) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg.i41) #11
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 -281474959933441, ptr %9, align 4
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i45 = icmp eq ptr %69, null
  br i1 %tobool.not.i45, label %if.end.i46.mptfc_WriteFcPortPage1.exit_crit_edge, label %if.end2.i

if.end.i46.mptfc_WriteFcPortPage1.exit_crit_edge: ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_WriteFcPortPage1.exit

if.end2.i:                                        ; preds = %if.end.i46
  %70 = ptrtoint ptr %hdr.i40 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %hdr.i40, align 1
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %6, align 1
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %7, align 1
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 5, ptr %8, align 1
  %74 = ptrtoint ptr %cfg.i41 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %hdr.i40, ptr %cfg.i41, align 4
  %75 = ptrtoint ptr %physAddr.i47 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %physAddr.i47, align 4
  %76 = ptrtoint ptr %pageAddr.i50 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %ii.063, ptr %pageAddr.i50, align 4
  %call.i52 = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg.i41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp3.not.i = icmp eq i32 %call.i52, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end2.i.mptfc_WriteFcPortPage1.exit_crit_edge

if.end2.i.mptfc_WriteFcPortPage1.exit_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_WriteFcPortPage1.exit

if.end5.i:                                        ; preds = %if.end2.i
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp7.i = icmp eq i8 %78, 0
  br i1 %cmp7.i, label %if.end5.i.mptfc_WriteFcPortPage1.exit_crit_edge, label %if.end10.i

if.end5.i.mptfc_WriteFcPortPage1.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_WriteFcPortPage1.exit

if.end10.i:                                       ; preds = %if.end5.i
  %conv.i = zext i8 %78 to i32
  %mul.i53 = shl nuw nsw i32 %conv.i, 2
  %79 = ptrtoint ptr %pg_sz58.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pg_sz58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i53, i32 %80)
  %cmp16.not.i = icmp eq i32 %mul.i53, %80
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end10.i.mptfc_WriteFcPortPage1.exit_crit_edge

if.end10.i.mptfc_WriteFcPortPage1.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mptfc_WriteFcPortPage1.exit

if.end19.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma62.i, align 4
  %83 = ptrtoint ptr %physAddr.i47 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %physAddr.i47, align 4
  %84 = ptrtoint ptr %action.i48 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %action.i48, align 2
  %85 = ptrtoint ptr %dir.i49 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %dir.i49, align 1
  %call26.i = call i32 @mpt_config(ptr noundef %ioc, ptr noundef nonnull %cfg.i41) #11
  br label %mptfc_WriteFcPortPage1.exit

mptfc_WriteFcPortPage1.exit:                      ; preds = %if.end19.i, %if.end10.i.mptfc_WriteFcPortPage1.exit_crit_edge, %if.end5.i.mptfc_WriteFcPortPage1.exit_crit_edge, %if.end2.i.mptfc_WriteFcPortPage1.exit_crit_edge, %if.end.i46.mptfc_WriteFcPortPage1.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i41) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i40) #11
  br label %for.inc

for.inc:                                          ; preds = %mptfc_WriteFcPortPage1.exit, %land.lhs.true10.for.inc_crit_edge, %mptfc_GetFcPortPage1.exit.thread
  %inc = add nuw nsw i32 %ii.063, 1
  %86 = ptrtoint ptr %NumberOfPorts to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %NumberOfPorts, align 2
  %conv = zext i8 %87 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptscsih_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_qcmd(ptr nocapture noundef readnone %shost, ptr noundef %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i44 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i44 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i44, align 8
  %parent5 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent5, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostdata, align 8
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %cond.end.if.then_crit_edge, label %lor.lhs.false

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %cond.end.if.then_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %SCpnt) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %19 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_state.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %20, label %if.end.if.then13_crit_edge [
    i32 2, label %if.end.sw.bb.i_crit_edge
    i32 11, label %if.end.sw.bb.i_crit_edge49
    i32 4, label %sw.bb6.i
  ]

if.end.sw.bb.i_crit_edge49:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge49
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %22 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end15

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i, align 8
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.i = icmp eq i8 %26, 0
  %..i = select i1 %tobool2.not.i, i32 65536, i32 786432
  br label %if.then13

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags7.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %27 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags7.i, align 8
  %29 = and i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool10.not.i = icmp eq i8 %29, 0
  %.17.i = select i1 %tobool10.not.i, i32 786432, i32 983040
  br label %if.then13

if.then13:                                        ; preds = %sw.bb6.i, %if.else.i, %if.end.if.then13_crit_edge
  %result.0.i.ph = phi i32 [ 65536, %if.end.if.then13_crit_edge ], [ %.17.i, %sw.bb6.i ], [ %..i, %if.else.i ]
  %result14 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %30 = ptrtoint ptr %result14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %result.0.i.ph, ptr %result14, align 4
  tail call void @scsi_done(ptr noundef %SCpnt) #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb.i
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 11
  %31 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dd_data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool16.not = icmp eq ptr %34, null
  br i1 %tobool16.not, label %if.then25, label %if.end27, !prof !198

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %result26 = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 24
  %35 = ptrtoint ptr %result26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 786432, ptr %result26, align 4
  tail call void @scsi_done(ptr noundef %SCpnt) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 @mptscsih_qcmd(ptr noundef %SCpnt) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then13, %if.then
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.then25 ], [ %call28, %if.end27 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mptscsih_info(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_abort(ptr noundef %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mptfc_block_error_handler(ptr noundef %SCpnt, ptr noundef nonnull @mptscsih_abort, ptr noundef nonnull @__func__.mptfc_abort)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_dev_reset(ptr noundef %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mptfc_block_error_handler(ptr noundef %SCpnt, ptr noundef nonnull @mptscsih_dev_reset, ptr noundef nonnull @__func__.mptfc_dev_reset)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_bus_reset(ptr noundef %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mptfc_block_error_handler(ptr noundef %SCpnt, ptr noundef nonnull @mptscsih_bus_reset, ptr noundef nonnull @__func__.mptfc_bus_reset)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_host_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_slave_alloc(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -240
  %tobool4.not = icmp eq ptr %add.ptr, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %port_state.i = getelementptr i8, ptr %5, i32 -40
  %6 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_state.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %7, label %lor.lhs.false.cleanup_crit_edge [
    i32 2, label %lor.lhs.false.sw.bb.i_crit_edge
    i32 11, label %lor.lhs.false.sw.bb.i_crit_edge52
  ]

lor.lhs.false.sw.bb.i_crit_edge52:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

lor.lhs.false.sw.bb.i_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %lor.lhs.false.sw.bb.i_crit_edge, %lor.lhs.false.sw.bb.i_crit_edge52
  %roles.i = getelementptr i8, ptr %5, i32 -44
  %9 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hostdata.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #16
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %14, i32 0, i32 2
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef 16) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %16 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %hostdata15 = getelementptr i8, ptr %1, i32 968
  %17 = ptrtoint ptr %hostdata15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostdata15, align 8
  %num_luns = getelementptr inbounds %struct._VirtTarget, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_luns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %14, align 8
  %conv = trunc i32 %22 to i8
  %ioc_id = getelementptr inbounds %struct._VirtTarget, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %ioc_id to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %ioc_id, align 1
  %tflags = getelementptr inbounds %struct._VirtTarget, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %tflags to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %tflags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %call7.i.i, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %26 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lun, align 8
  %lun19 = getelementptr inbounds %struct._VirtDevice, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %lun19 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %lun19, align 8
  %29 = ptrtoint ptr %num_luns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_luns, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %num_luns, align 4
  %debug_level.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %14, i32 0, i32 10
  %31 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_level.i, align 4
  %and.i44 = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %if.end17.cleanup_crit_edge, label %do.end.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %dd_data.i = getelementptr i8, ptr %5, i32 -28
  %33 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dd_data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %High5.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %36, i32 0, i32 3, i32 1, i32 1
  %37 = ptrtoint ptr %High5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %High5.i, align 4
  %conv6.i = zext i32 %38 to i64
  %shl7.i = shl nuw i64 %conv6.i, 32
  %WWNN.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %36, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %WWNN.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %WWNN.i, align 4
  %conv11.i = zext i32 %40 to i64
  %or12.i = or i64 %shl7.i, %conv11.i
  %High.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %36, i32 0, i32 3, i32 2, i32 1
  %41 = ptrtoint ptr %High.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %High.i, align 4
  %conv.i = zext i32 %42 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %WWPN.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %36, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %WWPN.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %WWPN.i, align 4
  %conv3.i = zext i32 %44 to i64
  %or.i = or i64 %shl.i, %conv3.i
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %14, i32 0, i32 2
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %49 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i, align 8
  %CurrentTargetID.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %36, i32 0, i32 3, i32 12
  %51 = ptrtoint ptr %CurrentTargetID.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %CurrentTargetID.i, align 2
  %conv15.i = zext i8 %52 to i32
  %PortIdentifier.i = getelementptr inbounds %struct.mptfc_rport_info, ptr %36, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %PortIdentifier.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %PortIdentifier.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name.i, i32 noundef %48, i32 noundef %inc, i32 noundef %50, i32 noundef %conv15.i, i32 noundef %54, i64 noundef %or.i, i64 noundef %or12.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end17.cleanup_crit_edge, %do.end, %sw.bb.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -6, %cond.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %do.end.i ], [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.bb.i.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_slave_configure(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptscsih_slave_destroy(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_target_alloc(ptr noundef %starget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %1 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.then13_crit_edge, label %cond.end

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

cond.end:                                         ; preds = %if.end
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -240
  %tobool5.not = icmp eq ptr %add.ptr, null
  br i1 %tobool5.not, label %cond.end.if.then13_crit_edge, label %if.then6

cond.end.if.then13_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then6:                                         ; preds = %cond.end
  %dd_data = getelementptr i8, ptr %5, i32 -28
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then6.if.then13_crit_edge, label %if.end12

if.then6.if.then13_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %CurrentTargetID = getelementptr inbounds %struct.mptfc_rport_info, ptr %9, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %CurrentTargetID to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %CurrentTargetID, align 2
  %id = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %id, align 2
  %CurrentBus = getelementptr inbounds %struct.mptfc_rport_info, ptr %9, i32 0, i32 3, i32 13
  %13 = ptrtoint ptr %CurrentBus to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %CurrentBus, align 1
  %channel = getelementptr inbounds %struct._VirtTarget, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %channel, align 1
  %starget10 = getelementptr inbounds %struct.mptfc_rport_info, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %starget10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %starget, ptr %starget10, align 4
  br label %cleanup

if.then13:                                        ; preds = %if.then6.if.then13_crit_edge, %cond.end.if.then13_crit_edge, %if.end.if.then13_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hostdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %if.then13 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptfc_target_destroy(ptr nocapture noundef %starget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call i32 @scsi_is_fc_rport(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %cond.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.end:                                         ; preds = %entry
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -240
  %tobool3.not = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not, label %cond.end.if.end7_crit_edge, label %if.then

cond.end.if.end7_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %cond.end
  %dd_data = getelementptr i8, ptr %3, i32 -28
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %starget6 = getelementptr inbounds %struct.mptfc_rport_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %starget6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %starget6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %cond.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %hostdata = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 14
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %10) #11
  %11 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %11)
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
declare dso_local i32 @fc_eh_timed_out(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_qcmd(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptfc_block_error_handler(ptr noundef %SCpnt, ptr nocapture noundef readonly %func, ptr noundef %caller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %5, i32 136
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %parent4 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent4, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostdata.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock, align 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %active = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 23
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %flags7.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 58
  br label %while.cond

while.cond:                                       ; preds = %do.end34, %cond.end
  %flags.0 = phi i32 [ %call12, %cond.end ], [ %call44, %do.end34 ]
  %loops.0 = phi i32 [ 40, %cond.end ], [ %dec, %do.end34 ]
  %20 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_state.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %21, label %while.cond.lor.rhs_crit_edge [
    i32 2, label %while.cond.sw.bb.i_crit_edge
    i32 11, label %while.cond.sw.bb.i_crit_edge159
    i32 4, label %sw.bb6.i
  ]

while.cond.sw.bb.i_crit_edge159:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.cond.sw.bb.i_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

while.cond.lor.rhs_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

sw.bb.i:                                          ; preds = %while.cond.sw.bb.i_crit_edge, %while.cond.sw.bb.i_crit_edge159
  %23 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb.i.lor.rhs_crit_edge

sw.bb.i.lor.rhs_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

if.else.i:                                        ; preds = %sw.bb.i
  %25 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags7.i, align 8
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.i = icmp eq i8 %27, 0
  br i1 %tobool2.not.i, label %if.else.i.lor.rhs_crit_edge, label %if.else.i.while.body_crit_edge

if.else.i.while.body_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.else.i.lor.rhs_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

sw.bb6.i:                                         ; preds = %while.cond
  %28 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags7.i, align 8
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool10.not.i = icmp eq i8 %30, 0
  br i1 %tobool10.not.i, label %sw.bb6.i.while.body_crit_edge, label %sw.bb6.i.lor.rhs_crit_edge

sw.bb6.i.lor.rhs_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

sw.bb6.i.while.body_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.rhs:                                          ; preds = %sw.bb6.i.lor.rhs_crit_edge, %if.else.i.lor.rhs_crit_edge, %sw.bb.i.lor.rhs_crit_edge, %while.cond.lor.rhs_crit_edge
  %cmp50 = phi i1 [ true, %if.else.i.lor.rhs_crit_edge ], [ false, %sw.bb6.i.lor.rhs_crit_edge ], [ true, %while.cond.lor.rhs_crit_edge ], [ false, %sw.bb.i.lor.rhs_crit_edge ]
  %shr151 = phi i32 [ 1, %if.else.i.lor.rhs_crit_edge ], [ 15, %sw.bb6.i.lor.rhs_crit_edge ], [ 1, %while.cond.lor.rhs_crit_edge ], [ 0, %sw.bb.i.lor.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0)
  %cmp18 = icmp sgt i32 %loops.0, 0
  br i1 %cmp18, label %land.rhs, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %lor.rhs
  %31 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp20 = icmp eq i32 %32, 0
  br i1 %cmp20, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %sw.bb6.i.while.body_crit_edge, %if.else.i.while.body_crit_edge
  %shr152 = phi i32 [ %shr151, %land.rhs.while.body_crit_edge ], [ 12, %if.else.i.while.body_crit_edge ], [ 12, %sw.bb6.i.while.body_crit_edge ]
  %33 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %flags.0) #11
  %35 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug_level, align 4
  %and = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %while.body.do.end34_crit_edge, label %do.end27

while.body.do.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end27:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sh, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %host_no, align 4
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 18
  %45 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %lun, align 8
  %47 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %active, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %40, i32 noundef %44, i64 noundef %46, i32 noundef %shr152, i32 noundef %48, ptr noundef %caller) #14
  br label %do.end34

do.end34:                                         ; preds = %do.end27, %while.body.do.end34_crit_edge
  tail call void @msleep(i32 noundef 1000) #11
  %49 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host_lock, align 4
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #11
  %dec = add i32 %loops.0, -1
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %51 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %flags.0) #11
  br i1 %cmp50, label %while.end.do.body59_crit_edge, label %lor.lhs.false

while.end.do.body59_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

lor.lhs.false:                                    ; preds = %while.end
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 21
  %55 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hostdata, align 8
  %tobool53.not = icmp eq ptr %56, null
  br i1 %tobool53.not, label %lor.lhs.false.do.body59_crit_edge, label %lor.lhs.false54

lor.lhs.false.do.body59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %57 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp56 = icmp eq i32 %58, 0
  br i1 %cmp56, label %lor.lhs.false54.do.body59_crit_edge, label %do.body84

lor.lhs.false54.do.body59_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

do.body59:                                        ; preds = %lor.lhs.false54.do.body59_crit_edge, %lor.lhs.false.do.body59_crit_edge, %while.end.do.body59_crit_edge
  %59 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_level, align 4
  %and61 = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body59.cleanup_crit_edge, label %do.end66

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end66:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sh, align 8
  %host_no71 = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 17
  %63 = ptrtoint ptr %host_no71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %host_no71, align 4
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 4
  %id73 = getelementptr inbounds %struct.scsi_device, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %id73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id73, align 8
  %lun75 = getelementptr inbounds %struct.scsi_device, ptr %66, i32 0, i32 18
  %69 = ptrtoint ptr %lun75 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %lun75, align 8
  %71 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %active, align 4
  %hostdata78 = getelementptr inbounds %struct.scsi_device, ptr %66, i32 0, i32 21
  %73 = ptrtoint ptr %hostdata78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hostdata78, align 8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %caller, ptr noundef %name, i32 noundef %64, i32 noundef %68, i64 noundef %70, i32 noundef %shr151, i32 noundef %72, ptr noundef %74) #14
  br label %cleanup

do.body84:                                        ; preds = %lor.lhs.false54
  %75 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug_level, align 4
  %and86 = and i32 %76, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body84.do.end104_crit_edge, label %do.end91

do.body84.do.end104_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104

do.end91:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sh, align 8
  %host_no96 = getelementptr inbounds %struct.Scsi_Host, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %host_no96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %host_no96, align 4
  %id98 = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 16
  %81 = ptrtoint ptr %id98 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id98, align 8
  %lun100 = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 18
  %83 = ptrtoint ptr %lun100 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %lun100, align 8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %caller, ptr noundef %name, i32 noundef %80, i32 noundef %82, i64 noundef %84) #14
  br label %do.end104

do.end104:                                        ; preds = %do.end91, %do.body84.do.end104_crit_edge
  %call105 = tail call i32 %func(ptr noundef %SCpnt) #11, !callees !200
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %do.end66, %do.body59.cleanup_crit_edge
  %retval.0 = phi i32 [ %call105, %do.end104 ], [ 8195, %do.end66 ], [ 8195, %do.body59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_abort(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_dev_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_bus_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_config(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mptfc_FcDevPage0_cmp_func(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %CurrentBus = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %CurrentBus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CurrentBus, align 1
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b, align 4
  %CurrentBus1 = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %CurrentBus1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %CurrentBus1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %7)
  %cmp = icmp eq i8 %3, %7
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %CurrentTargetID = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %CurrentTargetID to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %CurrentTargetID, align 2
  %CurrentTargetID5 = getelementptr inbounds %struct._CONFIG_PAGE_FC_DEVICE_0, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %CurrentTargetID5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %CurrentTargetID5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp7 = icmp eq i8 %9, %11
  br i1 %cmp7, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp14 = icmp ult i8 %9, %11
  %. = select i1 %cmp14, i32 -1, i32 1
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %7)
  %cmp23 = icmp ult i8 %3, %7
  %.34 = select i1 %cmp23, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %., %if.end ], [ %.34, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_remote_port_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remote_port_rolechg(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #0

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
define internal i32 @mptfc_event_process(ptr noundef %ioc, ptr noundef %pEvReply) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %Event = getelementptr inbounds %struct._MSG_EVENT_NOTIFY_REPLY, ptr %pEvReply, i32 0, i32 10
  %0 = ptrtoint ptr %Event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Event, align 4
  %2 = lshr i32 %1, 24
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %3 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %5 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_level, align 4
  %and3 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, i32 noundef %2) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %sh = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 58
  %7 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sh, align 8
  %cmp10 = icmp eq ptr %8, null
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 53
  %cmp14 = icmp eq ptr %hostdata.i, null
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp14
  br i1 %or.cond, label %do.end9.cleanup_crit_edge, label %if.end17

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %do.end9
  %trunc = trunc i32 %2 to i8
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %trunc, label %sw.default [
    i8 6, label %do.body20
    i8 7, label %do.body38
  ]

do.body20:                                        ; preds = %if.end17
  %fc_rescan_work_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 130
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fc_rescan_work_lock) #11
  %fc_rescan_work_q = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 133
  %10 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fc_rescan_work_q, align 8
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %do.body20.if.end34_crit_edge, label %if.then31

do.body20.if.end34_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %fc_rescan_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 131
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %11, ptr noundef %fc_rescan_work) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %do.body20.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fc_rescan_work_lock, i32 noundef %call25) #11
  br label %cleanup

do.body38:                                        ; preds = %if.end17
  %fc_rescan_work_lock44 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 130
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fc_rescan_work_lock44) #11
  %fc_rescan_work_q51 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 133
  %12 = ptrtoint ptr %fc_rescan_work_q51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fc_rescan_work_q51, align 8
  %tobool52.not = icmp eq ptr %13, null
  br i1 %tobool52.not, label %do.body38.if.end56_crit_edge, label %if.then53

do.body38.if.end56_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then53:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %fc_lsc_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 128
  %call.i82 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %13, ptr noundef %fc_lsc_work) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %do.body38.if.end56_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fc_rescan_work_lock44, i32 noundef %call46) #11
  br label %cleanup

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call58 = tail call i32 @mptscsih_event_process(ptr noundef %ioc, ptr noundef %pEvReply) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end56, %if.end34, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end9.cleanup_crit_edge ], [ %call58, %sw.default ], [ 1, %if.end56 ], [ 1, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_reset_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptfc_ioc_reset(ptr noundef %ioc, i32 noundef %reset_phase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mptscsih_ioc_reset(ptr noundef %ioc, i32 noundef %reset_phase) #11
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %0 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %2 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reset_phase)
  %cmp5 = icmp eq i32 %reset_phase, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_phase)
  %cmp7 = icmp eq i32 %reset_phase, 0
  %cond = select i1 %cmp7, ptr @.str.76, ptr @.str.77
  %cond9 = select i1 %cmp5, ptr @.str.75, ptr %cond
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name, ptr noundef nonnull %cond9) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %4 = zext i32 %reset_phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %reset_phase, label %if.else37 [
    i32 2, label %do.body18
    i32 0, label %do.end13.cleanup_crit_edge
  ]

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body18:                                        ; preds = %do.end13
  %fc_rescan_work_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 130
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fc_rescan_work_lock) #11
  %fc_rescan_work_q = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 133
  %5 = ptrtoint ptr %fc_rescan_work_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fc_rescan_work_q, align 8
  %tobool28.not = icmp eq ptr %6, null
  br i1 %tobool28.not, label %do.body18.if.end32_crit_edge, label %if.then29

do.body18.if.end32_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %fc_setup_reset_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 126
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %6, ptr noundef %fc_setup_reset_work) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %do.body18.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fc_rescan_work_lock, i32 noundef %call23) #11
  br label %cleanup

if.else37:                                        ; preds = %do.end13
  tail call fastcc void @mptfc_SetFcPortPage1_defaults(ptr noundef %ioc)
  %fc_rescan_work_lock45 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 130
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fc_rescan_work_lock45) #11
  %fc_rescan_work_q52 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 133
  %7 = ptrtoint ptr %fc_rescan_work_q52 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fc_rescan_work_q52, align 8
  %tobool53.not = icmp eq ptr %8, null
  br i1 %tobool53.not, label %if.else37.if.end57_crit_edge, label %if.then54

if.else37.if.end57_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  %fc_rescan_work = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 131
  %call.i83 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %8, ptr noundef %fc_rescan_work) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.else37.if.end57_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fc_rescan_work_lock45, i32 noundef %call47) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end32, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 1, %do.end13.cleanup_crit_edge ], [ 1, %if.end57 ], [ 1, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mptfc_set_rport_loss_tmo(ptr nocapture noundef writeonly %rport, i32 noundef %timeout) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp.not = icmp eq i32 %timeout, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @mptfc_dev_loss_tmo, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %timeout.sink = phi i32 [ %0, %if.else ], [ %timeout, %entry.if.end_crit_edge ]
  %1 = getelementptr inbounds %struct.fc_rport, ptr %rport, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout.sink, ptr %1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_event_process(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptscsih_ioc_reset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !30, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !164, !166, !168, !169, !170, !171, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !186, !187, !188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__UNIQUE_ID_author312, !1, !"__UNIQUE_ID_author312", i1 false, i1 false}
!1 = !{!"../drivers/message/fusion/mptfc.c", i32 74, i32 1}
!2 = !{ptr @__UNIQUE_ID_description313, !3, !"__UNIQUE_ID_description313", i1 false, i1 false}
!3 = !{!"../drivers/message/fusion/mptfc.c", i32 75, i32 1}
!4 = !{ptr @__UNIQUE_ID_file314, !5, !"__UNIQUE_ID_file314", i1 false, i1 false}
!5 = !{!"../drivers/message/fusion/mptfc.c", i32 76, i32 1}
!6 = !{ptr @__UNIQUE_ID_license315, !5, !"__UNIQUE_ID_license315", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version316, !8, !"__UNIQUE_ID_version316", i1 false, i1 false}
!8 = !{!"../drivers/message/fusion/mptfc.c", i32 77, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_mptfc_dev_loss_tmo, !14, !"__param_mptfc_dev_loss_tmo", i1 false, i1 false}
!14 = !{!"../drivers/message/fusion/mptfc.c", i32 82, i32 1}
!15 = !{ptr @__UNIQUE_ID_mptfc_dev_loss_tmotype317, !14, !"__UNIQUE_ID_mptfc_dev_loss_tmotype317", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_mptfc_dev_loss_tmo318, !17, !"__UNIQUE_ID_mptfc_dev_loss_tmo318", i1 false, i1 false}
!17 = !{!"../drivers/message/fusion/mptfc.c", i32 83, i32 1}
!18 = !{ptr @__param_max_lun, !19, !"__param_max_lun", i1 false, i1 false}
!19 = !{!"../drivers/message/fusion/mptfc.c", i32 91, i32 1}
!20 = !{ptr @__UNIQUE_ID_max_luntype319, !19, !"__UNIQUE_ID_max_luntype319", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_max_lun320, !22, !"__UNIQUE_ID_max_lun320", i1 false, i1 false}
!22 = !{!"../drivers/message/fusion/mptfc.c", i32 92, i32 1}
!23 = !{ptr @__initcall__kmod_mptfc__323_1551_mptfc_init6, !24, !"__initcall__kmod_mptfc__323_1551_mptfc_init6", i1 false, i1 false}
!24 = !{!"../drivers/message/fusion/mptfc.c", i32 1551, i32 1}
!25 = !{ptr @__exitcall_mptfc_exit, !26, !"__exitcall_mptfc_exit", i1 false, i1 false}
!26 = !{!"../drivers/message/fusion/mptfc.c", i32 1552, i32 1}
!27 = !{ptr @__param_str_mptfc_dev_loss_tmo, !14, !"__param_str_mptfc_dev_loss_tmo", i1 false, i1 false}
!28 = !{ptr @mptfc_dev_loss_tmo, !29, !"mptfc_dev_loss_tmo", i1 false, i1 false}
!29 = !{!"../drivers/message/fusion/mptfc.c", i32 81, i32 12}
!30 = !{ptr @__param_str_max_lun, !19, !"__param_str_max_lun", i1 false, i1 false}
!31 = !{ptr @max_lun, !32, !"max_lun", i1 false, i1 false}
!32 = !{!"../drivers/message/fusion/mptfc.c", i32 90, i32 12}
!33 = !{ptr @mptfc_driver, !34, !"mptfc_driver", i1 false, i1 false}
!34 = !{!"../drivers/message/fusion/mptfc.c", i32 1353, i32 26}
!35 = !{ptr @mptfc_pci_table, !36, !"mptfc_pci_table", i1 false, i1 false}
!36 = !{!"../drivers/message/fusion/mptfc.c", i32 139, i32 29}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/message/fusion/mptfc.c", i32 1192, i32 3}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mptfc_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @mptfc_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/message/fusion/mptfc.c", i32 1200, i32 3}
!45 = !{ptr @mptfc_probe._entry.6, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mptfc_probe._entry_ptr.8, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/message/fusion/mptfc.c", i32 1216, i32 3}
!49 = !{ptr @mptfc_probe._entry.9, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mptfc_probe._entry_ptr.11, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/message/fusion/mptfc.c", i32 1225, i32 3}
!53 = !{ptr @mptfc_probe._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mptfc_probe._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mptfc_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/message/fusion/mptfc.c", i32 1232, i32 2}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mptfc_probe.__key.16, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/message/fusion/mptfc.c", i32 1233, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mptfc_probe.__key.18, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/message/fusion/mptfc.c", i32 1234, i32 2}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mptfc_probe.__key.20, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/message/fusion/mptfc.c", i32 1235, i32 2}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/message/fusion/mptfc.c", i32 1279, i32 3}
!69 = !{ptr @mptfc_probe._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mptfc_probe._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mptfc_probe.__key.25, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/message/fusion/mptfc.c", i32 1298, i32 2}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/message/fusion/mptfc.c", i32 1300, i32 2}
!76 = !{ptr @mptfc_probe._entry.27, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mptfc_probe._entry_ptr.29, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/message/fusion/mptfc.c", i32 1308, i32 3}
!80 = !{ptr @mptfc_probe._entry.30, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mptfc_probe._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/message/fusion/mptfc.c", i32 1316, i32 4}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/message/fusion/mptfc.c", i32 112, i32 13}
!86 = !{ptr @mptfc_driver_template, !87, !"mptfc_driver_template", i1 false, i1 false}
!87 = !{!"../drivers/message/fusion/mptfc.c", i32 108, i32 34}
!88 = !{ptr @__func__.mptfc_abort, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/message/fusion/mptfc.c", i32 238, i32 55}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/message/fusion/mptfc.c", i32 205, i32 3}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mptfc_block_error_handler._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mptfc_block_error_handler._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/message/fusion/mptfc.c", i32 219, i32 3}
!97 = !{ptr @mptfc_block_error_handler._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mptfc_block_error_handler._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/message/fusion/mptfc.c", i32 227, i32 2}
!101 = !{ptr @mptfc_block_error_handler._entry.40, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mptfc_block_error_handler._entry_ptr.42, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @__func__.mptfc_dev_reset, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/message/fusion/mptfc.c", i32 245, i32 59}
!105 = !{ptr @__func__.mptfc_bus_reset, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/message/fusion/mptfc.c", i32 252, i32 59}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/message/fusion/mptfc.c", i32 617, i32 3}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mptfc_slave_alloc._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @mptfc_slave_alloc._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/message/fusion/mptfc.c", i32 577, i32 2}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mptfc_dump_lun_info._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mptfc_dump_lun_info._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/message/fusion/mptfc.c", i32 1158, i32 4}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mptfc_rescan_devices._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @mptfc_rescan_devices._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/message/fusion/mptfc.c", i32 992, i32 38}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/message/fusion/mptfc.c", i32 994, i32 6}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/message/fusion/mptfc.c", i32 485, i32 4}
!128 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mptfc_register_dev._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mptfc_register_dev._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/message/fusion/mptfc.c", i32 1103, i32 4}
!133 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mptfc_setup_reset._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mptfc_setup_reset._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/message/fusion/mptfc.c", i32 814, i32 5}
!138 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mptfc_GetFcPortPage0._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @mptfc_GetFcPortPage0._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/message/fusion/mptfc.c", i32 697, i32 60}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/message/fusion/mptfc.c", i32 698, i32 61}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/message/fusion/mptfc.c", i32 699, i32 55}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/message/fusion/mptfc.c", i32 700, i32 5}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/message/fusion/mptfc.c", i32 706, i32 4}
!151 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @mptfc_display_port_link_speed._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @mptfc_display_port_link_speed._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/message/fusion/mptfc.c", i32 710, i32 4}
!156 = !{ptr @mptfc_display_port_link_speed._entry.63, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mptfc_display_port_link_speed._entry_ptr.65, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @mptfc_transport_template, !159, !"mptfc_transport_template", i1 false, i1 false}
!159 = !{!"../drivers/message/fusion/mptfc.c", i32 162, i32 40}
!160 = !{ptr @mptfcDoneCtx, !161, !"mptfcDoneCtx", i1 false, i1 false}
!161 = !{!"../drivers/message/fusion/mptfc.c", i32 94, i32 11}
!162 = !{ptr @mptfcInternalCtx, !163, !"mptfcInternalCtx", i1 false, i1 false}
!163 = !{!"../drivers/message/fusion/mptfc.c", i32 96, i32 11}
!164 = !{ptr @mptfcTaskCtx, !165, !"mptfcTaskCtx", i1 false, i1 false}
!165 = !{!"../drivers/message/fusion/mptfc.c", i32 95, i32 11}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/message/fusion/mptfc.c", i32 1458, i32 2}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @mptfc_init._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @mptfc_init._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/message/fusion/mptfc.c", i32 1471, i32 6}
!174 = !{ptr @mptfc_transport_functions, !175, !"mptfc_transport_functions", i1 false, i1 false}
!175 = !{!"../drivers/message/fusion/mptfc.c", i32 164, i32 36}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/message/fusion/mptfc.c", i32 1376, i32 2}
!178 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mptfc_event_process._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @mptfc_event_process._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/message/fusion/mptfc.c", i32 1418, i32 2}
!183 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mptfc_ioc_reset._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mptfc_ioc_reset._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{!"auto-init"}
!200 = !{ptr @mptscsih_abort, ptr @mptscsih_bus_reset, ptr @mptscsih_dev_reset}
