; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci.c_pt.bc'
source_filename = "../drivers/ata/ahci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.98 = type { ptr }
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
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.99, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.99 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }

@__param_str_marvell_enable = internal constant [20 x i8] c"ahci.marvell_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@marvell_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_marvell_enable = internal constant %struct.kernel_param { ptr @__param_str_marvell_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @marvell_enable } }, section "__param", align 4
@__UNIQUE_ID_marvell_enabletype321 = internal constant [33 x i8] c"ahci.parmtype=marvell_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_marvell_enable322 = internal constant [61 x i8] c"ahci.parm=marvell_enable:Marvell SATA via AHCI (1 = enabled)\00", section ".modinfo", align 1
@__param_str_mobile_lpm_policy = internal constant [23 x i8] c"ahci.mobile_lpm_policy\00", align 1
@mobile_lpm_policy = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_mobile_lpm_policy = internal constant %struct.kernel_param { ptr @__param_str_mobile_lpm_policy, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @mobile_lpm_policy } }, section "__param", align 4
@__UNIQUE_ID_mobile_lpm_policytype323 = internal constant [36 x i8] c"ahci.parmtype=mobile_lpm_policy:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mobile_lpm_policy324 = internal constant [67 x i8] c"ahci.parm=mobile_lpm_policy:Default LPM policy for mobile chipsets\00", section ".modinfo", align 1
@__initcall__kmod_ahci__328_1933_ahci_pci_driver_init6 = internal global ptr @ahci_pci_driver_init, section ".initcall6.init", align 4
@ahci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ahci_pci_tbl, ptr @ahci_init_one, ptr @ahci_remove_one, ptr null, ptr null, ptr @ahci_shutdown_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ahci_pci_driver_exit = internal global ptr @ahci_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author329 = internal constant [24 x i8] c"ahci.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [44 x i8] c"ahci.description=AHCI SATA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [27 x i8] c"ahci.file=drivers/ata/ahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [17 x i8] c"ahci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version333 = internal constant [17 x i8] c"ahci.version=3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahci\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ahci_pci_tbl = internal constant { [303 x %struct.pci_device_id], [2400 x i8] } { [303 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 1750, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9810, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9811, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10181, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10179, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 21128, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9857, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9858, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9859, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10182, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10273, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10274, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 10276, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10282, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10530, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10531, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10532, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10533, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10535, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10537, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10538, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10539, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10540, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10543, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10573, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10574, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 20522, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 20523, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 14853, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 14882, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 14885, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15138, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15139, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15140, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15141, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15145, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 15147, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15148, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 15151, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6576, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6577, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6578, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6579, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6580, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6581, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6582, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6583, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6590, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6591, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6592, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6593, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6594, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6595, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6596, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6597, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6598, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6599, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6606, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6607, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 7170, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7171, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7172, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7173, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7174, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7175, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7426, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7428, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7430, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10278, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 8995, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7682, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7683, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7684, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7685, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7686, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7687, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7694, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35842, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35843, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35844, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35845, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35846, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35847, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35854, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35855, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39938, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39939, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39940, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39941, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39942, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39943, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39950, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39951, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40403, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7970, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7971, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7972, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7973, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7974, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7975, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7982, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7983, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7986, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7987, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7988, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7989, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7990, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7991, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7998, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7999, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 10275, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10279, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17364, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17365, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17366, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17367, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36098, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36100, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36102, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36110, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36194, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36196, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36198, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36206, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9123, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40067, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40069, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40071, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40079, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35970, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35971, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35972, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35973, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35974, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35975, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35982, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35983, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40195, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40197, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40199, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 41218, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41219, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 41221, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41222, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41223, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 41231, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41346, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41426, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41430, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41474, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41478, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41554, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41558, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41814, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 1751, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41862, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3874, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3875, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 8867, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 23267, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 13523, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 723, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 727, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 6523, i32 -1, i32 -1, i32 -1, i32 67073, i32 16777215, i32 1, i32 0 }, %struct.pci_device_id { i32 6523, i32 9058, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6523, i32 9071, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 17280, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4098, i32 17296, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17297, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17298, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17299, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17300, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17301, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 7222, i32 49, i32 -1, i32 -1, i32 67073, i32 16777215, i32 8, i32 0 }, %struct.pci_device_id { i32 4130, i32 30720, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30721, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4130, i32 30976, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30977, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4130, i32 -1, i32 -1, i32 -1, i32 66560, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 -1, i32 4136, i32 -1, i32 66560, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 13129, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4358, i32 25223, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4318, i32 1100, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1101, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1102, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1103, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1116, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1117, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1118, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1119, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1360, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1361, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1362, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1363, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1364, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1365, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1366, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1367, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1368, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1369, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1370, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1371, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1408, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1409, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1410, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1411, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1412, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1413, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1414, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1415, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1416, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1417, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1418, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1419, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1420, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1421, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1422, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1423, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2032, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2033, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2034, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2035, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2036, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2037, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2038, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2039, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2040, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2041, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2042, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2043, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2768, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2769, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2770, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2771, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2772, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2773, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2774, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2775, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2776, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2777, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2778, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2779, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2740, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2741, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2742, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2743, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2744, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2745, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2746, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2747, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2748, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2749, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2750, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2751, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 3460, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3461, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3462, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3463, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3464, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3465, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3466, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3467, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3468, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3469, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3470, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3471, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4153, i32 4484, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 4485, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 390, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4170, i32 52230, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 24901, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4523, i32 24865, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 6987, i32 37155, i32 -1, i32 -1, i32 67073, i32 16777215, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37157, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37240, i32 6987, i32 37232, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37242, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37234, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37250, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37266, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37280, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37282, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37283, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37424, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4355, i32 1602, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4355, i32 1605, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4186, i32 16160, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 14209, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1537, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1538, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1553, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1554, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1569, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1570, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1572, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5197, i32 5632, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5197, i32 43008, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 7236, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 20, i32 31240, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 67073, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [2400 x i8] zeroinitializer }, align 32
@ahci_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_pci_device_suspend, ptr @ahci_pci_device_resume, ptr @ahci_pci_device_suspend, ptr @ahci_pci_device_resume, ptr @ahci_pci_device_suspend, ptr @ahci_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pci_device_runtime_suspend, ptr @ahci_pci_device_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_port_info = internal constant { [18 x %struct.ata_port_info], [104 x i8] } { [18 x %struct.ata_port_info] [%struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr null }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 2 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 33554432 to ptr) }, %struct.ata_port_info { i32 393346, i32 2048, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr null }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 32 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 1 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 4096 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 16384 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 96 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_avn_ops, ptr null }, %struct.ata_port_info { i32 8781954, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 8768 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 8256 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 8192 to ptr) }, %struct.ata_port_info { i32 130, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 113 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_pmp_retry_srst_ops, ptr inttoptr (i32 300 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_pmp_retry_srst_ops, ptr inttoptr (i32 4 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_vt8251_ops, ptr inttoptr (i32 65 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr null }], [104 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/ata/ahci.c\00", [45 x i8] zeroinitializer }, align 32
@ahci_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ahci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1696, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PDC42819 can only drive SATA devices with this driver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ahci_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr = internal global ptr @ahci_init_one._entry, section ".printk_index", align 4
@ahci_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 1729, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"controller is in combined mode, can't enable AHCI mode\0A\00", [40 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr.10 = internal global ptr @ahci_init_one._entry.8, section ".printk_index", align 4
@dev_attr_remapped_nvme = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @remapped_nvme_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.3, i32 1822, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"quirky BIOS, skipping spindown on poweroff\0A\00", [52 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr.13 = internal global ptr @ahci_init_one._entry.11, section ".printk_index", align 4
@ahci_init_one._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.3, i32 1828, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"BIOS update required for Link Power Management support\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr.17 = internal global ptr @ahci_init_one._entry.14, section ".printk_index", align 4
@ahci_init_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.3, i32 1834, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BIOS update required for suspend/resume\0A\00", [55 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr.20 = internal global ptr @ahci_init_one._entry.18, section ".printk_index", align 4
@ahci_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.3, i32 1840, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"online status unreliable, applying workaround\0A\00", [49 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr.23 = internal global ptr @ahci_init_one._entry.21, section ".printk_index", align 4
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@ahci_init_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.3, i32 1868, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SSS flag set, parallel bus scan disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@ahci_init_one._entry_ptr.26 = internal global ptr @ahci_init_one._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"abar\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_avn_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_avn_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_pmp_retry_srst_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_vt8251_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_vt8251_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ahci_avn_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ata%u.%02u: avn bounce port%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahci_avn_hardreset\00", [45 x i8] zeroinitializer }, align 32
@ahci_avn_hardreset._entry_ptr = internal global ptr @ahci_avn_hardreset._entry, section ".printk_index", align 4
@ahci_avn_hardreset._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016ata%u: avn bounce port%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ahci_avn_hardreset._entry_ptr.33 = internal global ptr @ahci_avn_hardreset._entry.31, section ".printk_index", align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ahci_mcp89_apple_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ahci: enabling MCP89 AHCI mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahci_mcp89_apple_enable\00", [40 x i8] zeroinitializer }, align 32
@ahci_mcp89_apple_enable._entry_ptr = internal global ptr @ahci_mcp89_apple_enable._entry, section ".printk_index", align 4
@ahci_sb600_enable_64bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1142, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: BIOS too old, forcing 32bit DMA, update BIOS\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahci_sb600_enable_64bit\00", [40 x i8] zeroinitializer }, align 32
@ahci_sb600_enable_64bit._entry_ptr = internal global ptr @ahci_sb600_enable_64bit._entry, section ".printk_index", align 4
@ahci_sb600_enable_64bit._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 1147, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: enabling 64bit DMA\0A\00", [40 x i8] zeroinitializer }, align 32
@ahci_sb600_enable_64bit._entry_ptr.46 = internal global ptr @ahci_sb600_enable_64bit._entry.44, section ".printk_index", align 4
@ahci_remap_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1533, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Found %u remapped NVMe devices.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahci_remap_check\00", [47 x i8] zeroinitializer }, align 32
@ahci_remap_check._entry_ptr = internal global ptr @ahci_remap_check._entry, section ".printk_index", align 4
@ahci_remap_check._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1535, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Switch your BIOS from RAID to AHCI mode to use them.\0A\00", [42 x i8] zeroinitializer }, align 32
@ahci_remap_check._entry_ptr.51 = internal global ptr @ahci_remap_check._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"remapped_nvme\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ahci_broken_devslp.ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 3875, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ahci_pci_save_initial_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 656, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"JMB361 has only one port\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ahci_pci_save_initial_config\00", [35 x i8] zeroinitializer }, align 32
@ahci_pci_save_initial_config._entry_ptr = internal global ptr @ahci_pci_save_initial_config._entry, section ".printk_index", align 4
@ahci_pci_save_initial_config._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 671, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Disabling your PATA port. Use the boot option 'ahci.marvell_enable=0' to avoid this.\0A\00", [42 x i8] zeroinitializer }, align 32
@ahci_pci_save_initial_config._entry_ptr.58 = internal global ptr @ahci_pci_save_initial_config._entry.56, section ".printk_index", align 4
@acer_sa5_271_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 1458, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"enabling Acer Switch Alpha 12 workaround\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"acer_sa5_271_workaround\00", [40 x i8] zeroinitializer }, align 32
@acer_sa5_271_workaround._entry_ptr = internal global ptr @acer_sa5_271_workaround._entry, section ".printk_index", align 4
@ahci_init_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ahci: MRSM is on, fallback to single MSI\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ahci_init_msi\00", [18 x i8] zeroinitializer }, align 32
@ahci_init_msi._entry_ptr = internal global ptr @ahci_init_msi._entry, section ".printk_index", align 4
@ahci_p5wdh_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 999, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"enabling ASUS P5W DH Deluxe on-board SIMG4726 workaround\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahci_p5wdh_workaround\00", [42 x i8] zeroinitializer }, align 32
@ahci_p5wdh_workaround._entry_ptr = internal global ptr @ahci_p5wdh_workaround._entry, section ".printk_index", align 4
@ahci_configure_dma_masks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 938, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahci_configure_dma_masks\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ahci_configure_dma_masks._entry_ptr = internal global ptr @ahci_configure_dma_masks._entry, section ".printk_index", align 4
@ahci_pci_init_controller.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahci_pci_init_controller\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PORT_IRQ_STAT 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IDE\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SATA\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAID\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@ahci_pci_device_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.94, ptr @.str.3, i32 887, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahci_pci_device_suspend\00", [40 x i8] zeroinitializer }, align 32
@ahci_pci_device_suspend._entry_ptr = internal global ptr @ahci_pci_device_suspend._entry, section ".printk_index", align 4
@switch.table.ahci_pci_print_info = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.90, ptr @.str.93, ptr @.str.93, ptr @.str.92, ptr @.str.93, ptr @.str.91], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4318, i64 4523]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 16, i64 20, i64 4170, i64 6013, i64 7236]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 15]
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"marvell_enable\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 641, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"mobile_lpm_policy\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 648, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"ahci_pci_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 629, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1939, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"ahci_pci_tbl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 255, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"ahci_pci_pm_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 623, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"ahci_port_info\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 123, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1676, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"ahci_init_one.__print_once\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1695, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1728, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"dev_attr_remapped_nvme\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1821, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1827, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1833, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1839, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1868, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1876, i32 44 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1878, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant [9 x i8] c"ahci_sht\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 104, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"ahci_avn_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 118, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"ahci_vt8251_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 108, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 819, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1014, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1140, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1147, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1532, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1534, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1663, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1660, i32 25 }
@___asan_gen_.261 = private unnamed_addr constant [4 x i8] c"ids\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1376, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 656, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 670, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1458, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 1576, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 998, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 938, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 696, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 950, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 952, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 954, i32 11 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 956, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.340 = private constant [22 x i8] c"../drivers/ata/ahci.c\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 886, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [33 x i8] c"switch.table.ahci_pci_print_info\00", align 1
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__UNIQUE_ID_marvell_enable322, ptr @__UNIQUE_ID_marvell_enabletype321, ptr @__UNIQUE_ID_mobile_lpm_policy324, ptr @__UNIQUE_ID_mobile_lpm_policytype323, ptr @__UNIQUE_ID_version333, ptr @__exitcall_ahci_pci_driver_exit, ptr @__initcall__kmod_ahci__328_1933_ahci_pci_driver_init6, ptr @__modver_attr, ptr @__param_marvell_enable, ptr @__param_mobile_lpm_policy, ptr @acer_sa5_271_workaround._entry, ptr @acer_sa5_271_workaround._entry_ptr, ptr @ahci_avn_hardreset._entry, ptr @ahci_avn_hardreset._entry.31, ptr @ahci_avn_hardreset._entry_ptr, ptr @ahci_avn_hardreset._entry_ptr.33, ptr @ahci_configure_dma_masks._entry, ptr @ahci_configure_dma_masks._entry_ptr, ptr @ahci_init_msi._entry, ptr @ahci_init_msi._entry_ptr, ptr @ahci_init_one._entry, ptr @ahci_init_one._entry.11, ptr @ahci_init_one._entry.14, ptr @ahci_init_one._entry.18, ptr @ahci_init_one._entry.21, ptr @ahci_init_one._entry.24, ptr @ahci_init_one._entry.8, ptr @ahci_init_one._entry_ptr, ptr @ahci_init_one._entry_ptr.10, ptr @ahci_init_one._entry_ptr.13, ptr @ahci_init_one._entry_ptr.17, ptr @ahci_init_one._entry_ptr.20, ptr @ahci_init_one._entry_ptr.23, ptr @ahci_init_one._entry_ptr.26, ptr @ahci_mcp89_apple_enable._entry, ptr @ahci_mcp89_apple_enable._entry_ptr, ptr @ahci_p5wdh_workaround._entry, ptr @ahci_p5wdh_workaround._entry_ptr, ptr @ahci_pci_device_suspend._entry, ptr @ahci_pci_device_suspend._entry_ptr, ptr @ahci_pci_driver_exit, ptr @ahci_pci_save_initial_config._entry, ptr @ahci_pci_save_initial_config._entry.56, ptr @ahci_pci_save_initial_config._entry_ptr, ptr @ahci_pci_save_initial_config._entry_ptr.58, ptr @ahci_remap_check._entry, ptr @ahci_remap_check._entry.49, ptr @ahci_remap_check._entry_ptr, ptr @ahci_remap_check._entry_ptr.51, ptr @ahci_sb600_enable_64bit._entry, ptr @ahci_sb600_enable_64bit._entry.44, ptr @ahci_sb600_enable_64bit._entry_ptr, ptr @ahci_sb600_enable_64bit._entry_ptr.46, ptr @marvell_enable, ptr @mobile_lpm_policy, ptr @ahci_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ahci_pci_tbl, ptr @ahci_pci_pm_ops, ptr @ahci_port_info, ptr @.str.3, ptr @ahci_init_one.__print_once, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @dev_attr_remapped_nvme, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @ahci_sht, ptr @ahci_avn_ops, ptr @ahci_vt8251_ops, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @ahci_broken_devslp.ids, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @switch.table.ahci_pci_print_info], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobile_lpm_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pci_tbl to i32), i32 9696, i32 12096, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_info to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_remapped_nvme to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_avn_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_vt8251_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_avn_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_avn_hardreset._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_mcp89_apple_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_sb600_enable_64bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_sb600_enable_64bit._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_remap_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_remap_check._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_broken_devslp.ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pci_save_initial_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pci_save_initial_config._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acer_sa5_271_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_p5wdh_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_configure_dma_masks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pci_device_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ahci_pci_print_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ahci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahci_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @ahci_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %tmp16.i = alloca i16, align 2
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  %map = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #8
  %2 = getelementptr inbounds %struct.ata_port_info, ptr %pi, i32 0, i32 6
  %arrayidx = getelementptr [18 x %struct.ata_port_info], ptr @ahci_port_info, i32 0, i32 %1
  %3 = call ptr @memcpy(ptr %pi, ptr %arrayidx, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #8
  %4 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %5 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pi, ptr %ppi, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %4, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %.b422 = load i1, ptr @ahci_init_one.__print_once, align 1
  br i1 %.b422, label %entry.if.end19_crit_edge, label %if.then17

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ahci_init_one.__print_once, align 1
  call void @ata_print_version(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %entry.if.end19_crit_edge
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end19.if.end25_crit_edge [
    i16 4523, label %land.lhs.true
    i16 4318, label %land.lhs.true.i
  ]

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %10 = load i32, ptr @marvell_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %land.lhs.true.cleanup295_crit_edge, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true.cleanup295_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

land.lhs.true.i:                                  ; preds = %if.end19
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3461, i16 %12)
  %cmp3.i = icmp eq i16 %12, 3461
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end25thread-pre-split_crit_edge

land.lhs.true.i.if.end25thread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25thread-pre-split

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %13 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %14)
  %cmp7.i = icmp eq i16 %14, 4203
  br i1 %cmp7.i, label %is_mcp89_apple.exit, label %land.lhs.true5.i.if.end25thread-pre-split_crit_edge

land.lhs.true5.i.if.end25thread-pre-split_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25thread-pre-split

is_mcp89_apple.exit:                              ; preds = %land.lhs.true5.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %15 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13431, i16 %16)
  %cmp10.i = icmp eq i16 %16, -13431
  br i1 %cmp10.i, label %if.then24, label %is_mcp89_apple.exit.if.end25thread-pre-split_crit_edge

is_mcp89_apple.exit.if.end25thread-pre-split_crit_edge: ; preds = %is_mcp89_apple.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25thread-pre-split

if.then24:                                        ; preds = %is_mcp89_apple.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ahci_mcp89_apple_enable(ptr noundef %pdev)
  br label %if.end25thread-pre-split

if.end25thread-pre-split:                         ; preds = %if.then24, %is_mcp89_apple.exit.if.end25thread-pre-split_crit_edge, %land.lhs.true5.i.if.end25thread-pre-split_crit_edge, %land.lhs.true.i.if.end25thread-pre-split_crit_edge
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr482 = load i16, ptr %vendor, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %if.end19.if.end25_crit_edge
  %18 = phi i16 [ %.pr482, %if.end25thread-pre-split ], [ %8, %if.end19.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4186, i16 %18)
  %cmp28 = icmp eq i16 %18, 4186
  br i1 %cmp28, label %do.end33, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4) #11
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %.pr = load i16, ptr %vendor, align 8
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.end25.if.end35_crit_edge
  %20 = phi i16 [ %.pr, %do.end33 ], [ %18, %if.end25.if.end35_crit_edge ]
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %20, label %if.end35.if.end88_crit_edge [
    i16 4170, label %land.lhs.true40
    i16 7236, label %land.lhs.true49
    i16 6013, label %if.then60
    i16 20, label %if.then78
  ]

if.end35.if.end88_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true40:                                  ; preds = %if.end35
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13306, i16 %23)
  %cmp42 = icmp eq i16 %23, -13306
  br i1 %cmp42, label %land.lhs.true40.if.end88_crit_edge, label %land.lhs.true40.if.else55.thread_crit_edge

land.lhs.true40.if.else55.thread_crit_edge:       ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else55.thread

land.lhs.true40.if.end88_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true49:                                  ; preds = %if.end35
  %device50 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %24 = ptrtoint ptr %device50 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp52 = icmp eq i16 %25, -32768
  br i1 %cmp52, label %land.lhs.true49.if.end88_crit_edge, label %land.lhs.true49.if.else55.thread_crit_edge

land.lhs.true49.if.else55.thread_crit_edge:       ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else55.thread

land.lhs.true49.if.end88_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.else55.thread:                                 ; preds = %land.lhs.true49.if.else55.thread_crit_edge, %land.lhs.true40.if.else55.thread_crit_edge
  br label %if.end88

if.then60:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %device61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %26 = ptrtoint ptr %device61 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24548, i16 %27)
  %cmp63 = icmp eq i16 %27, -24548
  %spec.select = select i1 %cmp63, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24444, i16 %27)
  %cmp69 = icmp eq i16 %27, -24444
  %spec.select424 = select i1 %cmp69, i32 4, i32 %spec.select
  br label %if.end88

if.then78:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %device79 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %28 = ptrtoint ptr %device79 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31240, i16 %29)
  %cmp81 = icmp eq i16 %29, 31240
  %spec.select423 = select i1 %cmp81, i32 0, i32 5
  br label %if.end88

if.end88:                                         ; preds = %if.then78, %if.then60, %if.else55.thread, %land.lhs.true49.if.end88_crit_edge, %land.lhs.true40.if.end88_crit_edge, %if.end35.if.end88_crit_edge, %land.lhs.true.if.end88_crit_edge
  %ahci_pci_bar.1 = phi i32 [ 0, %land.lhs.true40.if.end88_crit_edge ], [ 2, %land.lhs.true49.if.end88_crit_edge ], [ %spec.select423, %if.then78 ], [ %spec.select424, %if.then60 ], [ 5, %if.else55.thread ], [ 5, %land.lhs.true.if.end88_crit_edge ], [ 5, %if.end35.if.end88_crit_edge ]
  %call89 = call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.cleanup295_crit_edge

if.end88.cleanup295_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

if.end92:                                         ; preds = %if.end88
  %30 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %31)
  %cmp95 = icmp eq i16 %31, -32634
  br i1 %cmp95, label %land.lhs.true97, label %if.end92.if.end116_crit_edge

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

land.lhs.true97:                                  ; preds = %if.end92
  %device98 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %32 = ptrtoint ptr %device98 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %device98, align 2
  %34 = and i16 %33, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9810, i16 %34)
  %switch = icmp eq i16 %34, 9810
  br i1 %switch, label %if.then106, label %land.lhs.true97.if.end116_crit_edge

land.lhs.true97.if.end116_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then106:                                       ; preds = %land.lhs.true97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %map) #8
  %35 = ptrtoint ptr %map to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %map, align 1, !annotation !247
  %call107 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 144, ptr noundef nonnull %map) #8
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %map, align 1
  %38 = and i8 %37, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool109.not = icmp eq i8 %38, 0
  br i1 %tobool109.not, label %if.end116.critedge, label %do.end113

do.end113:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %map) #8
  br label %cleanup295

if.end116.critedge:                               ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %map) #8
  br label %if.end116

if.end116:                                        ; preds = %if.end116.critedge, %land.lhs.true97.if.end116_crit_edge, %if.end92.if.end116_crit_edge
  %shl = shl nuw nsw i32 1, %ahci_pci_bar.1
  %call117 = call i32 @pcim_iomap_regions_request_all(ptr noundef %pdev, i32 noundef %shl, ptr noundef nonnull @.str.1) #8
  %39 = zext i32 %call117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call117, label %if.end116.cleanup295_crit_edge [
    i32 -16, label %if.then120
    i32 0, label %if.end124
  ]

if.end116.cleanup295_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  call void @pcim_pin_device(ptr noundef %pdev) #8
  br label %cleanup295

if.end124:                                        ; preds = %if.end116
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #8
  %tobool126.not = icmp eq ptr %call.i, null
  br i1 %tobool126.not, label %if.end124.cleanup295_crit_edge, label %if.end128

if.end124.cleanup295_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

if.end128:                                        ; preds = %if.end124
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i, align 4
  %or = or i32 %44, %42
  store i32 %or, ptr %call.i, align 4
  %45 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %1, label %if.end128.if.end154_crit_edge [
    i32 10, label %land.lhs.true131
    i32 15, label %land.lhs.true146
  ]

if.end128.if.end154_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

land.lhs.true131:                                 ; preds = %if.end128
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %46 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %revision, align 4
  %.off425 = add i8 %47, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off425)
  %switch426 = icmp ult i8 %.off425, 2
  br i1 %switch426, label %if.then140, label %land.lhs.true131.if.end154_crit_edge

land.lhs.true131.if.end154_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then140:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #10
  %or142 = or i32 %or, 32
  br label %if.end154.sink.split

land.lhs.true146:                                 ; preds = %if.end128
  %revision147 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %48 = ptrtoint ptr %revision147 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %revision147, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %49)
  %cmp149 = icmp ugt i8 %49, 63
  br i1 %cmp149, label %if.then151, label %land.lhs.true146.if.end154_crit_edge

land.lhs.true146.if.end154_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then151:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 4
  %and153 = and i32 %51, -5
  br label %if.end154.sink.split

if.end154.sink.split:                             ; preds = %if.then151, %if.then140
  %or142.sink = phi i32 [ %or142, %if.then140 ], [ %and153, %if.then151 ]
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or142.sink, ptr %call.i, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end154.sink.split, %land.lhs.true146.if.end154_crit_edge, %land.lhs.true131.if.end154_crit_edge, %if.end128.if.end154_crit_edge
  %call160 = call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %arrayidx161 = getelementptr ptr, ptr %call160, i32 %ahci_pci_bar.1
  %53 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx161, align 4
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 3
  %55 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %mmio, align 4
  %56 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %57)
  %cmp.not.i = icmp eq i16 %57, -32634
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end154.ahci_remap_check.exit_crit_edge

if.end154.ahci_remap_check.exit_crit_edge:        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_remap_check.exit

lor.lhs.false.i:                                  ; preds = %if.end154
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %ahci_pci_bar.1, i32 1
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp2.i = icmp eq i32 %59, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.ahci_remap_check.exit_crit_edge, label %cond.false.i

lor.lhs.false.i.ahci_remap_check.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_remap_check.exit

cond.false.i:                                     ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %ahci_pci_bar.1
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 8
  %sub.i428 = add i32 %59, -524287
  %62 = sub i32 %sub.i428, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524288, i32 %62)
  %phi.cmp.i = icmp ult i32 %62, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ahci_pci_bar.1)
  %cmp12.not.i = icmp eq i32 %ahci_pci_bar.1, 5
  %or.cond.i = and i1 %cmp12.not.i, %phi.cmp.i
  br i1 %or.cond.i, label %lor.lhs.false14.i, label %cond.false.i.ahci_remap_check.exit_crit_edge

cond.false.i.ahci_remap_check.exit_crit_edge:     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_remap_check.exit

lor.lhs.false14.i:                                ; preds = %cond.false.i
  %add.ptr.i = getelementptr i8, ptr %54, i32 164
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  %64 = and i32 %63, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i429 = icmp eq i32 %64, 0
  br i1 %tobool.not.i429, label %lor.lhs.false14.i.ahci_remap_check.exit_crit_edge, label %if.end.i

lor.lhs.false14.i.ahci_remap_check.exit_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_remap_check.exit

if.end.i:                                         ; preds = %lor.lhs.false14.i
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 4
  %add.ptr17.i = getelementptr i8, ptr %66, i32 2048
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 2052
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %69 = call i32 @llvm.bswap.i32(i32 %67) #8
  %remapped_nvme.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 14
  %and22.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.i, label %if.end.i.for.inc.i_crit_edge, label %if.end26.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end.i
  %70 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio, align 4
  %add.ptr31.i = getelementptr i8, ptr %71, i32 2176
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078976, i32 %72)
  %cmp35.not.i = icmp eq i32 %72, 34078976
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %remapped_nvme.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %remapped_nvme.i, align 4
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %remapped_nvme.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end38.i, %if.end26.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %and22.1.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.1.i)
  %cmp23.1.i = icmp eq i32 %and22.1.i, 0
  br i1 %cmp23.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end26.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end26.1.i:                                     ; preds = %for.inc.i
  %75 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio, align 4
  %add.ptr31.1.i = getelementptr i8, ptr %76, i32 2304
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.1.i) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078976, i32 %77)
  %cmp35.not.1.i = icmp eq i32 %77, 34078976
  br i1 %cmp35.not.1.i, label %if.end38.1.i, label %if.end26.1.i.for.inc.1.i_crit_edge

if.end26.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end38.1.i:                                     ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %remapped_nvme.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %remapped_nvme.i, align 4
  %inc.1.i = add i32 %79, 1
  store i32 %inc.1.i, ptr %remapped_nvme.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end38.1.i, %if.end26.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %and22.2.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.2.i)
  %cmp23.2.i = icmp eq i32 %and22.2.i, 0
  br i1 %cmp23.2.i, label %for.inc.1.i.for.inc.2thread-pre-split.i_crit_edge, label %if.end26.2.i

for.inc.1.i.for.inc.2thread-pre-split.i_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2thread-pre-split.i

if.end26.2.i:                                     ; preds = %for.inc.1.i
  %80 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio, align 4
  %add.ptr31.2.i = getelementptr i8, ptr %81, i32 2432
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.2.i) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 34078976, i32 %82)
  %cmp35.not.2.i = icmp eq i32 %82, 34078976
  br i1 %cmp35.not.2.i, label %if.end38.2.i, label %if.end26.2.i.for.inc.2thread-pre-split.i_crit_edge

if.end26.2.i.for.inc.2thread-pre-split.i_crit_edge: ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2thread-pre-split.i

if.end38.2.i:                                     ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %remapped_nvme.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %remapped_nvme.i, align 4
  %inc.2.i = add i32 %84, 1
  store i32 %inc.2.i, ptr %remapped_nvme.i, align 4
  br label %for.inc.2.i

for.inc.2thread-pre-split.i:                      ; preds = %if.end26.2.i.for.inc.2thread-pre-split.i_crit_edge, %for.inc.1.i.for.inc.2thread-pre-split.i_crit_edge
  %85 = ptrtoint ptr %remapped_nvme.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr.i = load i32, ptr %remapped_nvme.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.2thread-pre-split.i, %if.end38.2.i
  %86 = phi i32 [ %.pr.i, %for.inc.2thread-pre-split.i ], [ %inc.2.i, %if.end38.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool41.not.i = icmp eq i32 %86, 0
  br i1 %tobool41.not.i, label %for.inc.2.i.ahci_remap_check.exit_crit_edge, label %do.end.i

for.inc.2.i.ahci_remap_check.exit_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_remap_check.exit

do.end.i:                                         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %86) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.50) #11
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call.i, align 4
  %or.i = or i32 %88, 32
  store i32 %or.i, ptr %call.i, align 4
  br label %ahci_remap_check.exit

ahci_remap_check.exit:                            ; preds = %do.end.i, %for.inc.2.i.ahci_remap_check.exit_crit_edge, %lor.lhs.false14.i.ahci_remap_check.exit_crit_edge, %cond.false.i.ahci_remap_check.exit_crit_edge, %lor.lhs.false.i.ahci_remap_check.exit_crit_edge, %if.end154.ahci_remap_check.exit_crit_edge
  %call163 = call i32 @sysfs_add_file_to_group(ptr noundef %dev1, ptr noundef nonnull @dev_attr_remapped_nvme, ptr noundef null) #8
  %call.i430 = call ptr @pci_match_id(ptr noundef nonnull @ahci_broken_devslp.ids, ptr noundef %pdev) #8
  %tobool.i.not = icmp eq ptr %call.i430, null
  br i1 %tobool.i.not, label %ahci_remap_check.exit.if.end168_crit_edge, label %if.then165

ahci_remap_check.exit.if.end168_crit_edge:        ; preds = %ahci_remap_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.then165:                                       ; preds = %ahci_remap_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %call.i, align 4
  %or167 = or i32 %90, 131072
  store i32 %or167, ptr %call.i, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %ahci_remap_check.exit.if.end168_crit_edge
  %91 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6523, i16 %92)
  %cmp.i432 = icmp eq i16 %92, 6523
  br i1 %cmp.i432, label %land.lhs.true.i435, label %if.end168.if.end.i439_crit_edge

if.end168.if.end.i439_crit_edge:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i439

land.lhs.true.i435:                               ; preds = %if.end168
  %device.i433 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %93 = ptrtoint ptr %device.i433 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %device.i433, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9057, i16 %94)
  %cmp3.i434 = icmp eq i16 %94, 9057
  br i1 %cmp3.i434, label %do.end.i437, label %land.lhs.true.i435.if.end.i439_crit_edge

land.lhs.true.i435.if.end.i439_crit_edge:         ; preds = %land.lhs.true.i435
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i439

do.end.i437:                                      ; preds = %land.lhs.true.i435
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.54) #11
  %force_port_map.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 1
  %95 = ptrtoint ptr %force_port_map.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %force_port_map.i, align 4
  br label %if.end.i439

if.end.i439:                                      ; preds = %do.end.i437, %land.lhs.true.i435.if.end.i439_crit_edge, %if.end168.if.end.i439_crit_edge
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %call.i, align 4
  %and.i = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i438 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i438, label %if.end.i439.ahci_pci_save_initial_config.exit_crit_edge, label %if.then5.i

if.end.i439.ahci_pci_save_initial_config.exit_crit_edge: ; preds = %if.end.i439
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_pci_save_initial_config.exit

if.then5.i:                                       ; preds = %if.end.i439
  call void @__sanitizer_cov_trace_pc() #10
  %device6.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %98 = ptrtoint ptr %device6.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %device6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24865, i16 %99)
  %cmp8.i = icmp eq i16 %99, 24865
  %spec.select.i = select i1 %cmp8.i, i32 3, i32 15
  %100 = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %spec.select.i, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.57) #11
  br label %ahci_pci_save_initial_config.exit

ahci_pci_save_initial_config.exit:                ; preds = %if.then5.i, %if.end.i439.ahci_pci_save_initial_config.exit_crit_edge
  call void @ahci_save_initial_config(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  %call.i440 = call ptr @pci_match_id(ptr noundef nonnull @ahci_pci_tbl, ptr noundef %pdev) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16.i) #8
  %102 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %tmp16.i, align 2, !annotation !247
  %tobool.not.i441 = icmp eq ptr %call.i440, null
  br i1 %tobool.not.i441, label %ahci_pci_save_initial_config.exit.ahci_intel_pcs_quirk.exit_crit_edge, label %lor.lhs.false.i443

ahci_pci_save_initial_config.exit.ahci_intel_pcs_quirk.exit_crit_edge: ; preds = %ahci_pci_save_initial_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_intel_pcs_quirk.exit

lor.lhs.false.i443:                               ; preds = %ahci_pci_save_initial_config.exit
  %103 = ptrtoint ptr %call.i440 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call.i440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32902, i32 %104)
  %cmp.not.i442 = icmp eq i32 %104, 32902
  br i1 %cmp.not.i442, label %if.end.i444, label %lor.lhs.false.i443.ahci_intel_pcs_quirk.exit_crit_edge

lor.lhs.false.i443.ahci_intel_pcs_quirk.exit_crit_edge: ; preds = %lor.lhs.false.i443
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_intel_pcs_quirk.exit

if.end.i444:                                      ; preds = %lor.lhs.false.i443
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %call.i440, i32 0, i32 6
  %105 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %106)
  %cmp1.i = icmp ugt i32 %106, 16
  br i1 %cmp1.i, label %if.end.i444.ahci_intel_pcs_quirk.exit_crit_edge, label %if.end3.i

if.end.i444.ahci_intel_pcs_quirk.exit_crit_edge:  ; preds = %if.end.i444
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_intel_pcs_quirk.exit

if.end3.i:                                        ; preds = %if.end.i444
  %call4.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 146, ptr noundef nonnull %tmp16.i) #8
  %107 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %tmp16.i, align 2
  %conv.i = zext i16 %108 to i32
  %port_map.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 7
  %109 = ptrtoint ptr %port_map.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port_map.i, align 4
  %and.i445 = and i32 %110, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i445, i32 %110)
  %cmp6.not.i = icmp eq i32 %and.i445, %110
  br i1 %cmp6.not.i, label %if.end3.i.ahci_intel_pcs_quirk.exit_crit_edge, label %if.then8.i

if.end3.i.ahci_intel_pcs_quirk.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_intel_pcs_quirk.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = trunc i32 %110 to i16
  %conv11.i = or i16 %108, %111
  %112 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv11.i, ptr %tmp16.i, align 2
  %call12.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 146, i16 noundef zeroext %conv11.i) #8
  br label %ahci_intel_pcs_quirk.exit

ahci_intel_pcs_quirk.exit:                        ; preds = %if.then8.i, %if.end3.i.ahci_intel_pcs_quirk.exit_crit_edge, %if.end.i444.ahci_intel_pcs_quirk.exit_crit_edge, %lor.lhs.false.i443.ahci_intel_pcs_quirk.exit_crit_edge, %ahci_pci_save_initial_config.exit.ahci_intel_pcs_quirk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16.i) #8
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 4
  %113 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cap, align 4
  %and169 = and i32 %114, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %ahci_intel_pcs_quirk.exit.if.end183_crit_edge, label %if.then171

ahci_intel_pcs_quirk.exit.if.end183_crit_edge:    ; preds = %ahci_intel_pcs_quirk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then171:                                       ; preds = %ahci_intel_pcs_quirk.exit
  %115 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pi, align 4
  %or173 = or i32 %116, 1024
  store i32 %or173, ptr %pi, align 4
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %call.i, align 4
  %and175 = and i32 %118, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.then177, label %if.then171.if.end180_crit_edge

if.then171.if.end180_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end180

if.then177:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  %or179 = or i32 %116, 17408
  %119 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or179, ptr %pi, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %if.then171.if.end180_crit_edge
  %120 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pi, align 4
  %or182 = or i32 %121, 1048576
  store i32 %or182, ptr %pi, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.end180, %ahci_intel_pcs_quirk.exit.if.end183_crit_edge
  %and185 = and i32 %114, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end183.if.end190_crit_edge, label %if.then187

if.end183.if.end190_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then187:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pi, align 4
  %or189 = or i32 %123, 524288
  store i32 %or189, ptr %pi, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then187, %if.end183.if.end190_crit_edge
  call void @ahci_set_em_messages(ptr noundef nonnull %call.i, ptr noundef nonnull %pi) #8
  %124 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cap, align 4
  %and.i446 = and i32 %125, 31
  %add.i = add nuw nsw i32 %and.i446, 1
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 7
  %126 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i = icmp eq i32 %127, 0
  %128 = call i32 @llvm.ctlz.i32(i32 %127, i1 true) #8, !range !253
  %sub.i = sub nuw nsw i32 32, %128
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %129 = call i32 @llvm.umax.i32(i32 %add.i, i32 %cond.i)
  %call234 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef %129) #8
  %tobool235.not = icmp eq ptr %call234, null
  br i1 %tobool235.not, label %if.end190.cleanup295_crit_edge, label %if.end237

if.end190.cleanup295_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

if.end237:                                        ; preds = %if.end190
  %private_data238 = getelementptr inbounds %struct.ata_host, ptr %call234, i32 0, i32 5
  %130 = ptrtoint ptr %private_data238 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i, ptr %private_data238, align 4
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %call.i, align 4
  %and.i447 = and i32 %132, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i447)
  %tobool.not.i448 = icmp eq i32 %and.i447, 0
  br i1 %tobool.not.i448, label %if.end.i450, label %if.end237.if.then242_crit_edge

if.end237.if.then242_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.end.i450:                                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp.i449 = icmp ugt i32 %129, 1
  br i1 %cmp.i449, label %if.then1.i, label %if.end.i450.if.end14.i_crit_edge

if.end.i450.if.end14.i_crit_edge:                 ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then1.i:                                       ; preds = %if.end.i450
  %call.i.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef %129, i32 noundef 2147483647, i32 noundef 6, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i451 = icmp sgt i32 %call.i.i, 0
  br i1 %cmp2.i451, label %if.then3.i, label %if.then1.i.if.end14.i_crit_edge

if.then1.i.if.end14.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then3.i:                                       ; preds = %if.then1.i
  %133 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio, align 4
  %add.ptr.i453 = getelementptr i8, ptr %134, i32 4
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i453) #8, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %136 = and i32 %135, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool7.not.i = icmp eq i32 %136, 0
  br i1 %tobool7.not.i, label %if.then8.i455, label %do.end.i457

if.then8.i455:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %get_irq_vector.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 28
  %137 = ptrtoint ptr %get_irq_vector.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @ahci_get_irq_vector, ptr %get_irq_vector.i, align 4
  %138 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %call.i, align 4
  %or.i454 = or i32 %139, 1048576
  store i32 %or.i454, ptr %call.i, align 4
  br label %if.end243

do.end.i457:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i456 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #11
  call void @pci_free_irq_vectors(ptr noundef %pdev) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i457, %if.then1.i.if.end14.i_crit_edge, %if.end.i450.if.end14.i_crit_edge
  %call.i30.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30.i)
  %cmp16.i = icmp eq i32 %call.i30.i, 1
  br i1 %cmp16.i, label %if.end14.i.if.end243_crit_edge, label %ahci_init_msi.exit

if.end14.i.if.end243_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243

ahci_init_msi.exit:                               ; preds = %if.end14.i
  %call.i31.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 4, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp240 = icmp slt i32 %call.i31.i, 0
  br i1 %cmp240, label %ahci_init_msi.exit.if.then242_crit_edge, label %ahci_init_msi.exit.if.end243_crit_edge

ahci_init_msi.exit.if.end243_crit_edge:           ; preds = %ahci_init_msi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243

ahci_init_msi.exit.if.then242_crit_edge:          ; preds = %ahci_init_msi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then242:                                       ; preds = %ahci_init_msi.exit.if.then242_crit_edge, %if.end237.if.then242_crit_edge
  call void @pci_intx(ptr noundef %pdev, i32 noundef 1) #8
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %ahci_init_msi.exit.if.end243_crit_edge, %if.end14.i.if.end243_crit_edge, %if.then8.i455
  %call244 = call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 24
  %140 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call244, ptr %irq, align 4
  %141 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cap, align 4
  %and246 = and i32 %142, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.end243.if.then250_crit_edge, label %lor.lhs.false248

if.end243.if.then250_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

lor.lhs.false248:                                 ; preds = %if.end243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahci_ignore_sss to i32))
  %143 = load i32, ptr @ahci_ignore_sss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool249.not = icmp eq i32 %143, 0
  br i1 %tobool249.not, label %do.end256, label %lor.lhs.false248.if.then250_crit_edge

lor.lhs.false248.if.then250_crit_edge:            ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

if.then250:                                       ; preds = %lor.lhs.false248.if.then250_crit_edge, %if.end243.if.then250_crit_edge
  %flags251 = getelementptr inbounds %struct.ata_host, ptr %call234, i32 0, i32 7
  %144 = ptrtoint ptr %flags251 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags251, align 4
  %or252 = or i32 %145, 4
  store i32 %or252, ptr %flags251, align 4
  br label %if.end258

do.end256:                                        ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %if.end258

if.end258:                                        ; preds = %do.end256, %if.then250
  %146 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pi, align 4
  %and260 = and i32 %147, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.end258.if.end264_crit_edge, label %if.then262

if.end258.if.end264_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

if.then262:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  %call263 = call i32 @ahci_reset_em(ptr noundef nonnull %call234) #8
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.end258.if.end264_crit_edge
  %n_ports265 = getelementptr inbounds %struct.ata_host, ptr %call234, i32 0, i32 3
  %148 = ptrtoint ptr %n_ports265 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %n_ports265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp266488.not = icmp eq i32 %149, 0
  br i1 %cmp266488.not, label %if.end264.for.end_crit_edge, label %for.body.lr.ph

if.end264.for.end_crit_edge:                      ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end264
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end279.for.body_crit_edge, %for.body.lr.ph
  %i.0489 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end279.for.body_crit_edge ]
  %arrayidx268 = getelementptr %struct.ata_host, ptr %call234, i32 0, i32 12, i32 %i.0489
  %150 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx268, align 4
  call void @ata_port_pbar_desc(ptr noundef %151, i32 noundef %ahci_pci_bar.1, i32 noundef -1, ptr noundef nonnull @.str.27) #8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 7
  %152 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port_no, align 4
  %mul = shl i32 %153, 7
  %add = add i32 %mul, 256
  call void @ata_port_pbar_desc(ptr noundef %151, i32 noundef %ahci_pci_bar.1, i32 noundef %add, ptr noundef nonnull @.str.28) #8
  %flags269 = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 3
  %154 = ptrtoint ptr %flags269 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags269, align 4
  %and270 = and i32 %155, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %for.body.if.end273_crit_edge, label %if.then272

for.body.if.end273_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then272:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %em_msg_type, align 4
  %em_message_type = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 47
  %158 = ptrtoint ptr %em_message_type to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %em_message_type, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %for.body.if.end273_crit_edge
  %159 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %call.i, align 4
  %and.i458 = and i32 %160, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i458)
  %tobool.not.i459 = icmp eq i32 %and.i458, 0
  br i1 %tobool.not.i459, label %if.end273.ahci_update_initial_lpm_policy.exit_crit_edge, label %if.end.i462

if.end273.ahci_update_initial_lpm_policy.exit_crit_edge: ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_update_initial_lpm_policy.exit

if.end.i462:                                      ; preds = %if.end273
  %161 = load i32, ptr @mobile_lpm_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %161)
  %cmp.not.i460 = icmp eq i32 %161, -1
  %spec.select.i461 = select i1 %cmp.not.i460, i32 0, i32 %161
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %spec.select.i461)
  %162 = icmp ult i32 %spec.select.i461, 6
  br i1 %162, label %if.then5.i463, label %if.end.i462.ahci_update_initial_lpm_policy.exit_crit_edge

if.end.i462.ahci_update_initial_lpm_policy.exit_crit_edge: ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_update_initial_lpm_policy.exit

if.then5.i463:                                    ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #10
  %target_lpm_policy.i = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 43
  %163 = ptrtoint ptr %target_lpm_policy.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %spec.select.i461, ptr %target_lpm_policy.i, align 4
  br label %ahci_update_initial_lpm_policy.exit

ahci_update_initial_lpm_policy.exit:              ; preds = %if.then5.i463, %if.end.i462.ahci_update_initial_lpm_policy.exit_crit_edge, %if.end273.ahci_update_initial_lpm_policy.exit_crit_edge
  %164 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port_map, align 4
  %shl275 = shl nuw i32 1, %i.0489
  %and276 = and i32 %165, %shl275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %if.then278, label %ahci_update_initial_lpm_policy.exit.if.end279_crit_edge

ahci_update_initial_lpm_policy.exit.if.end279_crit_edge: ; preds = %ahci_update_initial_lpm_policy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279

if.then278:                                       ; preds = %ahci_update_initial_lpm_policy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 1
  %166 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @ata_dummy_port_ops, ptr %ops, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.then278, %ahci_update_initial_lpm_policy.exit.if.end279_crit_edge
  %inc = add nuw i32 %i.0489, 1
  %167 = ptrtoint ptr %n_ports265 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %n_ports265, align 4
  %cmp266 = icmp ult i32 %inc, %168
  br i1 %cmp266, label %if.end279.for.body_crit_edge, label %if.end279.for.end_crit_edge

if.end279.for.end_crit_edge:                      ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end279.for.body_crit_edge:                     ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end279.for.end_crit_edge, %if.end264.for.end_crit_edge
  %169 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %170)
  %tobool.not.i464 = icmp sgt i32 %170, -1
  %cond.i465 = select i1 %tobool.not.i464, i32 32, i32 64
  %dma_mask.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 28
  %171 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %dma_mask.i, align 8
  %173 = add i64 %172, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %173)
  %174 = icmp ult i64 %173, 4294967294
  br i1 %174, label %for.end.if.end285_crit_edge, label %if.end.i467

for.end.if.end285_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

if.end.i467:                                      ; preds = %for.end
  br i1 %tobool.not.i464, label %cond.false.i469, label %if.end.i467.cond.end.i_crit_edge

if.end.i467.cond.end.i_crit_edge:                 ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i469:                                  ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %cond.i465 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i468 = xor i64 %notmask.i, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i469, %if.end.i467.cond.end.i_crit_edge
  %cond4.i = phi i64 [ %sub.i468, %cond.false.i469 ], [ -1, %if.end.i467.cond.end.i_crit_edge ]
  %call.i.i470 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %cond4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i470)
  %cmp.i.i = icmp eq i32 %call.i.i470, 0
  br i1 %cmp.i.i, label %dma_set_mask_and_coherent.exit.thread.i, label %ahci_configure_dma_masks.exit

dma_set_mask_and_coherent.exit.thread.i:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %cond4.i) #8
  br label %if.end285

ahci_configure_dma_masks.exit:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.85) #11
  br label %cleanup295

if.end285:                                        ; preds = %dma_set_mask_and_coherent.exit.thread.i, %for.end.if.end285_crit_edge
  %call286 = call i32 @ahci_reset_controller(ptr noundef nonnull %call234) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %if.end289, label %if.end285.cleanup295_crit_edge

if.end285.cleanup295_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

if.end289:                                        ; preds = %if.end285
  call fastcc void @ahci_pci_init_controller(ptr noundef nonnull %call234)
  call fastcc void @ahci_pci_print_info(ptr noundef nonnull %call234)
  call void @pci_set_master(ptr noundef %pdev) #8
  %call290 = call i32 @ahci_host_activate(ptr noundef nonnull %call234, ptr noundef nonnull @ahci_sht) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %if.end289.cleanup295_crit_edge

if.end289.cleanup295_crit_edge:                   ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup295

if.end293:                                        ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %cleanup295

cleanup295:                                       ; preds = %if.end293, %if.end289.cleanup295_crit_edge, %if.end285.cleanup295_crit_edge, %ahci_configure_dma_masks.exit, %if.end190.cleanup295_crit_edge, %if.end124.cleanup295_crit_edge, %if.then120, %if.end116.cleanup295_crit_edge, %do.end113, %if.end88.cleanup295_crit_edge, %land.lhs.true.cleanup295_crit_edge
  %retval.1 = phi i32 [ 0, %if.end293 ], [ -19, %land.lhs.true.cleanup295_crit_edge ], [ %call89, %if.end88.cleanup295_crit_edge ], [ -19, %do.end113 ], [ %call117, %if.end116.cleanup295_crit_edge ], [ -16, %if.then120 ], [ -12, %if.end124.cleanup295_crit_edge ], [ -12, %if.end190.cleanup295_crit_edge ], [ %call.i.i470, %ahci_configure_dma_masks.exit ], [ %call286, %if.end285.cleanup295_crit_edge ], [ %call290, %if.end289.cleanup295_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @sysfs_remove_file_from_group(ptr noundef %dev, ptr noundef nonnull @dev_attr_remapped_nvme, ptr noundef null) #8
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !255
  tail call void @ata_pci_remove_one(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_shutdown_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ata_pci_shutdown_one(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_mcp89_apple_enable(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !247
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  %call1 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 248, ptr noundef nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %or = or i32 %2, 134217728
  store i32 %or, ptr %val, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 248, i32 noundef %or) #8
  %call3 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 1356, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %or4 = or i32 %4, 4096
  store i32 %or4, ptr %val, align 4
  %call5 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 1356, i32 noundef %or4) #8
  %call6 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 1188, ptr noundef nonnull %val) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 255
  %or7 = or i32 %and, 17170688
  store i32 %or7, ptr %val, align 4
  %call8 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 1188, i32 noundef %or7) #8
  %call9 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 1356, ptr noundef nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and10 = and i32 %8, -4097
  store i32 %and10, ptr %val, align 4
  %call11 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 1356, i32 noundef %and10) #8
  %call12 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 248, ptr noundef nonnull %val) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and13 = and i32 %10, -134217729
  store i32 %and13, ptr %val, align 4
  %call14 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 248, i32 noundef %and13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_set_em_messages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_em(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_pci_init_controller(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then:                                          ; preds = %entry
  %device = getelementptr i8, ptr %3, i32 -102
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24865, i16 %7)
  %cmp = icmp eq i16 %7, 24865
  %. = select i1 %cmp, i32 256, i32 512
  %mmio1.i = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 256
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  tail call void @arm_heavy_mb() #8
  %add.ptr4 = getelementptr i8, ptr %add.ptr2.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #8, !srcloc !257
  %add.ptr5 = getelementptr i8, ptr %add.ptr2.i, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahci_pci_init_controller.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ahci_pci_init_controller, %if.then15)) #8
          to label %do.end19 [label %if.then15], !srcloc !259

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahci_pci_init_controller.__UNIQUE_ID_ddebug325, ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef %11) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %do.end19.if.end27_crit_edge, label %do.body22

do.end19.if.end27_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body22:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #8, !srcloc !257
  br label %if.end27

if.end27:                                         ; preds = %do.body22, %do.end19.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call void @ahci_init_controller(ptr noundef %host) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_pci_print_info(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %cc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cc) #8
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %cc, align 2, !annotation !247
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %cc) #8
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cc, align 2
  %switch.tableidx = add i16 %4, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %5 = icmp ult i16 %switch.tableidx, 6
  br i1 %5, label %switch.lookup, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.ahci_pci_print_info, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end13

if.end13:                                         ; preds = %switch.lookup, %entry.if.end13_crit_edge
  %scc_s.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.93, %entry.if.end13_crit_edge ]
  call void @ahci_print_info(ptr noundef %host, ptr noundef nonnull %scc_s.0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !262
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !263
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_avn_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  %online = alloca i8, align 1
  %val = alloca i16, align 2
  %sstatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %private_data2 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data2, align 4
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_fis, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %deadline, %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #8
  %13 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %online, align 1, !annotation !247
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 26
  %14 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_engine, align 4
  %call3 = tail call i32 %15(ptr noundef %3) #8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %deadline.addr.087 = phi i32 [ %deadline, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val, align 2, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sstatus) #8
  %18 = ptrtoint ptr %sstatus to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %sstatus, align 4, !annotation !247
  %19 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_no, align 4
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %add.ptr6 = getelementptr i8, ptr %24, i32 -136
  %25 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 128
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctl.i, align 4
  %32 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ctl1.i, align 1
  %33 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  %spec.select.i = select i1 %cmp.i, i8 -96, i8 -80
  %35 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select.i, ptr %16, align 4
  %36 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %command, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr) #8
  %call7 = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %deadline.addr.087, ptr noundef nonnull %online, ptr noundef nonnull @ahci_check_ready) #8
  %call8 = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %lor.lhs.false, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %for.body
  %37 = ptrtoint ptr %sstatus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sstatus, align 4
  %and = and i32 %38, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp10.not = icmp eq i32 %and, 1
  br i1 %cmp10.not, label %do.body, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.body:                                          ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i81.not = icmp eq i32 %42, 0
  br i1 %cmp.i81.not, label %lor.lhs.false13, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false13:                                  ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 26
  %43 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slave_link, align 128
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %do.end22, label %lor.lhs.false13.do.end_crit_edge

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false13.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 5
  %45 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %print_id, align 4
  %47 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pmp, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %46, i32 noundef %48, i32 noundef %20) #11
  br label %for.inc

do.end22:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  %print_id25 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 5
  %49 = ptrtoint ptr %print_id25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %print_id25, align 4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %50, i32 noundef %20) #11
  br label %for.inc

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sstatus) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  br label %for.end

for.inc:                                          ; preds = %do.end22, %do.end
  %call30 = call i32 @pci_read_config_word(ptr noundef %add.ptr6, i32 noundef 146, ptr noundef nonnull %val) #8
  %shl = shl nuw i32 1, %20
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %val, align 2
  %53 = trunc i32 %shl to i16
  %54 = xor i16 %53, -1
  %conv32 = and i16 %52, %54
  store i16 %conv32, ptr %val, align 2
  %call33 = call i32 @pci_write_config_word(ptr noundef %add.ptr6, i32 noundef 146, i16 noundef zeroext %conv32) #8
  call void @ata_msleep(ptr noundef %3, i32 noundef 1000) #8
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val, align 2
  %conv36 = or i16 %56, %53
  store i16 %conv36, ptr %val, align 2
  %call37 = call i32 @pci_write_config_word(ptr noundef %add.ptr6, i32 noundef 146, i16 noundef zeroext %conv36) #8
  %add = add i32 %sub, %deadline.addr.087
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sstatus) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 25
  %57 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %start_engine, align 4
  call void %58(ptr noundef %3) #8
  %59 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %online, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool42.not = icmp eq i8 %60, 0
  br i1 %tobool42.not, label %for.end.if.end45_crit_edge, label %if.then43

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i32 @ahci_dev_classify(ptr noundef %3) #8
  %61 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call44, ptr %class, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %for.end.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #8
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_check_ready(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_dev_classify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_vt8251_hardreset(ptr noundef %link, ptr nocapture noundef readnone %class, i32 noundef %deadline) #2 align 64 {
entry:
  %online = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #8
  %6 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %online, align 1, !annotation !247
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %7 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop_engine, align 4
  %call = tail call i32 %8(ptr noundef %1) #8
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i = select i1 %tobool.not.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %call3 = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef null) #8
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 25
  %11 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start_engine, align 4
  call void %12(ptr noundef %1) #8
  %13 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %online, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool.not, i32 %call3, i32 -11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #8
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remapped_nvme_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %remapped_nvme = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %remapped_nvme to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %remapped_nvme, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %5) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_get_irq_vector(ptr nocapture noundef readonly %host, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %port) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_shutdown_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio1.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !257
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  %call2 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4318, i16 %3)
  %cmp.i = icmp eq i16 %3, 4318
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3461, i16 %5)
  %cmp3.i = icmp eq i16 %5, 3461
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %subsystem_vendor.i = getelementptr i8, ptr %dev, i32 -100
  %6 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %7)
  %cmp7.i = icmp eq i16 %7, 4203
  br i1 %cmp7.i, label %is_mcp89_apple.exit, label %land.lhs.true5.i.if.end_crit_edge

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

is_mcp89_apple.exit:                              ; preds = %land.lhs.true5.i
  %subsystem_device.i = getelementptr i8, ptr %dev, i32 -98
  %8 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13431, i16 %9)
  %cmp10.i = icmp eq i16 %9, -13431
  br i1 %cmp10.i, label %if.then, label %is_mcp89_apple.exit.if.end_crit_edge

is_mcp89_apple.exit.if.end_crit_edge:             ; preds = %is_mcp89_apple.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %is_mcp89_apple.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ahci_mcp89_apple_enable(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %is_mcp89_apple.exit.if.end_crit_edge, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ahci_reset_controller(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ahci_pci_init_controller(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call4, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %mmio1.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  %7 = and i32 %6, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #8, !srcloc !257
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ahci_reset_controller(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ahci_pci_init_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !87, !88, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !205, !207, !208, !209, !210, !212, !214, !215, !216, !217, !218, !220, !221, !222, !224, !226, !228, !230, !232, !234, !236, !237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__param_marvell_enable, !1, !"__param_marvell_enable", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci.c", i32 645, i32 1}
!2 = !{ptr @__UNIQUE_ID_marvell_enabletype321, !1, !"__UNIQUE_ID_marvell_enabletype321", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_marvell_enable322, !4, !"__UNIQUE_ID_marvell_enable322", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci.c", i32 646, i32 1}
!5 = !{ptr @__param_mobile_lpm_policy, !6, !"__param_mobile_lpm_policy", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci.c", i32 649, i32 1}
!7 = !{ptr @__UNIQUE_ID_mobile_lpm_policytype323, !6, !"__UNIQUE_ID_mobile_lpm_policytype323", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mobile_lpm_policy324, !9, !"__UNIQUE_ID_mobile_lpm_policy324", i1 false, i1 false}
!9 = !{!"../drivers/ata/ahci.c", i32 650, i32 1}
!10 = !{ptr @__initcall__kmod_ahci__328_1933_ahci_pci_driver_init6, !11, !"__initcall__kmod_ahci__328_1933_ahci_pci_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci.c", i32 1933, i32 1}
!12 = !{ptr @__exitcall_ahci_pci_driver_exit, !11, !"__exitcall_ahci_pci_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author329, !14, !"__UNIQUE_ID_author329", i1 false, i1 false}
!14 = !{!"../drivers/ata/ahci.c", i32 1935, i32 1}
!15 = !{ptr @__UNIQUE_ID_description330, !16, !"__UNIQUE_ID_description330", i1 false, i1 false}
!16 = !{!"../drivers/ata/ahci.c", i32 1936, i32 1}
!17 = !{ptr @__UNIQUE_ID_file331, !18, !"__UNIQUE_ID_file331", i1 false, i1 false}
!18 = !{!"../drivers/ata/ahci.c", i32 1937, i32 1}
!19 = !{ptr @__UNIQUE_ID_license332, !18, !"__UNIQUE_ID_license332", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_version333, !21, !"__UNIQUE_ID_version333", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci.c", i32 1939, i32 1}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @marvell_enable, !27, !"marvell_enable", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci.c", i32 641, i32 12}
!28 = !{ptr @__param_str_marvell_enable, !1, !"__param_str_marvell_enable", i1 false, i1 false}
!29 = !{ptr @__param_str_mobile_lpm_policy, !6, !"__param_str_mobile_lpm_policy", i1 false, i1 false}
!30 = !{ptr @mobile_lpm_policy, !31, !"mobile_lpm_policy", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci.c", i32 648, i32 12}
!32 = !{ptr @ahci_pci_driver, !33, !"ahci_pci_driver", i1 false, i1 false}
!33 = !{!"../drivers/ata/ahci.c", i32 629, i32 26}
!34 = !{ptr @ahci_pci_tbl, !35, !"ahci_pci_tbl", i1 false, i1 false}
!35 = !{!"../drivers/ata/ahci.c", i32 255, i32 35}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci.c", i32 1676, i32 2}
!38 = distinct !{null, !39, !"__print_once", i1 false, i1 false}
!39 = !{!"../drivers/ata/ahci.c", i32 1678, i32 2}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci.c", i32 1695, i32 3}
!42 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ahci_init_one._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @ahci_init_one._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/ahci.c", i32 1728, i32 4}
!49 = !{ptr @ahci_init_one._entry.8, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ahci_init_one._entry_ptr.10, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/ahci.c", i32 1821, i32 3}
!53 = !{ptr @ahci_init_one._entry.11, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ahci_init_one._entry_ptr.13, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/ahci.c", i32 1827, i32 3}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ahci_init_one._entry.14, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ahci_init_one._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/ahci.c", i32 1833, i32 3}
!62 = !{ptr @ahci_init_one._entry.18, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ahci_init_one._entry_ptr.20, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/ahci.c", i32 1839, i32 3}
!66 = !{ptr @ahci_init_one._entry.21, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ahci_init_one._entry_ptr.23, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/ahci.c", i32 1868, i32 3}
!70 = !{ptr @ahci_init_one._entry.24, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ahci_init_one._entry_ptr.26, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/ahci.c", i32 1876, i32 44}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/ahci.c", i32 1878, i32 36}
!76 = !{ptr @ahci_port_info, !77, !"ahci_port_info", i1 false, i1 false}
!77 = !{!"../drivers/ata/ahci.c", i32 123, i32 35}
!78 = !{ptr @ahci_avn_ops, !79, !"ahci_avn_ops", i1 false, i1 false}
!79 = !{!"../drivers/ata/ahci.c", i32 118, i32 35}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/ahci.c", i32 819, i32 3}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ahci_avn_hardreset._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ahci_avn_hardreset._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ahci_avn_hardreset._entry.31, !81, !"_entry", i1 false, i1 false}
!87 = !{ptr @ahci_avn_hardreset._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ahci_vt8251_ops, !89, !"ahci_vt8251_ops", i1 false, i1 false}
!89 = !{!"../drivers/ata/ahci.c", i32 108, i32 35}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ata/ahci.c", i32 1014, i32 2}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ahci_mcp89_apple_enable._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @ahci_mcp89_apple_enable._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/ahci.c", i32 1060, i32 13}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ata/ahci.c", i32 1066, i32 19}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/ahci.c", i32 1085, i32 13}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/ahci.c", i32 1101, i32 13}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/ata/ahci.c", i32 1113, i32 13}
!105 = distinct !{null, !106, !"sysids", i1 false, i1 false}
!106 = !{!"../drivers/ata/ahci.c", i32 1051, i32 36}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ata/ahci.c", i32 1135, i32 29}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/ahci.c", i32 1140, i32 3}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ahci_sb600_enable_64bit._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ahci_sb600_enable_64bit._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/ahci.c", i32 1147, i32 2}
!116 = !{ptr @ahci_sb600_enable_64bit._entry.44, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ahci_sb600_enable_64bit._entry_ptr.46, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ata/ahci.c", i32 1532, i32 2}
!120 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ahci_remap_check._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ahci_remap_check._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ata/ahci.c", i32 1534, i32 2}
!125 = !{ptr @ahci_remap_check._entry.49, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ahci_remap_check._entry_ptr.51, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/ata/ahci.c", i32 1663, i32 8}
!129 = !{ptr @dev_attr_remapped_nvme, !128, !"dev_attr_remapped_nvme", i1 false, i1 false}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/ahci.c", i32 1660, i32 25}
!132 = !{ptr @ahci_broken_devslp.ids, !133, !"ids", i1 false, i1 false}
!133 = !{!"../drivers/ata/ahci.c", i32 1376, i32 36}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/ahci.c", i32 656, i32 3}
!136 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ahci_pci_save_initial_config._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ahci_pci_save_initial_config._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/ata/ahci.c", i32 670, i32 3}
!141 = !{ptr @ahci_pci_save_initial_config._entry.56, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ahci_pci_save_initial_config._entry_ptr.58, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/ahci.c", i32 1155, i32 13}
!145 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/ata/ahci.c", i32 1164, i32 13}
!147 = distinct !{null, !148, !"broken_systems", i1 false, i1 false}
!148 = !{!"../drivers/ata/ahci.c", i32 1153, i32 36}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/ata/ahci.c", i32 1279, i32 19}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ata/ahci.c", i32 1286, i32 19}
!153 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ata/ahci.c", i32 1293, i32 19}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/ahci.c", i32 1306, i32 19}
!157 = distinct !{null, !158, !"sysids", i1 false, i1 false}
!158 = !{!"../drivers/ata/ahci.c", i32 1272, i32 36}
!159 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/ata/ahci.c", i32 1203, i32 13}
!161 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ata/ahci.c", i32 1209, i32 19}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ata/ahci.c", i32 1212, i32 13}
!165 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/ata/ahci.c", i32 1218, i32 19}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/ata/ahci.c", i32 1221, i32 13}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ata/ahci.c", i32 1227, i32 19}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/ata/ahci.c", i32 1230, i32 13}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/ata/ahci.c", i32 1236, i32 19}
!175 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/ata/ahci.c", i32 1248, i32 13}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/ata/ahci.c", i32 1253, i32 19}
!179 = distinct !{null, !180, !"sysids", i1 false, i1 false}
!180 = !{!"../drivers/ata/ahci.c", i32 1188, i32 36}
!181 = distinct !{null, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ata/ahci.c", i32 1342, i32 13}
!183 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/ata/ahci.c", i32 1351, i32 13}
!185 = distinct !{null, !186, !"sysids", i1 false, i1 false}
!186 = !{!"../drivers/ata/ahci.c", i32 1327, i32 36}
!187 = distinct !{null, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/ata/ahci.c", i32 1448, i32 13}
!189 = distinct !{null, !190, !"sysids", i1 false, i1 false}
!190 = !{!"../drivers/ata/ahci.c", i32 1446, i32 36}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/ata/ahci.c", i32 1458, i32 3}
!193 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @acer_sa5_271_workaround._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @acer_sa5_271_workaround._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/ata/ahci.c", i32 1576, i32 4}
!198 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ahci_init_msi._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @ahci_init_msi._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/ata/ahci.c", i32 983, i32 13}
!203 = distinct !{null, !204, !"sysids", i1 false, i1 false}
!204 = !{!"../drivers/ata/ahci.c", i32 981, i32 36}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/ata/ahci.c", i32 998, i32 3}
!207 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ahci_p5wdh_workaround._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @ahci_p5wdh_workaround._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"ahci_p5wdh_ops", i1 false, i1 false}
!211 = !{!"../drivers/ata/ahci.c", i32 113, i32 35}
!212 = !{ptr @.str.85, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/ata/ahci.c", i32 938, i32 3}
!214 = !{ptr @.str.86, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @ahci_configure_dma_masks._entry, !213, !"_entry", i1 false, i1 false}
!217 = !{ptr @ahci_configure_dma_masks._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/ata/ahci.c", i32 696, i32 3}
!220 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ahci_pci_init_controller.__UNIQUE_ID_ddebug325, !219, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!222 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/ata/ahci.c", i32 950, i32 11}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/ata/ahci.c", i32 952, i32 11}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/ata/ahci.c", i32 954, i32 11}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/ata/ahci.c", i32 956, i32 11}
!230 = !{ptr @ahci_sht, !231, !"ahci_sht", i1 false, i1 false}
!231 = !{!"../drivers/ata/ahci.c", i32 104, i32 34}
!232 = !{ptr @ahci_pci_pm_ops, !233, !"ahci_pci_pm_ops", i1 false, i1 false}
!233 = !{!"../drivers/ata/ahci.c", i32 623, i32 32}
!234 = !{ptr @.str.94, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/ata/ahci.c", i32 886, i32 3}
!236 = !{ptr @ahci_pci_device_suspend._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @ahci_pci_device_suspend._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{!"auto-init"}
!248 = !{i64 5042763}
!249 = !{i64 2156619030}
!250 = !{i64 2155826524}
!251 = !{i64 2155826962}
!252 = !{i64 2156619592}
!253 = !{i32 0, i32 33}
!254 = !{i64 2156624949}
!255 = !{i64 2148272228, i64 2148272254, i64 2148272283, i64 2148272317, i64 2148272348, i64 2148272371}
!256 = !{i64 2156586149}
!257 = !{i64 5042345}
!258 = !{i64 2156586844}
!259 = !{i64 2148754043, i64 2148754048, i64 2148754061, i64 2148754105, i64 2148754139, i64 2148754160}
!260 = !{i64 2156589292}
!261 = !{i64 2148271647}
!262 = !{i64 756470, i64 756495, i64 756517, i64 756533, i64 756545, i64 756565, i64 756589, i64 756605, i64 756617}
!263 = !{i64 2148271835}
!264 = !{i8 0, i8 2}
!265 = !{i64 2156595141}
!266 = !{i64 2156595353}
!267 = !{i64 2156596004}
