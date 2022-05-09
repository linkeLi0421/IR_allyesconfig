; ModuleID = '/llk/IR_all_yes/drivers/scsi/pm8001/pm8001_init.c_pt.bc'
source_filename = "../drivers/scsi/pm8001/pm8001_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pm8001_chip_info = type { i32, i32, ptr }
%struct.pm8001_dispatch = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.pm8001_hba_info = type { [32 x i8], %struct.list_head, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, [6 x %struct.pm8001_hba_memspace], %struct.mpi_mem_req, %struct.encrypt, %struct.forensic_data, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.main_cfg_table, %union.general_status_table, [64 x %struct.inbound_queue_table], [64 x %struct.outbound_queue_table], %struct.sas_phy_attribute_table, [8 x i8], ptr, ptr, i32, ptr, ptr, i32, ptr, [16 x %struct.pm8001_phy], [16 x %struct.pm8001_port], i32, i32, i32, ptr, ptr, i32, i32, [64 x [37 x i8]], [64 x %struct.tasklet_struct], i32, i32, i32, i32, i8, ptr, [64 x %struct.isr_param], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pm8001_hba_memspace = type { ptr, i64, i32 }
%struct.mpi_mem_req = type { i32, [261 x %struct.mpi_mem] }
%struct.mpi_mem = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.encrypt = type { i32, i32, i32, i32 }
%struct.forensic_data = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.anon.87 }
%struct.anon.87 = type { i32, i32, i32, ptr }
%union.main_cfg_table = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.general_status_table = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, [2 x i32], [8 x i32] }
%struct.inbound_queue_table = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.spinlock }
%struct.outbound_queue_table = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.spinlock, i32 }
%struct.sas_phy_attribute_table = type { [16 x i32], [16 x i32] }
%struct.pm8001_phy = type { ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, i64, i32, ptr, i32, [32 x i8], i8, i8, i32, i32, ptr, i8, i8 }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.pm8001_port = type { %struct.asd_sas_port, i8, i16, i8, i8, %struct.list_head }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.isr_param = type { ptr, i32 }
%struct.pm8001_ccb_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, i8 }
%struct.pm8001_device = type { i32, ptr, i32, i32, ptr, ptr, i32, %struct.atomic_t }
%struct.pm8001_ioctl_payload = type { i32, i16, i16, i16, i16, i16, i32, i32, ptr }
%struct.pm8001_mpi3_phy_pg_trx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_logging_level = internal constant [21 x i8] c"pm80xx.logging_level\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@logging_level = internal global { i32, [28 x i8] } { i32 513, [28 x i8] zeroinitializer }, align 32
@__param_logging_level = internal constant %struct.kernel_param { ptr @__param_str_logging_level, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @logging_level } }, section "__param", align 4
@__UNIQUE_ID_logging_leveltype290 = internal constant [36 x i8] c"pm80xx.parmtype=logging_level:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_logging_level291 = internal constant [59 x i8] c"pm80xx.parm=logging_level: bits for enabling logging info.\00", section ".modinfo", align 1
@__param_str_link_rate = internal constant [17 x i8] c"pm80xx.link_rate\00", align 1
@link_rate = internal global { i32, [28 x i8] } { i32 3840, [28 x i8] zeroinitializer }, align 32
@__param_link_rate = internal constant %struct.kernel_param { ptr @__param_str_link_rate, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @link_rate } }, section "__param", align 4
@__UNIQUE_ID_link_ratetype292 = internal constant [32 x i8] c"pm80xx.parmtype=link_rate:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_link_rate293 = internal constant [118 x i8] c"pm80xx.parm=link_rate:Enable link rate.\0A 1: Link rate 1.5G\0A 2: Link rate 3.0G\0A 4: Link rate 6.0G\0A 8: Link rate 12.0G\0A\00", section ".modinfo", align 1
@hba_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hba_list, ptr @hba_list }, [24 x i8] zeroinitializer }, align 32
@pm8001_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pm8001_pci_table, ptr @pm8001_pci_probe, ptr @pm8001_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8001_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@pm8001_stt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm8001_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_pm80xx__300_1535_pm8001_init6 = internal global ptr @pm8001_init, section ".initcall6.init", align 4
@__exitcall_pm8001_exit = internal global ptr @pm8001_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [46 x i8] c"pm80xx.author=Jack Wang <jack_wang@usish.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [68 x i8] c"pm80xx.author=Anand Kumar Santhanam <AnandKumar.Santhanam@pmcs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [71 x i8] c"pm80xx.author=Sangeetha Gnanasekaran <Sangeetha.Gnanasekaran@pmcs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [69 x i8] c"pm80xx.author=Nikith Ganigarakoppal <Nikith.Ganigarakoppal@pmcs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [109 x i8] c"pm80xx.description=PMC-Sierra PM8001/8006/8081/8088/8089/8074/8076/8077/8070/8072 SAS/SATA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version306 = internal constant [22 x i8] c"pm80xx.version=0.1.40\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm80xx\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1.40\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file307 = internal constant [39 x i8] c"pm80xx.file=drivers/scsi/pm8001/pm80xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [19 x i8] c"pm80xx.license=GPL\00", section ".modinfo", align 1
@pm8001_pci_table = internal global { [46 x %struct.pci_device_id], [352 x i8] } { [46 x %struct.pci_device_id] [%struct.pci_device_id { i32 4600, i32 32769, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 32774, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 36869, i32 32774, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4476, i32 66, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32769, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4600, i32 32776, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 32776, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4600, i32 32792, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 36869, i32 32792, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4600, i32 32777, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36869, i32 32777, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4600, i32 32793, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 36869, i32 32793, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4600, i32 32884, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 36869, i32 32884, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4600, i32 32886, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 36869, i32 32886, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4600, i32 32887, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 36869, i32 32887, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 36869, i32 32897, i32 36869, i32 1024, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32897, i32 36869, i32 2048, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32904, i32 36869, i32 8, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 32904, i32 36869, i32 2048, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 32905, i32 36869, i32 8, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36869, i32 32905, i32 36869, i32 2048, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36869, i32 32904, i32 36869, i32 22, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 36869, i32 32904, i32 36869, i32 5632, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 36869, i32 32905, i32 36869, i32 22, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 36869, i32 32905, i32 36869, i32 5632, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 36869, i32 32884, i32 36869, i32 2048, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 36869, i32 32886, i32 36869, i32 5632, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 36869, i32 32887, i32 36869, i32 5632, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 36869, i32 32884, i32 36869, i32 8, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 36869, i32 32886, i32 36869, i32 22, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 36869, i32 32887, i32 36869, i32 22, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 36869, i32 32886, i32 36869, i32 2056, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 36869, i32 32887, i32 36869, i32 2056, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 36869, i32 32884, i32 36869, i32 1028, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4476, i32 32880, i32 4476, i32 112, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4476, i32 32880, i32 4476, i32 113, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4476, i32 32882, i32 4476, i32 114, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4476, i32 32882, i32 4476, i32 115, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4476, i32 32880, i32 4476, i32 128, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4476, i32 32882, i32 4476, i32 129, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4476, i32 32882, i32 4476, i32 130, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id zeroinitializer], [352 x i8] zeroinitializer }, align 32
@pm8001_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm8001_pci_suspend, ptr @pm8001_pci_resume, ptr @pm8001_pci_suspend, ptr @pm8001_pci_resume, ptr @pm8001_pci_suspend, ptr @pm8001_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm8001_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1070, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm80xx: driver version %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8001_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/pm8001/pm8001_init.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8001_pci_probe._entry_ptr = internal global ptr @pm8001_pci_probe._entry, section ".printk_index", align 4
@pm8001_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sas_queuecommand, ptr null, ptr null, ptr @.str.1, ptr null, ptr @sas_ioctl, ptr null, ptr null, ptr null, ptr @sas_eh_device_reset_handler, ptr @sas_eh_target_reset_handler, ptr null, ptr null, ptr @sas_slave_alloc, ptr @sas_slave_configure, ptr null, ptr @sas_target_alloc, ptr @sas_target_destroy, ptr @pm8001_scan_finished, ptr @pm8001_scan_start, ptr @sas_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @sas_bios_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 -1, i16 528, i16 0, i32 1024, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 -128, i32 0, ptr @pm8001_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pm8001_chips = internal constant { [11 x %struct.pm8001_chip_info], [60 x i8] } { [11 x %struct.pm8001_chip_info] [%struct.pm8001_chip_info { i32 0, i32 8, ptr @pm8001_8001_dispatch }, %struct.pm8001_chip_info { i32 0, i32 8, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 1, i32 8, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 16, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 1, i32 16, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 8, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 16, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 16, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 16, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 8, ptr @pm8001_80xx_dispatch }, %struct.pm8001_chip_info { i32 0, i32 16, ptr @pm8001_80xx_dispatch }], [60 x i8] zeroinitializer }, align 32
@pm8001_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:: %s  %d:chip_init failed [ret: %d]\0A\00", [54 x i8] zeroinitializer }, align 32
@pm8001_pci_probe._entry_ptr.10 = internal global ptr @pm8001_pci_probe._entry.8, section ".printk_index", align 4
@pm8001_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:: %s  %d:sas_register_ha failed [ret: %d]\0A\00", [48 x i8] zeroinitializer }, align 32
@pm8001_pci_probe._entry_ptr.13 = internal global ptr @pm8001_pci_probe._entry.11, section ".printk_index", align 4
@pci_go_44._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 571, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"32-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_go_44\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_go_44._entry_ptr = internal global ptr @pci_go_44._entry, section ".printk_index", align 4
@pm8001_host_groups = external dso_local global [0 x ptr], align 4
@pm8001_8001_dispatch = external dso_local constant %struct.pm8001_dispatch, align 4
@pm8001_80xx_dispatch = external dso_local constant %struct.pm8001_dispatch, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pm8001_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pm8001_pci_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:: %s  %d:Setting link rate to default value\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8001_pci_alloc\00", [47 x i8] zeroinitializer }, align 32
@pm8001_pci_alloc._entry_ptr = internal global ptr @pm8001_pci_alloc._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@pm8001_ioremap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s:: %s  %d:Failed to ioremap bar %d, logicalBar %d\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pm8001_ioremap\00", [17 x i8] zeroinitializer }, align 32
@pm8001_ioremap._entry_ptr = internal global ptr @pm8001_ioremap._entry, section ".printk_index", align 4
@pm8001_ioremap._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s:: %s  %d:base addr %llx virt_addr=%llx len=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@pm8001_ioremap._entry_ptr.24 = internal global ptr @pm8001_ioremap._entry.22, section ".printk_index", align 4
@pm8001_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pm8001_ha->lock\00", [47 x i8] zeroinitializer }, align 32
@pm8001_alloc.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&pm8001_ha->bitmap_lock\00", [40 x i8] zeroinitializer }, align 32
@pm8001_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:: %s  %d:pm8001_alloc: PHY:%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm8001_alloc\00", [19 x i8] zeroinitializer }, align 32
@pm8001_alloc._entry_ptr = internal global ptr @pm8001_alloc._entry, section ".printk_index", align 4
@pm8001_alloc._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:: %s  %d:pm8001_setup_irq failed [ret: %d]\0A\00", [47 x i8] zeroinitializer }, align 32
@pm8001_alloc._entry_ptr.32 = internal global ptr @pm8001_alloc._entry.30, section ".printk_index", align 4
@pm8001_alloc.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ibq->iq_lock\00", [18 x i8] zeroinitializer }, align 32
@pm8001_alloc.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&obq->oq_lock\00", [18 x i8] zeroinitializer }, align 32
@pm8001_alloc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.5, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:: %s  %d:Mem%d alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@pm8001_alloc._entry_ptr.39 = internal global ptr @pm8001_alloc._entry.37, section ".printk_index", align 4
@pm8001_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:: %s  %d:MSIX not supported!!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8001_setup_irq\00", [47 x i8] zeroinitializer }, align 32
@pm8001_setup_irq._entry_ptr = internal global ptr @pm8001_setup_irq._entry, section ".printk_index", align 4
@pm8001_setup_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s:: %s  %d:pci_alloc_irq_vectors request ret:%d no of intr %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8001_setup_msix\00", [46 x i8] zeroinitializer }, align 32
@pm8001_setup_msix._entry_ptr = internal global ptr @pm8001_setup_msix._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@pm8001_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.44, ptr @.str.5, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8001_request_irq\00", [45 x i8] zeroinitializer }, align 32
@pm8001_request_irq._entry_ptr = internal global ptr @pm8001_request_irq._entry, section ".printk_index", align 4
@pm8001_request_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s:: %s  %d:pci_enable_msix request number of intr %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8001_request_msix\00", [44 x i8] zeroinitializer }, align 32
@pm8001_request_msix._entry_ptr = internal global ptr @pm8001_request_msix._entry, section ".printk_index", align 4
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@pm8001_init_ccb_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:: %s  %d:Unable to allocate memory for ccb\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8001_init_ccb_tag\00", [44 x i8] zeroinitializer }, align 32
@pm8001_init_ccb_tag._entry_ptr = internal global ptr @pm8001_init_ccb_tag._entry, section ".printk_index", align 4
@pm8001_init_ccb_tag._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:: %s  %d:ccb prd memory allocation error\0A\00", [49 x i8] zeroinitializer }, align 32
@pm8001_init_ccb_tag._entry_ptr.52 = internal global ptr @pm8001_init_ccb_tag._entry.50, section ".printk_index", align 4
@pm8001_init_sas_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:: %s  %d:mem alloc fail\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8001_init_sas_add\00", [44 x i8] zeroinitializer }, align 32
@pm8001_init_sas_add._entry_ptr = internal global ptr @pm8001_init_sas_add._entry, section ".printk_index", align 4
@pm8001_init_sas_add._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.5, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:: %s  %d:nvmd failed\0A\00", [37 x i8] zeroinitializer }, align 32
@pm8001_init_sas_add._entry_ptr.57 = internal global ptr @pm8001_init_sas_add._entry.55, section ".printk_index", align 4
@pm8001_init_sas_add._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.5, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:: %s  %d:phy %d sas_addr = %016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8001_init_sas_add._entry_ptr.60 = internal global ptr @pm8001_init_sas_add._entry.58, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pm8001_get_phy_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:: %s  %d:Unknown subsystem device=0x%.04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8001_get_phy_mask\00", [44 x i8] zeroinitializer }, align 32
@pm8001_get_phy_mask._entry_ptr = internal global ptr @pm8001_get_phy_mask._entry, section ".printk_index", align 4
@pm8001_get_phy_settings_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.64, ptr @.str.5, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pm8001_get_phy_settings_info\00", [35 x i8] zeroinitializer }, align 32
@pm8001_get_phy_settings_info._entry_ptr = internal global ptr @pm8001_get_phy_settings_info._entry, section ".printk_index", align 4
@pm8001_pci_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 1296, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" PCI PM not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8001_pci_suspend\00", [45 x i8] zeroinitializer }, align 32
@pm8001_pci_suspend._entry_ptr = internal global ptr @pm8001_pci_suspend._entry, section ".printk_index", align 4
@pm8001_pci_suspend._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:: %s  %d:pdev=0x%p, slot=%s, entering suspended state\0A\00", [36 x i8] zeroinitializer }, align 32
@pm8001_pci_suspend._entry_ptr.69 = internal global ptr @pm8001_pci_suspend._entry.67, section ".printk_index", align 4
@pm8001_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s:: %s  %d:pdev=0x%p, slot=%s, resuming from previous operating state [D%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8001_pci_resume\00", [46 x i8] zeroinitializer }, align 32
@pm8001_pci_resume._entry_ptr = internal global ptr @pm8001_pci_resume._entry, section ".printk_index", align 4
@pm8001_pci_resume._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:: %s  %d:chip soft reset successful\0A\00", [54 x i8] zeroinitializer }, align 32
@pm8001_pci_resume._entry_ptr.74 = internal global ptr @pm8001_pci_resume._entry.72, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pm8001_transport_ops = internal global { %struct.sas_domain_function_template, [56 x i8] } { %struct.sas_domain_function_template { ptr @pm8001_port_formed, ptr null, ptr @pm8001_dev_found, ptr @pm8001_dev_gone, ptr @pm8001_queue_command, ptr @pm8001_abort_task, ptr @pm8001_abort_task_set, ptr @pm8001_clear_aca, ptr @pm8001_clear_task_set, ptr @pm8001_I_T_nexus_reset, ptr null, ptr null, ptr @pm8001_lu_reset, ptr @pm8001_query_task, ptr null, ptr null, ptr @pm8001_phy_control, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 66, i64 32897]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 4476, i64 36869]
@__sancov_gen_cov_switch_values.94 = internal global [9 x i64] [i64 7, i64 16, i64 112, i64 113, i64 114, i64 115, i64 128, i64 129, i64 130]
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"logging_level\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 46, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"link_rate\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 50, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"hba_list\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 80, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"pm8001_pci_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1492, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"pm8001_stt\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 58, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant [10 x i8] c"pm8001_wq\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 82, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1545, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"pm8001_pci_table\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1412, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"pm8001_pci_pm_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1488, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1069, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"pm8001_sht\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 87, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"pm8001_chips\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 65, i32 38 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1119, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1149, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 570, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [10 x i8] c"pm8001_id\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 78, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 528, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 531, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 473, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 478, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 275, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 276, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 277, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 283, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 322, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 352, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 403, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1015, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 959, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1035, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 974, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 984, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1204, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1214, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 694, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 700, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 728, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 87, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 863, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 769, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1296, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1319, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1343, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1353, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [21 x i8] c"pm8001_transport_ops\00", align 1
@___asan_gen_.375 = private constant [37 x i8] c"../drivers/scsi/pm8001/pm8001_init.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 117, i32 44 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__UNIQUE_ID_link_rate293, ptr @__UNIQUE_ID_link_ratetype292, ptr @__UNIQUE_ID_logging_level291, ptr @__UNIQUE_ID_logging_leveltype290, ptr @__UNIQUE_ID_version306, ptr @__exitcall_pm8001_exit, ptr @__initcall__kmod_pm80xx__300_1535_pm8001_init6, ptr @__modver_attr, ptr @__param_link_rate, ptr @__param_logging_level, ptr @pci_go_44._entry, ptr @pci_go_44._entry_ptr, ptr @pm8001_alloc._entry, ptr @pm8001_alloc._entry.30, ptr @pm8001_alloc._entry.37, ptr @pm8001_alloc._entry_ptr, ptr @pm8001_alloc._entry_ptr.32, ptr @pm8001_alloc._entry_ptr.39, ptr @pm8001_exit, ptr @pm8001_get_phy_mask._entry, ptr @pm8001_get_phy_mask._entry_ptr, ptr @pm8001_get_phy_settings_info._entry, ptr @pm8001_get_phy_settings_info._entry_ptr, ptr @pm8001_init_ccb_tag._entry, ptr @pm8001_init_ccb_tag._entry.50, ptr @pm8001_init_ccb_tag._entry_ptr, ptr @pm8001_init_ccb_tag._entry_ptr.52, ptr @pm8001_init_sas_add._entry, ptr @pm8001_init_sas_add._entry.55, ptr @pm8001_init_sas_add._entry.58, ptr @pm8001_init_sas_add._entry_ptr, ptr @pm8001_init_sas_add._entry_ptr.57, ptr @pm8001_init_sas_add._entry_ptr.60, ptr @pm8001_ioremap._entry, ptr @pm8001_ioremap._entry.22, ptr @pm8001_ioremap._entry_ptr, ptr @pm8001_ioremap._entry_ptr.24, ptr @pm8001_pci_alloc._entry, ptr @pm8001_pci_alloc._entry_ptr, ptr @pm8001_pci_probe._entry, ptr @pm8001_pci_probe._entry.11, ptr @pm8001_pci_probe._entry.8, ptr @pm8001_pci_probe._entry_ptr, ptr @pm8001_pci_probe._entry_ptr.10, ptr @pm8001_pci_probe._entry_ptr.13, ptr @pm8001_pci_resume._entry, ptr @pm8001_pci_resume._entry.72, ptr @pm8001_pci_resume._entry_ptr, ptr @pm8001_pci_resume._entry_ptr.74, ptr @pm8001_pci_suspend._entry, ptr @pm8001_pci_suspend._entry.67, ptr @pm8001_pci_suspend._entry_ptr, ptr @pm8001_pci_suspend._entry_ptr.69, ptr @pm8001_request_irq._entry, ptr @pm8001_request_irq._entry_ptr, ptr @pm8001_request_msix._entry, ptr @pm8001_request_msix._entry_ptr, ptr @pm8001_setup_irq._entry, ptr @pm8001_setup_irq._entry_ptr, ptr @pm8001_setup_msix._entry, ptr @pm8001_setup_msix._entry_ptr, ptr @logging_level, ptr @link_rate, ptr @hba_list, ptr @pm8001_pci_driver, ptr @pm8001_stt, ptr @pm8001_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pm8001_pci_table, ptr @pm8001_pci_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pm8001_sht, ptr @pm8001_chips, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @pm8001_id, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @pm8001_alloc.__key, ptr @.str.25, ptr @pm8001_alloc.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @pm8001_alloc.__key.33, ptr @.str.34, ptr @pm8001_alloc.__key.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @init_completion.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @pm8001_transport_ops], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logging_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hba_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_stt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_table to i32), i32 1472, i32 1824, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_chips to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_go_44._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_ioremap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_ioremap._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_setup_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_request_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_init_ccb_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_init_ccb_tag._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_init_sas_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_init_sas_add._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_init_sas_add._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_get_phy_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_get_phy_settings_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_suspend._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_pci_resume._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_transport_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8001_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @pm8001_pci_driver) #10
  %0 = load ptr, ptr @pm8001_stt, align 4
  tail call void @sas_release_transport(ptr noundef %0) #10
  %1 = load ptr, ptr @pm8001_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_release_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #10
  store ptr %call, ptr @pm8001_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr @pm8001_id, align 4
  %call1 = tail call ptr @sas_domain_attach_transport(ptr noundef nonnull @pm8001_transport_ops) #10
  store ptr %call1, ptr @pm8001_stt, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_wq_crit_edge, label %if.end4

if.end.err_wq_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_wq

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pm8001_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_tp

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_tp:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @pm8001_stt, align 4
  tail call void @sas_release_transport(ptr noundef %0) #10
  br label %err_wq

err_wq:                                           ; preds = %err_tp, %if.end.err_wq_crit_edge
  %rc.0 = phi i32 [ %call5, %err_tp ], [ -12, %if.end.err_wq_crit_edge ]
  %1 = load ptr, ptr @pm8001_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %err_wq, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %rc.0, %err_wq ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %pci_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_reg) #10
  %0 = ptrtoint ptr %pci_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pci_reg, align 4, !annotation !204
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #13
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call1 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %pci_reg) #10
  %1 = ptrtoint ptr %pci_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pci_reg, align 4
  %or = or i32 %2, 343
  store i32 %or, ptr %pci_reg, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 4, i32 noundef %or) #10
  %call3 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_out_disable_crit_edge

if.end.err_out_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_disable

if.end6:                                          ; preds = %if.end
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 17592186044415) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.if.end10_crit_edge, label %if.then.i

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i:                                        ; preds = %if.end6
  %call.i11.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %if.then.i.if.end10_crit_edge, label %pci_go_44.exit

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

pci_go_44.exit:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  br label %err_out_regions

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %.sink = phi i64 [ 17592186044415, %if.end6.if.end10_crit_edge ], [ 4294967295, %if.then.i.if.end10_crit_edge ]
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #10
  %call11 = call ptr @scsi_host_alloc(ptr noundef nonnull @pm8001_sht, i32 noundef 4) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.err_out_regions_crit_edge, label %if.end14

if.end10.err_out_regions_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_regions

if.end14:                                         ; preds = %if.end10
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [11 x %struct.pm8001_chip_info], ptr @pm8001_chips, i32 0, i32 %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 420) #14
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.err_out_free_host_crit_edge, label %if.end18

if.end14.err_out_free_host_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free_host

if.end18:                                         ; preds = %if.end14
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %n_phy.i = getelementptr [11 x %struct.pm8001_chip_info], ptr @pm8001_chips, i32 0, i32 %4, i32 1
  %7 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_phy.i, align 4
  %9 = call ptr @memset(ptr %call7.i.i, i32 0, i32 420)
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #10
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  br i1 %11, label %if.end18.err_out_free_crit_edge, label %kcalloc.exit.thread.i, !prof !205

if.end18.err_out_free_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free

kcalloc.exit.thread.i:                            ; preds = %if.end18
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #15
  %tobool.not79.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not79.i, label %kcalloc.exit.thread.i.err_out_free_crit_edge, label %if.end7.i.i61.i

kcalloc.exit.thread.i.err_out_free_crit_edge:     ; preds = %kcalloc.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free

if.end7.i.i61.i:                                  ; preds = %kcalloc.exit.thread.i
  %call8.i.i60.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #15
  %tobool2.not.i = icmp eq ptr %call8.i.i60.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i61.i.exit_free2.i_crit_edge, label %if.end4.i

if.end7.i.i61.i.exit_free2.i_crit_edge:           ; preds = %if.end7.i.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_free2.i

if.end4.i:                                        ; preds = %if.end7.i.i61.i
  %sas_phy.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %sas_phy.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i.i, ptr %sas_phy.i, align 4
  %sas_port.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i60.i, ptr %sas_port.i, align 8
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 39792, i32 noundef 3520, i32 noundef 4) #15
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i, i32 0, i32 21
  %15 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i.i.i.i, ptr %lldd_ha.i, align 4
  %tobool7.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool7.not.i, label %exit_free1.i, label %if.end22

exit_free1.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call8.i.i60.i) #10
  br label %exit_free2.i

exit_free2.i:                                     ; preds = %exit_free1.i, %if.end7.i.i61.i.exit_free2.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %err_out_free

if.end22:                                         ; preds = %if.end4.i
  %16 = load ptr, ptr @pm8001_stt, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 12
  %17 = ptrtoint ptr %transportt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %transportt.i, align 4
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 21
  %18 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2048, ptr %max_id.i, align 4
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 22
  %19 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 8, ptr %max_lun.i, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 20
  %20 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %max_channel.i, align 8
  %21 = load i32, ptr @pm8001_id, align 4
  %unique_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 23
  %22 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %unique_id.i, align 8
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 24
  %23 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %max_cmd_len.i, align 4
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 26
  %24 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 508, ptr %can_queue.i, align 4
  %cmd_per_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call11, i32 0, i32 27
  %25 = ptrtoint ptr %cmd_per_lun.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 32, ptr %cmd_per_lun.i, align 8
  %26 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hostdata, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %driver_data.i.i, align 4
  %call25 = call fastcc ptr @pm8001_pci_alloc(ptr noundef %pdev, ptr noundef %ent, ptr noundef nonnull %call11)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end22.err_out_free_crit_edge, label %if.end28

if.end22.err_out_free_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free

if.end28:                                         ; preds = %if.end22
  %chip29 = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 35
  %29 = ptrtoint ptr %chip29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip29, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dispatch, align 4
  %chip_soft_rst = getelementptr inbounds %struct.pm8001_dispatch, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %chip_soft_rst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip_soft_rst, align 4
  %call30 = call i32 %34(ptr noundef nonnull %call25) #10
  %35 = ptrtoint ptr %chip29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip29, align 4
  %dispatch32 = getelementptr inbounds %struct.pm8001_chip_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dispatch32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dispatch32, align 4
  %chip_init = getelementptr inbounds %struct.pm8001_dispatch, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %chip_init to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_init, align 4
  %call33 = call i32 %40(ptr noundef nonnull %call25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end49, label %do.body36

do.body36:                                        ; preds = %if.end28
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 50
  %41 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %logging_level, align 4
  %and = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.body36.err_out_ha_free_crit_edge, label %do.end43, !prof !206

do.body36.err_out_ha_free_crit_edge:              ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_ha_free

do.end43:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call25, ptr noundef nonnull @.str.4, i32 noundef 1120, i32 noundef %call33) #13
  br label %err_out_ha_free

if.end49:                                         ; preds = %if.end28
  %call50 = call fastcc i32 @pm8001_init_ccb_tag(ptr noundef nonnull %call25, ptr noundef nonnull %call11, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call11, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.err_out_ha_free_crit_edge

if.end53.err_out_ha_free_crit_edge:               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_ha_free

if.end58:                                         ; preds = %if.end53
  %43 = ptrtoint ptr %chip29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip29, align 4
  %dispatch60 = getelementptr inbounds %struct.pm8001_chip_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dispatch60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dispatch60, align 4
  %interrupt_enable = getelementptr inbounds %struct.pm8001_dispatch, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %interrupt_enable, align 4
  call void %48(ptr noundef nonnull %call25, i8 noundef zeroext 0) #10
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 34
  %49 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not = icmp eq i32 %50, 0
  br i1 %cmp.not, label %if.end58.if.end68_crit_edge, label %for.cond.preheader

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

for.cond.preheader:                               ; preds = %if.end58
  %number_of_intr = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 47
  %51 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %number_of_intr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp62186 = icmp sgt i32 %52, 1
  br i1 %cmp62186, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0187 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %53 = ptrtoint ptr %chip29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip29, align 4
  %dispatch65 = getelementptr inbounds %struct.pm8001_chip_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dispatch65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dispatch65, align 4
  %interrupt_enable66 = getelementptr inbounds %struct.pm8001_dispatch, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %interrupt_enable66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %interrupt_enable66, align 4
  call void %58(ptr noundef %call25, i8 noundef zeroext %i.0187) #10
  %inc = add i8 %i.0187, 1
  %conv = zext i8 %inc to i32
  %59 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %number_of_intr, align 8
  %cmp62 = icmp sgt i32 %60, %conv
  br i1 %cmp62, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call67 = call i32 @pm80xx_set_thermal_config(ptr noundef %call25) #10
  br label %if.end68

if.end68:                                         ; preds = %for.end, %if.end58.if.end68_crit_edge
  call fastcc void @pm8001_init_sas_add(ptr noundef %call25)
  %call69 = call fastcc i32 @pm8001_configure_phy_settings(ptr noundef %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_out_shost_crit_edge

if.end68.err_out_shost_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_shost

if.end72:                                         ; preds = %if.end68
  call fastcc void @pm8001_post_sas_ha_init(ptr noundef nonnull %call11, ptr noundef %arrayidx)
  %61 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hostdata, align 8
  %call75 = call i32 @sas_register_ha(ptr noundef %62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end99, label %do.body78

do.body78:                                        ; preds = %if.end72
  %logging_level79 = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 50
  %63 = ptrtoint ptr %logging_level79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %logging_level79, align 4
  %and80 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body78.err_out_shost_crit_edge, label %do.end91, !prof !206

do.body78.err_out_shost_crit_edge:                ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_shost

do.end91:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %call25, ptr noundef nonnull @.str.4, i32 noundef 1150, i32 noundef %call75) #13
  br label %err_out_shost

if.end99:                                         ; preds = %if.end72
  %list = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 1
  %65 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hba_list, i32 0, i32 1), align 4
  %call.i.i169 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %65, ptr noundef nonnull @hba_list) #10
  br i1 %call.i.i169, label %if.end.i.i, label %if.end99.list_add_tail.exit_crit_edge

if.end99.list_add_tail.exit_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @hba_list, i32 0, i32 1), align 4
  %66 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @hba_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list, ptr %65, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end99.list_add_tail.exit_crit_edge
  %flags = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 2
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %flags, align 8
  %shost100 = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 33
  %70 = ptrtoint ptr %shost100 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shost100, align 4
  call void @scsi_scan_host(ptr noundef %71) #10
  br label %cleanup

err_out_shost:                                    ; preds = %do.end91, %do.body78.err_out_shost_crit_edge, %if.end68.err_out_shost_crit_edge
  %rc.0 = phi i32 [ %call69, %if.end68.err_out_shost_crit_edge ], [ %call75, %do.end91 ], [ %call75, %do.body78.err_out_shost_crit_edge ]
  %shost101 = getelementptr inbounds %struct.pm8001_hba_info, ptr %call25, i32 0, i32 33
  %72 = ptrtoint ptr %shost101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %shost101, align 4
  call void @scsi_remove_host(ptr noundef %73) #10
  br label %err_out_ha_free

err_out_ha_free:                                  ; preds = %err_out_shost, %if.end53.err_out_ha_free_crit_edge, %do.end43, %do.body36.err_out_ha_free_crit_edge
  %rc.1 = phi i32 [ %call33, %do.end43 ], [ %call33, %do.body36.err_out_ha_free_crit_edge ], [ %call.i, %if.end53.err_out_ha_free_crit_edge ], [ %rc.0, %err_out_shost ]
  call fastcc void @pm8001_free(ptr noundef %call25)
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_ha_free, %if.end22.err_out_free_crit_edge, %exit_free2.i, %kcalloc.exit.thread.i.err_out_free_crit_edge, %if.end18.err_out_free_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_out_ha_free ], [ -12, %if.end22.err_out_free_crit_edge ], [ -12, %exit_free2.i ], [ -12, %if.end18.err_out_free_crit_edge ], [ -12, %kcalloc.exit.thread.i.err_out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %err_out_free_host

err_out_free_host:                                ; preds = %err_out_free, %if.end14.err_out_free_host_crit_edge
  %rc.3 = phi i32 [ %rc.2, %err_out_free ], [ -12, %if.end14.err_out_free_host_crit_edge ]
  call void @scsi_host_put(ptr noundef nonnull %call11) #10
  br label %err_out_regions

err_out_regions:                                  ; preds = %err_out_free_host, %if.end10.err_out_regions_crit_edge, %pci_go_44.exit
  %rc.4 = phi i32 [ %call.i11.i, %pci_go_44.exit ], [ %rc.3, %err_out_free_host ], [ -12, %if.end10.err_out_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_regions, %if.end.err_out_disable_crit_edge
  %rc.5 = phi i32 [ %call3, %if.end.err_out_disable_crit_edge ], [ %rc.4, %err_out_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable, %list_add_tail.exit, %if.end49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %call, %entry.cleanup_crit_edge ], [ %rc.5, %err_out_disable ], [ %call50, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_reg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8001_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %call1 = tail call i32 @sas_unregister_ha(ptr noundef %1) #10
  %shost = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 4
  tail call void @sas_remove_host(ptr noundef %5) #10
  %list = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 35
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dispatch, align 4
  %interrupt_disable = getelementptr inbounds %struct.pm8001_dispatch, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_disable, align 4
  tail call void %19(ptr noundef %3, i8 noundef zeroext -1) #10
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %dispatch3 = getelementptr inbounds %struct.pm8001_chip_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dispatch3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dispatch3, align 4
  %chip_soft_rst = getelementptr inbounds %struct.pm8001_dispatch, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %chip_soft_rst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_soft_rst, align 4
  %call4 = tail call i32 %25(ptr noundef %3) #10
  %number_of_intr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 47
  %26 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number_of_intr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp81 = icmp sgt i32 %27, 0
  br i1 %cmp81, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end14_crit_edge

list_del.exit.for.end14_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp883 = icmp sgt i32 %29, 0
  br i1 %cmp883, label %for.cond6.preheader.for.body9_crit_edge, label %for.cond6.preheader.for.end14_crit_edge

for.cond6.preheader.for.end14_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

for.cond6.preheader.for.body9_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %list_del.exit.for.body_crit_edge ]
  %call5 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %i.082) #10
  tail call void @synchronize_irq(i32 noundef %call5) #10
  %inc = add nuw nsw i32 %i.082, 1
  %28 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number_of_intr, align 8
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond6.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond6.preheader.for.body9_crit_edge
  %i.184 = phi i32 [ %inc13, %for.body9.for.body9_crit_edge ], [ 0, %for.cond6.preheader.for.body9_crit_edge ]
  %call10 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %i.184) #10
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 56, i32 %i.184
  %call11 = tail call ptr @free_irq(i32 noundef %call10, ptr noundef %arrayidx) #10
  %inc13 = add nuw nsw i32 %i.184, 1
  %30 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number_of_intr, align 8
  %cmp8 = icmp slt i32 %inc13, %31
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end14_crit_edge

for.body9.for.end14_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.end14:                                        ; preds = %for.body9.for.end14_crit_edge, %for.cond6.preheader.for.end14_crit_edge, %list_del.exit.for.end14_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #10
  %msix_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 21
  %32 = ptrtoint ptr %msix_cap to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %msix_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %for.end14.if.then_crit_edge, label %lor.lhs.false

for.end14.if.then_crit_edge:                      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %for.end14
  %call15 = tail call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false17

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 34
  %34 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp18 = icmp eq i32 %35, 0
  br i1 %cmp18, label %lor.lhs.false17.if.then_crit_edge, label %lor.lhs.false17.for.body22_crit_edge

lor.lhs.false17.for.body22_crit_edge:             ; preds = %lor.lhs.false17
  br label %for.body22

lor.lhs.false17.if.then_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false17.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %for.end14.if.then_crit_edge
  %tasklet = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 49
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  br label %if.end

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %lor.lhs.false17.for.body22_crit_edge
  %j.085 = phi i32 [ %inc26, %for.body22.for.body22_crit_edge ], [ 0, %lor.lhs.false17.for.body22_crit_edge ]
  %arrayidx24 = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 49, i32 %j.085
  tail call void @tasklet_kill(ptr noundef %arrayidx24) #10
  %inc26 = add nuw nsw i32 %j.085, 1
  %exitcond.not = icmp eq i32 %inc26, 64
  br i1 %exitcond.not, label %for.body22.if.end_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

for.body22.if.end_crit_edge:                      ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body22.if.end_crit_edge, %if.then
  %36 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shost, align 4
  tail call void @scsi_host_put(ptr noundef %37) #10
  %ccb_count = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 46
  %38 = ptrtoint ptr %ccb_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ccb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp3086.not = icmp eq i32 %39, 0
  br i1 %cmp3086.not, label %if.end.for.end38_crit_edge, label %for.body31.lr.ph

if.end.for.end38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body31.lr.ph:                                 ; preds = %if.end
  %pdev32 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 5
  %ccb_info = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 45
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %i.287 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc37, %for.body31.for.body31_crit_edge ]
  %40 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev32, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ccb_info, align 8
  %buf_prd = getelementptr %struct.pm8001_ccb_info, ptr %43, i32 %i.287, i32 5
  %44 = ptrtoint ptr %buf_prd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf_prd, align 4
  %ccb_dma_handle = getelementptr %struct.pm8001_ccb_info, ptr %43, i32 %i.287, i32 3
  %46 = ptrtoint ptr %ccb_dma_handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ccb_dma_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 8448, ptr noundef %45, i32 noundef %47, i32 noundef 0) #10
  %inc37 = add nuw i32 %i.287, 1
  %48 = ptrtoint ptr %ccb_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ccb_count, align 4
  %cmp30 = icmp ult i32 %inc37, %49
  br i1 %cmp30, label %for.body31.for.body31_crit_edge, label %for.body31.for.end38_crit_edge

for.body31.for.end38_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31

for.end38:                                        ; preds = %for.body31.for.end38_crit_edge, %if.end.for.end38_crit_edge
  %ccb_info39 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 45
  %50 = ptrtoint ptr %ccb_info39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ccb_info39, align 8
  tail call void @kfree(ptr noundef %51) #10
  %devices = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 44
  %52 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %devices, align 4
  tail call void @kfree(ptr noundef %53) #10
  tail call fastcc void @pm8001_free(ptr noundef %3)
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 17
  %54 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sas_phy, align 4
  tail call void @kfree(ptr noundef %55) #10
  %sas_port = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  %56 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sas_port, align 4
  tail call void @kfree(ptr noundef %57) #10
  tail call void @kfree(ptr noundef %1) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pm8001_pci_alloc(ptr noundef %pdev, ptr nocapture noundef readonly %ent, ptr noundef %shost) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev2 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev2, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 34
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %chip_id, align 8
  %arrayidx = getelementptr [11 x %struct.pm8001_chip_info], ptr @pm8001_chips, i32 0, i32 %7
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 35
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %chip, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 42
  %12 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %irq4, align 4
  %sas = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 32
  %13 = ptrtoint ptr %sas to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %sas, align 8
  %shost5 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 33
  %14 = ptrtoint ptr %shost5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %shost, ptr %shost5, align 4
  %15 = load i32, ptr @pm8001_id, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @pm8001_id, align 4
  %id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 41
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id, align 8
  %17 = load i32, ptr @logging_level, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 50
  %18 = ptrtoint ptr %logging_level to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %logging_level, align 4
  %non_fatal_count = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 58
  %19 = ptrtoint ptr %non_fatal_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %non_fatal_count, align 8
  %20 = load i32, ptr @link_rate, align 4
  %21 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %22 = icmp ult i32 %21, 15
  br i1 %22, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw nsw i32 %20, 8
  %link_rate = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 51
  %23 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %link_rate, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end
  %link_rate8 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 51
  %24 = ptrtoint ptr %link_rate8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3840, ptr %link_rate8, align 8
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else.if.end19_crit_edge, label %do.end, !prof !206

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef 529) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.else.if.end19_crit_edge, %if.then7
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 8
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef %26)
  %27 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp25.not = icmp eq i32 %28, 0
  %spec.select = select i1 %cmp25.not, i32 64, i32 128
  %29 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 43
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select, ptr %29, align 8
  %msix_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 21
  %31 = ptrtoint ptr %msix_cap to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msix_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool30.not = icmp eq i8 %32, 0
  br i1 %tobool30.not, label %if.end19.if.then36_crit_edge, label %lor.lhs.false

if.end19.if.then36_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end19
  %call31 = tail call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false33

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp35 = icmp eq i32 %34, 0
  br i1 %cmp35, label %lor.lhs.false33.if.then36_crit_edge, label %lor.lhs.false33.for.body_crit_edge

lor.lhs.false33.for.body_crit_edge:               ; preds = %lor.lhs.false33
  br label %for.body

lor.lhs.false33.if.then36_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false33.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %if.end19.if.then36_crit_edge
  %tasklet = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 49
  %irq_vector = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 56
  %35 = ptrtoint ptr %irq_vector to i32
  tail call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @pm8001_tasklet, i32 noundef %35) #10
  br label %if.end46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.lhs.false33.for.body_crit_edge
  %j.0111 = phi i32 [ %inc45, %for.body.for.body_crit_edge ], [ 0, %lor.lhs.false33.for.body_crit_edge ]
  %arrayidx42 = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 49, i32 %j.0111
  %arrayidx44 = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 56, i32 %j.0111
  %36 = ptrtoint ptr %arrayidx44 to i32
  tail call void @tasklet_init(ptr noundef %arrayidx42, ptr noundef nonnull @pm8001_tasklet, i32 noundef %36) #10
  %inc45 = add nuw nsw i32 %j.0111, 1
  %exitcond.not = icmp eq i32 %inc45, 64
  br i1 %exitcond.not, label %for.body.if.end46_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end46:                                         ; preds = %for.body.if.end46_crit_edge, %if.then36
  %37 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end46
  %bar.0135.i = phi i32 [ 0, %if.end46 ], [ %inc86.i, %for.inc.i.for.body.i_crit_edge ]
  %logicalBar.0133.i = phi i32 [ 0, %if.end46 ], [ %logicalBar.1.i, %for.inc.i.for.body.i_crit_edge ]
  %39 = zext i32 %bar.0135.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bar.0135.i, label %if.end.i [
    i32 1, label %for.body.i.for.inc.i_crit_edge
    i32 3, label %for.body.i.for.inc.i_crit_edge127
  ]

for.body.i.for.inc.i_crit_edge127:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %38, i32 0, i32 47, i32 %bar.0135.i
  %flags.i = getelementptr %struct.pci_dev, ptr %38, i32 0, i32 47, i32 %bar.0135.i, i32 3
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 8
  %conv.i = zext i32 %43 to i64
  %arrayidx7.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 7, i32 %logicalBar.0133.i
  %membase.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 7, i32 %logicalBar.0133.i, i32 1
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv.i, ptr %membase.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %38, i32 0, i32 47, i32 %bar.0135.i, i32 1
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp10.i = icmp eq i32 %46, 0
  br i1 %cmp10.i, label %if.then4.i.cond.end.i_crit_edge, label %cond.false.i

if.then4.i.cond.end.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %46, 1
  %add.i = sub i32 %sub.i, %48
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then4.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.then4.i.cond.end.i_crit_edge ]
  %memsize.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 7, i32 %logicalBar.0133.i, i32 2
  %49 = ptrtoint ptr %memsize.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i, ptr %memsize.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %43, i32 noundef %cond.i) #10
  %50 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %arrayidx7.i, align 8
  %tobool32.not.i = icmp eq ptr %call.i, null
  %51 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %logging_level, align 4
  %and34.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool32.not.i, label %do.body.i, label %do.body45.i

do.body.i:                                        ; preds = %cond.end.i
  br i1 %tobool35.not.i, label %do.body.i.failed_pci_alloc_crit_edge, label %do.end.i, !prof !206

do.body.i.failed_pci_alloc_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_pci_alloc

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 475, i32 noundef %bar.0135.i, i32 noundef %logicalBar.0133.i) #13
  br label %failed_pci_alloc

do.body45.i:                                      ; preds = %cond.end.i
  br i1 %tobool35.not.i, label %do.body45.i.if.end85.i_crit_edge, label %do.end58.i, !prof !206

do.body45.i.if.end85.i_crit_edge:                 ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

do.end58.i:                                       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %membase.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %membase.i, align 8
  %55 = ptrtoint ptr %call.i to i32
  %conv68.i = zext i32 %55 to i64
  %56 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %memsize.i, align 8
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 483, i64 noundef %54, i64 noundef %conv68.i, i32 noundef %57) #13
  br label %if.end85.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx77.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 7, i32 %logicalBar.0133.i
  %membase78.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 7, i32 %logicalBar.0133.i, i32 1
  %58 = ptrtoint ptr %membase78.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %membase78.i, align 8
  %memsize81.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 7, i32 %logicalBar.0133.i, i32 2
  %59 = ptrtoint ptr %memsize81.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %memsize81.i, align 8
  %60 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx77.i, align 8
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else.i, %do.end58.i, %do.body45.i.if.end85.i_crit_edge
  %inc.i = add i32 %logicalBar.0133.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end85.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge127
  %logicalBar.1.i = phi i32 [ %logicalBar.0133.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end85.i ], [ %logicalBar.0133.i, %for.body.i.for.inc.i_crit_edge127 ]
  %inc86.i = add nuw nsw i32 %bar.0135.i, 1
  %exitcond.not.i = icmp eq i32 %inc86.i, 6
  br i1 %exitcond.not.i, label %if.end50, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end50:                                         ; preds = %for.inc.i
  %lock.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @pm8001_alloc.__key, i16 noundef signext 3) #10
  %bitmap_lock.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %bitmap_lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @pm8001_alloc.__key.26, i16 noundef signext 3) #10
  %61 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %logging_level, align 4
  %and.i96 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %if.end50.do.end13.i_crit_edge, label %do.end10.i, !prof !206

if.end50.do.end13.i_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

do.end10.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %n_phy.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_phy.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef 278, i32 noundef %66) #13
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end10.i, %if.end50.do.end13.i_crit_edge
  %67 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev1, align 4
  %call.i.i = tail call zeroext i8 @pci_find_capability(ptr noundef %68, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end13.i
  %69 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i.i = icmp eq i32 %70, 0
  %..i.i.i = select i1 %cmp.i.i.i, i32 1, i32 64
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %71 = load volatile i32, ptr @__num_online_cpus, align 4
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 %..i.i.i) #10
  %73 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev1, align 4
  %call.i.i.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %74, i32 noundef %72, i32 noundef %72, i32 noundef 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i, label %do.body17.i, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then.i.i
  %75 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 %72) #10
  %number_of_intr12.i.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 47
  %76 = ptrtoint ptr %number_of_intr12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %number_of_intr12.i.i.i, align 8
  %max_q_num.i.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 60
  %77 = ptrtoint ptr %max_q_num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %max_q_num.i.i.i, align 8
  %78 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %logging_level, align 4
  %and.i.i.i = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i.if.end38.i_crit_edge, label %do.end.i.i.i, !prof !206

if.end5.i.i.i.if.end38.i_crit_edge:               ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

do.end.i.i.i:                                     ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call19.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef 961, i32 noundef %call.i.i.i.i, i32 noundef %75) #13
  br label %if.end38.i

do.body.i.i:                                      ; preds = %do.end13.i
  %80 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %logging_level, align 4
  %and.i.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.if.end38.i_crit_edge, label %do.end.i.i, !prof !206

do.body.i.i.if.end38.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef 1015) #13
  br label %if.end38.i

do.body17.i:                                      ; preds = %if.then.i.i
  %82 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %logging_level, align 4
  %and19.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body17.i.failed_pci_alloc_crit_edge, label %do.end30.i, !prof !206

do.body17.i.failed_pci_alloc_crit_edge:           ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_pci_alloc

do.end30.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef 284, i32 noundef %call.i.i.i.i) #13
  br label %failed_pci_alloc

if.end38.i:                                       ; preds = %do.end.i.i, %do.body.i.i.if.end38.i_crit_edge, %do.end.i.i.i, %if.end5.i.i.i.if.end38.i_crit_edge
  %call39.i = tail call fastcc i32 @pm8001_request_irq(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.failed_pci_alloc_crit_edge

if.end38.i.failed_pci_alloc_crit_edge:            ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_pci_alloc

if.end42.i:                                       ; preds = %if.end38.i
  %max_q_num.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 60
  %84 = ptrtoint ptr %max_q_num.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_q_num.i, align 8
  %ib_offset43.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 61
  %86 = ptrtoint ptr %ib_offset43.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5, ptr %ib_offset43.i, align 4
  %add.i98 = add i32 %85, 5
  %ci_offset44.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 63
  %87 = ptrtoint ptr %ci_offset44.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i98, ptr %ci_offset44.i, align 4
  %add45.i = add i32 %add.i98, %85
  %ob_offset46.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 62
  %88 = ptrtoint ptr %ob_offset46.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add45.i, ptr %ob_offset46.i, align 8
  %add47.i = add i32 %add45.i, %85
  %pi_offset48.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 64
  %89 = ptrtoint ptr %pi_offset48.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add47.i, ptr %pi_offset48.i, align 8
  %add49.i = add i32 %add47.i, %85
  %max_memcnt.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 65
  %90 = ptrtoint ptr %max_memcnt.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add49.i, ptr %max_memcnt.i, align 4
  %91 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chip, align 4
  %n_phy51543.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %n_phy51543.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_phy51543.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp544.not.i = icmp eq i32 %94, 0
  br i1 %cmp544.not.i, label %if.end42.i.for.end.i_crit_edge, label %if.end42.i.for.body.i100_crit_edge

if.end42.i.for.body.i100_crit_edge:               ; preds = %if.end42.i
  br label %for.body.i100

if.end42.i.for.end.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %if.end42.i.for.body.i100_crit_edge
  %i.0545.i = phi i32 [ %inc.i99, %for.body.i100.for.body.i100_crit_edge ], [ 0, %if.end42.i.for.body.i100_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i
  %phy_state.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 11
  %95 = ptrtoint ptr %phy_state.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %phy_state.i.i, align 1
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %3, ptr %arrayidx.i.i, align 8
  %97 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip, align 4
  %n_phy.i.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_phy.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %i.0545.i)
  %cmp.i.i = icmp ugt i32 %100, %i.0545.i
  %cond.i.i = zext i1 %cmp.i.i to i32
  %enabled.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 5
  %101 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond.i.i, ptr %enabled.i.i, align 4
  %class.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 7
  %102 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %class.i.i, align 4
  %iproto.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 8
  %103 = ptrtoint ptr %iproto.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 14, ptr %iproto.i.i, align 4
  %tproto.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 9
  %104 = ptrtoint ptr %tproto.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %tproto.i.i, align 4
  %type.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 10
  %105 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %type.i.i, align 4
  %role.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 11
  %106 = ptrtoint ptr %role.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 128, ptr %role.i.i, align 4
  %oob_mode.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 12
  %107 = ptrtoint ptr %oob_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %oob_mode.i.i, align 4
  %linkrate.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 13
  %108 = ptrtoint ptr %linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %linkrate.i.i, align 4
  %id.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 6
  %109 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %i.0545.i, ptr %id.i.i, align 4
  %dev_sas_addr.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 5
  %sas_addr.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 14
  %110 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %dev_sas_addr.i.i, ptr %sas_addr.i.i, align 4
  %frame_rcvd.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 9
  %frame_rcvd5.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 17
  %111 = ptrtoint ptr %frame_rcvd5.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %frame_rcvd.i.i, ptr %frame_rcvd5.i.i, align 4
  %112 = ptrtoint ptr %shost5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shost5, align 4
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %113, i32 0, i32 53
  %ha.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 23
  %114 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %hostdata.i.i, ptr %ha.i.i, align 4
  %lldd_phy.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.0545.i, i32 2, i32 24
  %115 = ptrtoint ptr %lldd_phy.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %arrayidx.i.i, ptr %lldd_phy.i.i, align 4
  %wide_port_phymap.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 40, i32 %i.0545.i, i32 2
  %116 = ptrtoint ptr %wide_port_phymap.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %wide_port_phymap.i, align 2
  %port_attached.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 40, i32 %i.0545.i, i32 1
  %117 = ptrtoint ptr %port_attached.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %port_attached.i, align 8
  %port_state.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 40, i32 %i.0545.i, i32 3
  %118 = ptrtoint ptr %port_state.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %port_state.i, align 4
  %list.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 40, i32 %i.0545.i, i32 5
  %119 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 40, i32 %i.0545.i, i32 5, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %list.i, ptr %prev.i.i, align 4
  %inc.i99 = add nuw i32 %i.0545.i, 1
  %121 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chip, align 4
  %n_phy51.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %n_phy51.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %n_phy51.i, align 4
  %cmp.i = icmp ult i32 %inc.i99, %124
  br i1 %cmp.i, label %for.body.i100.for.body.i100_crit_edge, label %for.body.i100.for.end.i_crit_edge

for.body.i100.for.end.i_crit_edge:                ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i100

for.end.i:                                        ; preds = %for.body.i100.for.end.i_crit_edge, %if.end42.i.for.end.i_crit_edge
  %num_elements.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 5
  %125 = ptrtoint ptr %num_elements.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %num_elements.i, align 4
  %element_size.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 6
  %126 = ptrtoint ptr %element_size.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 131072, ptr %element_size.i, align 4
  %total_len.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 4
  %127 = ptrtoint ptr %total_len.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 131072, ptr %total_len.i, align 4
  %alignment.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 0, i32 7
  %128 = ptrtoint ptr %alignment.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 32, ptr %alignment.i, align 4
  %num_elements71.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 1, i32 5
  %129 = ptrtoint ptr %num_elements71.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %num_elements71.i, align 4
  %element_size75.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 1, i32 6
  %130 = ptrtoint ptr %element_size75.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 131072, ptr %element_size75.i, align 4
  %total_len79.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 1, i32 4
  %131 = ptrtoint ptr %total_len79.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 131072, ptr %total_len79.i, align 4
  %alignment83.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 1, i32 7
  %132 = ptrtoint ptr %alignment83.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 32, ptr %alignment83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp85546.i = icmp sgt i32 %85, 0
  br i1 %cmp85546.i, label %for.end.i.for.body86.i_crit_edge, label %for.end.i.for.end233.i_crit_edge

for.end.i.for.end233.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end233.i

for.end.i.for.body86.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body86.i

for.body86.i:                                     ; preds = %for.body86.i.for.body86.i_crit_edge, %for.end.i.for.body86.i_crit_edge
  %i.1547.i = phi i32 [ %inc156.i, %for.body86.i.for.body86.i_crit_edge ], [ 0, %for.end.i.for.body86.i_crit_edge ]
  %iq_lock.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 28, i32 %i.1547.i, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %iq_lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @pm8001_alloc.__key.33, i16 noundef signext 3) #10
  %add94.i = add i32 %i.1547.i, %add.i98
  %num_elements96.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add94.i, i32 5
  %133 = ptrtoint ptr %num_elements96.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %num_elements96.i, align 4
  %element_size101.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add94.i, i32 6
  %134 = ptrtoint ptr %element_size101.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 4, ptr %element_size101.i, align 4
  %total_len106.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add94.i, i32 4
  %135 = ptrtoint ptr %total_len106.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4, ptr %total_len106.i, align 4
  %alignment111.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add94.i, i32 7
  %136 = ptrtoint ptr %alignment111.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 4, ptr %alignment111.i, align 4
  %137 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp112.not.i = icmp eq i32 %138, 0
  %add136.i = add nuw i32 %i.1547.i, 5
  %num_elements138.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add136.i, i32 5
  %139 = ptrtoint ptr %num_elements138.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1024, ptr %num_elements138.i, align 4
  %element_size143.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add136.i, i32 6
  %..i = select i1 %cmp112.not.i, i32 64, i32 128
  %.567.i = select i1 %cmp112.not.i, i32 65536, i32 131072
  %140 = ptrtoint ptr %element_size143.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %..i, ptr %element_size143.i, align 4
  %total_len128.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add136.i, i32 4
  %141 = ptrtoint ptr %total_len128.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %.567.i, ptr %total_len128.i, align 4
  %alignment133.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add136.i, i32 7
  %142 = ptrtoint ptr %alignment133.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %..i, ptr %alignment133.i, align 4
  %inc156.i = add nuw nsw i32 %i.1547.i, 1
  %exitcond.not.i101 = icmp eq i32 %inc156.i, %85
  br i1 %exitcond.not.i101, label %for.body86.i.for.body160.i_crit_edge, label %for.body86.i.for.body86.i_crit_edge

for.body86.i.for.body86.i_crit_edge:              ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body86.i

for.body86.i.for.body160.i_crit_edge:             ; preds = %for.body86.i
  br label %for.body160.i

for.body160.i:                                    ; preds = %for.body160.i.for.body160.i_crit_edge, %for.body86.i.for.body160.i_crit_edge
  %i.2550.i = phi i32 [ %inc232.i, %for.body160.i.for.body160.i_crit_edge ], [ 0, %for.body86.i.for.body160.i_crit_edge ]
  %oq_lock.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 29, i32 %i.2550.i, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %oq_lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @pm8001_alloc.__key.35, i16 noundef signext 3) #10
  %add168.i = add i32 %i.2550.i, %add47.i
  %num_elements170.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add168.i, i32 5
  %143 = ptrtoint ptr %num_elements170.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %num_elements170.i, align 4
  %element_size175.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add168.i, i32 6
  %144 = ptrtoint ptr %element_size175.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 4, ptr %element_size175.i, align 4
  %total_len180.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add168.i, i32 4
  %145 = ptrtoint ptr %total_len180.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %total_len180.i, align 4
  %alignment185.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add168.i, i32 7
  %146 = ptrtoint ptr %alignment185.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 4, ptr %alignment185.i, align 4
  %147 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp187.not.i = icmp eq i32 %148, 0
  %add212.i = add i32 %i.2550.i, %add45.i
  %num_elements214.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add212.i, i32 5
  %149 = ptrtoint ptr %num_elements214.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1024, ptr %num_elements214.i, align 4
  %element_size219.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add212.i, i32 6
  %.568.i = select i1 %cmp187.not.i, i32 64, i32 128
  %.569.i = select i1 %cmp187.not.i, i32 65536, i32 131072
  %150 = ptrtoint ptr %element_size219.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %.568.i, ptr %element_size219.i, align 4
  %total_len203.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add212.i, i32 4
  %151 = ptrtoint ptr %total_len203.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %.569.i, ptr %total_len203.i, align 4
  %alignment208.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %add212.i, i32 7
  %152 = ptrtoint ptr %alignment208.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %.568.i, ptr %alignment208.i, align 4
  %inc232.i = add nuw nsw i32 %i.2550.i, 1
  %exitcond559.not.i = icmp eq i32 %inc232.i, %85
  br i1 %exitcond559.not.i, label %for.body160.i.for.end233.i_crit_edge, label %for.body160.i.for.body160.i_crit_edge

for.body160.i.for.body160.i_crit_edge:            ; preds = %for.body160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body160.i

for.body160.i.for.end233.i_crit_edge:             ; preds = %for.body160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end233.i

for.end233.i:                                     ; preds = %for.body160.i.for.end233.i_crit_edge, %for.end.i.for.end233.i_crit_edge
  %num_elements237.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 2, i32 5
  %153 = ptrtoint ptr %num_elements237.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %num_elements237.i, align 4
  %element_size241.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 2, i32 6
  %154 = ptrtoint ptr %element_size241.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 4096, ptr %element_size241.i, align 4
  %total_len245.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 2, i32 4
  %155 = ptrtoint ptr %total_len245.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 4096, ptr %total_len245.i, align 4
  %total_len249.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 3, i32 4
  %156 = ptrtoint ptr %total_len249.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4096, ptr %total_len249.i, align 4
  %num_elements253.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 4, i32 5
  %157 = ptrtoint ptr %num_elements253.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %num_elements253.i, align 4
  %total_len257.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 4, i32 4
  %158 = ptrtoint ptr %total_len257.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 65536, ptr %total_len257.i, align 4
  %element_size261.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 4, i32 6
  %159 = ptrtoint ptr %element_size261.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 65536, ptr %element_size261.i, align 4
  %alignment265.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 4, i32 7
  %160 = ptrtoint ptr %alignment265.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 65536, ptr %alignment265.i, align 4
  %161 = ptrtoint ptr %max_memcnt.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %max_memcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp268552.not.i = icmp eq i32 %162, 0
  br i1 %cmp268552.not.i, label %for.end233.i.for.end303.i_crit_edge, label %for.end233.i.for.body269.i_crit_edge

for.end233.i.for.body269.i_crit_edge:             ; preds = %for.end233.i
  br label %for.body269.i

for.end233.i.for.end303.i_crit_edge:              ; preds = %for.end233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end303.i

for.body269.i:                                    ; preds = %for.inc301.i.for.body269.i_crit_edge, %for.end233.i.for.body269.i_crit_edge
  %i.3553.i = phi i32 [ %inc302.i, %for.inc301.i.for.body269.i_crit_edge ], [ 0, %for.end233.i.for.body269.i_crit_edge ]
  %arrayidx273.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.3553.i
  %163 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pdev1, align 4
  %phys_addr.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.3553.i, i32 1
  %phys_addr_hi.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.3553.i, i32 2
  %phys_addr_lo.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.3553.i, i32 3
  %total_len274.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.3553.i, i32 4
  %165 = ptrtoint ptr %total_len274.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %total_len274.i, align 4
  %alignment275.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.3553.i, i32 7
  %167 = ptrtoint ptr %alignment275.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %alignment275.i, align 4
  %call276.i = tail call i32 @pm8001_mem_alloc(ptr noundef %164, ptr noundef %arrayidx273.i, ptr noundef %phys_addr.i, ptr noundef %phys_addr_hi.i, ptr noundef %phys_addr_lo.i, i32 noundef %166, i32 noundef %168) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276.i)
  %cmp277.not.i = icmp eq i32 %call276.i, 0
  br i1 %cmp277.not.i, label %for.inc301.i, label %do.body279.i

do.body279.i:                                     ; preds = %for.body269.i
  %169 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %logging_level, align 4
  %and281.i = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281.i)
  %tobool282.not.i = icmp eq i32 %and281.i, 0
  br i1 %tobool282.not.i, label %do.body279.i.failed_pci_alloc_crit_edge, label %do.end292.i, !prof !206

do.body279.i.failed_pci_alloc_crit_edge:          ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_pci_alloc

do.end292.i:                                      ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #12
  %call296.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef 403, i32 noundef %i.3553.i) #13
  br label %failed_pci_alloc

for.inc301.i:                                     ; preds = %for.body269.i
  %inc302.i = add nuw i32 %i.3553.i, 1
  %171 = ptrtoint ptr %max_memcnt.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %max_memcnt.i, align 4
  %cmp268.i = icmp ult i32 %inc302.i, %172
  br i1 %cmp268.i, label %for.inc301.i.for.body269.i_crit_edge, label %for.inc301.i.for.end303.i_crit_edge

for.inc301.i.for.end303.i_crit_edge:              ; preds = %for.inc301.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end303.i

for.inc301.i.for.body269.i_crit_edge:             ; preds = %for.inc301.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body269.i

for.end303.i:                                     ; preds = %for.inc301.i.for.end303.i_crit_edge, %for.end233.i.for.end303.i_crit_edge
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3520, i32 noundef 4) #15
  %devices.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 44
  %173 = ptrtoint ptr %devices.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call1.i.i.i.i, ptr %devices.i, align 4
  %tobool306.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool306.not.i, label %for.cond323.preheader.i, label %for.end303.i.for.body311.i_crit_edge

for.end303.i.for.body311.i_crit_edge:             ; preds = %for.end303.i
  br label %for.body311.i

for.cond323.preheader.i:                          ; preds = %for.end303.i
  %174 = ptrtoint ptr %max_memcnt.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %max_memcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp325555.not.i = icmp eq i32 %175, 0
  br i1 %cmp325555.not.i, label %for.cond323.preheader.i.failed_pci_alloc_crit_edge, label %for.cond323.preheader.i.for.body326.i_crit_edge

for.cond323.preheader.i.for.body326.i_crit_edge:  ; preds = %for.cond323.preheader.i
  br label %for.body326.i

for.cond323.preheader.i.failed_pci_alloc_crit_edge: ; preds = %for.cond323.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_pci_alloc

for.body311.i:                                    ; preds = %for.body311.i.for.body311.i_crit_edge, %for.end303.i.for.body311.i_crit_edge
  %i.4554.i = phi i32 [ %inc321.i, %for.body311.i.for.body311.i_crit_edge ], [ 0, %for.end303.i.for.body311.i_crit_edge ]
  %176 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %devices.i, align 4
  %arrayidx313.i = getelementptr %struct.pm8001_device, ptr %177, i32 %i.4554.i
  %178 = ptrtoint ptr %arrayidx313.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %arrayidx313.i, align 4
  %179 = load ptr, ptr %devices.i, align 4
  %id.i = getelementptr %struct.pm8001_device, ptr %179, i32 %i.4554.i, i32 3
  %180 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %i.4554.i, ptr %id.i, align 4
  %181 = load ptr, ptr %devices.i, align 4
  %device_id.i = getelementptr %struct.pm8001_device, ptr %181, i32 %i.4554.i, i32 6
  %182 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2048, ptr %device_id.i, align 4
  %183 = load ptr, ptr %devices.i, align 4
  %running_req.i = getelementptr %struct.pm8001_device, ptr %183, i32 %i.4554.i, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running_req.i, i32 noundef 4) #10
  %184 = ptrtoint ptr %running_req.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 0, ptr %running_req.i, align 4
  %inc321.i = add nuw nsw i32 %i.4554.i, 1
  %exitcond560.not.i = icmp eq i32 %inc321.i, 2048
  br i1 %exitcond560.not.i, label %pm8001_alloc.exit, label %for.body311.i.for.body311.i_crit_edge

for.body311.i.for.body311.i_crit_edge:            ; preds = %for.body311.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body311.i

for.body326.i:                                    ; preds = %for.inc352.i.for.body326.i_crit_edge, %for.cond323.preheader.i.for.body326.i_crit_edge
  %i.5556.i = phi i32 [ %inc353.i, %for.inc352.i.for.body326.i_crit_edge ], [ 0, %for.cond323.preheader.i.for.body326.i_crit_edge ]
  %arrayidx329.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.5556.i
  %185 = ptrtoint ptr %arrayidx329.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx329.i, align 4
  %cmp331.not.i = icmp eq ptr %186, null
  br i1 %cmp331.not.i, label %for.body326.i.for.inc352.i_crit_edge, label %if.then332.i

for.body326.i.for.inc352.i_crit_edge:             ; preds = %for.body326.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc352.i

if.then332.i:                                     ; preds = %for.body326.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  %total_len337.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.5556.i, i32 4
  %189 = ptrtoint ptr %total_len337.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %total_len337.i, align 4
  %alignment341.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.5556.i, i32 7
  %191 = ptrtoint ptr %alignment341.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %alignment341.i, align 4
  %add342.i = add i32 %192, %190
  %phys_addr350.i = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %i.5556.i, i32 1
  %193 = ptrtoint ptr %phys_addr350.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %phys_addr350.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %add342.i, ptr noundef nonnull %186, i32 noundef %194, i32 noundef 0) #10
  br label %for.inc352.i

for.inc352.i:                                     ; preds = %if.then332.i, %for.body326.i.for.inc352.i_crit_edge
  %inc353.i = add nuw i32 %i.5556.i, 1
  %195 = ptrtoint ptr %max_memcnt.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %max_memcnt.i, align 4
  %cmp325.i = icmp ult i32 %inc353.i, %196
  br i1 %cmp325.i, label %for.inc352.i.for.body326.i_crit_edge, label %for.inc352.i.failed_pci_alloc_crit_edge

for.inc352.i.failed_pci_alloc_crit_edge:          ; preds = %for.inc352.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_pci_alloc

for.inc352.i.for.body326.i_crit_edge:             ; preds = %for.inc352.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body326.i

pm8001_alloc.exit:                                ; preds = %for.body311.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i102 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 2
  %197 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %flags.i102, align 8
  tail call void @pm8001_tag_init(ptr noundef %3) #10
  br label %cleanup

failed_pci_alloc:                                 ; preds = %for.inc352.i.failed_pci_alloc_crit_edge, %for.cond323.preheader.i.failed_pci_alloc_crit_edge, %do.end292.i, %do.body279.i.failed_pci_alloc_crit_edge, %if.end38.i.failed_pci_alloc_crit_edge, %do.end30.i, %do.body17.i.failed_pci_alloc_crit_edge, %do.end.i, %do.body.i.failed_pci_alloc_crit_edge
  tail call fastcc void @pm8001_free(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %failed_pci_alloc, %pm8001_alloc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %failed_pci_alloc ], [ null, %entry.cleanup_crit_edge ], [ %3, %pm8001_alloc.exit ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_init_ccb_tag(ptr noundef %pm8001_ha, ptr nocapture noundef writeonly %shost, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_out_io1 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 26, i32 0, i32 3
  %0 = ptrtoint ptr %max_out_io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_out_io1, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %sub = add i32 %2, -8
  %can_queue2 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 26
  %3 = ptrtoint ptr %can_queue2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %can_queue2, align 4
  %call = tail call ptr @bitmap_zalloc(i32 noundef %2, i32 noundef 3264) #10
  %tags = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  %4 = ptrtoint ptr %tags to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %tags, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ccb_count4 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 46
  %5 = ptrtoint ptr %ccb_count4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %ccb_count4, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 32) #10
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !205

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ccb_info93 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 45
  %8 = ptrtoint ptr %ccb_info93 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ccb_info93, align 8
  br label %do.body

if.end7.i.i:                                      ; preds = %if.end
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #15
  %ccb_info = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 45
  %10 = ptrtoint ptr %ccb_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %ccb_info, align 8
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.do.body_crit_edge, label %for.cond.preheader

if.end7.i.i.do.body_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2095.not = icmp eq i32 %2, 0
  br i1 %cmp2095.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %tags_num = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 37
  br label %for.body

do.body:                                          ; preds = %if.end7.i.i.do.body_crit_edge, %kcalloc.exit.thread
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %11 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logging_level, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.err_out_noccb_crit_edge, label %do.end, !prof !206

do.body.err_out_noccb_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_noccb

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.49, i32 noundef 1205) #13
  br label %err_out_noccb

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %if.end51.for.body_crit_edge ]
  %13 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ccb_info, align 8
  %ccb_dma_handle = getelementptr %struct.pm8001_ccb_info, ptr %14, i32 %i.096, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8448, ptr noundef %ccb_dma_handle, i32 noundef 3264, i32 noundef 0) #10
  %15 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ccb_info, align 8
  %buf_prd = getelementptr %struct.pm8001_ccb_info, ptr %16, i32 %i.096, i32 5
  %17 = ptrtoint ptr %buf_prd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %buf_prd, align 4
  %18 = load ptr, ptr %ccb_info, align 8
  %buf_prd27 = getelementptr %struct.pm8001_ccb_info, ptr %18, i32 %i.096, i32 5
  %19 = ptrtoint ptr %buf_prd27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf_prd27, align 4
  %tobool28.not = icmp eq ptr %20, null
  br i1 %tobool28.not, label %do.body30, label %if.end51

do.body30:                                        ; preds = %for.body
  %logging_level31 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %21 = ptrtoint ptr %logging_level31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logging_level31, align 4
  %and32 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body30.cleanup_crit_edge, label %do.end43, !prof !206

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end43:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.49, i32 noundef 1215) #13
  br label %cleanup

if.end51:                                         ; preds = %for.body
  %arrayidx26 = getelementptr %struct.pm8001_ccb_info, ptr %18, i32 %i.096
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx26, align 4
  %24 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ccb_info, align 8
  %ccb_tag = getelementptr %struct.pm8001_ccb_info, ptr %25, i32 %i.096, i32 2
  %26 = ptrtoint ptr %ccb_tag to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %ccb_tag, align 4
  %27 = load ptr, ptr %ccb_info, align 8
  %device = getelementptr %struct.pm8001_ccb_info, ptr %27, i32 %i.096, i32 4
  %28 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %device, align 4
  %29 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tags_num, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tags_num, align 4
  %inc58 = add nuw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc58, %2
  br i1 %exitcond.not, label %if.end51.cleanup_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_out_noccb:                                    ; preds = %do.end, %do.body.err_out_noccb_crit_edge
  %devices = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 44
  %31 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devices, align 4
  tail call void @kfree(ptr noundef %32) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_noccb, %if.end51.cleanup_crit_edge, %do.end43, %do.body30.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.body30.cleanup_crit_edge ], [ -12, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err_out_noccb ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm80xx_set_thermal_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8001_init_sas_add(ptr noundef %pm8001_ha) unnamed_addr #2 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  %payload = alloca %struct.pm8001_ioctl_payload, align 4
  %deviceid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #10
  %0 = getelementptr inbounds i8, ptr %completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %payload) #10
  %3 = call ptr @memset(ptr %payload, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %deviceid) #10
  %4 = ptrtoint ptr %deviceid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %deviceid, align 2, !annotation !204
  %pdev = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 5
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %call = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %deviceid) #10
  %nvmd_completion = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 36
  %7 = ptrtoint ptr %nvmd_completion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %completion, ptr %nvmd_completion, align 8
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 34
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_id, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %9, label %entry.if.else24_crit_edge [
    i32 0, label %if.then
    i32 9, label %entry.land.lhs.true_crit_edge
    i32 10, label %entry.land.lhs.true_crit_edge260
  ]

entry.land.lhs.true_crit_edge260:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.if.else24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %deviceid, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %12, label %if.else [
    i16 -32639, label %if.then.if.end28_crit_edge
    i16 66, label %if.then.if.end28_crit_edge261
  ]

if.then.if.end28_crit_edge261:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge260
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %17)
  %cmp19 = icmp eq i16 %17, 4476
  br i1 %cmp19, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.if.else24_crit_edge

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else24

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %entry.if.else24_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %land.lhs.true.if.end28_crit_edge, %if.else, %if.then.if.end28_crit_edge, %if.then.if.end28_crit_edge261
  %.sink256 = phi i16 [ 1, %if.else24 ], [ 0, %if.else ], [ 4, %if.then.if.end28_crit_edge ], [ 4, %if.then.if.end28_crit_edge261 ], [ 4, %land.lhs.true.if.end28_crit_edge ]
  %.sink = phi i32 [ 4096, %if.else24 ], [ 128, %if.else ], [ 4096, %if.then.if.end28_crit_edge ], [ 4096, %if.then.if.end28_crit_edge261 ], [ 4096, %land.lhs.true.if.end28_crit_edge ]
  %minor_function22 = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 2
  %18 = ptrtoint ptr %minor_function22 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink256, ptr %minor_function22, align 2
  %rd_length23 = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 7
  %19 = ptrtoint ptr %rd_length23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %rd_length23, align 4
  %offset = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %offset, align 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %.sink, i32 noundef 3520) #15
  %func_specific = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 8
  %21 = ptrtoint ptr %func_specific to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %func_specific, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end43

do.body:                                          ; preds = %if.end28
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %22 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logging_level, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !206

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.54, i32 noundef 694) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dispatch, align 4
  %get_nvmd_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %get_nvmd_req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_nvmd_req, align 4
  %call44 = call i32 %29(ptr noundef %pm8001_ha, ptr noundef nonnull %payload) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end69, label %if.then46

if.then46:                                        ; preds = %if.end43
  %30 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %func_specific, align 4
  call void @kfree(ptr noundef %31) #10
  %logging_level49 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %32 = ptrtoint ptr %logging_level49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %logging_level49, align 4
  %and50 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then46.cleanup_crit_edge, label %do.end61, !prof !206

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end61:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.54, i32 noundef 700) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end43
  call void @wait_for_completion(ptr noundef nonnull %completion) #10
  %34 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip_id, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %35, label %if.end69.if.else120_crit_edge [
    i32 0, label %if.then76
    i32 9, label %if.end69.land.lhs.true106_crit_edge
    i32 10, label %if.end69.land.lhs.true106_crit_edge262
  ]

if.end69.land.lhs.true106_crit_edge262:           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106

if.end69.land.lhs.true106_crit_edge:              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106

if.end69.if.else120_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120

if.then76:                                        ; preds = %if.end69
  %37 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %deviceid, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %38, label %if.then76.for.inc_crit_edge [
    i16 -32639, label %if.then76.for.inc.sink.split_crit_edge
    i16 66, label %if.then88
  ]

if.then76.for.inc.sink.split_crit_edge:           ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.then76.for.inc_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then88:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

land.lhs.true106:                                 ; preds = %if.end69.land.lhs.true106_crit_edge, %if.end69.land.lhs.true106_crit_edge262
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %subsystem_vendor108 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %subsystem_vendor108, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %43)
  %cmp110 = icmp eq i16 %43, 4476
  br i1 %cmp110, label %land.lhs.true106.for.inc.sink.split_crit_edge, label %land.lhs.true106.if.else120_crit_edge

land.lhs.true106.if.else120_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120

land.lhs.true106.for.inc.sink.split_crit_edge:    ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else120:                                       ; preds = %land.lhs.true106.if.else120_crit_edge, %if.end69.if.else120_crit_edge
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else120, %land.lhs.true106.for.inc.sink.split_crit_edge, %if.then88, %if.then76.for.inc.sink.split_crit_edge
  %.sink259 = phi i32 [ 16, %if.then88 ], [ 2052, %if.else120 ], [ 1796, %if.then76.for.inc.sink.split_crit_edge ], [ 16, %land.lhs.true106.for.inc.sink.split_crit_edge ]
  %44 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %func_specific, align 4
  %arrayidx92 = getelementptr i8, ptr %45, i32 %.sink259
  %46 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx92, align 1
  %arrayidx95 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 0
  %48 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx95, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then76.for.inc_crit_edge
  %49 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chip_id, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %50, label %for.inc.if.else120.1_crit_edge [
    i32 0, label %if.then76.1
    i32 9, label %for.inc.land.lhs.true106.1_crit_edge
    i32 10, label %for.inc.land.lhs.true106.1_crit_edge263
  ]

for.inc.land.lhs.true106.1_crit_edge263:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.1

for.inc.land.lhs.true106.1_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.1

for.inc.if.else120.1_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.1

land.lhs.true106.1:                               ; preds = %for.inc.land.lhs.true106.1_crit_edge, %for.inc.land.lhs.true106.1_crit_edge263
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.1 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %subsystem_vendor108.1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %subsystem_vendor108.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %55)
  %cmp110.1 = icmp eq i16 %55, 4476
  br i1 %cmp110.1, label %land.lhs.true106.1.for.inc.sink.split.1_crit_edge, label %land.lhs.true106.1.if.else120.1_crit_edge

land.lhs.true106.1.if.else120.1_crit_edge:        ; preds = %land.lhs.true106.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.1

land.lhs.true106.1.for.inc.sink.split.1_crit_edge: ; preds = %land.lhs.true106.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.1

if.then76.1:                                      ; preds = %for.inc
  %56 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %deviceid, align 2
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %57, label %if.then76.1.for.inc.1_crit_edge [
    i16 -32639, label %if.then76.1.for.inc.sink.split.1_crit_edge
    i16 66, label %if.then88.1
  ]

if.then76.1.for.inc.sink.split.1_crit_edge:       ; preds = %if.then76.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.1

if.then76.1.for.inc.1_crit_edge:                  ; preds = %if.then76.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then88.1:                                      ; preds = %if.then76.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.1

if.else120.1:                                     ; preds = %land.lhs.true106.1.if.else120.1_crit_edge, %for.inc.if.else120.1_crit_edge
  br label %for.inc.sink.split.1

for.inc.sink.split.1:                             ; preds = %if.else120.1, %if.then88.1, %if.then76.1.for.inc.sink.split.1_crit_edge, %land.lhs.true106.1.for.inc.sink.split.1_crit_edge
  %.sink259.1 = phi i32 [ 17, %if.then88.1 ], [ 2053, %if.else120.1 ], [ 1797, %if.then76.1.for.inc.sink.split.1_crit_edge ], [ 17, %land.lhs.true106.1.for.inc.sink.split.1_crit_edge ]
  %59 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %func_specific, align 4
  %arrayidx92.1 = getelementptr i8, ptr %60, i32 %.sink259.1
  %61 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx92.1, align 1
  %arrayidx95.1 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 1
  %63 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx95.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.sink.split.1, %if.then76.1.for.inc.1_crit_edge
  %64 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chip_id, align 8
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %65, label %for.inc.1.if.else120.2_crit_edge [
    i32 0, label %if.then76.2
    i32 9, label %for.inc.1.land.lhs.true106.2_crit_edge
    i32 10, label %for.inc.1.land.lhs.true106.2_crit_edge264
  ]

for.inc.1.land.lhs.true106.2_crit_edge264:        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.2

for.inc.1.land.lhs.true106.2_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.2

for.inc.1.if.else120.2_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.2

land.lhs.true106.2:                               ; preds = %for.inc.1.land.lhs.true106.2_crit_edge, %for.inc.1.land.lhs.true106.2_crit_edge264
  %67 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.2 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %subsystem_vendor108.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %subsystem_vendor108.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %70)
  %cmp110.2 = icmp eq i16 %70, 4476
  br i1 %cmp110.2, label %land.lhs.true106.2.for.inc.sink.split.2_crit_edge, label %land.lhs.true106.2.if.else120.2_crit_edge

land.lhs.true106.2.if.else120.2_crit_edge:        ; preds = %land.lhs.true106.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.2

land.lhs.true106.2.for.inc.sink.split.2_crit_edge: ; preds = %land.lhs.true106.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.2

if.then76.2:                                      ; preds = %for.inc.1
  %71 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %deviceid, align 2
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %72, label %if.then76.2.for.inc.2_crit_edge [
    i16 -32639, label %if.then76.2.for.inc.sink.split.2_crit_edge
    i16 66, label %if.then88.2
  ]

if.then76.2.for.inc.sink.split.2_crit_edge:       ; preds = %if.then76.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.2

if.then76.2.for.inc.2_crit_edge:                  ; preds = %if.then76.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then88.2:                                      ; preds = %if.then76.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.2

if.else120.2:                                     ; preds = %land.lhs.true106.2.if.else120.2_crit_edge, %for.inc.1.if.else120.2_crit_edge
  br label %for.inc.sink.split.2

for.inc.sink.split.2:                             ; preds = %if.else120.2, %if.then88.2, %if.then76.2.for.inc.sink.split.2_crit_edge, %land.lhs.true106.2.for.inc.sink.split.2_crit_edge
  %.sink259.2 = phi i32 [ 18, %if.then88.2 ], [ 2054, %if.else120.2 ], [ 1798, %if.then76.2.for.inc.sink.split.2_crit_edge ], [ 18, %land.lhs.true106.2.for.inc.sink.split.2_crit_edge ]
  %74 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %func_specific, align 4
  %arrayidx92.2 = getelementptr i8, ptr %75, i32 %.sink259.2
  %76 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx92.2, align 1
  %arrayidx95.2 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 2
  %78 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx95.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.sink.split.2, %if.then76.2.for.inc.2_crit_edge
  %79 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chip_id, align 8
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %80, label %for.inc.2.if.else120.3_crit_edge [
    i32 0, label %if.then76.3
    i32 9, label %for.inc.2.land.lhs.true106.3_crit_edge
    i32 10, label %for.inc.2.land.lhs.true106.3_crit_edge265
  ]

for.inc.2.land.lhs.true106.3_crit_edge265:        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.3

for.inc.2.land.lhs.true106.3_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.3

for.inc.2.if.else120.3_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.3

land.lhs.true106.3:                               ; preds = %for.inc.2.land.lhs.true106.3_crit_edge, %for.inc.2.land.lhs.true106.3_crit_edge265
  %82 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.3 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %subsystem_vendor108.3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %subsystem_vendor108.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %85)
  %cmp110.3 = icmp eq i16 %85, 4476
  br i1 %cmp110.3, label %land.lhs.true106.3.for.inc.sink.split.3_crit_edge, label %land.lhs.true106.3.if.else120.3_crit_edge

land.lhs.true106.3.if.else120.3_crit_edge:        ; preds = %land.lhs.true106.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.3

land.lhs.true106.3.for.inc.sink.split.3_crit_edge: ; preds = %land.lhs.true106.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.3

if.then76.3:                                      ; preds = %for.inc.2
  %86 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %deviceid, align 2
  %88 = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %87, label %if.then76.3.for.inc.3_crit_edge [
    i16 -32639, label %if.then76.3.for.inc.sink.split.3_crit_edge
    i16 66, label %if.then88.3
  ]

if.then76.3.for.inc.sink.split.3_crit_edge:       ; preds = %if.then76.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.3

if.then76.3.for.inc.3_crit_edge:                  ; preds = %if.then76.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then88.3:                                      ; preds = %if.then76.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.3

if.else120.3:                                     ; preds = %land.lhs.true106.3.if.else120.3_crit_edge, %for.inc.2.if.else120.3_crit_edge
  br label %for.inc.sink.split.3

for.inc.sink.split.3:                             ; preds = %if.else120.3, %if.then88.3, %if.then76.3.for.inc.sink.split.3_crit_edge, %land.lhs.true106.3.for.inc.sink.split.3_crit_edge
  %.sink259.3 = phi i32 [ 19, %if.then88.3 ], [ 2055, %if.else120.3 ], [ 1799, %if.then76.3.for.inc.sink.split.3_crit_edge ], [ 19, %land.lhs.true106.3.for.inc.sink.split.3_crit_edge ]
  %89 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %func_specific, align 4
  %arrayidx92.3 = getelementptr i8, ptr %90, i32 %.sink259.3
  %91 = ptrtoint ptr %arrayidx92.3 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx92.3, align 1
  %arrayidx95.3 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 3
  %93 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx95.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.sink.split.3, %if.then76.3.for.inc.3_crit_edge
  %94 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chip_id, align 8
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %95, label %for.inc.3.if.else120.4_crit_edge [
    i32 0, label %if.then76.4
    i32 9, label %for.inc.3.land.lhs.true106.4_crit_edge
    i32 10, label %for.inc.3.land.lhs.true106.4_crit_edge266
  ]

for.inc.3.land.lhs.true106.4_crit_edge266:        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.4

for.inc.3.land.lhs.true106.4_crit_edge:           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.4

for.inc.3.if.else120.4_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.4

land.lhs.true106.4:                               ; preds = %for.inc.3.land.lhs.true106.4_crit_edge, %for.inc.3.land.lhs.true106.4_crit_edge266
  %97 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.4 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %subsystem_vendor108.4 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %subsystem_vendor108.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %100)
  %cmp110.4 = icmp eq i16 %100, 4476
  br i1 %cmp110.4, label %land.lhs.true106.4.for.inc.sink.split.4_crit_edge, label %land.lhs.true106.4.if.else120.4_crit_edge

land.lhs.true106.4.if.else120.4_crit_edge:        ; preds = %land.lhs.true106.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.4

land.lhs.true106.4.for.inc.sink.split.4_crit_edge: ; preds = %land.lhs.true106.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.4

if.then76.4:                                      ; preds = %for.inc.3
  %101 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %deviceid, align 2
  %103 = zext i16 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %102, label %if.then76.4.for.inc.4_crit_edge [
    i16 -32639, label %if.then76.4.for.inc.sink.split.4_crit_edge
    i16 66, label %if.then88.4
  ]

if.then76.4.for.inc.sink.split.4_crit_edge:       ; preds = %if.then76.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.4

if.then76.4.for.inc.4_crit_edge:                  ; preds = %if.then76.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then88.4:                                      ; preds = %if.then76.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.4

if.else120.4:                                     ; preds = %land.lhs.true106.4.if.else120.4_crit_edge, %for.inc.3.if.else120.4_crit_edge
  br label %for.inc.sink.split.4

for.inc.sink.split.4:                             ; preds = %if.else120.4, %if.then88.4, %if.then76.4.for.inc.sink.split.4_crit_edge, %land.lhs.true106.4.for.inc.sink.split.4_crit_edge
  %.sink259.4 = phi i32 [ 20, %if.then88.4 ], [ 2056, %if.else120.4 ], [ 1800, %if.then76.4.for.inc.sink.split.4_crit_edge ], [ 20, %land.lhs.true106.4.for.inc.sink.split.4_crit_edge ]
  %104 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %func_specific, align 4
  %arrayidx92.4 = getelementptr i8, ptr %105, i32 %.sink259.4
  %106 = ptrtoint ptr %arrayidx92.4 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx92.4, align 1
  %arrayidx95.4 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 4
  %108 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx95.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.sink.split.4, %if.then76.4.for.inc.4_crit_edge
  %109 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chip_id, align 8
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %110, label %for.inc.4.if.else120.5_crit_edge [
    i32 0, label %if.then76.5
    i32 9, label %for.inc.4.land.lhs.true106.5_crit_edge
    i32 10, label %for.inc.4.land.lhs.true106.5_crit_edge267
  ]

for.inc.4.land.lhs.true106.5_crit_edge267:        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.5

for.inc.4.land.lhs.true106.5_crit_edge:           ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.5

for.inc.4.if.else120.5_crit_edge:                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.5

land.lhs.true106.5:                               ; preds = %for.inc.4.land.lhs.true106.5_crit_edge, %for.inc.4.land.lhs.true106.5_crit_edge267
  %112 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.5 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %subsystem_vendor108.5 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %subsystem_vendor108.5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %115)
  %cmp110.5 = icmp eq i16 %115, 4476
  br i1 %cmp110.5, label %land.lhs.true106.5.for.inc.sink.split.5_crit_edge, label %land.lhs.true106.5.if.else120.5_crit_edge

land.lhs.true106.5.if.else120.5_crit_edge:        ; preds = %land.lhs.true106.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.5

land.lhs.true106.5.for.inc.sink.split.5_crit_edge: ; preds = %land.lhs.true106.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.5

if.then76.5:                                      ; preds = %for.inc.4
  %116 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %deviceid, align 2
  %118 = zext i16 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %117, label %if.then76.5.for.inc.5_crit_edge [
    i16 -32639, label %if.then76.5.for.inc.sink.split.5_crit_edge
    i16 66, label %if.then88.5
  ]

if.then76.5.for.inc.sink.split.5_crit_edge:       ; preds = %if.then76.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.5

if.then76.5.for.inc.5_crit_edge:                  ; preds = %if.then76.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then88.5:                                      ; preds = %if.then76.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.5

if.else120.5:                                     ; preds = %land.lhs.true106.5.if.else120.5_crit_edge, %for.inc.4.if.else120.5_crit_edge
  br label %for.inc.sink.split.5

for.inc.sink.split.5:                             ; preds = %if.else120.5, %if.then88.5, %if.then76.5.for.inc.sink.split.5_crit_edge, %land.lhs.true106.5.for.inc.sink.split.5_crit_edge
  %.sink259.5 = phi i32 [ 21, %if.then88.5 ], [ 2057, %if.else120.5 ], [ 1801, %if.then76.5.for.inc.sink.split.5_crit_edge ], [ 21, %land.lhs.true106.5.for.inc.sink.split.5_crit_edge ]
  %119 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %func_specific, align 4
  %arrayidx92.5 = getelementptr i8, ptr %120, i32 %.sink259.5
  %121 = ptrtoint ptr %arrayidx92.5 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx92.5, align 1
  %arrayidx95.5 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 5
  %123 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx95.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.sink.split.5, %if.then76.5.for.inc.5_crit_edge
  %124 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %chip_id, align 8
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %125, label %for.inc.5.if.else120.6_crit_edge [
    i32 0, label %if.then76.6
    i32 9, label %for.inc.5.land.lhs.true106.6_crit_edge
    i32 10, label %for.inc.5.land.lhs.true106.6_crit_edge268
  ]

for.inc.5.land.lhs.true106.6_crit_edge268:        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.6

for.inc.5.land.lhs.true106.6_crit_edge:           ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.6

for.inc.5.if.else120.6_crit_edge:                 ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.6

land.lhs.true106.6:                               ; preds = %for.inc.5.land.lhs.true106.6_crit_edge, %for.inc.5.land.lhs.true106.6_crit_edge268
  %127 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.6 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %subsystem_vendor108.6 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %subsystem_vendor108.6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %130)
  %cmp110.6 = icmp eq i16 %130, 4476
  br i1 %cmp110.6, label %land.lhs.true106.6.for.inc.sink.split.6_crit_edge, label %land.lhs.true106.6.if.else120.6_crit_edge

land.lhs.true106.6.if.else120.6_crit_edge:        ; preds = %land.lhs.true106.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.6

land.lhs.true106.6.for.inc.sink.split.6_crit_edge: ; preds = %land.lhs.true106.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.6

if.then76.6:                                      ; preds = %for.inc.5
  %131 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %deviceid, align 2
  %133 = zext i16 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %132, label %if.then76.6.for.inc.6_crit_edge [
    i16 -32639, label %if.then76.6.for.inc.sink.split.6_crit_edge
    i16 66, label %if.then88.6
  ]

if.then76.6.for.inc.sink.split.6_crit_edge:       ; preds = %if.then76.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.6

if.then76.6.for.inc.6_crit_edge:                  ; preds = %if.then76.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then88.6:                                      ; preds = %if.then76.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.6

if.else120.6:                                     ; preds = %land.lhs.true106.6.if.else120.6_crit_edge, %for.inc.5.if.else120.6_crit_edge
  br label %for.inc.sink.split.6

for.inc.sink.split.6:                             ; preds = %if.else120.6, %if.then88.6, %if.then76.6.for.inc.sink.split.6_crit_edge, %land.lhs.true106.6.for.inc.sink.split.6_crit_edge
  %.sink259.6 = phi i32 [ 22, %if.then88.6 ], [ 2058, %if.else120.6 ], [ 1802, %if.then76.6.for.inc.sink.split.6_crit_edge ], [ 22, %land.lhs.true106.6.for.inc.sink.split.6_crit_edge ]
  %134 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %func_specific, align 4
  %arrayidx92.6 = getelementptr i8, ptr %135, i32 %.sink259.6
  %136 = ptrtoint ptr %arrayidx92.6 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx92.6, align 1
  %arrayidx95.6 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 6
  %138 = ptrtoint ptr %arrayidx95.6 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx95.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.sink.split.6, %if.then76.6.for.inc.6_crit_edge
  %139 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %chip_id, align 8
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %140, label %for.inc.6.if.else120.7_crit_edge [
    i32 0, label %if.then76.7
    i32 9, label %for.inc.6.land.lhs.true106.7_crit_edge
    i32 10, label %for.inc.6.land.lhs.true106.7_crit_edge269
  ]

for.inc.6.land.lhs.true106.7_crit_edge269:        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.7

for.inc.6.land.lhs.true106.7_crit_edge:           ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true106.7

for.inc.6.if.else120.7_crit_edge:                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.7

land.lhs.true106.7:                               ; preds = %for.inc.6.land.lhs.true106.7_crit_edge, %for.inc.6.land.lhs.true106.7_crit_edge269
  %142 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev, align 4
  %subsystem_vendor108.7 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 9
  %144 = ptrtoint ptr %subsystem_vendor108.7 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %subsystem_vendor108.7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4476, i16 %145)
  %cmp110.7 = icmp eq i16 %145, 4476
  br i1 %cmp110.7, label %land.lhs.true106.7.for.inc.sink.split.7_crit_edge, label %land.lhs.true106.7.if.else120.7_crit_edge

land.lhs.true106.7.if.else120.7_crit_edge:        ; preds = %land.lhs.true106.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.7

land.lhs.true106.7.for.inc.sink.split.7_crit_edge: ; preds = %land.lhs.true106.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.7

if.then76.7:                                      ; preds = %for.inc.6
  %146 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %deviceid, align 2
  %148 = zext i16 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %147, label %if.then76.7.for.inc.7_crit_edge [
    i16 -32639, label %if.then76.7.for.inc.sink.split.7_crit_edge
    i16 66, label %if.then88.7
  ]

if.then76.7.for.inc.sink.split.7_crit_edge:       ; preds = %if.then76.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.7

if.then76.7.for.inc.7_crit_edge:                  ; preds = %if.then76.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then88.7:                                      ; preds = %if.then76.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.7

if.else120.7:                                     ; preds = %land.lhs.true106.7.if.else120.7_crit_edge, %for.inc.6.if.else120.7_crit_edge
  br label %for.inc.sink.split.7

for.inc.sink.split.7:                             ; preds = %if.else120.7, %if.then88.7, %if.then76.7.for.inc.sink.split.7_crit_edge, %land.lhs.true106.7.for.inc.sink.split.7_crit_edge
  %.sink259.7 = phi i32 [ 23, %if.then88.7 ], [ 2059, %if.else120.7 ], [ 1803, %if.then76.7.for.inc.sink.split.7_crit_edge ], [ 23, %land.lhs.true106.7.for.inc.sink.split.7_crit_edge ]
  %149 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %func_specific, align 4
  %arrayidx92.7 = getelementptr i8, ptr %150, i32 %.sink259.7
  %151 = ptrtoint ptr %arrayidx92.7 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx92.7, align 1
  %arrayidx95.7 = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 7
  %153 = ptrtoint ptr %arrayidx95.7 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %arrayidx95.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.sink.split.7, %if.then76.7.for.inc.7_crit_edge
  %sas_addr132 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31
  %154 = ptrtoint ptr %sas_addr132 to i32
  call void @__asan_load1_noabort(i32 %154)
  %sas_add.sroa.0.0.copyload = load i8, ptr %sas_addr132, align 8
  %sas_add.sroa.5.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 1
  %155 = ptrtoint ptr %sas_add.sroa.5.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %155)
  %sas_add.sroa.5.0.copyload = load i8, ptr %sas_add.sroa.5.0.arraydecay133.sroa_idx, align 1
  %sas_add.sroa.6.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 2
  %156 = ptrtoint ptr %sas_add.sroa.6.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %156)
  %sas_add.sroa.6.0.copyload = load i8, ptr %sas_add.sroa.6.0.arraydecay133.sroa_idx, align 2
  %sas_add.sroa.7.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 3
  %157 = ptrtoint ptr %sas_add.sroa.7.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %157)
  %sas_add.sroa.7.0.copyload = load i8, ptr %sas_add.sroa.7.0.arraydecay133.sroa_idx, align 1
  %sas_add.sroa.8.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 4
  %158 = ptrtoint ptr %sas_add.sroa.8.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %158)
  %sas_add.sroa.8.0.copyload = load i8, ptr %sas_add.sroa.8.0.arraydecay133.sroa_idx, align 4
  %sas_add.sroa.9.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 5
  %159 = ptrtoint ptr %sas_add.sroa.9.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %159)
  %sas_add.sroa.9.0.copyload = load i8, ptr %sas_add.sroa.9.0.arraydecay133.sroa_idx, align 1
  %sas_add.sroa.10.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 6
  %160 = ptrtoint ptr %sas_add.sroa.10.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %160)
  %sas_add.sroa.10.0.copyload = load i8, ptr %sas_add.sroa.10.0.arraydecay133.sroa_idx, align 2
  %161 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %chip, align 4
  %n_phy251 = getelementptr inbounds %struct.pm8001_chip_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %n_phy251 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %n_phy251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp137252.not = icmp eq i32 %164, 0
  br i1 %cmp137252.not, label %for.inc.7.for.end184_crit_edge, label %for.body139.lr.ph

for.inc.7.for.end184_crit_edge:                   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end184

for.body139.lr.ph:                                ; preds = %for.inc.7
  %sas_add.sroa.11.0.arraydecay133.sroa_idx = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 31, i32 7
  %165 = ptrtoint ptr %sas_add.sroa.11.0.arraydecay133.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %165)
  %sas_add.sroa.11.0.copyload = load i8, ptr %sas_add.sroa.11.0.arraydecay133.sroa_idx, align 1
  %logging_level157 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  br label %for.body139

for.body139:                                      ; preds = %for.inc182.for.body139_crit_edge, %for.body139.lr.ph
  %conv135255 = phi i32 [ 0, %for.body139.lr.ph ], [ %conv135, %for.inc182.for.body139_crit_edge ]
  %i.1254 = phi i8 [ 0, %for.body139.lr.ph ], [ %inc183, %for.inc182.for.body139_crit_edge ]
  %sas_add.sroa.11.0253 = phi i8 [ %sas_add.sroa.11.0.copyload, %for.body139.lr.ph ], [ %sas_add.sroa.11.1, %for.inc182.for.body139_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %i.1254)
  %tobool141.not = icmp ne i8 %i.1254, 0
  %rem = and i32 %conv135255, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp144 = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool141.not, i1 %cmp144, i1 false
  %add149 = add i8 %sas_add.sroa.11.0253, 4
  %sas_add.sroa.11.1 = select i1 %or.cond, i8 %add149, i8 %sas_add.sroa.11.0253
  %dev_sas_addr = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 39, i32 %conv135255, i32 5
  %166 = ptrtoint ptr %dev_sas_addr to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %sas_add.sroa.0.0.copyload, ptr %dev_sas_addr, align 8
  %sas_add.sroa.5.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 1
  %167 = ptrtoint ptr %sas_add.sroa.5.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %sas_add.sroa.5.0.copyload, ptr %sas_add.sroa.5.0.dev_sas_addr.sroa_idx, align 1
  %sas_add.sroa.6.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 2
  %168 = ptrtoint ptr %sas_add.sroa.6.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %sas_add.sroa.6.0.copyload, ptr %sas_add.sroa.6.0.dev_sas_addr.sroa_idx, align 2
  %sas_add.sroa.7.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 3
  %169 = ptrtoint ptr %sas_add.sroa.7.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %sas_add.sroa.7.0.copyload, ptr %sas_add.sroa.7.0.dev_sas_addr.sroa_idx, align 1
  %sas_add.sroa.8.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 4
  %170 = ptrtoint ptr %sas_add.sroa.8.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %sas_add.sroa.8.0.copyload, ptr %sas_add.sroa.8.0.dev_sas_addr.sroa_idx, align 4
  %sas_add.sroa.9.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 5
  %171 = ptrtoint ptr %sas_add.sroa.9.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %sas_add.sroa.9.0.copyload, ptr %sas_add.sroa.9.0.dev_sas_addr.sroa_idx, align 1
  %sas_add.sroa.10.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 6
  %172 = ptrtoint ptr %sas_add.sroa.10.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %sas_add.sroa.10.0.copyload, ptr %sas_add.sroa.10.0.dev_sas_addr.sroa_idx, align 2
  %sas_add.sroa.11.0.dev_sas_addr.sroa_idx = getelementptr inbounds i8, ptr %dev_sas_addr, i32 7
  %173 = ptrtoint ptr %sas_add.sroa.11.0.dev_sas_addr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %sas_add.sroa.11.1, ptr %sas_add.sroa.11.0.dev_sas_addr.sroa_idx, align 1
  %174 = ptrtoint ptr %logging_level157 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %logging_level157, align 4
  %and158 = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %for.body139.for.inc182_crit_edge, label %do.end169, !prof !206

for.body139.for.inc182_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc182

do.end169:                                        ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #12
  %176 = ptrtoint ptr %dev_sas_addr to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %dev_sas_addr, align 8
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.54, i32 noundef 729, i32 noundef %conv135255, i64 noundef %177) #13
  br label %for.inc182

for.inc182:                                       ; preds = %do.end169, %for.body139.for.inc182_crit_edge
  %inc183 = add i8 %i.1254, 1
  %conv135 = zext i8 %inc183 to i32
  %178 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.pm8001_chip_info, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %n_phy, align 4
  %cmp137 = icmp ugt i32 %181, %conv135
  br i1 %cmp137, label %for.inc182.for.body139_crit_edge, label %for.inc182.for.end184_crit_edge

for.inc182.for.end184_crit_edge:                  ; preds = %for.inc182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end184

for.inc182.for.body139_crit_edge:                 ; preds = %for.inc182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body139

for.end184:                                       ; preds = %for.inc182.for.end184_crit_edge, %for.inc.7.for.end184_crit_edge
  %182 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %func_specific, align 4
  call void @kfree(ptr noundef %183) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end184, %do.end61, %if.then46.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %deviceid) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %payload) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_configure_phy_settings(ptr noundef %pm8001_ha) unnamed_addr #2 align 64 {
entry:
  %completion.i = alloca %struct.completion, align 4
  %payload.i = alloca %struct.pm8001_ioctl_payload, align 4
  %phycfg_int.i = alloca %struct.pm8001_mpi3_phy_pg_trx_config, align 4
  %phycfg_ext.i = alloca %struct.pm8001_mpi3_phy_pg_trx_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %3, label %sw.default [
    i16 4476, label %sw.bb
    i16 -28667, label %entry.return_crit_edge
    i16 0, label %entry.return_crit_edge12
  ]

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 66, i16 %6)
  %cmp = icmp eq i16 %6, 66
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.else

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %phycfg_int.i) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %phycfg_ext.i) #10
  %7 = ptrtoint ptr %phycfg_int.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 306, ptr %phycfg_int.i, align 4
  %LanePgaCfg1.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 1
  %8 = ptrtoint ptr %LanePgaCfg1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2111817, ptr %LanePgaCfg1.i.i, align 4
  %LanePisoCfg1.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 2
  %9 = ptrtoint ptr %LanePisoCfg1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %LanePisoCfg1.i.i, align 4
  %LanePisoCfg2.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 3
  %10 = ptrtoint ptr %LanePisoCfg2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -16777215, ptr %LanePisoCfg2.i.i, align 4
  %LanePisoCfg3.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 4
  %11 = ptrtoint ptr %LanePisoCfg3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -419360000, ptr %LanePisoCfg3.i.i, align 4
  %LanePisoCfg4.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 5
  %12 = ptrtoint ptr %LanePisoCfg4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1662795968, ptr %LanePisoCfg4.i.i, align 4
  %LanePisoCfg5.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 6
  %13 = ptrtoint ptr %LanePisoCfg5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -133160906, ptr %LanePisoCfg5.i.i, align 4
  %LanePisoCfg6.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 7
  %14 = ptrtoint ptr %LanePisoCfg6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -146141184, ptr %LanePisoCfg6.i.i, align 4
  %LaneBctCtrl.i.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_int.i, i32 0, i32 8
  %15 = ptrtoint ptr %LaneBctCtrl.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16462840, ptr %LaneBctCtrl.i.i, align 4
  %16 = ptrtoint ptr %phycfg_ext.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 306, ptr %phycfg_ext.i, align 4
  %LanePgaCfg1.i1.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 1
  %17 = ptrtoint ptr %LanePgaCfg1.i1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2111817, ptr %LanePgaCfg1.i1.i, align 4
  %LanePisoCfg1.i2.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 2
  %18 = ptrtoint ptr %LanePisoCfg1.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 255, ptr %LanePisoCfg1.i2.i, align 4
  %LanePisoCfg2.i3.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 3
  %19 = ptrtoint ptr %LanePisoCfg2.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -16777215, ptr %LanePisoCfg2.i3.i, align 4
  %LanePisoCfg3.i4.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 4
  %20 = ptrtoint ptr %LanePisoCfg3.i4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -419360000, ptr %LanePisoCfg3.i4.i, align 4
  %LanePisoCfg4.i5.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 5
  %21 = ptrtoint ptr %LanePisoCfg4.i5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1664389440, ptr %LanePisoCfg4.i5.i, align 4
  %LanePisoCfg5.i6.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 6
  %22 = ptrtoint ptr %LanePisoCfg5.i6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -133160906, ptr %LanePisoCfg5.i6.i, align 4
  %LanePisoCfg6.i7.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 7
  %23 = ptrtoint ptr %LanePisoCfg6.i7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -133328128, ptr %LanePisoCfg6.i7.i, align 4
  %LaneBctCtrl.i8.i = getelementptr inbounds %struct.pm8001_mpi3_phy_pg_trx_config, ptr %phycfg_ext.i, i32 0, i32 8
  %24 = ptrtoint ptr %LaneBctCtrl.i8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16462840, ptr %LaneBctCtrl.i8.i, align 4
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %26, label %do.body.i.i [
    i16 112, label %if.else.pm8001_get_phy_mask.exit.i_crit_edge
    i16 114, label %if.else.pm8001_get_phy_mask.exit.i_crit_edge13
    i16 113, label %if.else.sw.bb1.i.i_crit_edge
    i16 115, label %if.else.sw.bb1.i.i_crit_edge14
    i16 128, label %sw.bb2.i.i
    i16 129, label %sw.bb3.i.i
    i16 130, label %sw.bb4.i.i
  ]

if.else.sw.bb1.i.i_crit_edge14:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

if.else.sw.bb1.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

if.else.pm8001_get_phy_mask.exit.i_crit_edge13:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_mask.exit.i

if.else.pm8001_get_phy_mask.exit.i_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_mask.exit.i

sw.bb1.i.i:                                       ; preds = %if.else.sw.bb1.i.i_crit_edge, %if.else.sw.bb1.i.i_crit_edge14
  br label %pm8001_get_phy_mask.exit.i

sw.bb2.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_mask.exit.i

sw.bb3.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_mask.exit.i

sw.bb4.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_mask.exit.i

do.body.i.i:                                      ; preds = %if.else
  %logging_level.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %28 = ptrtoint ptr %logging_level.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %logging_level.i.i, align 4
  %and.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.pm8001_get_phy_mask.exit.i_crit_edge, label %do.end.i.i, !prof !206

do.body.i.i.pm8001_get_phy_mask.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_mask.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.63, i32 noundef 865, i32 noundef %conv.i.i) #13
  br label %pm8001_get_phy_mask.exit.i

pm8001_get_phy_mask.exit.i:                       ; preds = %do.end.i.i, %do.body.i.i.pm8001_get_phy_mask.exit.i_crit_edge, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.else.pm8001_get_phy_mask.exit.i_crit_edge, %if.else.pm8001_get_phy_mask.exit.i_crit_edge13
  %phymask.0.i = phi i32 [ 0, %do.body.i.i.pm8001_get_phy_mask.exit.i_crit_edge ], [ 0, %do.end.i.i ], [ 65280, %sw.bb4.i.i ], [ 4080, %sw.bb3.i.i ], [ 240, %sw.bb2.i.i ], [ 65535, %sw.bb1.i.i ], [ 0, %if.else.pm8001_get_phy_mask.exit.i_crit_edge ], [ 0, %if.else.pm8001_get_phy_mask.exit.i_crit_edge13 ]
  %chip.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  %30 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip.i, align 4
  %n_phy9.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %n_phy9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_phy9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp10.not.i = icmp eq i32 %33, 0
  br i1 %cmp10.not.i, label %pm8001_get_phy_mask.exit.i.pm8001_set_phy_settings_ven_117c_12G.exit_crit_edge, label %pm8001_get_phy_mask.exit.i.for.body.i_crit_edge

pm8001_get_phy_mask.exit.i.for.body.i_crit_edge:  ; preds = %pm8001_get_phy_mask.exit.i
  br label %for.body.i

pm8001_get_phy_mask.exit.i.pm8001_set_phy_settings_ven_117c_12G.exit_crit_edge: ; preds = %pm8001_get_phy_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_set_phy_settings_ven_117c_12G.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %pm8001_get_phy_mask.exit.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %pm8001_get_phy_mask.exit.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.011.i
  %and.i = and i32 %shl.i, %phymask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %phycfg_ext.phycfg_int.i = select i1 %tobool.not.i, ptr %phycfg_ext.i, ptr %phycfg_int.i
  call void @pm8001_set_phy_profile_single(ptr noundef %pm8001_ha, i32 noundef %i.011.i, i32 noundef 9, ptr noundef nonnull %phycfg_ext.phycfg_int.i) #10
  %inc.i = add nuw i32 %i.011.i, 1
  %34 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip.i, align 4
  %n_phy.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_phy.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pm8001_set_phy_settings_ven_117c_12G.exit_crit_edge

for.body.i.pm8001_set_phy_settings_ven_117c_12G.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_set_phy_settings_ven_117c_12G.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

pm8001_set_phy_settings_ven_117c_12G.exit:        ; preds = %for.body.i.pm8001_set_phy_settings_ven_117c_12G.exit_crit_edge, %pm8001_get_phy_mask.exit.i.pm8001_set_phy_settings_ven_117c_12G.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %phycfg_ext.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %phycfg_int.i) #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion.i) #10
  %38 = getelementptr inbounds i8, ptr %completion.i, i32 4
  %39 = call ptr @memset(ptr %38, i32 255, i32 52)
  %40 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %completion.i, align 4
  call void @__init_swait_queue_head(ptr noundef %38, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %payload.i) #10
  %41 = call ptr @memset(ptr %payload.i, i32 255, i32 20)
  %nvmd_completion.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 36
  %42 = ptrtoint ptr %nvmd_completion.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %completion.i, ptr %nvmd_completion.i, align 8
  %minor_function.i = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload.i, i32 0, i32 2
  %43 = ptrtoint ptr %minor_function.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 6, ptr %minor_function.i, align 2
  %offset.i = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload.i, i32 0, i32 4
  %44 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %offset.i, align 2
  %rd_length.i = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload.i, i32 0, i32 7
  %45 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4096, ptr %rd_length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 4096) #14
  %func_specific.i = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload.i, i32 0, i32 8
  %47 = ptrtoint ptr %func_specific.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i, ptr %func_specific.i, align 4
  %tobool.not.i9 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i9, label %sw.default.pm8001_get_phy_settings_info.exit_crit_edge, label %if.end.i

sw.default.pm8001_get_phy_settings_info.exit_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_settings_info.exit

if.end.i:                                         ; preds = %sw.default
  %chip.i10 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  %48 = ptrtoint ptr %chip.i10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip.i10, align 4
  %dispatch.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dispatch.i, align 4
  %get_nvmd_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %get_nvmd_req.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_nvmd_req.i, align 4
  %call2.i = call i32 %53(ptr noundef %pm8001_ha, ptr noundef nonnull %payload.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %54 = ptrtoint ptr %func_specific.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %func_specific.i, align 4
  call void @kfree(ptr noundef %55) #10
  %logging_level.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %56 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %logging_level.i, align 4
  %and.i11 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool6.not.i = icmp eq i32 %and.i11, 0
  br i1 %tobool6.not.i, label %if.then4.i.pm8001_get_phy_settings_info.exit_crit_edge, label %do.end.i, !prof !206

if.then4.i.pm8001_get_phy_settings_info.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm8001_get_phy_settings_info.exit

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.64, i32 noundef 769) #13
  br label %pm8001_get_phy_settings_info.exit

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef nonnull %completion.i) #10
  %58 = ptrtoint ptr %func_specific.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %func_specific.i, align 4
  call void @pm8001_set_phy_profile(ptr noundef %pm8001_ha, i32 noundef 1, ptr noundef %59) #10
  %60 = ptrtoint ptr %func_specific.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %func_specific.i, align 4
  call void @kfree(ptr noundef %61) #10
  br label %pm8001_get_phy_settings_info.exit

pm8001_get_phy_settings_info.exit:                ; preds = %if.end16.i, %do.end.i, %if.then4.i.pm8001_get_phy_settings_info.exit_crit_edge, %sw.default.pm8001_get_phy_settings_info.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end16.i ], [ -12, %sw.default.pm8001_get_phy_settings_info.exit_crit_edge ], [ -12, %do.end.i ], [ -12, %if.then4.i.pm8001_get_phy_settings_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %payload.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion.i) #10
  br label %return

return:                                           ; preds = %pm8001_get_phy_settings_info.exit, %pm8001_set_phy_settings_ven_117c_12G.exit, %sw.bb.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge12
  %retval.0 = phi i32 [ %retval.0.i, %pm8001_get_phy_settings_info.exit ], [ 0, %pm8001_set_phy_settings_ven_117c_12G.exit ], [ 0, %sw.bb.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8001_post_sas_ha_init(ptr noundef %shost, ptr nocapture noundef readonly %chip_info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %n_phy = getelementptr inbounds %struct.pm8001_chip_info, ptr %chip_info, i32 0, i32 1
  %4 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39.not = icmp eq i32 %5, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sas_phy1 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 17
  %sas_port4 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sas_phy = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.040, i32 2
  %6 = ptrtoint ptr %sas_phy1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sas_phy1, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.040
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sas_phy, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 40, i32 %i.040
  %9 = ptrtoint ptr %sas_port4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sas_port4, align 4
  %arrayidx5 = getelementptr ptr, ptr %10, i32 %i.040
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx3, ptr %arrayidx5, align 4
  %dev_sas_addr = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 39, i32 %i.040, i32 5
  %12 = load ptr, ptr %sas_phy1, align 4
  %arrayidx9 = getelementptr ptr, ptr %12, i32 %i.040
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9, align 4
  %sas_addr = getelementptr inbounds %struct.asd_sas_phy, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %sas_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev_sas_addr, ptr %sas_addr, align 4
  %inc = add nuw i32 %i.040, 1
  %16 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_phy, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sas_ha_name = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %sas_ha_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.1, ptr %sas_ha_name, align 4
  %dev = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %dev10 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %dev10, align 4
  %strict_wide_ports = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %strict_wide_ports to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %strict_wide_ports, align 4
  %lldd_module = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %lldd_module to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %lldd_module, align 4
  %sas_addr11 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 31
  %sas_addr13 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %sas_addr13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sas_addr11, ptr %sas_addr13, align 4
  %25 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_phy, align 4
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_phys, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %shost, ptr %core, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_register_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8001_free(ptr noundef %pm8001_ha) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pm8001_ha, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pdev = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.033 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 8, i32 1, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %total_len = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 8, i32 1, i32 %i.033, i32 4
  %4 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_len, align 4
  %alignment = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 8, i32 1, i32 %i.033, i32 7
  %6 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alignment, align 4
  %add = add i32 %7, %5
  %phys_addr = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 8, i32 1, i32 %i.033, i32 1
  %8 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 261
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch, align 4
  %chip_iounmap = getelementptr inbounds %struct.pm8001_dispatch, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %chip_iounmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_iounmap, align 4
  tail call void %15(ptr noundef nonnull %pm8001_ha) #10
  %16 = load ptr, ptr @pm8001_wq, align 4
  tail call void @flush_workqueue(ptr noundef %16) #10
  %tags = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  %17 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tags, align 8
  tail call void @bitmap_free(ptr noundef %18) #10
  tail call void @kfree(ptr noundef nonnull %pm8001_ha) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_queuecommand(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_eh_device_reset_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_eh_target_reset_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_slave_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_slave_configure(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_target_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_target_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_scan_finished(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm8001_scan_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8001_tasklet(i32 noundef %opaque) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %opaque to ptr
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %if.end, !prof !205

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/pm8001/pm8001_init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #10, !srcloc !207
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %2, i32 0, i32 35
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dispatch, align 4
  %isr = getelementptr inbounds %struct.pm8001_dispatch, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isr, align 4
  %irq_id = getelementptr inbounds %struct.isr_param, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %irq_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_id, align 4
  %conv = trunc i32 %10 to i8
  %call = tail call i32 %8(ptr noundef nonnull %2, i8 noundef zeroext %conv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_request_irq(ptr noundef %pm8001_ha) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 5
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %msix_cap = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %msix_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %number_of_intr.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 47
  %4 = ptrtoint ptr %number_of_intr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number_of_intr.i, align 8
  %logging_level.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %6 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level.i, align 4
  %and1.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.then.do.end9.i_crit_edge, label %do.end.i, !prof !206

if.then.do.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.46, i32 noundef 976, i32 noundef %5) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then.do.end9.i_crit_edge
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1375.not.i = icmp eq i32 %8, 0
  br i1 %cmp1375.not.i, label %do.end9.i.cleanup_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc40.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %i.076.i = phi i32 [ %inc41.i, %for.inc40.i.for.body.i_crit_edge ], [ 0, %do.end9.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 48, i32 %i.076.i
  %call17.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 37, ptr noundef nonnull @.str.47, ptr noundef %pm8001_ha, i32 noundef %i.076.i) #10
  %arrayidx18.i = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 56, i32 %i.076.i
  %irq_id.i = getelementptr %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 56, i32 %i.076.i, i32 1
  %9 = ptrtoint ptr %irq_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.076.i, ptr %irq_id.i, align 4
  %10 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pm8001_ha, ptr %arrayidx18.i, align 4
  %11 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev1, align 4
  %call21.i = tail call i32 @pci_irq_vector(ptr noundef %12, i32 noundef %i.076.i) #10
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call21.i, ptr noundef nonnull @pm8001_interrupt_handler_msix, ptr noundef null, i32 noundef 0, ptr noundef %arrayidx.i, ptr noundef %arrayidx18.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not.i, label %for.inc40.i, label %for.cond30.preheader.i

for.cond30.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.076.i)
  %cmp3177.not.i = icmp eq i32 %i.076.i, 0
  br i1 %cmp3177.not.i, label %for.cond30.preheader.i.for.end.i_crit_edge, label %for.cond30.preheader.i.for.body32.i_crit_edge

for.cond30.preheader.i.for.body32.i_crit_edge:    ; preds = %for.cond30.preheader.i
  br label %for.body32.i

for.cond30.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %for.cond30.preheader.i.for.body32.i_crit_edge
  %j.078.i = phi i32 [ %inc.i, %for.body32.i.for.body32.i_crit_edge ], [ 0, %for.cond30.preheader.i.for.body32.i_crit_edge ]
  %13 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev1, align 4
  %call34.i = tail call i32 @pci_irq_vector(ptr noundef %14, i32 noundef %i.076.i) #10
  %call37.i = tail call ptr @free_irq(i32 noundef %call34.i, ptr noundef %arrayidx18.i) #10
  %inc.i = add nuw nsw i32 %j.078.i, 1
  %exitcond82.not.i = icmp eq i32 %inc.i, %i.076.i
  br i1 %exitcond82.not.i, label %for.body32.i.for.end.i_crit_edge, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i

for.body32.i.for.end.i_crit_edge:                 ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body32.i.for.end.i_crit_edge, %for.cond30.preheader.i.for.end.i_crit_edge
  %15 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev1, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %16) #10
  br label %cleanup

for.inc40.i:                                      ; preds = %for.body.i
  %inc41.i = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc41.i, %8
  br i1 %exitcond.not.i, label %for.inc40.i.cleanup_crit_edge, label %for.inc40.i.for.body.i_crit_edge

for.inc40.i.for.body.i_crit_edge:                 ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc40.i.cleanup_crit_edge:                    ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %17 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logging_level, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.intx_crit_edge, label %do.end, !prof !206

do.body.intx_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %intx

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.44, i32 noundef 1035) #13
  br label %intx

intx:                                             ; preds = %do.end, %do.body.intx_crit_edge
  %irq_vector = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 56
  %irq_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 56, i32 0, i32 1
  %19 = ptrtoint ptr %irq_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irq_id, align 4
  %20 = ptrtoint ptr %irq_vector to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pm8001_ha, ptr %irq_vector, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %shost = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 33
  %23 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shost, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 53
  %25 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hostdata, align 8
  %call.i28 = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @pm8001_interrupt_handler_intx, ptr noundef null, i32 noundef 128, ptr noundef %pm8001_ha, ptr noundef %26) #10
  br label %cleanup

cleanup:                                          ; preds = %intx, %for.inc40.i.cleanup_crit_edge, %for.end.i, %do.end9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i28, %intx ], [ %call.i.i, %for.end.i ], [ 0, %do.end9.i.cleanup_crit_edge ], [ 0, %for.inc40.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_mem_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm8001_tag_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_interrupt_handler_intx(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %dev_id, i32 0, i32 21
  %0 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_ha, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !205

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispatch, align 4
  %is_our_interrupt = getelementptr inbounds %struct.pm8001_dispatch, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %is_our_interrupt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_our_interrupt, align 4
  %call = tail call i32 %7(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %1, i32 0, i32 49, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr inbounds %struct.pm8001_hba_info, ptr %1, i32 0, i32 49
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_interrupt_handler_msix(i32 noundef %irq, ptr nocapture noundef readonly %opaque) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opaque, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !205

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispatch, align 4
  %is_our_interrupt = getelementptr inbounds %struct.pm8001_dispatch, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %is_our_interrupt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_our_interrupt, align 4
  %call = tail call i32 %7(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %irq_id = getelementptr inbounds %struct.isr_param, ptr %opaque, i32 0, i32 1
  %8 = ptrtoint ptr %irq_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_id, align 4
  %state.i = getelementptr %struct.pm8001_hba_info, ptr %1, i32 0, i32 49, i32 %9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %1, i32 0, i32 49, i32 %9
  tail call void @__tasklet_schedule(ptr noundef %arrayidx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm8001_set_phy_profile_single(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm8001_set_phy_profile(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_unregister_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_pci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  tail call void @sas_suspend_ha(ptr noundef %1) #10
  %4 = load ptr, ptr @pm8001_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #10
  %shost = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 33
  %5 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost, align 4
  tail call void @scsi_block_requests(ptr noundef %6) #10
  %pm_cap = getelementptr i8, ptr %dev, i32 -31
  %7 = ptrtoint ptr %pm_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pm_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 35
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dispatch, align 4
  %interrupt_disable = getelementptr inbounds %struct.pm8001_dispatch, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interrupt_disable, align 4
  tail call void %14(ptr noundef %3, i8 noundef zeroext -1) #10
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %dispatch2 = getelementptr inbounds %struct.pm8001_chip_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dispatch2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dispatch2, align 4
  %chip_soft_rst = getelementptr inbounds %struct.pm8001_dispatch, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %chip_soft_rst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_soft_rst, align 4
  %call3 = tail call i32 %20(ptr noundef %3) #10
  %number_of_intr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 47
  %21 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number_of_intr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp69 = icmp sgt i32 %22, 0
  br i1 %cmp69, label %if.end.for.body_crit_edge, label %if.end.for.end13_crit_edge

if.end.for.end13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp771 = icmp sgt i32 %24, 0
  br i1 %cmp771, label %for.cond5.preheader.for.body8_crit_edge, label %for.cond5.preheader.for.end13_crit_edge

for.cond5.preheader.for.end13_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.cond5.preheader.for.body8_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %i.070) #10
  tail call void @synchronize_irq(i32 noundef %call4) #10
  %inc = add nuw nsw i32 %i.070, 1
  %23 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number_of_intr, align 8
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.cond5.preheader.for.body8_crit_edge
  %i.172 = phi i32 [ %inc12, %for.body8.for.body8_crit_edge ], [ 0, %for.cond5.preheader.for.body8_crit_edge ]
  %call9 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef %i.172) #10
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 56, i32 %i.172
  %call10 = tail call ptr @free_irq(i32 noundef %call9, ptr noundef %arrayidx) #10
  %inc12 = add nuw nsw i32 %i.172, 1
  %25 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number_of_intr, align 8
  %cmp7 = icmp slt i32 %inc12, %26
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end13_crit_edge

for.body8.for.end13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end13

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end13:                                        ; preds = %for.body8.for.end13_crit_edge, %for.cond5.preheader.for.end13_crit_edge, %if.end.for.end13_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %add.ptr) #10
  %msix_cap = getelementptr i8, ptr %dev, i32 -70
  %27 = ptrtoint ptr %msix_cap to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msix_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool14.not = icmp eq i8 %28, 0
  br i1 %tobool14.not, label %for.end13.if.then19_crit_edge, label %lor.lhs.false

for.end13.if.then19_crit_edge:                    ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false:                                    ; preds = %for.end13
  %call15 = tail call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false17

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 34
  %29 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp18 = icmp eq i32 %30, 0
  br i1 %cmp18, label %lor.lhs.false17.if.then19_crit_edge, label %lor.lhs.false17.for.body23_crit_edge

lor.lhs.false17.for.body23_crit_edge:             ; preds = %lor.lhs.false17
  br label %for.body23

lor.lhs.false17.if.then19_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17.if.then19_crit_edge, %lor.lhs.false.if.then19_crit_edge, %for.end13.if.then19_crit_edge
  %tasklet = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 49
  tail call void @tasklet_kill(ptr noundef %tasklet) #10
  br label %do.end32

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %lor.lhs.false17.for.body23_crit_edge
  %j.073 = phi i32 [ %inc27, %for.body23.for.body23_crit_edge ], [ 0, %lor.lhs.false17.for.body23_crit_edge ]
  %arrayidx25 = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 49, i32 %j.073
  tail call void @tasklet_kill(ptr noundef %arrayidx25) #10
  %inc27 = add nuw nsw i32 %j.073, 1
  %exitcond.not = icmp eq i32 %inc27, 64
  br i1 %exitcond.not, label %for.body23.do.end32_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.body23.do.end32_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end32:                                         ; preds = %for.body23.do.end32_crit_edge, %if.then19
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef 1321, ptr noundef %add.ptr, ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end
  %retval.0 = phi i32 [ 0, %do.end32 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_pci_resume(ptr noundef %dev) #2 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #10
  %2 = getelementptr inbounds i8, ptr %completion, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #10
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lldd_ha, align 4
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %7 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_state, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %6, ptr noundef nonnull @.str.71, i32 noundef 1344, ptr noundef %add.ptr, ptr noundef %6, i32 noundef %8) #13
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 17592186044415) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i11.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %if.then.i.if.end_crit_edge, label %pci_go_44.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pci_go_44.exit:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  br label %err_out_disable

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i64 [ 17592186044415, %entry.if.end_crit_edge ], [ 4294967295, %if.then.i.if.end_crit_edge ]
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #10
  call void @sas_prep_resume_ha(ptr noundef %1) #10
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 34
  %9 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then7:                                         ; preds = %if.end
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 35
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dispatch, align 4
  %chip_soft_rst = getelementptr inbounds %struct.pm8001_dispatch, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %chip_soft_rst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_soft_rst, align 4
  %call8 = call i32 %16(ptr noundef %6) #10
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 50
  %17 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logging_level, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then7.if.end24_crit_edge, label %do.end16, !prof !206

if.then7.if.end24_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %6, ptr noundef nonnull @.str.71, i32 noundef 1353) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end16, %if.then7.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %chip25 = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 35
  %19 = ptrtoint ptr %chip25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip25, align 4
  %dispatch26 = getelementptr inbounds %struct.pm8001_chip_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dispatch26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dispatch26, align 4
  %chip_init = getelementptr inbounds %struct.pm8001_dispatch, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %chip_init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip_init, align 4
  %call27 = call i32 %24(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.err_out_disable_crit_edge

if.end24.err_out_disable_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_disable

if.end30:                                         ; preds = %if.end24
  %25 = ptrtoint ptr %chip25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip25, align 4
  %dispatch32 = getelementptr inbounds %struct.pm8001_chip_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dispatch32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dispatch32, align 4
  %interrupt_disable = getelementptr inbounds %struct.pm8001_dispatch, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_disable, align 4
  call void %30(ptr noundef %6, i8 noundef zeroext -1) #10
  %call33 = call fastcc i32 @pm8001_request_irq(ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.err_out_disable_crit_edge

if.end30.err_out_disable_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_disable

if.end36:                                         ; preds = %if.end30
  %msix_cap = getelementptr i8, ptr %dev, i32 -70
  %31 = ptrtoint ptr %msix_cap to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msix_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool37.not = icmp eq i8 %32, 0
  br i1 %tobool37.not, label %if.end36.if.then43_crit_edge, label %lor.lhs.false

if.end36.if.then43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end36
  %call38 = call i32 @pci_msi_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false40

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp42 = icmp eq i32 %34, 0
  br i1 %cmp42, label %lor.lhs.false40.if.then43_crit_edge, label %lor.lhs.false40.for.body_crit_edge

lor.lhs.false40.for.body_crit_edge:               ; preds = %lor.lhs.false40
  br label %for.body

lor.lhs.false40.if.then43_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false40.if.then43_crit_edge, %lor.lhs.false.if.then43_crit_edge, %if.end36.if.then43_crit_edge
  %tasklet = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 49
  %irq_vector = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 56
  %35 = ptrtoint ptr %irq_vector to i32
  call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @pm8001_tasklet, i32 noundef %35) #10
  br label %if.end52

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.lhs.false40.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %lor.lhs.false40.for.body_crit_edge ]
  %arrayidx48 = getelementptr %struct.pm8001_hba_info, ptr %6, i32 0, i32 49, i32 %indvars.iv
  %arrayidx51 = getelementptr %struct.pm8001_hba_info, ptr %6, i32 0, i32 56, i32 %indvars.iv
  %36 = ptrtoint ptr %arrayidx51 to i32
  call void @tasklet_init(ptr noundef %arrayidx48, ptr noundef nonnull @pm8001_tasklet, i32 noundef %36) #10
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.body.if.end52_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end52:                                         ; preds = %for.body.if.end52_crit_edge, %if.then43
  %37 = ptrtoint ptr %chip25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip25, align 4
  %dispatch54 = getelementptr inbounds %struct.pm8001_chip_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dispatch54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dispatch54, align 4
  %interrupt_enable = getelementptr inbounds %struct.pm8001_dispatch, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %interrupt_enable, align 4
  call void %42(ptr noundef %6, i8 noundef zeroext 0) #10
  %43 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp56.not = icmp eq i32 %44, 0
  br i1 %cmp56.not, label %if.end52.if.end70_crit_edge, label %for.cond59.preheader

if.end52.if.end70_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

for.cond59.preheader:                             ; preds = %if.end52
  %number_of_intr = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 47
  %45 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %number_of_intr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp61153 = icmp sgt i32 %46, 1
  br i1 %cmp61153, label %for.cond59.preheader.for.body63_crit_edge, label %for.cond59.preheader.if.end70_crit_edge

for.cond59.preheader.if.end70_crit_edge:          ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

for.cond59.preheader.for.body63_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.cond59.preheader.for.body63_crit_edge
  %i.0154 = phi i8 [ %inc68, %for.body63.for.body63_crit_edge ], [ 1, %for.cond59.preheader.for.body63_crit_edge ]
  %47 = ptrtoint ptr %chip25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip25, align 4
  %dispatch65 = getelementptr inbounds %struct.pm8001_chip_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dispatch65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dispatch65, align 4
  %interrupt_enable66 = getelementptr inbounds %struct.pm8001_dispatch, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %interrupt_enable66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %interrupt_enable66, align 4
  call void %52(ptr noundef %6, i8 noundef zeroext %i.0154) #10
  %inc68 = add i8 %i.0154, 1
  %conv60 = zext i8 %inc68 to i32
  %53 = ptrtoint ptr %number_of_intr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %number_of_intr, align 8
  %cmp61 = icmp sgt i32 %54, %conv60
  br i1 %cmp61, label %for.body63.for.body63_crit_edge, label %for.body63.if.end70_crit_edge

for.body63.if.end70_crit_edge:                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

if.end70:                                         ; preds = %for.body63.if.end70_crit_edge, %for.cond59.preheader.if.end70_crit_edge, %if.end52.if.end70_crit_edge
  %55 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chip_id, align 8
  %.off = add i32 %56, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end70.while.body_crit_edge, label %if.end70.if.end80_crit_edge

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end70.while.body_crit_edge:                    ; preds = %if.end70
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end70.while.body_crit_edge
  %__ms.0155 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 500, %if.end70.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0155, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #10
  %tobool79.not = icmp eq i32 %dec, 0
  br i1 %tobool79.not, label %while.body.if.end80_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end80_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end80:                                         ; preds = %while.body.if.end80_crit_edge, %if.end70.if.end80_crit_edge
  %flags = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 2
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %flags, align 8
  %59 = ptrtoint ptr %chip25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip25, align 4
  %n_phy156 = getelementptr inbounds %struct.pm8001_chip_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %n_phy156 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_phy156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp84157.not = icmp eq i32 %62, 0
  br i1 %cmp84157.not, label %if.end80.for.end94_crit_edge, label %if.end80.for.body86_crit_edge

if.end80.for.body86_crit_edge:                    ; preds = %if.end80
  br label %for.body86

if.end80.for.end94_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end94

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %if.end80.for.body86_crit_edge
  %63 = phi ptr [ %70, %for.body86.for.body86_crit_edge ], [ %60, %if.end80.for.body86_crit_edge ]
  %conv82159 = phi i32 [ %conv82, %for.body86.for.body86_crit_edge ], [ 0, %if.end80.for.body86_crit_edge ]
  %i.1158 = phi i8 [ %inc93, %for.body86.for.body86_crit_edge ], [ 0, %if.end80.for.body86_crit_edge ]
  %enable_completion = getelementptr %struct.pm8001_hba_info, ptr %6, i32 0, i32 39, i32 %conv82159, i32 7
  %64 = ptrtoint ptr %enable_completion to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %completion, ptr %enable_completion, align 4
  %dispatch90 = getelementptr inbounds %struct.pm8001_chip_info, ptr %63, i32 0, i32 2
  %65 = ptrtoint ptr %dispatch90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dispatch90, align 4
  %phy_start_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %phy_start_req to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy_start_req, align 4
  %call91 = call i32 %68(ptr noundef %6, i8 noundef zeroext %i.1158) #10
  call void @wait_for_completion(ptr noundef nonnull %completion) #10
  %inc93 = add i8 %i.1158, 1
  %conv82 = zext i8 %inc93 to i32
  %69 = ptrtoint ptr %chip25 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip25, align 4
  %n_phy = getelementptr inbounds %struct.pm8001_chip_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_phy, align 4
  %cmp84 = icmp ugt i32 %72, %conv82
  br i1 %cmp84, label %for.body86.for.body86_crit_edge, label %for.body86.for.end94_crit_edge

for.body86.for.end94_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end94

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body86

for.end94:                                        ; preds = %for.body86.for.end94_crit_edge, %if.end80.for.end94_crit_edge
  call void @sas_resume_ha(ptr noundef %1) #10
  br label %cleanup

err_out_disable:                                  ; preds = %if.end30.err_out_disable_crit_edge, %if.end24.err_out_disable_crit_edge, %pci_go_44.exit
  %rc.0 = phi i32 [ %call.i11.i, %pci_go_44.exit ], [ %call27, %if.end24.err_out_disable_crit_edge ], [ %call33, %if.end30.err_out_disable_crit_edge ]
  %shost = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 33
  %73 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %shost, align 4
  call void @scsi_remove_host(ptr noundef %74) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable, %for.end94
  %retval.0 = phi i32 [ %rc.0, %err_out_disable ], [ 0, %for.end94 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_suspend_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_prep_resume_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_resume_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_domain_attach_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm8001_port_formed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_dev_found(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm8001_dev_gone(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_queue_command(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_abort_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_abort_task_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_clear_aca(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_clear_task_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_I_T_nexus_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_lu_reset(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_query_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_phy_control(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !39, !40, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__param_logging_level, !1, !"__param_logging_level", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_logging_leveltype290, !1, !"__UNIQUE_ID_logging_leveltype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_logging_level291, !4, !"__UNIQUE_ID_logging_level291", i1 false, i1 false}
!4 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 48, i32 1}
!5 = !{ptr @__param_link_rate, !6, !"__param_link_rate", i1 false, i1 false}
!6 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 51, i32 1}
!7 = !{ptr @__UNIQUE_ID_link_ratetype292, !6, !"__UNIQUE_ID_link_ratetype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_link_rate293, !9, !"__UNIQUE_ID_link_rate293", i1 false, i1 false}
!9 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 52, i32 1}
!10 = !{ptr @hba_list, !11, !"hba_list", i1 false, i1 false}
!11 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 80, i32 1}
!12 = !{ptr @__initcall__kmod_pm80xx__300_1535_pm8001_init6, !13, !"__initcall__kmod_pm80xx__300_1535_pm8001_init6", i1 false, i1 false}
!13 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1535, i32 1}
!14 = !{ptr @__exitcall_pm8001_exit, !15, !"__exitcall_pm8001_exit", i1 false, i1 false}
!15 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1536, i32 1}
!16 = !{ptr @__UNIQUE_ID_author301, !17, !"__UNIQUE_ID_author301", i1 false, i1 false}
!17 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1538, i32 1}
!18 = !{ptr @__UNIQUE_ID_author302, !19, !"__UNIQUE_ID_author302", i1 false, i1 false}
!19 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1539, i32 1}
!20 = !{ptr @__UNIQUE_ID_author303, !21, !"__UNIQUE_ID_author303", i1 false, i1 false}
!21 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1540, i32 1}
!22 = !{ptr @__UNIQUE_ID_author304, !23, !"__UNIQUE_ID_author304", i1 false, i1 false}
!23 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1541, i32 1}
!24 = !{ptr @__UNIQUE_ID_description305, !25, !"__UNIQUE_ID_description305", i1 false, i1 false}
!25 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1542, i32 1}
!26 = !{ptr @__UNIQUE_ID_version306, !27, !"__UNIQUE_ID_version306", i1 false, i1 false}
!27 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1545, i32 1}
!28 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__modver_attr, !27, !"__modver_attr", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_file307, !33, !"__UNIQUE_ID_file307", i1 false, i1 false}
!33 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1546, i32 1}
!34 = !{ptr @__UNIQUE_ID_license308, !33, !"__UNIQUE_ID_license308", i1 false, i1 false}
!35 = !{ptr @pm8001_stt, !36, !"pm8001_stt", i1 false, i1 false}
!36 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 58, i32 40}
!37 = !{ptr @pm8001_wq, !38, !"pm8001_wq", i1 false, i1 false}
!38 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 82, i32 26}
!39 = !{ptr @__param_str_logging_level, !1, !"__param_str_logging_level", i1 false, i1 false}
!40 = !{ptr @logging_level, !41, !"logging_level", i1 false, i1 false}
!41 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 46, i32 14}
!42 = !{ptr @__param_str_link_rate, !6, !"__param_str_link_rate", i1 false, i1 false}
!43 = !{ptr @link_rate, !44, !"link_rate", i1 false, i1 false}
!44 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 50, i32 14}
!45 = !{ptr @pm8001_pci_driver, !46, !"pm8001_pci_driver", i1 false, i1 false}
!46 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1492, i32 26}
!47 = !{ptr @pm8001_pci_table, !48, !"pm8001_pci_table", i1 false, i1 false}
!48 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1412, i32 29}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1069, i32 2}
!51 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pm8001_pci_probe._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @pm8001_pci_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1119, i32 3}
!59 = !{ptr @pm8001_pci_probe._entry.8, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pm8001_pci_probe._entry_ptr.10, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1149, i32 3}
!63 = !{ptr @pm8001_pci_probe._entry.11, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pm8001_pci_probe._entry_ptr.13, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 570, i32 4}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pci_go_44._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @pci_go_44._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pm8001_sht, !72, !"pm8001_sht", i1 false, i1 false}
!72 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 87, i32 34}
!73 = !{ptr @pm8001_chips, !74, !"pm8001_chips", i1 false, i1 false}
!74 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 65, i32 38}
!75 = !{ptr @pm8001_id, !76, !"pm8001_id", i1 false, i1 false}
!76 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 78, i32 12}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 528, i32 3}
!79 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pm8001_pci_alloc._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pm8001_pci_alloc._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 531, i32 27}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 473, i32 5}
!86 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pm8001_ioremap._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @pm8001_ioremap._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 478, i32 4}
!91 = !{ptr @pm8001_ioremap._entry.22, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @pm8001_ioremap._entry_ptr.24, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @pm8001_alloc.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 275, i32 2}
!95 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @pm8001_alloc.__key.26, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 276, i32 2}
!98 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 277, i32 2}
!101 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pm8001_alloc._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pm8001_alloc._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 283, i32 3}
!106 = !{ptr @pm8001_alloc._entry.30, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pm8001_alloc._entry_ptr.32, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @pm8001_alloc.__key.33, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 322, i32 3}
!110 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pm8001_alloc.__key.35, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 352, i32 3}
!113 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 403, i32 4}
!116 = !{ptr @pm8001_alloc._entry.37, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pm8001_alloc._entry_ptr.39, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1015, i32 2}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @pm8001_setup_irq._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @pm8001_setup_irq._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 959, i32 2}
!125 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @pm8001_setup_msix._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @pm8001_setup_msix._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1035, i32 3}
!130 = !{ptr @pm8001_request_irq._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @pm8001_request_irq._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 974, i32 2}
!134 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @pm8001_request_msix._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @pm8001_request_msix._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 984, i32 4}
!139 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1204, i32 3}
!141 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @pm8001_init_ccb_tag._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @pm8001_init_ccb_tag._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1214, i32 4}
!146 = !{ptr @pm8001_init_ccb_tag._entry.50, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @pm8001_init_ccb_tag._entry_ptr.52, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 694, i32 3}
!150 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @pm8001_init_sas_add._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @pm8001_init_sas_add._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 700, i32 3}
!155 = !{ptr @pm8001_init_sas_add._entry.55, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @pm8001_init_sas_add._entry_ptr.57, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 728, i32 3}
!159 = !{ptr @pm8001_init_sas_add._entry.58, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @pm8001_init_sas_add._entry_ptr.60, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @init_completion.__key, !162, !"__key", i1 false, i1 false}
!162 = !{!"../include/linux/completion.h", i32 87, i32 2}
!163 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 863, i32 3}
!166 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pm8001_get_phy_mask._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @pm8001_get_phy_mask._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 769, i32 3}
!171 = !{ptr @pm8001_get_phy_settings_info._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @pm8001_get_phy_settings_info._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @pm8001_pci_pm_ops, !174, !"pm8001_pci_pm_ops", i1 false, i1 false}
!174 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1488, i32 8}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1296, i32 3}
!177 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @pm8001_pci_suspend._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @pm8001_pci_suspend._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1319, i32 2}
!182 = !{ptr @pm8001_pci_suspend._entry.67, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @pm8001_pci_suspend._entry_ptr.69, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1343, i32 2}
!186 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @pm8001_pci_resume._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @pm8001_pci_resume._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 1353, i32 3}
!191 = !{ptr @pm8001_pci_resume._entry.72, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @pm8001_pci_resume._entry_ptr.74, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @pm8001_transport_ops, !194, !"pm8001_transport_ops", i1 false, i1 false}
!194 = !{!"../drivers/scsi/pm8001/pm8001_init.c", i32 117, i32 44}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{!"branch_weights", i32 1, i32 2000}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2155934241, i64 2155934739, i64 2155934278, i64 2155934334, i64 2155934368, i64 2155934392, i64 2155934433, i64 2155934454, i64 2155934482, i64 2155934516}
