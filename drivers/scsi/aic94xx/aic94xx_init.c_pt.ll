; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_init.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_init.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.asd_pcidev_struct = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.error_bios = type { ptr, i32 }
%struct.flash_command = type { [8 x i8], i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.asd_ha_addrspace = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hw_profile = type { %struct.bios_struct, %struct.unit_element_struct, %struct.flash_struct, [8 x i8], [13 x i8], i8, [8 x %struct.asd_phy_desc], i32, ptr, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bios_struct = type { i32, i8, i8, i32 }
%struct.unit_element_struct = type { i16, i16, ptr }
%struct.flash_struct = type { i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.asd_phy_desc = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asd_phy = type { %struct.asd_sas_phy, ptr, ptr, ptr, ptr, [1068 x i8] }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.asd_port = type { [8 x i8], [8 x i8], i32, i32 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.asd_ascb = type { %struct.list_head, ptr, ptr, %struct.asd_dma_tok, ptr, ptr, i8, %struct.timer_list, ptr, i8, i16, i32, i32, ptr }
%struct.scb_header = type <{ i64, i16, i8 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.bios_file_header = type { [32 x i8], i32, i32, %struct.controller_id, i32, i32, i32, i32, i32, %struct.image_info }
%struct.controller_id = type { i32, i32, i32, i32 }
%struct.image_info = type { i32, i32, i32, i32, i32 }

@__param_str_use_msi = internal constant [16 x i8] c"aic94xx.use_msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_msi = internal constant %struct.kernel_param { ptr @__param_str_use_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_msi } }, section "__param", align 4
@__UNIQUE_ID_use_msitype290 = internal constant [29 x i8] c"aic94xx.parmtype=use_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_msi291 = internal constant [74 x i8] c"aic94xx.parm=use_msi:\0A\09Enable(1) or disable(0) using PCI MSI.\0A\09Default: 0\00", section ".modinfo", align 1
@aic94xx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @aic94xx_pci_table, ptr @asd_pci_probe, ptr @asd_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@aic94xx_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aic94xx_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: %s version %s unloaded\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aic94xx_exit\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/aic94xx/aic94xx_init.c\00", [60 x i8] zeroinitializer }, align 32
@aic94xx_exit._entry_ptr = internal global ptr @aic94xx_exit._entry, section ".printk_index", align 4
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adaptec aic94xx SAS/SATA driver\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.3\00", [26 x i8] zeroinitializer }, align 32
@__initcall__kmod_aic94xx__292_1049_aic94xx_init6 = internal global ptr @aic94xx_init, section ".initcall6.init", align 4
@__exitcall_aic94xx_exit = internal global ptr @aic94xx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [55 x i8] c"aic94xx.author=Luben Tuikov <luben_tuikov@adaptec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [52 x i8] c"aic94xx.description=Adaptec aic94xx SAS/SATA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [42 x i8] c"aic94xx.file=drivers/scsi/aic94xx/aic94xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"aic94xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version297 = internal constant [22 x i8] c"aic94xx.version=1.0.3\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aic94xx\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.4 }, section "__modver", align 4
@asd_dma_token_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@asd_ascb_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@driver_attr_version = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@aic94xx_pci_table = internal constant { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 36869, i32 1040, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 1042, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 1046, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 1054, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 1055, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 36869, i32 1072, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36869, i32 1074, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36869, i32 1086, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 36869, i32 1087, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: wrong driver_data in PCI table\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asd_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr = internal global ptr @asd_pci_probe._entry, section ".printk_index", align 4
@asd_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't enable device %s\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.12 = internal global ptr @asd_pci_probe._entry.10, section ".printk_index", align 4
@aic94xx_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sas_queuecommand, ptr null, ptr null, ptr @.str.6, ptr null, ptr @sas_ioctl, ptr null, ptr null, ptr null, ptr @sas_eh_device_reset_handler, ptr @sas_eh_target_reset_handler, ptr null, ptr null, ptr @sas_slave_alloc, ptr @sas_slave_configure, ptr null, ptr @sas_target_alloc, ptr @sas_target_destroy, ptr @asd_scan_finished, ptr @asd_scan_start, ptr @sas_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @sas_bios_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 1024, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@asd_pcidev_data = internal constant { [3 x %struct.asd_pcidev_struct], [40 x i8] } { [3 x %struct.asd_pcidev_struct] [%struct.asd_pcidev_struct { ptr @.str.39, ptr @asd_aic9410_setup }, %struct.asd_pcidev_struct { ptr @.str.40, ptr @asd_aic9410_setup }, %struct.asd_pcidev_struct { ptr @.str.41, ptr @asd_aic9405_setup }], [40 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015aic94xx: out of memory\0A\00", [38 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.15 = internal global ptr @asd_pci_probe._entry.13, section ".printk_index", align 4
@asd_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: found %s, device %s\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.18 = internal global ptr @asd_pci_probe._entry.16, section ".printk_index", align 4
@asd_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: no suitable DMA mask for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.21 = internal global ptr @asd_pci_probe._entry.19, section ".printk_index", align 4
@asd_pci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\015aic94xx: device %s: SAS addr %llx, PCBA SN %s, %d phys, %d enabled phys, flash %s, BIOS %s%d\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.24 = internal global ptr @asd_pci_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not present\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"build \00", [25 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't get irq %d for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.30 = internal global ptr @asd_pci_probe._entry.28, section ".printk_index", align 4
@asd_pci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't post escbs for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.33 = internal global ptr @asd_pci_probe._entry.31, section ".printk_index", align 4
@asd_pci_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015aic94xx: escbs posted\0A\00", [39 x i8] zeroinitializer }, align 32
@asd_pci_probe._entry_ptr.36 = internal global ptr @asd_pci_probe._entry.34, section ".printk_index", align 4
@asd_scan_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: Couldn't enable phys, err:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_scan_start\00", [17 x i8] zeroinitializer }, align 32
@asd_scan_start._entry_ptr = internal global ptr @asd_scan_start._entry, section ".printk_index", align 4
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adaptec AIC-94xx SAS/SATA Host Adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Adaptec AIC-9410W SAS/SATA Host Adapter\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Adaptec AIC-9405W SAS/SATA Host Adapter\00", [56 x i8] zeroinitializer }, align 32
@asd_common_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015aic94xx: %s is revision %s (%X), which is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_common_setup\00", [47 x i8] zeroinitializer }, align 32
@asd_common_setup._entry_ptr = internal global ptr @asd_common_setup._entry, section ".printk_index", align 4
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A0\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A1\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B0\00", [29 x i8] zeroinitializer }, align 32
@asd_dev_rev = internal constant { <{ [9 x ptr], [21 x ptr] }>, [40 x i8] } { <{ [9 x ptr], [21 x ptr] }> <{ [9 x ptr] [ptr @.str.44, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.46], [21 x ptr] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@asd_map_ha._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015aic94xx: couldn't read command register of %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asd_map_ha\00", [21 x i8] zeroinitializer }, align 32
@asd_map_ha._entry_ptr = internal global ptr @asd_map_ha._entry, section ".printk_index", align 4
@asd_map_ha._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015aic94xx: %s ioport mapped -- upgrade your hardware\0A\00", [42 x i8] zeroinitializer }, align 32
@asd_map_ha._entry_ptr.52 = internal global ptr @asd_map_ha._entry.50, section ".printk_index", align 4
@asd_map_ha._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: no proper device access to %s\0A\00", [54 x i8] zeroinitializer }, align 32
@asd_map_ha._entry_ptr.55 = internal global ptr @asd_map_ha._entry.53, section ".printk_index", align 4
@asd_map_memio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: MBAR%d start or length for %s is 0.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asd_map_memio\00", [18 x i8] zeroinitializer }, align 32
@asd_map_memio._entry_ptr = internal global ptr @asd_map_memio._entry, section ".printk_index", align 4
@asd_map_memio._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015aic94xx: couldn't reserve memory region for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@asd_map_memio._entry_ptr.60 = internal global ptr @asd_map_memio._entry.58, section ".printk_index", align 4
@asd_map_memio._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't map MBAR%d of %s\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_map_memio._entry_ptr.63 = internal global ptr @asd_map_memio._entry.61, section ".printk_index", align 4
@asd_map_ioport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: couldn't get IO ports for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_map_ioport\00", [17 x i8] zeroinitializer }, align 32
@asd_map_ioport._entry_ptr = internal global ptr @asd_map_ioport._entry, section ".printk_index", align 4
@asd_map_ioport._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: couldn't reserve io space for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@asd_map_ioport._entry_ptr.68 = internal global ptr @asd_map_ioport._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aic94xx_scb_pool\00", [47 x i8] zeroinitializer }, align 32
@asd_create_ha_caches._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: couldn't create scb pool\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asd_create_ha_caches\00", [43 x i8] zeroinitializer }, align 32
@asd_create_ha_caches._entry_ptr = internal global ptr @asd_create_ha_caches._entry, section ".printk_index", align 4
@dev_attr_aic_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asd_show_dev_rev, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bios_build = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asd_show_dev_bios_build, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pcba_sn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asd_show_dev_pcba_sn, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_bios = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asd_show_update_bios, ptr @asd_store_update_bios }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aic_revision\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bios_build\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcba_sn\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"update_bios\00", [20 x i8] zeroinitializer }, align 32
@flash_error_table = internal constant { [14 x %struct.error_bios], [48 x i8] } { [14 x %struct.error_bios] [%struct.error_bios { ptr @.str.78, i32 256 }, %struct.error_bios { ptr @.str.79, i32 512 }, %struct.error_bios { ptr @.str.80, i32 768 }, %struct.error_bios { ptr @.str.81, i32 1024 }, %struct.error_bios { ptr @.str.82, i32 1280 }, %struct.error_bios { ptr @.str.83, i32 1536 }, %struct.error_bios { ptr @.str.84, i32 1792 }, %struct.error_bios { ptr @.str.85, i32 2048 }, %struct.error_bios { ptr @.str.86, i32 2304 }, %struct.error_bios { ptr @.str.87, i32 4096 }, %struct.error_bios { ptr @.str.88, i32 2560 }, %struct.error_bios { ptr @.str.89, i32 2816 }, %struct.error_bios { ptr @.str.90, i32 3072 }, %struct.error_bios { ptr @.str.91, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"status=%x %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to open bios image file\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCI ID mismatch\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Checksum mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown Error\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to verify.\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset flash chip.\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to find flash chip type.\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to erash flash chip.\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to program flash chip.\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flash in progress\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Image file size Error\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input parameter error\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@flash_command_table = internal global { [3 x %struct.flash_command], [60 x i8] } { [3 x %struct.flash_command] [%struct.flash_command { [8 x i8] c"verify\00\00", i32 2 }, %struct.flash_command { [8 x i8] c"update\00\00", i32 1 }, %struct.flash_command zeroinitializer], [60 x i8] zeroinitializer }, align 32
@asd_store_update_bios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015aic94xx: Failed to load bios image file %s, error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_store_update_bios\00", [42 x i8] zeroinitializer }, align 32
@asd_store_update_bios._entry_ptr = internal global ptr @asd_store_update_bios._entry, section ".printk_index", align 4
@asd_store_update_bios._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015aic94xx: The PCI vendor or device id does not match\0A\00", [41 x i8] zeroinitializer }, align 32
@asd_store_update_bios._entry_ptr.97 = internal global ptr @asd_store_update_bios._entry.95, section ".printk_index", align 4
@asd_store_update_bios._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015aic94xx: vendor=%x dev=%x sub_vendor=%x sub_dev=%x pci vendor=%x pci dev=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@asd_store_update_bios._entry_ptr.100 = internal global ptr @asd_store_update_bios._entry.98, section ".printk_index", align 4
@asd_store_update_bios._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: BIOS file checksum mismatch\0A\00", [56 x i8] zeroinitializer }, align 32
@asd_store_update_bios._entry_ptr.103 = internal global ptr @asd_store_update_bios._entry.101, section ".printk_index", align 4
@asd_free_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: Uh-oh! Pending is not empty!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_free_queues\00", [16 x i8] zeroinitializer }, align 32
@asd_free_queues._entry_ptr = internal global ptr @asd_free_queues._entry, section ".printk_index", align 4
@asd_free_queues._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: freeing from pending\0A\00", [63 x i8] zeroinitializer }, align 32
@asd_free_queues._entry_ptr.108 = internal global ptr @asd_free_queues._entry.106, section ".printk_index", align 4
@aic94xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: %s version %s loaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aic94xx_init\00", [19 x i8] zeroinitializer }, align 32
@aic94xx_init._entry_ptr = internal global ptr @aic94xx_init._entry, section ".printk_index", align 4
@aic94xx_transport_functions = internal global { %struct.sas_domain_function_template, [56 x i8] } { %struct.sas_domain_function_template { ptr null, ptr null, ptr @asd_dev_found, ptr @asd_dev_gone, ptr @asd_execute_task, ptr @asd_abort_task, ptr @asd_abort_task_set, ptr @asd_clear_aca, ptr @asd_clear_task_set, ptr @asd_I_T_nexus_reset, ptr null, ptr @asd_set_dmamode, ptr @asd_lu_reset, ptr @asd_query_task, ptr @asd_clear_nexus_port, ptr @asd_clear_nexus_ha, ptr @asd_control_phy, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aic94xx_dma_token\00", [46 x i8] zeroinitializer }, align 32
@asd_create_global_caches._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: couldn't create dma token cache\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_create_global_caches\00", [39 x i8] zeroinitializer }, align 32
@asd_create_global_caches._entry_ptr = internal global ptr @asd_create_global_caches._entry, section ".printk_index", align 4
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aic94xx_ascb\00", [19 x i8] zeroinitializer }, align 32
@asd_create_global_caches._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.113, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't create ascb cache\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_create_global_caches._entry_ptr.117 = internal global ptr @asd_create_global_caches._entry.115, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 15]
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"use_msi\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 28, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"aic94xx_pci_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 992, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"aic94xx_transport_template\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 34, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 1045, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 1055, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"asd_dma_token_cache\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 609, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"asd_ascb_cache\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 610, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"driver_attr_version\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 943, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 941, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"aic94xx_pci_table\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 977, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 709, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 714, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"aic94xx_sht\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 38, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"asd_pcidev_data\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 507, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 730, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 739, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 761, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 779, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 796, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 804, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 808, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 925, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 509, i32 13 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 512, i32 13 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 515, i32 13 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 205, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 192, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 193, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 194, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant [12 x i8] c"asd_dev_rev\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 191, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 158, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 170, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 173, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 78, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 84, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 90, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 133, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 139, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 522, i32 37 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 527, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [22 x i8] c"dev_attr_aic_revision\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c"dev_attr_bios_build\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"dev_attr_pcba_sn\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [21 x i8] c"dev_attr_update_bios\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 270, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 278, i32 8 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 276, i32 34 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 286, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 460, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant [18 x i8] c"flash_error_table\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 309, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 455, i32 34 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 311, i32 7 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 312, i32 7 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 313, i32 7 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 314, i32 7 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 315, i32 7 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 316, i32 7 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 317, i32 7 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 318, i32 7 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 319, i32 7 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 320, i32 7 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 321, i32 7 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 322, i32 7 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 323, i32 7 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 324, i32 7 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 347, i32 20 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c"flash_command_table\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 297, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 373, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 386, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 387, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 409, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 859, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 873, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 1004, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [28 x i8] c"aic94xx_transport_functions\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 955, i32 44 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 616, i32 24 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 622, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 628, i32 38 }
@___asan_gen_.496 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.500 = private constant [39 x i8] c"../drivers/scsi/aic94xx/aic94xx_init.c\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 634, i32 4 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_use_msi291, ptr @__UNIQUE_ID_use_msitype290, ptr @__UNIQUE_ID_version297, ptr @__exitcall_aic94xx_exit, ptr @__initcall__kmod_aic94xx__292_1049_aic94xx_init6, ptr @__modver_attr, ptr @__param_use_msi, ptr @aic94xx_exit, ptr @aic94xx_exit._entry, ptr @aic94xx_exit._entry_ptr, ptr @aic94xx_init._entry, ptr @aic94xx_init._entry_ptr, ptr @asd_common_setup._entry, ptr @asd_common_setup._entry_ptr, ptr @asd_create_global_caches._entry, ptr @asd_create_global_caches._entry.115, ptr @asd_create_global_caches._entry_ptr, ptr @asd_create_global_caches._entry_ptr.117, ptr @asd_create_ha_caches._entry, ptr @asd_create_ha_caches._entry_ptr, ptr @asd_free_queues._entry, ptr @asd_free_queues._entry.106, ptr @asd_free_queues._entry_ptr, ptr @asd_free_queues._entry_ptr.108, ptr @asd_map_ha._entry, ptr @asd_map_ha._entry.50, ptr @asd_map_ha._entry.53, ptr @asd_map_ha._entry_ptr, ptr @asd_map_ha._entry_ptr.52, ptr @asd_map_ha._entry_ptr.55, ptr @asd_map_ioport._entry, ptr @asd_map_ioport._entry.66, ptr @asd_map_ioport._entry_ptr, ptr @asd_map_ioport._entry_ptr.68, ptr @asd_map_memio._entry, ptr @asd_map_memio._entry.58, ptr @asd_map_memio._entry.61, ptr @asd_map_memio._entry_ptr, ptr @asd_map_memio._entry_ptr.60, ptr @asd_map_memio._entry_ptr.63, ptr @asd_pci_probe._entry, ptr @asd_pci_probe._entry.10, ptr @asd_pci_probe._entry.13, ptr @asd_pci_probe._entry.16, ptr @asd_pci_probe._entry.19, ptr @asd_pci_probe._entry.22, ptr @asd_pci_probe._entry.28, ptr @asd_pci_probe._entry.31, ptr @asd_pci_probe._entry.34, ptr @asd_pci_probe._entry_ptr, ptr @asd_pci_probe._entry_ptr.12, ptr @asd_pci_probe._entry_ptr.15, ptr @asd_pci_probe._entry_ptr.18, ptr @asd_pci_probe._entry_ptr.21, ptr @asd_pci_probe._entry_ptr.24, ptr @asd_pci_probe._entry_ptr.30, ptr @asd_pci_probe._entry_ptr.33, ptr @asd_pci_probe._entry_ptr.36, ptr @asd_scan_start._entry, ptr @asd_scan_start._entry_ptr, ptr @asd_store_update_bios._entry, ptr @asd_store_update_bios._entry.101, ptr @asd_store_update_bios._entry.95, ptr @asd_store_update_bios._entry.98, ptr @asd_store_update_bios._entry_ptr, ptr @asd_store_update_bios._entry_ptr.100, ptr @asd_store_update_bios._entry_ptr.103, ptr @asd_store_update_bios._entry_ptr.97, ptr @use_msi, ptr @aic94xx_pci_driver, ptr @aic94xx_transport_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @asd_dma_token_cache, ptr @asd_ascb_cache, ptr @driver_attr_version, ptr @.str.7, ptr @aic94xx_pci_table, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @aic94xx_sht, ptr @asd_pcidev_data, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @asd_dev_rev, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @dev_attr_aic_revision, ptr @dev_attr_bios_build, ptr @dev_attr_pcba_sn, ptr @dev_attr_update_bios, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @flash_error_table, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @flash_command_table, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @aic94xx_transport_functions, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_dma_token_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ascb_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_pci_table to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pcidev_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pci_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_scan_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_common_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_dev_rev to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_ha._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_ha._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_ha._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_memio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_memio._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_memio._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_ioport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_map_ioport._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_create_ha_caches._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aic_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bios_build to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcba_sn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_bios to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_error_table to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_command_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_store_update_bios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_store_update_bios._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_store_update_bios._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_store_update_bios._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_free_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_free_queues._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic94xx_transport_functions to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_create_global_caches._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_create_global_caches._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aic94xx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @driver_remove_file(ptr noundef getelementptr inbounds (%struct.pci_driver, ptr @aic94xx_pci_driver, i32 0, i32 14), ptr noundef nonnull @driver_attr_version) #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @aic94xx_pci_driver) #13
  %0 = load ptr, ptr @aic94xx_transport_template, align 4
  tail call void @sas_release_transport(ptr noundef %0) #13
  %call = tail call i32 @asd_release_firmware() #13
  %1 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  store ptr null, ptr @asd_dma_token_cache, align 4
  %2 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  store ptr null, ptr @asd_ascb_cache, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_release_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_release_firmware() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aic94xx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16
  %0 = load ptr, ptr @asd_dma_token_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.111, i32 noundef 12, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %call.i, ptr @asd_dma_token_cache, align 4
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %1 = load ptr, ptr @asd_ascb_cache, align 4
  %tobool5.not.i = icmp eq ptr %1, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then6.i:                                       ; preds = %if.end4.i
  %call7.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.114, i32 noundef 108, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %call7.i, ptr @asd_ascb_cache, align 4
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.end11.i, label %if.then6.i.if.end_crit_edge

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #16
  %2 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  store ptr null, ptr @asd_dma_token_cache, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then6.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %call2 = tail call ptr @sas_domain_attach_transport(ptr noundef nonnull @aic94xx_transport_functions) #13
  store ptr %call2, ptr @aic94xx_transport_template, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_destroy_caches_crit_edge, label %if.end5

if.end.out_destroy_caches_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_caches

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @aic94xx_pci_driver, ptr noundef null, ptr noundef nonnull @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_release_transport_crit_edge

if.end5.out_release_transport_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_transport

if.end9:                                          ; preds = %if.end5
  %call.i19 = tail call i32 @driver_create_file(ptr noundef getelementptr inbounds (%struct.pci_driver, ptr @aic94xx_pci_driver, i32 0, i32 14), ptr noundef nonnull @driver_attr_version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool11.not = icmp eq i32 %call.i19, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %out_unregister_pcidrv

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_unregister_pcidrv:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @aic94xx_pci_driver) #13
  br label %out_release_transport

out_release_transport:                            ; preds = %out_unregister_pcidrv, %if.end5.out_release_transport_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.out_release_transport_crit_edge ], [ %call.i19, %out_unregister_pcidrv ]
  %3 = load ptr, ptr @aic94xx_transport_template, align 4
  tail call void @sas_release_transport(ptr noundef %3) #13
  br label %out_destroy_caches

out_destroy_caches:                               ; preds = %out_release_transport, %if.end.out_destroy_caches_crit_edge
  %err.1 = phi i32 [ %err.0, %out_release_transport ], [ -12, %if.end.out_destroy_caches_crit_edge ]
  %4 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #13
  store ptr null, ptr @asd_dma_token_cache, align 4
  %5 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #13
  store ptr null, ptr @asd_ascb_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_caches, %if.end9.cleanup_crit_edge, %do.end11.i, %do.end.i
  %retval.0 = phi i32 [ %err.1, %out_destroy_caches ], [ 0, %if.end9.cleanup_crit_edge ], [ -12, %do.end11.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readnone %driver, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end9, label %do.end5

do.end5:                                          ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end5.pci_name.exit_crit_edge

do.end5.pci_name.exit_crit_edge:                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end5.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end5.pci_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %dev) #13
  %call10 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @aic94xx_sht, i32 noundef 4) #13
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.Err_crit_edge, label %if.end13

if.end9.Err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err

if.end13:                                         ; preds = %if.end9
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15468, i32 noundef 3520, i32 noundef 2) #17
  %tobool15.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  br label %Err_put

if.end22:                                         ; preds = %if.end13
  %arrayidx = getelementptr [3 x %struct.asd_pcidev_struct], ptr @asd_pcidev_data, i32 0, i32 %1
  %6 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call1.i.i.i, align 4096
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %sas_ha = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 2
  %dev25 = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 2, i32 10
  %7 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev24, ptr %dev25, align 64
  %lldd_ha = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 2, i32 21
  %8 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %lldd_ha, align 4
  %bios_status = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %bios_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bios_status, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %name27 = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %name27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %name27, align 4
  %init_name.i.i226 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i226 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i226, align 8
  %tobool.not.i.i227 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i227, label %if.end.i.i229, label %if.end22.pci_name.exit231_crit_edge

if.end22.pci_name.exit231_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit231

if.end.i.i229:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev24, align 4
  br label %pci_name.exit231

pci_name.exit231:                                 ; preds = %if.end.i.i229, %if.end22.pci_name.exit231_crit_edge
  %retval.0.i.i230 = phi ptr [ %16, %if.end.i.i229 ], [ %14, %if.end22.pci_name.exit231_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %11, ptr noundef %retval.0.i.i230) #16
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 53
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sas_ha, ptr %hostdata, align 8
  %core = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %core, align 8
  %19 = load ptr, ptr @aic94xx_transport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 12
  %20 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %transportt, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 21
  %21 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 22
  %22 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %max_lun, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 24
  %23 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %max_cmd_len, align 4
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call10, ptr noundef %dev24, ptr noundef %dev24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end42, label %pci_name.exit231.Err_free_crit_edge

pci_name.exit231.Err_free_crit_edge:              ; preds = %pci_name.exit231
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err_free

if.end42:                                         ; preds = %pci_name.exit231
  %setup = getelementptr [3 x %struct.asd_pcidev_struct], ptr @asd_pcidev_data, i32 0, i32 %1, i32 1
  %24 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup, align 4
  %call43 = tail call i32 %25(ptr noundef nonnull %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.Err_remove_crit_edge

if.end42.Err_remove_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err_remove

if.end46:                                         ; preds = %if.end42
  %call48 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev24, i64 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.if.end62_crit_edge, label %if.then50

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then50:                                        ; preds = %if.end46
  %call52 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev24, i64 noundef 4294967295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %phi.cmp = icmp eq i32 %call52, 0
  br i1 %phi.cmp, label %if.then50.if.end62_crit_edge, label %if.then55

if.then50.if.end62_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then55:                                        ; preds = %if.then50
  %26 = ptrtoint ptr %init_name.i.i226 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i226, align 8
  %tobool.not.i.i233 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i233, label %if.end.i.i235, label %if.then55.pci_name.exit237_crit_edge

if.then55.pci_name.exit237_crit_edge:             ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit237

if.end.i.i235:                                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev24, align 4
  br label %pci_name.exit237

pci_name.exit237:                                 ; preds = %if.end.i.i235, %if.then55.pci_name.exit237_crit_edge
  %retval.0.i.i236 = phi ptr [ %29, %if.end.i.i235 ], [ %27, %if.then55.pci_name.exit237_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i236) #16
  br label %Err_remove

if.end62:                                         ; preds = %if.then50.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %call63 = tail call fastcc i32 @asd_map_ha(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.Err_remove_crit_edge

if.end62.Err_remove_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err_remove

if.end66:                                         ; preds = %if.end62
  %call67 = tail call fastcc i32 @asd_create_ha_caches(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.Err_unmap_crit_edge

if.end66.Err_unmap_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err_unmap

if.end70:                                         ; preds = %if.end66
  %call71 = tail call i32 @asd_init_hw(ptr noundef nonnull %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end77, label %if.end70.Err_free_cache_crit_edge

if.end70.Err_free_cache_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err_free_cache

do.end77:                                         ; preds = %if.end70
  %31 = ptrtoint ptr %init_name.i.i226 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i226, align 8
  %tobool.not.i.i239 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i239, label %if.end.i.i241, label %do.end77.pci_name.exit243_crit_edge

do.end77.pci_name.exit243_crit_edge:              ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit243

if.end.i.i241:                                    ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev24, align 4
  br label %pci_name.exit243

pci_name.exit243:                                 ; preds = %if.end.i.i241, %do.end77.pci_name.exit243_crit_edge
  %retval.0.i.i242 = phi ptr [ %34, %if.end.i.i241 ], [ %32, %do.end77.pci_name.exit243_crit_edge ]
  %hw_prof = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7
  %sas_addr = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sas_addr, align 64
  %pcba_sn = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7, i32 4
  %max_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7, i32 14
  %37 = ptrtoint ptr %max_phys to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_phys, align 4
  %num_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7, i32 13
  %39 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_phys, align 32
  %present = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7, i32 2, i32 1
  %41 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %present, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool86.not = icmp eq i32 %42, 0
  %cond = select i1 %tobool86.not, ptr @.str.26, ptr @.str.25
  %43 = ptrtoint ptr %hw_prof to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_prof, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool89.not = icmp eq i32 %44, 0
  %cond90 = select i1 %tobool89.not, ptr @.str.26, ptr @.str.27
  %bld = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 7, i32 0, i32 3
  %45 = ptrtoint ptr %bld to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bld, align 32
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i242, i64 noundef %36, ptr noundef %pcba_sn, i32 noundef %38, i32 noundef %40, ptr noundef nonnull %cond, ptr noundef nonnull %cond90, i32 noundef %46) #16
  %can_queue = getelementptr inbounds %struct.asd_ha_struct, ptr %call1.i.i.i, i32 0, i32 13, i32 4
  %47 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %can_queue, align 4
  %can_queue94 = getelementptr inbounds %struct.Scsi_Host, ptr %call10, i32 0, i32 26
  %49 = ptrtoint ptr %can_queue94 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %can_queue94, align 4
  %50 = load i32, ptr @use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool95.not = icmp eq i32 %50, 0
  br i1 %tobool95.not, label %pci_name.exit243.if.end99_crit_edge, label %if.then96

pci_name.exit243.if.end99_crit_edge:              ; preds = %pci_name.exit243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then96:                                        ; preds = %pci_name.exit243
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call1.i.i.i, align 4096
  %call98 = tail call i32 @pci_enable_msi(ptr noundef %52) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %pci_name.exit243.if.end99_crit_edge
  %53 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call1.i.i.i, align 4096
  %irq = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 46
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call.i244 = tail call i32 @request_threaded_irq(i32 noundef %56, ptr noundef nonnull @asd_hw_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef nonnull %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool102.not = icmp eq i32 %call.i244, 0
  br i1 %tobool102.not, label %if.end113, label %do.end106

do.end106:                                        ; preds = %if.end99
  %57 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call1.i.i.i, align 4096
  %irq109 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %irq109 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq109, align 4
  %init_name.i.i245 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44, i32 3
  %61 = ptrtoint ptr %init_name.i.i245 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i245, align 8
  %tobool.not.i.i246 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i246, label %if.end.i.i248, label %do.end106.pci_name.exit250_crit_edge

do.end106.pci_name.exit250_crit_edge:             ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit250

if.end.i.i248:                                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i247 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %63 = ptrtoint ptr %dev.i247 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i247, align 4
  br label %pci_name.exit250

pci_name.exit250:                                 ; preds = %if.end.i.i248, %do.end106.pci_name.exit250_crit_edge
  %retval.0.i.i249 = phi ptr [ %64, %if.end.i.i248 ], [ %62, %do.end106.pci_name.exit250_crit_edge ]
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %60, ptr noundef %retval.0.i.i249) #16
  br label %Err_irq

if.end113:                                        ; preds = %if.end99
  tail call fastcc void @asd_enable_ints(ptr noundef nonnull %call1.i.i.i)
  %call114 = tail call i32 @asd_init_post_escbs(ptr noundef nonnull %call1.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %do.end127, label %do.end119

do.end119:                                        ; preds = %if.end113
  %65 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call1.i.i.i, align 4096
  %init_name.i.i251 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44, i32 3
  %67 = ptrtoint ptr %init_name.i.i251 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i251, align 8
  %tobool.not.i.i252 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i252, label %if.end.i.i254, label %do.end119.pci_name.exit256_crit_edge

do.end119.pci_name.exit256_crit_edge:             ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit256

if.end.i.i254:                                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i253 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %69 = ptrtoint ptr %dev.i253 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i253, align 4
  br label %pci_name.exit256

pci_name.exit256:                                 ; preds = %if.end.i.i254, %do.end119.pci_name.exit256_crit_edge
  %retval.0.i.i255 = phi ptr [ %70, %if.end.i.i254 ], [ %68, %do.end119.pci_name.exit256_crit_edge ]
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %retval.0.i.i255) #16
  br label %Err_escbs

do.end127:                                        ; preds = %if.end113
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  %call130 = tail call fastcc i32 @asd_create_dev_attrs(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %do.end127.Err_escbs_crit_edge

do.end127.Err_escbs_crit_edge:                    ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %Err_escbs

if.end133:                                        ; preds = %do.end127
  %call134 = tail call fastcc i32 @asd_register_sas_ha(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %Err_reg_sas

if.end137:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_scan_host(ptr noundef nonnull %call10) #13
  br label %cleanup

Err_reg_sas:                                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @asd_remove_dev_attrs(ptr noundef nonnull %call1.i.i.i)
  br label %Err_escbs

Err_escbs:                                        ; preds = %Err_reg_sas, %do.end127.Err_escbs_crit_edge, %pci_name.exit256
  %err.1 = phi i32 [ %call114, %pci_name.exit256 ], [ %call130, %do.end127.Err_escbs_crit_edge ], [ %call134, %Err_reg_sas ]
  tail call void @asd_write_reg_dword(ptr noundef nonnull %call1.i.i.i, i32 noundef -1207959524, i32 noundef 8323072) #13
  %irq138 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %71 = ptrtoint ptr %irq138 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq138, align 4
  %call139 = tail call ptr @free_irq(i32 noundef %72, ptr noundef nonnull %call1.i.i.i) #13
  br label %Err_irq

Err_irq:                                          ; preds = %Err_escbs, %pci_name.exit250
  %err.2 = phi i32 [ %call.i244, %pci_name.exit250 ], [ %err.1, %Err_escbs ]
  %73 = load i32, ptr @use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool140.not = icmp eq i32 %73, 0
  br i1 %tobool140.not, label %Err_irq.if.end142_crit_edge, label %if.then141

Err_irq.if.end142_crit_edge:                      ; preds = %Err_irq
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

if.then141:                                       ; preds = %Err_irq
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_disable_msi(ptr noundef %dev) #13
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %Err_irq.if.end142_crit_edge
  %call143 = tail call i32 @asd_chip_hardrst(ptr noundef nonnull %call1.i.i.i) #13
  br label %Err_free_cache

Err_free_cache:                                   ; preds = %if.end142, %if.end70.Err_free_cache_crit_edge
  %err.3 = phi i32 [ %call71, %if.end70.Err_free_cache_crit_edge ], [ %err.2, %if.end142 ]
  tail call fastcc void @asd_destroy_ha_caches(ptr noundef nonnull %call1.i.i.i)
  br label %Err_unmap

Err_unmap:                                        ; preds = %Err_free_cache, %if.end66.Err_unmap_crit_edge
  %err.4 = phi i32 [ %call67, %if.end66.Err_unmap_crit_edge ], [ %err.3, %Err_free_cache ]
  tail call fastcc void @asd_unmap_ha(ptr noundef nonnull %call1.i.i.i)
  br label %Err_remove

Err_remove:                                       ; preds = %Err_unmap, %if.end62.Err_remove_crit_edge, %pci_name.exit237, %if.end42.Err_remove_crit_edge
  %err.5 = phi i32 [ %call43, %if.end42.Err_remove_crit_edge ], [ -19, %pci_name.exit237 ], [ %call63, %if.end62.Err_remove_crit_edge ], [ %err.4, %Err_unmap ]
  tail call void @scsi_remove_host(ptr noundef nonnull %call10) #13
  br label %Err_free

Err_free:                                         ; preds = %Err_remove, %pci_name.exit231.Err_free_crit_edge
  %err.6 = phi i32 [ %call.i, %pci_name.exit231.Err_free_crit_edge ], [ %err.5, %Err_remove ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #13
  br label %Err_put

Err_put:                                          ; preds = %Err_free, %do.end19
  %err.7 = phi i32 [ %err.6, %Err_free ], [ -12, %do.end19 ]
  tail call void @scsi_host_put(ptr noundef nonnull %call10) #13
  br label %Err

Err:                                              ; preds = %Err_put, %if.end9.Err_crit_edge
  %err.8 = phi i32 [ %err.7, %Err_put ], [ -12, %if.end9.Err_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %Err, %if.end137, %pci_name.exit, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call1, %pci_name.exit ], [ %err.8, %Err ], [ 0, %if.end137 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_pci_remove(ptr noundef %dev) #5 align 64 {
entry:
  %pending.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sas_ha.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @sas_unregister_ha(ptr noundef %sas_ha.i) #13
  %core.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core.i, align 4
  tail call void @sas_remove_host(ptr noundef %3) #13
  %4 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i, align 4
  tail call void @scsi_host_put(ptr noundef %5) #13
  %sas_phy.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 2, i32 17
  %6 = ptrtoint ptr %sas_phy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sas_phy.i, align 4
  tail call void @kfree(ptr noundef %7) #13
  %sas_port.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 2, i32 18
  %8 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sas_port.i, align 4
  tail call void @kfree(ptr noundef %9) #13
  tail call void @asd_write_reg_dword(ptr noundef nonnull %1, i32 noundef -1207959524, i32 noundef 8323072) #13
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_aic_revision) #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev2.i, ptr noundef nonnull @dev_attr_bios_build) #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev4.i, ptr noundef nonnull @dev_attr_pcba_sn) #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev6.i, ptr noundef nonnull @dev_attr_update_bios) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %19, ptr noundef nonnull %1) #13
  %20 = load i32, ptr @use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not = icmp eq i32 %20, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void @pci_disable_msi(ptr noundef %22) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %enabled_phys.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enabled_phys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not14.i = icmp eq i8 %24, 0
  br i1 %cmp.not14.i, label %if.end5.asd_turn_off_leds.exit_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.asd_turn_off_leds.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_turn_off_leds.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %phy_mask.015.i = phi i8 [ %26, %for.inc.i.for.body.i_crit_edge ], [ %24, %if.end5.for.body.i_crit_edge ]
  %25 = and i8 %phy_mask.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %indvars.iv.i, i32 noundef 0) #13
  tail call void @asd_control_led(ptr noundef %1, i32 noundef %indvars.iv.i, i32 noundef 0) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %26 = lshr i8 %phy_mask.015.i, 1
  %cmp.not.i = icmp ult i8 %phy_mask.015.i, 2
  br i1 %cmp.not.i, label %for.inc.i.asd_turn_off_leds.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.asd_turn_off_leds.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_turn_off_leds.exit

asd_turn_off_leds.exit:                           ; preds = %for.inc.i.asd_turn_off_leds.exit_crit_edge, %if.end5.asd_turn_off_leds.exit_crit_edge
  %call6 = tail call i32 @asd_chip_hardrst(ptr noundef nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending.i) #13
  %27 = getelementptr inbounds %struct.list_head, ptr %pending.i, i32 0, i32 1
  %28 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pending.i, ptr %pending.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pending.i, ptr %27, align 4
  %seq.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %seq.i) #13
  %pending6.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %pending6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pending6.i, align 4
  %pend_q.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %pend_q.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %pend_q.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %32, %pend_q.i
  br i1 %cmp.i.not.i.i, label %asd_turn_off_leds.exit.list_splice_init.exit.i_crit_edge, label %if.then.i.i

asd_turn_off_leds.exit.list_splice_init.exit.i_crit_edge: ; preds = %asd_turn_off_leds.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %asd_turn_off_leds.exit
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pending.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 3, i32 1
  %35 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pending.i, ptr %prev3.i.i.i, align 4
  store ptr %32, ptr %pending.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %34, ptr %36, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev6.i.i.i, align 4
  %40 = ptrtoint ptr %pend_q.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %pend_q.i, ptr %pend_q.i, align 4
  store ptr %pend_q.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %asd_turn_off_leds.exit.list_splice_init.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %seq.i, i32 noundef %call2.i) #13
  %41 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not.i = icmp eq ptr %42, %pending.i
  br i1 %cmp.i.not.i, label %list_splice_init.exit.i.if.end.i_crit_edge, label %do.end13.i

list_splice_init.exit.i.if.end.i_crit_edge:       ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end13.i:                                       ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end13.i, %list_splice_init.exit.i.if.end.i_crit_edge
  %43 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pending.i, align 4
  %cmp.i67.not72.i = icmp eq ptr %44, %pending.i
  br i1 %cmp.i67.not72.i, label %if.end.i.asd_free_queues.exit_crit_edge, label %if.end.i.for.body.i20_crit_edge

if.end.i.for.body.i20_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i20

if.end.i.asd_free_queues.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_queues.exit

for.body.i20:                                     ; preds = %asd_ascb_free.exit.i.for.body.i20_crit_edge, %if.end.i.for.body.i20_crit_edge
  %pos.073.i = phi ptr [ %n.074.i, %asd_ascb_free.exit.i.for.body.i20_crit_edge ], [ %44, %if.end.i.for.body.i20_crit_edge ]
  %45 = ptrtoint ptr %pos.073.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %n.074.i = load ptr, ptr %pos.073.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.073.i, i32 0, i32 7
  %call21.i = call i32 @del_timer_sync(ptr noundef %timer.i) #13
  %scb.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.073.i, i32 0, i32 2
  %46 = ptrtoint ptr %scb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scb.i, align 4
  %opcode.i = getelementptr inbounds %struct.scb_header, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %opcode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %49)
  %cmp23.not.i = icmp eq i8 %49, -128
  br i1 %cmp23.not.i, label %for.body.i20.if.end43.i_crit_edge, label %do.end37.i, !prof !261

for.body.i20.if.end43.i_crit_edge:                ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

do.end37.i:                                       ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 870, i32 noundef 9, ptr noundef null) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %for.body.i20.if.end43.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.073.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end43.i.list_del_init.exit.i_crit_edge

if.end43.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.073.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %pos.073.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pos.073.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end43.i.list_del_init.exit.i_crit_edge
  %56 = ptrtoint ptr %pos.073.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %pos.073.i, ptr %pos.073.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pos.073.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %pos.073.i, ptr %prev.i3.i.i, align 4
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #16
  %tobool.not.i.i = icmp eq ptr %pos.073.i, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge, label %if.then.i70.i

list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_ascb_free.exit.i

if.then.i70.i:                                    ; preds = %list_del_init.exit.i
  %ha.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.073.i, i32 0, i32 1
  %58 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ha.i.i, align 4
  %60 = ptrtoint ptr %pos.073.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %pos.073.i, align 4
  %cmp.i.not.i69.i = icmp eq ptr %61, %pos.073.i
  br i1 %cmp.i.not.i69.i, label %do.body13.i.i, label %do.body6.i.i, !prof !261

do.body6.i.i:                                     ; preds = %if.then.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #13, !srcloc !262
  unreachable

do.body13.i.i:                                    ; preds = %if.then.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  %tc_index_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %59, i32 0, i32 13, i32 6
  %call16.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i) #13
  %62 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ha.i.i, align 4
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.073.i, i32 0, i32 12
  %64 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tc_index.i.i, align 4
  %tc_index_array.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %63, i32 0, i32 13, i32 7
  %66 = ptrtoint ptr %tc_index_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tc_index_array.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %67, i32 %65
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %tc_index_bitmap.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %63, i32 0, i32 13, i32 8
  %69 = ptrtoint ptr %tc_index_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tc_index_bitmap.i.i.i, align 4
  call void @_clear_bit(i32 noundef %65, ptr noundef %70) #13
  %71 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ha.i.i, align 4
  %tc_index_lock25.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %72, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i, i32 noundef %call16.i.i) #13
  %scb_pool.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %59, i32 0, i32 12
  %73 = ptrtoint ptr %scb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %scb_pool.i.i, align 4
  %dma_scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.073.i, i32 0, i32 3
  %75 = ptrtoint ptr %dma_scb.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_scb.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.073.i, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_handle.i.i, align 4
  call void @dma_pool_free(ptr noundef %74, ptr noundef %76, i32 noundef %78) #13
  %79 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %pos.073.i) #13
  br label %asd_ascb_free.exit.i

asd_ascb_free.exit.i:                             ; preds = %do.body13.i.i, %list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge
  %cmp.i67.not.i = icmp eq ptr %n.074.i, %pending.i
  br i1 %cmp.i67.not.i, label %asd_ascb_free.exit.i.asd_free_queues.exit_crit_edge, label %asd_ascb_free.exit.i.for.body.i20_crit_edge

asd_ascb_free.exit.i.for.body.i20_crit_edge:      ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i20

asd_ascb_free.exit.i.asd_free_queues.exit_crit_edge: ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_queues.exit

asd_free_queues.exit:                             ; preds = %asd_ascb_free.exit.i.asd_free_queues.exit_crit_edge, %if.end.i.asd_free_queues.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending.i) #13
  call fastcc void @asd_destroy_ha_caches(ptr noundef nonnull %1)
  %iospace.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 4
  %80 = ptrtoint ptr %iospace.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iospace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i21 = icmp eq i32 %81, 0
  br i1 %tobool.not.i21, label %if.else.i, label %asd_free_queues.exit.asd_unmap_ha.exit_crit_edge

asd_free_queues.exit.asd_unmap_ha.exit_crit_edge: ; preds = %asd_free_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_unmap_ha.exit

if.else.i:                                        ; preds = %asd_free_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  %io_handle1.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 6
  %arrayidx.i.i = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i, align 4
  call void @iounmap(ptr noundef %83) #13
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  call void @pci_release_region(ptr noundef %85, i32 noundef 2) #13
  %86 = ptrtoint ptr %io_handle1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_handle1.i.i, align 4
  call void @iounmap(ptr noundef %87) #13
  br label %asd_unmap_ha.exit

asd_unmap_ha.exit:                                ; preds = %if.else.i, %asd_free_queues.exit.asd_unmap_ha.exit_crit_edge
  %.sink3.i = phi i32 [ 0, %if.else.i ], [ 4, %asd_free_queues.exit.asd_unmap_ha.exit_crit_edge ]
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  call void @pci_release_region(ptr noundef %89, i32 noundef %.sink3.i) #13
  call void @kfree(ptr noundef nonnull %1) #13
  call void @pci_disable_device(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %asd_unmap_ha.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_map_ha(ptr noundef %asd_ha) unnamed_addr #5 align 64 {
entry:
  %cmd_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_reg) #13
  %0 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd_reg, align 2, !annotation !263
  %1 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asd_ha, align 4
  %call = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %cmd_reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %do.end.pci_name.exit_crit_edge ]
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cmd_reg, align 2
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %iospace.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %11 = ptrtoint ptr %iospace.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %iospace.i, align 4
  %arrayidx.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asd_ha, align 4
  %arrayidx3.i = getelementptr %struct.pci_dev, ptr %13, i32 0, i32 47, i32 0
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 8
  %start4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 1
  %16 = ptrtoint ptr %start4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %start4.i, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %13, i32 0, i32 47, i32 0, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.i = icmp eq i32 %18, 0
  br i1 %cmp8.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %len143.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 2
  %19 = ptrtoint ptr %len143.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %len143.i, align 4
  %flags144.i = getelementptr %struct.pci_dev, ptr %13, i32 0, i32 47, i32 0, i32 3
  %20 = ptrtoint ptr %flags144.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags144.i, align 4
  %flags21145.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 3
  %22 = ptrtoint ptr %flags21145.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags21145.i, align 4
  br label %do.end.i

cond.end.i:                                       ; preds = %if.then5
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx3.i, align 8
  %sub.i = add i32 %18, 1
  %add.i = sub i32 %sub.i, %24
  %len.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 2
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %len.i, align 4
  %flags.i = getelementptr %struct.pci_dev, ptr %13, i32 0, i32 47, i32 0, i32 3
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %flags21.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 3
  %28 = ptrtoint ptr %flags21.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flags21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %24)
  %tobool24.not.i = icmp eq i32 %sub.i, %24
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i, label %cond.end.i.do.end.i_crit_edge, label %if.end.i

cond.end.i.do.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %cond.end.1.i.do.end.i_crit_edge, %cond.end.1.thread.i, %cond.end.i.do.end.i_crit_edge, %cond.end.thread.i
  %i.0129.lcssa.i = phi i32 [ 0, %cond.end.i.do.end.i_crit_edge ], [ 2, %cond.end.1.i.do.end.i_crit_edge ], [ 0, %cond.end.thread.i ], [ 2, %cond.end.1.thread.i ]
  %cond.lcssa.i = phi i32 [ 0, %cond.end.i.do.end.i_crit_edge ], [ 1, %cond.end.1.i.do.end.i_crit_edge ], [ 0, %cond.end.thread.i ], [ 1, %cond.end.1.thread.i ]
  %.lcssa.i = phi ptr [ %13, %cond.end.i.do.end.i_crit_edge ], [ %53, %cond.end.1.i.do.end.i_crit_edge ], [ %13, %cond.end.thread.i ], [ %53, %cond.end.1.thread.i ]
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %.lcssa.i, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %.lcssa.i, i32 0, i32 44
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %32, %if.end.i.i.i ], [ %30, %do.end.i.pci_name.exit.i_crit_edge ]
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %cond.lcssa.i, ptr noundef %retval.0.i.i.i) #16
  br label %Err.i

if.end.i:                                         ; preds = %cond.end.i
  %call30.i = call i32 @pci_request_region(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end40.i, label %if.end.i.do.end35.i_crit_edge

if.end.i.do.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.end.1.i.do.end35.i_crit_edge, %if.end.i.do.end35.i_crit_edge
  %call30.lcssa.i = phi i32 [ %call30.i, %if.end.i.do.end35.i_crit_edge ], [ %call30.1.i, %if.end.1.i.do.end35.i_crit_edge ]
  %i.0129.lcssa136.i = phi i32 [ 0, %if.end.i.do.end35.i_crit_edge ], [ 2, %if.end.1.i.do.end35.i_crit_edge ]
  %33 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i103.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i103.i, align 8
  %tobool.not.i.i104.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i104.i, label %if.end.i.i106.i, label %do.end35.i.pci_name.exit108.i_crit_edge

do.end35.i.pci_name.exit108.i_crit_edge:          ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit108.i

if.end.i.i106.i:                                  ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i105.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %37 = ptrtoint ptr %dev.i105.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i105.i, align 4
  br label %pci_name.exit108.i

pci_name.exit108.i:                               ; preds = %if.end.i.i106.i, %do.end35.i.pci_name.exit108.i_crit_edge
  %retval.0.i.i107.i = phi ptr [ %38, %if.end.i.i106.i ], [ %36, %do.end35.i.pci_name.exit108.i_crit_edge ]
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %retval.0.i.i107.i) #16
  br label %Err.i

if.end40.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %start4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %start4.i, align 4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %call43.i = call ptr @ioremap(i32 noundef %40, i32 noundef %42) #13
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call43.i, ptr %arrayidx.i, align 4
  %tobool45.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool45.not.i, label %if.end40.i.do.end49.i_crit_edge, label %for.inc.i

if.end40.i.do.end49.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49.i

do.end49.i:                                       ; preds = %if.end40.1.i.do.end49.i_crit_edge, %if.end40.i.do.end49.i_crit_edge
  %i.0129.lcssa137.i = phi i32 [ 0, %if.end40.i.do.end49.i_crit_edge ], [ 2, %if.end40.1.i.do.end49.i_crit_edge ]
  %cond.lcssa134.i = phi i32 [ 0, %if.end40.i.do.end49.i_crit_edge ], [ 1, %if.end40.1.i.do.end49.i_crit_edge ]
  %44 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i109.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i109.i, align 8
  %tobool.not.i.i110.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i110.i, label %if.end.i.i112.i, label %do.end49.i.pci_name.exit114.i_crit_edge

do.end49.i.pci_name.exit114.i_crit_edge:          ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit114.i

if.end.i.i112.i:                                  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i111.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i111.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i111.i, align 4
  br label %pci_name.exit114.i

pci_name.exit114.i:                               ; preds = %if.end.i.i112.i, %do.end49.i.pci_name.exit114.i_crit_edge
  %retval.0.i.i113.i = phi ptr [ %49, %if.end.i.i112.i ], [ %47, %do.end49.i.pci_name.exit114.i_crit_edge ]
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %cond.lcssa134.i, ptr noundef %retval.0.i.i113.i) #16
  %50 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asd_ha, align 4
  call void @pci_release_region(ptr noundef %51, i32 noundef %i.0129.lcssa137.i) #13
  br label %Err.i

for.inc.i:                                        ; preds = %if.end40.i
  %arrayidx.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asd_ha, align 4
  %arrayidx3.1.i = getelementptr %struct.pci_dev, ptr %53, i32 0, i32 47, i32 2
  %54 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx3.1.i, align 8
  %start4.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1, i32 1
  %56 = ptrtoint ptr %start4.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %start4.1.i, align 4
  %end.1.i = getelementptr %struct.pci_dev, ptr %53, i32 0, i32 47, i32 2, i32 1
  %57 = ptrtoint ptr %end.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp8.1.i = icmp eq i32 %58, 0
  br i1 %cmp8.1.i, label %cond.end.1.thread.i, label %cond.end.1.i

cond.end.1.thread.i:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.1150.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1, i32 2
  %59 = ptrtoint ptr %len.1150.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %len.1150.i, align 4
  %flags.1151.i = getelementptr %struct.pci_dev, ptr %53, i32 0, i32 47, i32 2, i32 3
  %60 = ptrtoint ptr %flags.1151.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.1151.i, align 4
  %flags21.1152.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1, i32 3
  %62 = ptrtoint ptr %flags21.1152.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %flags21.1152.i, align 4
  br label %do.end.i

cond.end.1.i:                                     ; preds = %for.inc.i
  %63 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx3.1.i, align 8
  %sub.1.i = add i32 %58, 1
  %add.1.i = sub i32 %sub.1.i, %64
  %len.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1, i32 2
  %65 = ptrtoint ptr %len.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.1.i, ptr %len.1.i, align 4
  %flags.1.i = getelementptr %struct.pci_dev, ptr %53, i32 0, i32 47, i32 2, i32 3
  %66 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.1.i, align 4
  %flags21.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1, i32 3
  %68 = ptrtoint ptr %flags21.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %flags21.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.1.i = icmp eq i32 %55, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %64)
  %tobool24.not.1.i = icmp eq i32 %sub.1.i, %64
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 true, i1 %tobool24.not.1.i
  br i1 %or.cond.1.i, label %cond.end.1.i.do.end.i_crit_edge, label %if.end.1.i

cond.end.1.i.do.end.i_crit_edge:                  ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.1.i:                                       ; preds = %cond.end.1.i
  %call30.1.i = call i32 @pci_request_region(ptr noundef %53, i32 noundef 2, ptr noundef nonnull @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.1.i)
  %tobool31.not.1.i = icmp eq i32 %call30.1.i, 0
  br i1 %tobool31.not.1.i, label %if.end40.1.i, label %if.end.1.i.do.end35.i_crit_edge

if.end.1.i.do.end35.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35.i

if.end40.1.i:                                     ; preds = %if.end.1.i
  %69 = ptrtoint ptr %start4.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %start4.1.i, align 4
  %71 = ptrtoint ptr %len.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.1.i, align 4
  %call43.1.i = call ptr @ioremap(i32 noundef %70, i32 noundef %72) #13
  %73 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call43.1.i, ptr %arrayidx.1.i, align 4
  %tobool45.not.1.i = icmp eq ptr %call43.1.i, null
  br i1 %tobool45.not.1.i, label %if.end40.1.i.do.end49.i_crit_edge, label %if.end40.1.i.cleanup_crit_edge

if.end40.1.i.cleanup_crit_edge:                   ; preds = %if.end40.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40.1.i.do.end49.i_crit_edge:                ; preds = %if.end40.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49.i

Err.i:                                            ; preds = %pci_name.exit114.i, %pci_name.exit108.i, %pci_name.exit.i
  %i.0129139.i = phi i32 [ %i.0129.lcssa136.i, %pci_name.exit108.i ], [ %i.0129.lcssa137.i, %pci_name.exit114.i ], [ %i.0129.lcssa.i, %pci_name.exit.i ]
  %err.0.i = phi i32 [ %call30.lcssa.i, %pci_name.exit108.i ], [ -12, %pci_name.exit114.i ], [ -19, %pci_name.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0129139.i)
  %cmp59.not.i = icmp eq i32 %i.0129139.i, 0
  br i1 %cmp59.not.i, label %Err.i.cleanup_crit_edge, label %if.then60.i

Err.i.cleanup_crit_edge:                          ; preds = %Err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then60.i:                                      ; preds = %Err.i
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 4
  call void @iounmap(ptr noundef %75) #13
  %76 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %asd_ha, align 4
  call void @pci_release_region(ptr noundef %77, i32 noundef 0) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and11 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end28, label %if.then13

if.then13:                                        ; preds = %if.else
  %io_handle1.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %iospace.i42 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %78 = ptrtoint ptr %iospace.i42 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %iospace.i42, align 4
  %79 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %asd_ha, align 4
  %arrayidx2.i = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 47, i32 4
  %81 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.i, align 8
  %start3.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 1
  %83 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %start3.i, align 4
  %end.i43 = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 47, i32 4, i32 1
  %84 = ptrtoint ptr %end.i43 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %end.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i = icmp eq i32 %85, 0
  br i1 %cmp.i, label %cond.end.thread.i51, label %cond.end.i50

cond.end.i50:                                     ; preds = %if.then13
  %86 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx2.i, align 8
  %sub.i44 = sub i32 %85, %87
  %add.i45 = add i32 %sub.i44, 1
  %len.i46 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 2
  %88 = ptrtoint ptr %len.i46 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i45, ptr %len.i46, align 4
  %flags.i47 = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 47, i32 4, i32 3
  %89 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i47, align 4
  %flags18.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 3
  %91 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %flags18.i, align 4
  %92 = inttoptr i32 %82 to ptr
  %93 = ptrtoint ptr %io_handle1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %io_handle1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i48 = icmp eq i32 %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i45)
  %tobool22.not.i = icmp eq i32 %add.i45, 0
  %or.cond.i49 = select i1 %tobool.not.i48, i1 true, i1 %tobool22.not.i
  br i1 %or.cond.i49, label %cond.end.i50.do.end.i54_crit_edge, label %if.end.i59

cond.end.i50.do.end.i54_crit_edge:                ; preds = %cond.end.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i54

cond.end.thread.i51:                              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %len67.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 2
  %94 = ptrtoint ptr %len67.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %len67.i, align 4
  %flags68.i = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 47, i32 4, i32 3
  %95 = ptrtoint ptr %flags68.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags68.i, align 4
  %flags1869.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 3
  %97 = ptrtoint ptr %flags1869.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %flags1869.i, align 4
  %98 = inttoptr i32 %82 to ptr
  %99 = ptrtoint ptr %io_handle1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %io_handle1.i, align 4
  br label %do.end.i54

do.end.i54:                                       ; preds = %cond.end.thread.i51, %cond.end.i50.do.end.i54_crit_edge
  %init_name.i.i.i52 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44, i32 3
  %100 = ptrtoint ptr %init_name.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_name.i.i.i52, align 8
  %tobool.not.i.i.i53 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i.i53, label %if.end.i.i.i56, label %do.end.i54.pci_name.exit.i58_crit_edge

do.end.i54.pci_name.exit.i58_crit_edge:           ; preds = %do.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit.i58

if.end.i.i.i56:                                   ; preds = %do.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i55 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %102 = ptrtoint ptr %dev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i.i55, align 4
  br label %pci_name.exit.i58

pci_name.exit.i58:                                ; preds = %if.end.i.i.i56, %do.end.i54.pci_name.exit.i58_crit_edge
  %retval.0.i.i.i57 = phi ptr [ %103, %if.end.i.i.i56 ], [ %101, %do.end.i54.pci_name.exit.i58_crit_edge ]
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %retval.0.i.i.i57) #16
  br label %cleanup

if.end.i59:                                       ; preds = %cond.end.i50
  %call26.i = call i32 @pci_request_region(ptr noundef %80, i32 noundef 4, ptr noundef nonnull @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  %104 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i61 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44, i32 3
  %106 = ptrtoint ptr %init_name.i.i61 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i.i61, align 8
  %tobool.not.i.i62 = icmp eq ptr %107, null
  br i1 %tobool27.not.i, label %do.end20, label %do.end31.i

do.end31.i:                                       ; preds = %if.end.i59
  br i1 %tobool.not.i.i62, label %if.end.i.i63.i, label %do.end31.i.pci_name.exit65.i_crit_edge

do.end31.i.pci_name.exit65.i_crit_edge:           ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit65.i

if.end.i.i63.i:                                   ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i62.i = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %108 = ptrtoint ptr %dev.i62.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i62.i, align 4
  br label %pci_name.exit65.i

pci_name.exit65.i:                                ; preds = %if.end.i.i63.i, %do.end31.i.pci_name.exit65.i_crit_edge
  %retval.0.i.i64.i = phi ptr [ %109, %if.end.i.i63.i ], [ %107, %do.end31.i.pci_name.exit65.i_crit_edge ]
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %retval.0.i.i64.i) #16
  br label %cleanup

do.end20:                                         ; preds = %if.end.i59
  br i1 %tobool.not.i.i62, label %if.end.i.i64, label %do.end20.pci_name.exit66_crit_edge

do.end20.pci_name.exit66_crit_edge:               ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit66

if.end.i.i64:                                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i63 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %110 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i63, align 4
  br label %pci_name.exit66

pci_name.exit66:                                  ; preds = %if.end.i.i64, %do.end20.pci_name.exit66_crit_edge
  %retval.0.i.i65 = phi ptr [ %111, %if.end.i.i64 ], [ %107, %do.end20.pci_name.exit66_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %retval.0.i.i65) #16
  br label %cleanup

do.end28:                                         ; preds = %if.else
  %112 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i67 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44, i32 3
  %114 = ptrtoint ptr %init_name.i.i67 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init_name.i.i67, align 8
  %tobool.not.i.i68 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i68, label %if.end.i.i70, label %do.end28.pci_name.exit72_crit_edge

do.end28.pci_name.exit72_crit_edge:               ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit72

if.end.i.i70:                                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i69 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %116 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i69, align 4
  br label %pci_name.exit72

pci_name.exit72:                                  ; preds = %if.end.i.i70, %do.end28.pci_name.exit72_crit_edge
  %retval.0.i.i71 = phi ptr [ %117, %if.end.i.i70 ], [ %115, %do.end28.pci_name.exit72_crit_edge ]
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %retval.0.i.i71) #16
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit72, %pci_name.exit66, %pci_name.exit65.i, %pci_name.exit.i58, %if.then60.i, %Err.i.cleanup_crit_edge, %if.end40.1.i.cleanup_crit_edge, %pci_name.exit
  %retval.0 = phi i32 [ 0, %pci_name.exit66 ], [ 0, %if.end40.1.i.cleanup_crit_edge ], [ %call, %pci_name.exit ], [ -19, %pci_name.exit72 ], [ %err.0.i, %if.then60.i ], [ %err.0.i, %Err.i.cleanup_crit_edge ], [ %call26.i, %pci_name.exit65.i ], [ -19, %pci_name.exit.i58 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_reg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_create_ha_caches(ptr nocapture noundef %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_ha, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.69, ptr noundef %dev, i32 noundef 128, i32 noundef 8, i32 noundef 0) #13
  %scb_pool = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 12
  %2 = ptrtoint ptr %scb_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %scb_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #16
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_hw_isr(i32 noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_enable_ints(ptr noundef %asd_ha) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959544, i32 noundef 14) #13
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957476, i32 noundef 131072) #13
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959524, i32 noundef 121) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_init_post_escbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_create_dev_attrs(ptr nocapture noundef readonly %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_ha, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_aic_revision) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asd_ha, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call3 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_bios_build) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_rev_crit_edge

if.end.err_rev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_rev

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asd_ha, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call9 = tail call i32 @device_create_file(ptr noundef %dev8, ptr noundef nonnull @dev_attr_pcba_sn) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.err_biosb_crit_edge

if.end6.err_biosb_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_biosb

if.end12:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asd_ha, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call15 = tail call i32 @device_create_file(ptr noundef %dev14, ptr noundef nonnull @dev_attr_update_bios) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %err_update_bios

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_update_bios:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asd_ha, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev20, ptr noundef nonnull @dev_attr_pcba_sn) #13
  br label %err_biosb

err_biosb:                                        ; preds = %err_update_bios, %if.end6.err_biosb_crit_edge
  %err.0 = phi i32 [ %call9, %if.end6.err_biosb_crit_edge ], [ %call15, %err_update_bios ]
  %10 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asd_ha, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev22, ptr noundef nonnull @dev_attr_bios_build) #13
  br label %err_rev

err_rev:                                          ; preds = %err_biosb, %if.end.err_rev_crit_edge
  %err.1 = phi i32 [ %call3, %if.end.err_rev_crit_edge ], [ %err.0, %err_biosb ]
  %12 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asd_ha, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev24, ptr noundef nonnull @dev_attr_aic_revision) #13
  br label %cleanup

cleanup:                                          ; preds = %err_rev, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_rev ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_register_sas_ha(ptr noundef %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #18
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i.i39, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %call7.i.i.i) #13
  tail call void @kfree(ptr noundef %call7.i.i.i39) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %sas_ha_name = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %sas_ha_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sas_ha_name, align 4
  %lldd_module = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 11
  %5 = ptrtoint ptr %lldd_module to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %lldd_module, align 4
  %sas_addr = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 3
  %sas_addr5 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 14
  %6 = ptrtoint ptr %sas_addr5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sas_addr, ptr %sas_addr5, align 4
  %arrayidx6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx6, ptr %call7.i.i.i, align 8
  %arrayidx8 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 0
  %8 = ptrtoint ptr %call7.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx8, ptr %call7.i.i.i39, align 8
  %arrayidx6.1 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1
  %arrayidx7.1 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx6.1, ptr %arrayidx7.1, align 4
  %arrayidx8.1 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 1
  %arrayidx9.1 = getelementptr ptr, ptr %call7.i.i.i39, i32 1
  %10 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx8.1, ptr %arrayidx9.1, align 4
  %arrayidx6.2 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2
  %arrayidx7.2 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %11 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx6.2, ptr %arrayidx7.2, align 8
  %arrayidx8.2 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 2
  %arrayidx9.2 = getelementptr ptr, ptr %call7.i.i.i39, i32 2
  %12 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx8.2, ptr %arrayidx9.2, align 8
  %arrayidx6.3 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3
  %arrayidx7.3 = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %13 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx6.3, ptr %arrayidx7.3, align 4
  %arrayidx8.3 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 3
  %arrayidx9.3 = getelementptr ptr, ptr %call7.i.i.i39, i32 3
  %14 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx8.3, ptr %arrayidx9.3, align 4
  %arrayidx6.4 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4
  %arrayidx7.4 = getelementptr ptr, ptr %call7.i.i.i, i32 4
  %15 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx6.4, ptr %arrayidx7.4, align 8
  %arrayidx8.4 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 4
  %arrayidx9.4 = getelementptr ptr, ptr %call7.i.i.i39, i32 4
  %16 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx8.4, ptr %arrayidx9.4, align 8
  %arrayidx6.5 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5
  %arrayidx7.5 = getelementptr ptr, ptr %call7.i.i.i, i32 5
  %17 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx6.5, ptr %arrayidx7.5, align 4
  %arrayidx8.5 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 5
  %arrayidx9.5 = getelementptr ptr, ptr %call7.i.i.i39, i32 5
  %18 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx8.5, ptr %arrayidx9.5, align 4
  %arrayidx6.6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6
  %arrayidx7.6 = getelementptr ptr, ptr %call7.i.i.i, i32 6
  %19 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx6.6, ptr %arrayidx7.6, align 8
  %arrayidx8.6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 6
  %arrayidx9.6 = getelementptr ptr, ptr %call7.i.i.i39, i32 6
  %20 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx8.6, ptr %arrayidx9.6, align 8
  %arrayidx6.7 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7
  %arrayidx7.7 = getelementptr ptr, ptr %call7.i.i.i, i32 7
  %21 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx6.7, ptr %arrayidx7.7, align 4
  %arrayidx8.7 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 11, i32 7
  %arrayidx9.7 = getelementptr ptr, ptr %call7.i.i.i39, i32 7
  %22 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx8.7, ptr %arrayidx9.7, align 4
  %sas_ha = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2
  %sas_phy11 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 17
  %23 = ptrtoint ptr %sas_phy11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %sas_phy11, align 4
  %sas_port = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 18
  %24 = ptrtoint ptr %sas_port to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i39, ptr %sas_port, align 4
  %num_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 19
  %25 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %num_phys, align 4
  %call15 = tail call i32 @sas_register_ha(ptr noundef %sas_ha) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call15, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_remove_dev_attrs(ptr nocapture noundef readonly %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_ha, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_aic_revision) #13
  %2 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asd_ha, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_bios_build) #13
  %4 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asd_ha, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev4, ptr noundef nonnull @dev_attr_pcba_sn) #13
  %6 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asd_ha, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev6, ptr noundef nonnull @dev_attr_update_bios) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_chip_hardrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_destroy_ha_caches(ptr noundef %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ddb_ext = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 10
  %0 = ptrtoint ptr %ddb_ext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddb_ext, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %asd_free_coherent.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

asd_free_coherent.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asd_ha, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.asd_dma_tok, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_dma_tok, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #13
  %10 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %asd_free_coherent.exit, %entry.if.end_crit_edge
  %scb_ext = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 8
  %11 = ptrtoint ptr %scb_ext to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scb_ext, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %asd_free_coherent.exit108

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

asd_free_coherent.exit108:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asd_ha, align 4
  %dev.i104 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %size.i105 = getelementptr inbounds %struct.asd_dma_tok, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %size.i105 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i105, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %dma_handle.i106 = getelementptr inbounds %struct.asd_dma_tok, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %dma_handle.i106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_handle.i106, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i104, i32 noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 0) #13
  %21 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %12) #13
  br label %if.end8

if.end8:                                          ; preds = %asd_free_coherent.exit108, %if.end.if.end8_crit_edge
  %ddb_bitmap = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 12
  %22 = ptrtoint ptr %ddb_bitmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddb_bitmap, align 4
  tail call void @kfree(ptr noundef %23) #13
  %24 = ptrtoint ptr %ddb_bitmap to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ddb_bitmap, align 4
  br label %for.body

for.body:                                         ; preds = %asd_free_coherent.exit114.for.body_crit_edge, %if.end8
  %i.0131 = phi i32 [ 0, %if.end8 ], [ %inc, %asd_free_coherent.exit114.for.body_crit_edge ]
  %id_frm_tok = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %i.0131, i32 3
  %25 = ptrtoint ptr %id_frm_tok to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %id_frm_tok, align 4
  %tobool.not.i109 = icmp eq ptr %26, null
  br i1 %tobool.not.i109, label %for.body.asd_free_coherent.exit114_crit_edge, label %if.then.i113

for.body.asd_free_coherent.exit114_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_coherent.exit114

if.then.i113:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asd_ha, align 4
  %dev.i110 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %size.i111 = getelementptr inbounds %struct.asd_dma_tok, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %size.i111 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i111, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %dma_handle.i112 = getelementptr inbounds %struct.asd_dma_tok, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %dma_handle.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_handle.i112, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i110, i32 noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 0) #13
  %35 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef nonnull %26) #13
  br label %asd_free_coherent.exit114

asd_free_coherent.exit114:                        ; preds = %if.then.i113, %for.body.asd_free_coherent.exit114_crit_edge
  %inc = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %asd_free_coherent.exit114.for.body_crit_edge

asd_free_coherent.exit114.for.body_crit_edge:     ; preds = %asd_free_coherent.exit114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %asd_free_coherent.exit114
  %escb_arr = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 18
  %36 = ptrtoint ptr %escb_arr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %escb_arr, align 4
  %tobool12.not = icmp eq ptr %37, null
  br i1 %tobool12.not, label %for.end.if.end14_crit_edge, label %if.then13

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %for.end
  %num_escbs.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 17
  %38 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_escbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp18.i = icmp sgt i32 %39, 0
  br i1 %cmp18.i, label %if.then13.for.body.i_crit_edge, label %if.then13.asd_free_escbs.exit_crit_edge

if.then13.asd_free_escbs.exit_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_escbs.exit

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

for.body.i:                                       ; preds = %asd_ascb_free.exit.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %asd_ascb_free.exit.i.for.body.i_crit_edge ], [ 0, %if.then13.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %escb_arr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %escb_arr, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %i.019.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %43, align 4
  %cmp.i.not.i = icmp eq ptr %45, %43
  br i1 %cmp.i.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i115

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i115:                                     ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %43) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i115.list_del_init.exit.i_crit_edge

if.then.i115.list_del_init.exit.i_crit_edge:      ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i115.list_del_init.exit.i_crit_edge
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %43, ptr %43, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %43, ptr %prev.i3.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del_init.exit.i, %for.body.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %escb_arr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %escb_arr, align 4
  %arrayidx6.i = getelementptr ptr, ptr %55, i32 %i.019.i
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.end.i.asd_ascb_free.exit.i_crit_edge, label %if.then.i.i

if.end.i.asd_ascb_free.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_ascb_free.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %ha.i.i = getelementptr inbounds %struct.asd_ascb, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ha.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %57, align 4
  %cmp.i.not.i.i = icmp eq ptr %61, %57
  br i1 %cmp.i.not.i.i, label %do.body13.i.i, label %do.body6.i.i, !prof !261

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #13, !srcloc !262
  unreachable

do.body13.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tc_index_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %59, i32 0, i32 13, i32 6
  %call16.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i) #13
  %62 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ha.i.i, align 4
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %57, i32 0, i32 12
  %64 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tc_index.i.i, align 4
  %tc_index_array.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %63, i32 0, i32 13, i32 7
  %66 = ptrtoint ptr %tc_index_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tc_index_array.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %67, i32 %65
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %tc_index_bitmap.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %63, i32 0, i32 13, i32 8
  %69 = ptrtoint ptr %tc_index_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tc_index_bitmap.i.i.i, align 4
  tail call void @_clear_bit(i32 noundef %65, ptr noundef %70) #13
  %71 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ha.i.i, align 4
  %tc_index_lock25.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %72, i32 0, i32 13, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i, i32 noundef %call16.i.i) #13
  %scb_pool.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %59, i32 0, i32 12
  %73 = ptrtoint ptr %scb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %scb_pool.i.i, align 4
  %dma_scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %57, i32 0, i32 3
  %75 = ptrtoint ptr %dma_scb.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_scb.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ascb, ptr %57, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_handle.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %74, ptr noundef %76, i32 noundef %78) #13
  %79 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %57) #13
  br label %asd_ascb_free.exit.i

asd_ascb_free.exit.i:                             ; preds = %do.body13.i.i, %if.end.i.asd_ascb_free.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %80 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_escbs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %81
  br i1 %cmp.i, label %asd_ascb_free.exit.i.for.body.i_crit_edge, label %asd_ascb_free.exit.i.asd_free_escbs.exit_crit_edge

asd_ascb_free.exit.i.asd_free_escbs.exit_crit_edge: ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_escbs.exit

asd_ascb_free.exit.i.for.body.i_crit_edge:        ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

asd_free_escbs.exit:                              ; preds = %asd_ascb_free.exit.i.asd_free_escbs.exit_crit_edge, %if.then13.asd_free_escbs.exit_crit_edge
  %82 = ptrtoint ptr %escb_arr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %escb_arr, align 4
  tail call void @kfree(ptr noundef %83) #13
  %84 = ptrtoint ptr %escb_arr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %escb_arr, align 4
  br label %if.end14

if.end14:                                         ; preds = %asd_free_escbs.exit, %for.end.if.end14_crit_edge
  %edb_arr = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 16
  %85 = ptrtoint ptr %edb_arr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %edb_arr, align 4
  %tobool16.not = icmp eq ptr %86, null
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  %num_edbs.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 15
  %87 = ptrtoint ptr %num_edbs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_edbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp10.i = icmp sgt i32 %88, 0
  br i1 %cmp10.i, label %if.then17.for.body.i119_crit_edge, label %if.then17.asd_free_edbs.exit_crit_edge

if.then17.asd_free_edbs.exit_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_edbs.exit

if.then17.for.body.i119_crit_edge:                ; preds = %if.then17
  br label %for.body.i119

for.body.i119:                                    ; preds = %asd_free_coherent.exit.i.for.body.i119_crit_edge, %if.then17.for.body.i119_crit_edge
  %i.011.i = phi i32 [ %inc.i122, %asd_free_coherent.exit.i.for.body.i119_crit_edge ], [ 0, %if.then17.for.body.i119_crit_edge ]
  %89 = ptrtoint ptr %edb_arr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %edb_arr, align 4
  %arrayidx.i117 = getelementptr ptr, ptr %90, i32 %i.011.i
  %91 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i117, align 4
  %tobool.not.i.i118 = icmp eq ptr %92, null
  br i1 %tobool.not.i.i118, label %for.body.i119.asd_free_coherent.exit.i_crit_edge, label %if.then.i.i121

for.body.i119.asd_free_coherent.exit.i_crit_edge: ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_coherent.exit.i

if.then.i.i121:                                   ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %asd_ha, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %size.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %92, i32 0, i32 2
  %95 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size.i.i, align 4
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %92, align 4
  %dma_handle.i.i120 = getelementptr inbounds %struct.asd_dma_tok, ptr %92, i32 0, i32 1
  %99 = ptrtoint ptr %dma_handle.i.i120 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_handle.i.i120, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %96, ptr noundef %98, i32 noundef %100, i32 noundef 0) #13
  %101 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %101, ptr noundef nonnull %92) #13
  br label %asd_free_coherent.exit.i

asd_free_coherent.exit.i:                         ; preds = %if.then.i.i121, %for.body.i119.asd_free_coherent.exit.i_crit_edge
  %inc.i122 = add nuw nsw i32 %i.011.i, 1
  %102 = ptrtoint ptr %num_edbs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_edbs.i, align 4
  %cmp.i123 = icmp slt i32 %inc.i122, %103
  br i1 %cmp.i123, label %asd_free_coherent.exit.i.for.body.i119_crit_edge, label %asd_free_coherent.exit.i.asd_free_edbs.exit_crit_edge

asd_free_coherent.exit.i.asd_free_edbs.exit_crit_edge: ; preds = %asd_free_coherent.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %asd_free_edbs.exit

asd_free_coherent.exit.i.for.body.i119_crit_edge: ; preds = %asd_free_coherent.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i119

asd_free_edbs.exit:                               ; preds = %asd_free_coherent.exit.i.asd_free_edbs.exit_crit_edge, %if.then17.asd_free_edbs.exit_crit_edge
  %104 = ptrtoint ptr %edb_arr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %edb_arr, align 4
  tail call void @kfree(ptr noundef %105) #13
  %106 = ptrtoint ptr %edb_arr to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %edb_arr, align 4
  br label %if.end18

if.end18:                                         ; preds = %asd_free_edbs.exit, %if.end14.if.end18_crit_edge
  %area = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 1, i32 2
  %107 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %area, align 4
  %tobool20.not = icmp eq ptr %108, null
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %if.then21

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %108) #13
  %109 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %area, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end18.if.end28_crit_edge
  %tc_index_array = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 7
  %110 = ptrtoint ptr %tc_index_array to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tc_index_array, align 4
  %tobool30.not = icmp eq ptr %111, null
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %111) #13
  %tc_index_bitmap = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 8
  %112 = ptrtoint ptr %tc_index_bitmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tc_index_bitmap, align 4
  tail call void @kfree(ptr noundef %113) #13
  %114 = ptrtoint ptr %tc_index_array to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %tc_index_array, align 4
  %115 = ptrtoint ptr %tc_index_bitmap to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %tc_index_bitmap, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.end28.if.end39_crit_edge
  %actual_dl = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 12
  %116 = ptrtoint ptr %actual_dl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %actual_dl, align 4
  %tobool41.not = icmp eq ptr %117, null
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %asd_free_coherent.exit130

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

asd_free_coherent.exit130:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %asd_ha, align 4
  %dev.i125 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %size.i126 = getelementptr inbounds %struct.asd_dma_tok, ptr %117, i32 0, i32 2
  %120 = ptrtoint ptr %size.i126 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %size.i126, align 4
  %122 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %117, align 4
  %dma_handle.i127 = getelementptr inbounds %struct.asd_dma_tok, ptr %117, i32 0, i32 1
  %124 = ptrtoint ptr %dma_handle.i127 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_handle.i127, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i125, i32 noundef %121, ptr noundef %123, i32 noundef %125, i32 noundef 0) #13
  %126 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %126, ptr noundef nonnull %117) #13
  %127 = ptrtoint ptr %actual_dl to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %actual_dl, align 4
  %dl = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 11
  %128 = ptrtoint ptr %dl to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %dl, align 4
  br label %if.end48

if.end48:                                         ; preds = %asd_free_coherent.exit130, %if.end39.if.end48_crit_edge
  %next_scb = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5
  %129 = ptrtoint ptr %next_scb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %next_scb, align 4
  %tobool50.not = icmp eq ptr %130, null
  br i1 %tobool50.not, label %if.end48.if.end60_crit_edge, label %if.then51

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %scb_pool = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 12
  %131 = ptrtoint ptr %scb_pool to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %scb_pool, align 4
  %dma_handle = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 1
  %133 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma_handle, align 4
  tail call void @dma_pool_free(ptr noundef %132, ptr noundef nonnull %130, i32 noundef %134) #13
  %135 = ptrtoint ptr %next_scb to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %next_scb, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then51, %if.end48.if.end60_crit_edge
  %scb_pool61 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 12
  %136 = ptrtoint ptr %scb_pool61 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %scb_pool61, align 4
  tail call void @dma_pool_destroy(ptr noundef %137) #13
  %138 = ptrtoint ptr %scb_pool61 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %scb_pool61, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_unmap_ha(ptr nocapture noundef readonly %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %iospace = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %0 = ptrtoint ptr %iospace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iospace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %io_handle1.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @iounmap(ptr noundef %3) #13
  %4 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asd_ha, align 4
  tail call void @pci_release_region(ptr noundef %5, i32 noundef 2) #13
  %6 = ptrtoint ptr %io_handle1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_handle1.i, align 4
  tail call void @iounmap(ptr noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink3 = phi i32 [ 0, %if.else ], [ 4, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asd_ha, align 4
  tail call void @pci_release_region(ptr noundef %9, i32 noundef %.sink3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_scan_finished(ptr nocapture noundef readonly %shost, i32 noundef %time) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %time)
  %cmp = icmp ult i32 %time, 100
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %call = tail call i32 @sas_drain_work(ptr noundef %1) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_scan_start(ptr nocapture noundef readonly %shost) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %enabled_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %3, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled_phys, align 1
  %call = tail call i32 @asd_enable_phys(ptr noundef %3, i8 noundef zeroext %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_drain_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_enable_phys(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_aic9410_setup(ptr nocapture noundef %asd_ha) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asd_common_setup(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %addr_range = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 15
  %0 = ptrtoint ptr %addr_range to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %addr_range, align 4
  %port_name_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 16
  %1 = ptrtoint ptr %port_name_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %port_name_base, align 4
  %dev_name_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 17
  %2 = ptrtoint ptr %dev_name_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %dev_name_base, align 4
  %sata_name_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 18
  %3 = ptrtoint ptr %sata_name_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %sata_name_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_aic9405_setup(ptr nocapture noundef %asd_ha) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asd_common_setup(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %addr_range = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 15
  %0 = ptrtoint ptr %addr_range to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %addr_range, align 4
  %port_name_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 16
  %1 = ptrtoint ptr %port_name_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %port_name_base, align 4
  %dev_name_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 17
  %2 = ptrtoint ptr %dev_name_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %dev_name_base, align 4
  %sata_name_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 18
  %3 = ptrtoint ptr %sata_name_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %sata_name_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_common_setup(ptr nocapture noundef %asd_ha) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_ha, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  %revision_id = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 3
  %4 = ptrtoint ptr %revision_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %revision_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp ult i8 %3, 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %do.end.pci_name.exit_crit_edge ]
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [30 x ptr], ptr @asd_dev_rev, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %retval.0.i.i, ptr noundef %10, i32 noundef %idxprom) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %max_scbs = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 7
  %11 = ptrtoint ptr %max_scbs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %max_scbs, align 4
  %max_ddbs = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %max_ddbs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %max_ddbs, align 4
  %num_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 13
  %13 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %num_phys, align 4
  %enabled_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %enabled_phys, align 1
  %max_sas_lrate = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %max_sas_lrate to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %max_sas_lrate, align 1
  %min_sas_lrate = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 0, i32 2
  %16 = ptrtoint ptr %min_sas_lrate to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %min_sas_lrate, align 1
  %max_sata_lrate = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 0, i32 3
  %17 = ptrtoint ptr %max_sata_lrate to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %max_sata_lrate, align 1
  %min_sata_lrate = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 0, i32 4
  %18 = ptrtoint ptr %min_sata_lrate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %min_sata_lrate, align 1
  %max_sas_lrate.1 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 1, i32 1
  %19 = ptrtoint ptr %max_sas_lrate.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %max_sas_lrate.1, align 1
  %min_sas_lrate.1 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 1, i32 2
  %20 = ptrtoint ptr %min_sas_lrate.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %min_sas_lrate.1, align 1
  %max_sata_lrate.1 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 1, i32 3
  %21 = ptrtoint ptr %max_sata_lrate.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %max_sata_lrate.1, align 1
  %min_sata_lrate.1 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 1, i32 4
  %22 = ptrtoint ptr %min_sata_lrate.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %min_sata_lrate.1, align 1
  %max_sas_lrate.2 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 2, i32 1
  %23 = ptrtoint ptr %max_sas_lrate.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 9, ptr %max_sas_lrate.2, align 1
  %min_sas_lrate.2 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 2, i32 2
  %24 = ptrtoint ptr %min_sas_lrate.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %min_sas_lrate.2, align 1
  %max_sata_lrate.2 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 2, i32 3
  %25 = ptrtoint ptr %max_sata_lrate.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %max_sata_lrate.2, align 1
  %min_sata_lrate.2 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 2, i32 4
  %26 = ptrtoint ptr %min_sata_lrate.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %min_sata_lrate.2, align 1
  %max_sas_lrate.3 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 3, i32 1
  %27 = ptrtoint ptr %max_sas_lrate.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 9, ptr %max_sas_lrate.3, align 1
  %min_sas_lrate.3 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 3, i32 2
  %28 = ptrtoint ptr %min_sas_lrate.3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %min_sas_lrate.3, align 1
  %max_sata_lrate.3 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 3, i32 3
  %29 = ptrtoint ptr %max_sata_lrate.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %max_sata_lrate.3, align 1
  %min_sata_lrate.3 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 3, i32 4
  %30 = ptrtoint ptr %min_sata_lrate.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %min_sata_lrate.3, align 1
  %max_sas_lrate.4 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 4, i32 1
  %31 = ptrtoint ptr %max_sas_lrate.4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %max_sas_lrate.4, align 1
  %min_sas_lrate.4 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 4, i32 2
  %32 = ptrtoint ptr %min_sas_lrate.4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %min_sas_lrate.4, align 1
  %max_sata_lrate.4 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 4, i32 3
  %33 = ptrtoint ptr %max_sata_lrate.4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %max_sata_lrate.4, align 1
  %min_sata_lrate.4 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 4, i32 4
  %34 = ptrtoint ptr %min_sata_lrate.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %min_sata_lrate.4, align 1
  %max_sas_lrate.5 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 5, i32 1
  %35 = ptrtoint ptr %max_sas_lrate.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %max_sas_lrate.5, align 1
  %min_sas_lrate.5 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 5, i32 2
  %36 = ptrtoint ptr %min_sas_lrate.5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %min_sas_lrate.5, align 1
  %max_sata_lrate.5 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 5, i32 3
  %37 = ptrtoint ptr %max_sata_lrate.5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %max_sata_lrate.5, align 1
  %min_sata_lrate.5 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 5, i32 4
  %38 = ptrtoint ptr %min_sata_lrate.5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %min_sata_lrate.5, align 1
  %max_sas_lrate.6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 6, i32 1
  %39 = ptrtoint ptr %max_sas_lrate.6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 9, ptr %max_sas_lrate.6, align 1
  %min_sas_lrate.6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 6, i32 2
  %40 = ptrtoint ptr %min_sas_lrate.6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %min_sas_lrate.6, align 1
  %max_sata_lrate.6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 6, i32 3
  %41 = ptrtoint ptr %max_sata_lrate.6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %max_sata_lrate.6, align 1
  %min_sata_lrate.6 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 6, i32 4
  %42 = ptrtoint ptr %min_sata_lrate.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 8, ptr %min_sata_lrate.6, align 1
  %max_sas_lrate.7 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 7, i32 1
  %43 = ptrtoint ptr %max_sas_lrate.7 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %max_sas_lrate.7, align 1
  %min_sas_lrate.7 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 7, i32 2
  %44 = ptrtoint ptr %min_sas_lrate.7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %min_sas_lrate.7, align 1
  %max_sata_lrate.7 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 7, i32 3
  %45 = ptrtoint ptr %max_sata_lrate.7 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %max_sata_lrate.7, align 1
  %min_sata_lrate.7 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 7, i32 4
  %46 = ptrtoint ptr %min_sata_lrate.7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 8, ptr %min_sata_lrate.7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pci_name.exit
  %retval.0 = phi i32 [ -19, %pci_name.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_show_dev_rev(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %revision_id = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [30 x ptr], ptr @asd_dev_rev, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_show_dev_bios_build(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bld = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 0, i32 3
  %2 = ptrtoint ptr %bld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bld, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.74, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_show_dev_pcba_sn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pcba_sn = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %pcba_sn)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_show_update_bios(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bios_status = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bios_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bios_status, align 4
  %4 = add i32 %3, -256
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 24)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.inc.12 [
    i32 0, label %entry.if.then6_crit_edge
    i32 1, label %if.then6.fold.split
    i32 2, label %entry.for.end_crit_edge
    i32 3, label %for.end.fold.split
    i32 4, label %for.end.fold.split30
    i32 5, label %for.end.fold.split31
    i32 6, label %for.end.fold.split32
    i32 7, label %for.end.fold.split33
    i32 8, label %for.end.fold.split34
    i32 15, label %for.end.fold.split35
    i32 9, label %for.end.fold.split36
    i32 10, label %for.end.fold.split37
    i32 11, label %for.end.fold.split38
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

for.inc.12:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split38, %for.end.fold.split37, %for.end.fold.split36, %for.end.fold.split35, %for.end.fold.split34, %for.end.fold.split33, %for.end.fold.split32, %for.end.fold.split31, %for.end.fold.split30, %for.end.fold.split, %for.inc.12, %entry.for.end_crit_edge
  %i.0.lcssa.ph = phi i32 [ 13, %for.inc.12 ], [ %5, %entry.for.end_crit_edge ], [ %5, %for.end.fold.split ], [ %5, %for.end.fold.split30 ], [ %5, %for.end.fold.split31 ], [ %5, %for.end.fold.split32 ], [ %5, %for.end.fold.split33 ], [ %5, %for.end.fold.split34 ], [ 9, %for.end.fold.split35 ], [ 10, %for.end.fold.split36 ], [ 11, %for.end.fold.split37 ], [ 12, %for.end.fold.split38 ]
  %err_code.lcssa.ph = phi ptr [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 13, i32 1), %for.inc.12 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 2, i32 1), %entry.for.end_crit_edge ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 3, i32 1), %for.end.fold.split ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 4, i32 1), %for.end.fold.split30 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 5, i32 1), %for.end.fold.split31 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 6, i32 1), %for.end.fold.split32 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 7, i32 1), %for.end.fold.split33 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 8, i32 1), %for.end.fold.split34 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 9, i32 1), %for.end.fold.split35 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 10, i32 1), %for.end.fold.split36 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 11, i32 1), %for.end.fold.split37 ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 12, i32 1), %for.end.fold.split38 ]
  %7 = ptrtoint ptr %bios_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %bios_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %.pr)
  %cmp5.not = icmp eq i32 %.pr, 4096
  br i1 %cmp5.not, label %for.end.if.end8_crit_edge, label %for.end.if.then6_crit_edge

for.end.if.then6_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %if.then6.fold.split, %for.end.if.then6_crit_edge, %entry.if.then6_crit_edge
  %err_code.lcssa28 = phi ptr [ %err_code.lcssa.ph, %for.end.if.then6_crit_edge ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 0, i32 1), %entry.if.then6_crit_edge ], [ getelementptr inbounds ([14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 1, i32 1), %if.then6.fold.split ]
  %i.0.lcssa26 = phi i32 [ %i.0.lcssa.ph, %for.end.if.then6_crit_edge ], [ %5, %entry.if.then6_crit_edge ], [ 1, %if.then6.fold.split ]
  %8 = ptrtoint ptr %bios_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bios_status, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end.if.end8_crit_edge
  %err_code.lcssa29 = phi ptr [ %err_code.lcssa28, %if.then6 ], [ %err_code.lcssa.ph, %for.end.if.end8_crit_edge ]
  %i.0.lcssa27 = phi i32 [ %i.0.lcssa26, %if.then6 ], [ %i.0.lcssa.ph, %for.end.if.end8_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.error_bios], ptr @flash_error_table, i32 0, i32 %i.0.lcssa27
  %9 = ptrtoint ptr %err_code.lcssa29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err_code.lcssa29, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.77, i32 noundef %10, ptr noundef %12)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asd_store_update_bios(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 2) #13
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.out.thread_crit_edge, label %if.end7.i.i, !prof !264

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.out.thread_crit_edge, label %if.end

if.end7.i.i.out.thread_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end:                                           ; preds = %if.end7.i.i
  %add.ptr2 = getelementptr i8, ptr %call8.i.i, i32 %count
  %call3 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.92, ptr noundef nonnull %call8.i.i, ptr noundef %add.ptr2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %if.end
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.flash_command], ptr @flash_command_table, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not217 = icmp eq i32 %5, 0
  br i1 %cmp6.not217, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %call8 = tail call i32 @strlen(ptr noundef nonnull %call8.i.i) #19
  %bcmp225 = tail call i32 @bcmp(ptr nonnull @flash_command_table, ptr nonnull %call8.i.i, i32 %call8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp225)
  %tobool10.not226 = icmp eq i32 %bcmp225, 0
  br i1 %tobool10.not226, label %for.body.lr.ph.if.end17_crit_edge, label %for.body.lr.ph.for.cond_crit_edge

for.body.lr.ph.for.cond_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.cond

for.body.lr.ph.if.end17_crit_edge:                ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.lr.ph.for.cond_crit_edge
  %i.0218227 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.lr.ph.for.cond_crit_edge ]
  %inc = add i32 %i.0218227, 1
  %code = getelementptr [3 x %struct.flash_command], ptr @flash_command_table, i32 0, i32 %inc, i32 1
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [3 x %struct.flash_command], ptr @flash_command_table, i32 0, i32 %inc
  %bcmp = tail call i32 @bcmp(ptr %arrayidx, ptr nonnull %call8.i.i, i32 %call8) #19
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %for.body.if.end17_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %for.body.if.end17_crit_edge, %for.body.lr.ph.if.end17_crit_edge
  %.lcssa = phi i32 [ %5, %for.body.lr.ph.if.end17_crit_edge ], [ %7, %for.body.if.end17_crit_edge ]
  %bios_status = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %bios_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bios_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %cmp18 = icmp eq i32 %9, 4096
  br i1 %cmp18, label %if.end17.out_crit_edge, label %if.end20

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end20:                                         ; preds = %if.end17
  %bios_image = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call22 = tail call i32 @request_firmware(ptr noundef %bios_image, ptr noundef %add.ptr2, ptr noundef %dev21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %add.ptr2, i32 noundef %call22) #16
  br label %out

if.end27:                                         ; preds = %if.end20
  %12 = ptrtoint ptr %bios_image to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios_image, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %contrl_id = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %contrl_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %contrl_id, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %vendor30 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %vendor30 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vendor30, align 8
  %conv = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp31.not = icmp eq i32 %17, %conv
  br i1 %cmp31.not, label %lor.lhs.false, label %if.end27.land.lhs.true_crit_edge

if.end27.land.lhs.true_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end27
  %device = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device, align 4
  %device35 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %24 = ptrtoint ptr %device35 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device35, align 2
  %conv36 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv36)
  %cmp37.not = icmp eq i32 %23, %conv36
  br i1 %cmp37.not, label %lor.lhs.false.if.end77_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end27.land.lhs.true_crit_edge
  %sub_vendor = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %sub_vendor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sub_vendor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv)
  %cmp43.not = icmp eq i32 %27, %conv
  br i1 %cmp43.not, label %lor.lhs.false45, label %land.lhs.true.do.end55_crit_edge

land.lhs.true.do.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

lor.lhs.false45:                                  ; preds = %land.lhs.true
  %sub_device = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %sub_device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sub_device, align 4
  %device48 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %30 = ptrtoint ptr %device48 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %device48, align 2
  %conv49 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv49)
  %cmp50.not = icmp eq i32 %29, %conv49
  br i1 %cmp50.not, label %lor.lhs.false45.if.end77_crit_edge, label %lor.lhs.false45.do.end55_crit_edge

lor.lhs.false45.do.end55_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

lor.lhs.false45.if.end77_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.end55:                                         ; preds = %lor.lhs.false45.do.end55_crit_edge, %land.lhs.true.do.end55_crit_edge
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #16
  %32 = ptrtoint ptr %contrl_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %contrl_id, align 4
  %device65 = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device65, align 4
  %36 = ptrtoint ptr %sub_vendor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sub_vendor, align 4
  %sub_device69 = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %sub_device69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sub_device69, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %vendor71 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %vendor71 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vendor71, align 8
  %conv72 = zext i16 %43 to i32
  %device74 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 8
  %44 = ptrtoint ptr %device74 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %device74, align 2
  %conv75 = zext i16 %45 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %conv72, i32 noundef %conv75) #16
  br label %out2

if.end77:                                         ; preds = %lor.lhs.false45.if.end77_crit_edge, %lor.lhs.false.if.end77_crit_edge
  %filelen = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 4
  %46 = ptrtoint ptr %filelen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %filelen, align 4
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp79.not = icmp eq i32 %47, %49
  br i1 %cmp79.not, label %for.cond83.preheader, label %if.end77.out2_crit_edge

if.end77.out2_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

for.cond83.preheader:                             ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp85219.not = icmp eq i32 %47, 0
  br i1 %cmp85219.not, label %for.cond83.preheader.for.end94_crit_edge, label %for.cond83.preheader.for.body87_crit_edge

for.cond83.preheader.for.body87_crit_edge:        ; preds = %for.cond83.preheader
  br label %for.body87

for.cond83.preheader.for.end94_crit_edge:         ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end94

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %for.cond83.preheader.for.body87_crit_edge
  %csum.0221 = phi i32 [ %add, %for.body87.for.body87_crit_edge ], [ 0, %for.cond83.preheader.for.body87_crit_edge ]
  %i.1220 = phi i32 [ %inc93, %for.body87.for.body87_crit_edge ], [ 0, %for.cond83.preheader.for.body87_crit_edge ]
  %arrayidx90 = getelementptr i8, ptr %15, i32 %i.1220
  %50 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %51 to i32
  %add = add i32 %csum.0221, %conv91
  %inc93 = add nuw i32 %i.1220, 1
  %exitcond.not = icmp eq i32 %inc93, %47
  br i1 %exitcond.not, label %for.end94.loopexit, label %for.body87.for.body87_crit_edge

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body87

for.end94.loopexit:                               ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = and i32 %add, 65535
  br label %for.end94

for.end94:                                        ; preds = %for.end94.loopexit, %for.cond83.preheader.for.end94_crit_edge
  %csum.0.lcssa = phi i32 [ 0, %for.cond83.preheader.for.end94_crit_edge ], [ %phi.bo, %for.end94.loopexit ]
  %checksum = getelementptr inbounds %struct.bios_file_header, ptr %15, i32 0, i32 1
  %52 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %checksum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %csum.0.lcssa, i32 %53)
  %cmp95.not = icmp eq i32 %csum.0.lcssa, %53
  br i1 %cmp95.not, label %if.end103, label %do.end100

do.end100:                                        ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #15
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #16
  br label %out2

if.end103:                                        ; preds = %for.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa)
  %cmp104 = icmp eq i32 %.lcssa, 1
  %54 = ptrtoint ptr %bios_status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4096, ptr %bios_status, align 4
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %arrayidx110 = getelementptr i8, ptr %56, i32 96
  %57 = ptrtoint ptr %filelen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %filelen, align 4
  %sub = add i32 %58, -96
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %if.end103
  %call112 = tail call i32 @asd_write_flash_seg(ptr noundef %1, ptr noundef %arrayidx110, i32 noundef 0, i32 noundef %sub) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then114, label %if.then106.out2_crit_edge

if.then106.out2_crit_edge:                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

if.then114:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %bios_image to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bios_image, align 4
  %data116 = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %data116 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data116, align 4
  %arrayidx117 = getelementptr i8, ptr %62, i32 96
  %63 = ptrtoint ptr %filelen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %filelen, align 4
  %sub119 = add i32 %64, -96
  %call120 = tail call i32 @asd_verify_flash_seg(ptr noundef %1, ptr noundef %arrayidx117, i32 noundef 0, i32 noundef %sub119) #13
  br label %out2

if.else:                                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %call128 = tail call i32 @asd_verify_flash_seg(ptr noundef %1, ptr noundef %arrayidx110, i32 noundef 0, i32 noundef %sub) #13
  br label %out2

out2:                                             ; preds = %if.else, %if.then114, %if.then106.out2_crit_edge, %do.end100, %if.end77.out2_crit_edge, %do.end55
  %err.0 = phi i32 [ 512, %do.end55 ], [ 768, %do.end100 ], [ %call112, %if.then106.out2_crit_edge ], [ %call120, %if.then114 ], [ %call128, %if.else ], [ 2560, %if.end77.out2_crit_edge ]
  %65 = ptrtoint ptr %bios_image to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bios_image, align 4
  tail call void @release_firmware(ptr noundef %66) #13
  br label %out

out.thread:                                       ; preds = %if.end7.i.i.out.thread_crit_edge, %entry.out.thread_crit_edge
  %bios_status131213 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 14
  %67 = ptrtoint ptr %bios_status131213 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3072, ptr %bios_status131213, align 4
  br label %69

out:                                              ; preds = %out2, %do.end, %if.end17.out_crit_edge, %for.cond.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end.out_crit_edge
  %err.1 = phi i32 [ 256, %do.end ], [ %err.0, %out2 ], [ 2816, %if.end.out_crit_edge ], [ 4096, %if.end17.out_crit_edge ], [ 2816, %for.cond.preheader.out_crit_edge ], [ 2816, %for.cond.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  %bios_status131 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 14
  %68 = ptrtoint ptr %bios_status131 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %err.1, ptr %bios_status131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool132.not = icmp eq i32 %err.1, 0
  %sub135 = sub i32 0, %err.1
  %spec.select = select i1 %tobool132.not, i32 %count, i32 %sub135
  br label %69

69:                                               ; preds = %out, %out.thread
  %70 = phi i32 [ -3072, %out.thread ], [ %spec.select, %out ]
  ret i32 %70
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_write_flash_seg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_verify_flash_seg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_register_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_unregister_ha(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_turn_led(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_control_led(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_domain_attach_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_dev_found(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_dev_gone(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_execute_task(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_abort_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_abort_task_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_clear_aca(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_clear_task_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_I_T_nexus_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_set_dmamode(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_lu_reset(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_query_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_clear_nexus_port(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_clear_nexus_ha(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_control_phy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !161, !162, !164, !166, !167, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !241, !242, !243, !244, !246, !248, !249, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__param_use_msi, !1, !"__param_use_msi", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_msitype290, !1, !"__UNIQUE_ID_use_msitype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_msi291, !4, !"__UNIQUE_ID_use_msi291", i1 false, i1 false}
!4 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 30, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1045, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @aic94xx_exit._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @aic94xx_exit._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_aic94xx__292_1049_aic94xx_init6, !14, !"__initcall__kmod_aic94xx__292_1049_aic94xx_init6", i1 false, i1 false}
!14 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1049, i32 1}
!15 = !{ptr @__exitcall_aic94xx_exit, !16, !"__exitcall_aic94xx_exit", i1 false, i1 false}
!16 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1050, i32 1}
!17 = !{ptr @__UNIQUE_ID_author293, !18, !"__UNIQUE_ID_author293", i1 false, i1 false}
!18 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1052, i32 1}
!19 = !{ptr @__UNIQUE_ID_description294, !20, !"__UNIQUE_ID_description294", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1053, i32 1}
!21 = !{ptr @__UNIQUE_ID_file295, !22, !"__UNIQUE_ID_file295", i1 false, i1 false}
!22 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1054, i32 1}
!23 = !{ptr @__UNIQUE_ID_license296, !22, !"__UNIQUE_ID_license296", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_version297, !25, !"__UNIQUE_ID_version297", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1055, i32 1}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__modver_attr, !25, !"__modver_attr", i1 false, i1 false}
!29 = !{ptr @aic94xx_transport_template, !30, !"aic94xx_transport_template", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 34, i32 40}
!31 = !{ptr @asd_dma_token_cache, !32, !"asd_dma_token_cache", i1 false, i1 false}
!32 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 609, i32 20}
!33 = !{ptr @asd_ascb_cache, !34, !"asd_ascb_cache", i1 false, i1 false}
!34 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 610, i32 20}
!35 = !{ptr @__param_str_use_msi, !1, !"__param_str_use_msi", i1 false, i1 false}
!36 = !{ptr @use_msi, !37, !"use_msi", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 28, i32 12}
!38 = !{ptr @driver_attr_version, !39, !"driver_attr_version", i1 false, i1 false}
!39 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 943, i32 8}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 941, i32 34}
!42 = !{ptr @aic94xx_pci_driver, !43, !"aic94xx_pci_driver", i1 false, i1 false}
!43 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 992, i32 26}
!44 = !{ptr @aic94xx_pci_table, !45, !"aic94xx_pci_table", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 977, i32 35}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 709, i32 3}
!48 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @asd_pci_probe._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @asd_pci_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 714, i32 3}
!53 = !{ptr @asd_pci_probe._entry.10, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @asd_pci_probe._entry_ptr.12, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 730, i32 3}
!57 = !{ptr @asd_pci_probe._entry.13, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @asd_pci_probe._entry_ptr.15, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 739, i32 2}
!61 = !{ptr @asd_pci_probe._entry.16, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @asd_pci_probe._entry_ptr.18, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 761, i32 3}
!65 = !{ptr @asd_pci_probe._entry.19, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @asd_pci_probe._entry_ptr.21, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 779, i32 2}
!69 = !{ptr @asd_pci_probe._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @asd_pci_probe._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 796, i32 3}
!76 = !{ptr @asd_pci_probe._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @asd_pci_probe._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 804, i32 3}
!80 = !{ptr @asd_pci_probe._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @asd_pci_probe._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 808, i32 2}
!84 = !{ptr @asd_pci_probe._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @asd_pci_probe._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @aic94xx_sht, !87, !"aic94xx_sht", i1 false, i1 false}
!87 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 38, i32 34}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 925, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @asd_scan_start._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @asd_scan_start._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 509, i32 13}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 512, i32 13}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 515, i32 13}
!99 = !{ptr @asd_pcidev_data, !100, !"asd_pcidev_data", i1 false, i1 false}
!100 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 507, i32 3}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 205, i32 3}
!103 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @asd_common_setup._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @asd_common_setup._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 192, i32 8}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 193, i32 8}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 194, i32 8}
!112 = !{ptr @asd_dev_rev, !113, !"asd_dev_rev", i1 false, i1 false}
!113 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 191, i32 20}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 158, i32 3}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @asd_map_ha._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @asd_map_ha._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 170, i32 3}
!121 = !{ptr @asd_map_ha._entry.50, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @asd_map_ha._entry_ptr.52, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 173, i32 3}
!125 = !{ptr @asd_map_ha._entry.53, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @asd_map_ha._entry_ptr.55, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 78, i32 4}
!129 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @asd_map_memio._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @asd_map_memio._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 84, i32 4}
!134 = !{ptr @asd_map_memio._entry.58, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @asd_map_memio._entry_ptr.60, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 90, i32 4}
!138 = !{ptr @asd_map_memio._entry.61, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @asd_map_memio._entry_ptr.63, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 133, i32 3}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @asd_map_ioport._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @asd_map_ioport._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 139, i32 3}
!147 = !{ptr @asd_map_ioport._entry.66, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @asd_map_ioport._entry_ptr.68, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 522, i32 37}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 527, i32 3}
!153 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @asd_create_ha_caches._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @asd_create_ha_caches._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 270, i32 8}
!158 = !{ptr @dev_attr_aic_revision, !157, !"dev_attr_aic_revision", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 278, i32 8}
!161 = !{ptr @dev_attr_bios_build, !160, !"dev_attr_bios_build", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 276, i32 34}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 286, i32 8}
!166 = !{ptr @dev_attr_pcba_sn, !165, !"dev_attr_pcba_sn", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 460, i32 8}
!169 = !{ptr @dev_attr_update_bios, !168, !"dev_attr_update_bios", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 455, i32 34}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 311, i32 7}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 312, i32 7}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 313, i32 7}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 314, i32 7}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 315, i32 7}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 316, i32 7}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 317, i32 7}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 318, i32 7}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 319, i32 7}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 320, i32 7}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 321, i32 7}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 322, i32 7}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 323, i32 7}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 324, i32 7}
!200 = !{ptr @flash_error_table, !201, !"flash_error_table", i1 false, i1 false}
!201 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 309, i32 26}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 347, i32 20}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 373, i32 3}
!206 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @asd_store_update_bios._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @asd_store_update_bios._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 386, i32 3}
!211 = !{ptr @asd_store_update_bios._entry.95, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @asd_store_update_bios._entry_ptr.97, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 387, i32 3}
!215 = !{ptr @asd_store_update_bios._entry.98, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @asd_store_update_bios._entry_ptr.100, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 409, i32 3}
!219 = !{ptr @asd_store_update_bios._entry.101, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @asd_store_update_bios._entry_ptr.103, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @flash_command_table, !222, !"flash_command_table", i1 false, i1 false}
!222 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 297, i32 29}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 859, i32 3}
!225 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @asd_free_queues._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @asd_free_queues._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 873, i32 3}
!230 = !{ptr @asd_free_queues._entry.106, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @asd_free_queues._entry_ptr.108, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 1004, i32 2}
!234 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @aic94xx_init._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @aic94xx_init._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 616, i32 24}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 622, i32 4}
!241 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @asd_create_global_caches._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @asd_create_global_caches._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 628, i32 38}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 634, i32 4}
!248 = !{ptr @asd_create_global_caches._entry.115, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @asd_create_global_caches._entry_ptr.117, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @aic94xx_transport_functions, !251, !"aic94xx_transport_functions", i1 false, i1 false}
!251 = !{!"../drivers/scsi/aic94xx/aic94xx_init.c", i32 955, i32 44}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{i64 2155864110, i64 2155864609, i64 2155864147, i64 2155864203, i64 2155864237, i64 2155864261, i64 2155864302, i64 2155864323, i64 2155864351, i64 2155864385}
!263 = !{!"auto-init"}
!264 = !{!"branch_weights", i32 1, i32 2000}
