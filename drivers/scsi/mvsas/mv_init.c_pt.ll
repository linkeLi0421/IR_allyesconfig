; ModuleID = '/llk/IR_all_yes/drivers/scsi/mvsas/mv_init.c_pt.bc'
source_filename = "../drivers/scsi/mvsas/mv_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.mvs_chip_info = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.mvs_dispatch = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mvs_info = type { i32, %struct.spinlock, ptr, ptr, ptr, ptr, [8 x i8], ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, [8 x %struct.mvs_phy], [8 x %struct.mvs_port], i32, i64, ptr, %struct.list_head, %struct.list_head, i32, i16, i32, i32, ptr, %struct.hba_info_page, [1024 x %struct.mvs_device], ptr, i32, ptr, i32, ptr, [0 x %struct.mvs_slot_info] }
%struct.mvs_phy = type { ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, %struct.timer_list, i64, i64, i32, i32, i32, i32, i32, i32, [32 x i8], i8, i8, [2 x i8], i32, i32, i32 }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mvs_port = type { %struct.asd_sas_port, i8, i8, %struct.list_head }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hba_info_page = type { [4 x i8], [13 x i32], [8 x i64], [8 x %struct.ffe_control], [12 x i32], [8 x i8], [8 x %struct.phy_tuning], [10 x i32] }
%struct.ffe_control = type { i8 }
%struct.phy_tuning = type { i16, [2 x i8] }
%struct.mvs_device = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, i8, i8, i16 }
%struct.mvs_slot_info = type { %struct.list_head, %union.anon.95, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.mvs_prv_info = type { i8, i8, i8, i8, [2 x ptr], %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }

@interrupt_coalescing = dso_local global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@mvs_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mvs_pci_table, ptr @mvs_pci_init, ptr @mvs_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@mvs_stt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mvsas__292_784_mvs_init6 = internal global ptr @mvs_init, section ".initcall6.init", align 4
@__exitcall_mvs_exit = internal global ptr @mvs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [45 x i8] c"mvsas.author=Jeff Garzik <jgarzik@pobox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [62 x i8] c"mvsas.description=Marvell 88SE6440 SAS/SATA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [21 x i8] c"mvsas.version=0.8.16\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mvsas\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.8.16\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file296 = internal constant [36 x i8] c"mvsas.file=drivers/scsi/mvsas/mvsas\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [18 x i8] c"mvsas.license=GPL\00", section ".modinfo", align 1
@mvs_pci_table = internal global { [31 x %struct.pci_device_id], [224 x i8] } { [31 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 25376, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 25408, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4523, i32 25664, i32 -1, i32 25728, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4523, i32 25664, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4523, i32 25733, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4523, i32 38016, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4523, i32 37248, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 6099, i32 4864, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6099, i32 4896, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 36869, i32 1104, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4355, i32 10000, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4355, i32 10016, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4355, i32 10017, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4355, i32 10018, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4355, i32 10048, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4355, i32 10052, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4355, i32 10080, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 6987, i32 38016, i32 -1, i32 38016, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 6987, i32 37957, i32 -1, i32 38016, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 6987, i32 38021, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4129, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4130, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4160, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4161, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4162, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4163, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4164, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4224, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4227, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 7045, i32 4228, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@mvs_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 503, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mvsas: driver version %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvs_pci_init\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/mvsas/mv_init.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvs_pci_init._entry_ptr = internal global ptr @mvs_pci_init._entry, section ".printk_index", align 4
@mvs_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sas_queuecommand, ptr null, ptr null, ptr @.str.1, ptr null, ptr @sas_ioctl, ptr null, ptr null, ptr null, ptr @sas_eh_device_reset_handler, ptr @sas_eh_target_reset_handler, ptr null, ptr null, ptr @sas_slave_alloc, ptr @sas_slave_configure, ptr null, ptr @sas_target_alloc, ptr @sas_target_destroy, ptr @mvs_scan_finished, ptr @mvs_scan_start, ptr @sas_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @sas_bios_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 1024, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 -128, i32 0, ptr @mvst_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mvs_chips = internal constant { [9 x %struct.mvs_chip_info], [64 x i8] } { [9 x %struct.mvs_chip_info] [%struct.mvs_chip_info { i32 1, i32 2, i32 1024, i32 17, i32 16, i32 6, i32 9, ptr @mvs_64xx_dispatch }, %struct.mvs_chip_info { i32 1, i32 4, i32 1024, i32 17, i32 16, i32 6, i32 9, ptr @mvs_64xx_dispatch }, %struct.mvs_chip_info { i32 1, i32 8, i32 2048, i32 33, i32 32, i32 6, i32 10, ptr @mvs_64xx_dispatch }, %struct.mvs_chip_info { i32 2, i32 4, i32 2048, i32 17, i32 64, i32 8, i32 9, ptr @mvs_94xx_dispatch }, %struct.mvs_chip_info { i32 2, i32 4, i32 2048, i32 17, i32 64, i32 8, i32 9, ptr @mvs_94xx_dispatch }, %struct.mvs_chip_info { i32 1, i32 4, i32 2048, i32 17, i32 64, i32 8, i32 11, ptr @mvs_94xx_dispatch }, %struct.mvs_chip_info { i32 2, i32 4, i32 2048, i32 17, i32 64, i32 8, i32 11, ptr @mvs_94xx_dispatch }, %struct.mvs_chip_info { i32 1, i32 4, i32 1024, i32 17, i32 16, i32 6, i32 9, ptr @mvs_64xx_dispatch }, %struct.mvs_chip_info { i32 2, i32 4, i32 2048, i32 17, i32 64, i32 8, i32 9, ptr @mvs_94xx_dispatch }], [64 x i8] zeroinitializer }, align 32
@pci_go_64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 395, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"32-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_go_64\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_go_64._entry_ptr = internal global ptr @pci_go_64._entry, section ".printk_index", align 4
@mvst_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mvst_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mvst_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mvst_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mvst_host_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_driver_version, ptr @dev_attr_interrupt_coalescing, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_driver_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @driver_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interrupt_coalescing = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interrupt_coalescing_show, ptr @interrupt_coalescing_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver_version\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt_coalescing\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@interrupt_coalescing_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s %d:interrupt coalescing timer %d us istoo long\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"interrupt_coalescing_store\00", [37 x i8] zeroinitializer }, align 32
@interrupt_coalescing_store._entry_ptr = internal global ptr @interrupt_coalescing_store._entry, section ".printk_index", align 4
@interrupt_coalescing_store._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s %d:set interrupt coalescing time to %d us\0A\00", [48 x i8] zeroinitializer }, align 32
@interrupt_coalescing_store._entry_ptr.20 = internal global ptr @interrupt_coalescing_store._entry.18, section ".printk_index", align 4
@mvs_64xx_dispatch = external dso_local constant %struct.mvs_dispatch, align 4
@mvs_94xx_dispatch = external dso_local constant %struct.mvs_dispatch, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mvs_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mvi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mvs_dma_pool\00", [19 x i8] zeroinitializer }, align 32
@mvs_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017failed to create dma pool %s.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mvs_alloc\00", [22 x i8] zeroinitializer }, align 32
@mvs_alloc._entry_ptr = internal global ptr @mvs_alloc._entry, section ".printk_index", align 4
@mvs_phy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&phy->timer)\00", [18 x i8] zeroinitializer }, align 32
@mvs_transport_ops = internal global { %struct.sas_domain_function_template, [56 x i8] } { %struct.sas_domain_function_template { ptr @mvs_port_formed, ptr @mvs_port_deformed, ptr @mvs_dev_found, ptr @mvs_dev_gone, ptr @mvs_queue_command, ptr @mvs_abort_task, ptr @mvs_abort_task_set, ptr @mvs_clear_aca, ptr @mvs_clear_task_set, ptr @mvs_I_T_nexus_reset, ptr null, ptr null, ptr @mvs_lu_reset, ptr @mvs_query_task, ptr null, ptr null, ptr @mvs_phy_control, ptr @mvs_gpio_write }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"interrupt_coalescing\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 13, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"mvs_pci_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 689, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [8 x i8] c"mvs_stt\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 15, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 789, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"mvs_pci_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 630, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 502, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"mvs_sht\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 32, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"mvs_chips\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 16, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 394, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"mvst_host_groups\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"mvst_host_group\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 782, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"mvst_host_attrs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 776, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"dev_attr_driver_version\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"dev_attr_interrupt_coalescing\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 702, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 699, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 750, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 747, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 716, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 720, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 739, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 228, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 281, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 281, i32 29 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 285, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 86, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"mvs_transport_ops\00", align 1
@___asan_gen_.157 = private constant [32 x i8] c"../drivers/scsi/mvsas/mv_init.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 59, i32 44 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_version295, ptr @__exitcall_mvs_exit, ptr @__initcall__kmod_mvsas__292_784_mvs_init6, ptr @__modver_attr, ptr @interrupt_coalescing_store._entry, ptr @interrupt_coalescing_store._entry.18, ptr @interrupt_coalescing_store._entry_ptr, ptr @interrupt_coalescing_store._entry_ptr.20, ptr @mvs_alloc._entry, ptr @mvs_alloc._entry_ptr, ptr @mvs_exit, ptr @mvs_pci_init._entry, ptr @mvs_pci_init._entry_ptr, ptr @pci_go_64._entry, ptr @pci_go_64._entry_ptr, ptr @interrupt_coalescing, ptr @mvs_pci_driver, ptr @mvs_stt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mvs_pci_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mvs_sht, ptr @mvs_chips, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mvst_host_groups, ptr @mvst_host_group, ptr @mvst_host_attrs, ptr @dev_attr_driver_version, ptr @dev_attr_interrupt_coalescing, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @mvs_alloc.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mvs_phy_init.__key, ptr @.str.26, ptr @mvs_transport_ops], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_coalescing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_stt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_pci_table to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_chips to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_go_64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvst_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvst_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvst_host_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_driver_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interrupt_coalescing to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_coalescing_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_coalescing_store._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_phy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_transport_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvs_ioremap(ptr nocapture noundef %mvi, i32 noundef %bar, i32 noundef %bar_ex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bar_ex)
  %cmp.not = icmp eq i32 %bar_ex, -1
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar_ex
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar_ex, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp4, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool11.not = icmp eq i32 %cond, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %flags = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar_ex, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @ioremap(i32 noundef %3, i32 noundef %cond) #12
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = inttoptr i32 %3 to ptr
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %call.sink = phi ptr [ %8, %if.else ], [ %call, %if.then16 ]
  %9 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.sink, ptr %9, align 4
  %tobool20.not = icmp eq ptr %call.sink, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end18.if.end23_crit_edge, %entry.if.end23_crit_edge
  %res_flag_ex.0 = phi i32 [ %7, %if.end18.if.end23_crit_edge ], [ 0, %entry.if.end23_crit_edge ]
  %arrayidx25 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx25, align 8
  %end29 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar, i32 1
  %13 = ptrtoint ptr %end29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30 = icmp eq i32 %14, 0
  %sub39 = sub i32 1, %12
  %add40 = add i32 %sub39, %14
  %cond42 = select i1 %cmp30, i32 0, i32 %add40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool43.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond42)
  %tobool45.not = icmp eq i32 %cond42, 0
  %or.cond104 = select i1 %tobool43.not, i1 true, i1 %tobool45.not
  br i1 %or.cond104, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %regs_ex47 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %15 = ptrtoint ptr %regs_ex47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs_ex47, align 4
  tail call void @iounmap(ptr noundef %16) #12
  br label %cleanup.sink.split

if.end49:                                         ; preds = %if.end23
  %call50 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %cond42) #12
  %regs = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call50, ptr %regs, align 8
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.then53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53:                                        ; preds = %if.end49
  %regs_ex54 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %18 = ptrtoint ptr %regs_ex54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_ex54, align 4
  %tobool55.not = icmp eq ptr %19, null
  %and56 = and i32 %res_flag_ex.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond105 = select i1 %tobool55.not, i1 true, i1 %tobool57.not
  br i1 %or.cond105, label %if.then53.cleanup.sink.split_crit_edge, label %if.then58

if.then53.cleanup.sink.split_crit_edge:           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %19) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then58, %if.then53.cleanup.sink.split_crit_edge, %if.then46
  %regs_ex47.sink = phi ptr [ %regs_ex47, %if.then46 ], [ %regs_ex54, %if.then58 ], [ %regs_ex54, %if.then53.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %regs_ex47.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %regs_ex47.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end49.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49.cleanup_crit_edge ], [ -1, %if.end18.cleanup_crit_edge ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvs_iounmap(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iounmap(ptr noundef %regs) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvs_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @mvs_pci_driver) #12
  %0 = load ptr, ptr @mvs_stt, align 4
  tail call void @sas_release_transport(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sas_domain_attach_transport(ptr noundef nonnull @mvs_transport_ops) #12
  store ptr %call, ptr @mvs_stt, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mvs_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_out:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @mvs_stt, align 4
  tail call void @sas_release_transport(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_pci_init(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  %pool_name.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #15
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_out_disable_crit_edge

if.end.err_out_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_disable

if.end4:                                          ; preds = %if.end
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.if.end8_crit_edge, label %if.then.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.i:                                        ; preds = %if.end4
  %call.i12.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then.i.if.end8_crit_edge, label %pci_go_64.exit

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

pci_go_64.exit:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev, ptr noundef nonnull @.str.8) #15
  br label %err_out_regions

if.end8:                                          ; preds = %if.then.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %.sink = phi i64 [ -1, %if.end4.if.end8_crit_edge ], [ 4294967295, %if.then.i.if.end8_crit_edge ]
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #12
  %call9 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @mvs_sht, i32 noundef 4) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.err_out_regions_crit_edge, label %if.end12

if.end8.err_out_regions_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_regions

if.end12:                                         ; preds = %if.end8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [9 x %struct.mvs_chip_info], ptr @mvs_chips, i32 0, i32 %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 420) #16
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call9, i32 0, i32 53
  %3 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %hostdata, align 8
  %tobool16.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_host_put(ptr noundef nonnull %call9) #12
  br label %err_out_regions

if.end18:                                         ; preds = %if.end12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv1.i = and i32 %5, 65535
  %n_phy.i = getelementptr [9 x %struct.mvs_chip_info], ptr @mvs_chips, i32 0, i32 %1, i32 1
  %6 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_phy.i, align 4
  %mul.i = mul i32 %conv1.i, %7
  %8 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 420)
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 4) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end18.if.then21_crit_edge, label %if.end7.i.i67.i, !prof !95

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.end7.i.i67.i:                                  ; preds = %if.end18
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #17
  %call8.i.i66.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  %tobool3.not.i = icmp eq ptr %call8.i.i66.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.end7.i.i67.i.if.then21_crit_edge, label %if.end.i

if.end7.i.i67.i.if.then21_crit_edge:              ; preds = %if.end7.i.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.end.i:                                         ; preds = %if.end7.i.i67.i
  %sas_phy.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %sas_phy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i.i, ptr %sas_phy.i, align 4
  %sas_port.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i66.i, ptr %sas_port.i, align 8
  %core.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %core.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %core.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 36) #16
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %call7.i.i.i, i32 0, i32 21
  %16 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i119, ptr %lldd_ha.i, align 4
  %tobool7.not.i = icmp eq ptr %call7.i.i.i119, null
  br i1 %tobool7.not.i, label %if.end.i.if.then21_crit_edge, label %if.end22

if.end.i.if.then21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %if.end.i.if.then21_crit_edge, %if.end7.i.i67.i.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %retval.0.i.i6881.i = phi ptr [ %call8.i.i66.i, %if.end.i.if.then21_crit_edge ], [ %call8.i.i66.i, %if.end7.i.i67.i.if.then21_crit_edge ], [ null, %if.end18.if.then21_crit_edge ]
  %retval.0.i.i7480.i = phi ptr [ %call8.i.i.i, %if.end.i.if.then21_crit_edge ], [ %call8.i.i.i, %if.end7.i.i67.i.if.then21_crit_edge ], [ null, %if.end18.if.then21_crit_edge ]
  tail call void @kfree(ptr noundef %retval.0.i.i7480.i) #12
  tail call void @kfree(ptr noundef %retval.0.i.i6881.i) #12
  tail call void @scsi_host_put(ptr noundef nonnull %call9) #12
  br label %err_out_regions

if.end22:                                         ; preds = %if.end.i
  %conv10.i = trunc i32 %5 to i8
  %17 = ptrtoint ptr %call7.i.i.i119 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i, ptr %call7.i.i.i119, align 8
  %18 = load ptr, ptr @mvs_stt, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call9, i32 0, i32 12
  %19 = ptrtoint ptr %transportt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %transportt.i, align 4
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call9, i32 0, i32 21
  %20 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %max_id.i, align 4
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call9, i32 0, i32 22
  %21 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %max_lun.i, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %call9, i32 0, i32 20
  %22 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %max_channel.i, align 8
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %call9, i32 0, i32 24
  %23 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %max_cmd_len.i, align 4
  %24 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hostdata, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %driver_data.i.i, align 4
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %do.body25

do.body25:                                        ; preds = %if.end34.do.body25_crit_edge, %if.end22
  %nhost.0 = phi i32 [ 0, %if.end22 ], [ %inc, %if.end34.do.body25_crit_edge ]
  %27 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hostdata, align 8
  %29 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %driver_data, align 4
  %slot_width.i = getelementptr [9 x %struct.mvs_chip_info], ptr @mvs_chips, i32 0, i32 %30, i32 6
  %31 = ptrtoint ptr %slot_width.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slot_width.i, align 4
  %mul.i122 = shl i32 48, %32
  %add.i = add i32 %mul.i122, 44472
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #17
  %tobool.not.i127 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i127, label %do.body25.err_out_regions_crit_edge, label %if.end.i131

do.body25.err_out_regions_crit_edge:              ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_regions

if.end.i131:                                      ; preds = %do.body25
  %pdev1.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdev, ptr %pdev1.i, align 16
  %dev2.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %dev2.i, align 4
  %35 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %driver_data, align 4
  %chip_id.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %chip_id.i, align 8
  %arrayidx5.i = getelementptr [9 x %struct.mvs_chip_info], ptr @mvs_chips, i32 0, i32 %36
  %chip.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 20
  %38 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx5.i, ptr %chip.i, align 4
  %wq_list.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 29
  %39 = ptrtoint ptr %wq_list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %wq_list.i, ptr %wq_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 29, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %wq_list.i, ptr %prev.i.i, align 8
  %lldd_ha.i129 = getelementptr inbounds %struct.sas_ha_struct, ptr %28, i32 0, i32 21
  %41 = ptrtoint ptr %lldd_ha.i129 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lldd_ha.i129, align 4
  %arrayidx7.i = getelementptr %struct.mvs_prv_info, ptr %42, i32 0, i32 4, i32 %nhost.0
  %43 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i.i, ptr %arrayidx7.i, align 4
  %44 = load ptr, ptr %chip.i, align 4
  %n_phy.i130 = getelementptr inbounds %struct.mvs_chip_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %n_phy.i130 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_phy.i130, align 4
  %conv.i = trunc i32 %46 to i8
  %47 = load ptr, ptr %lldd_ha.i129, align 4
  %n_phy10.i = getelementptr inbounds %struct.mvs_prv_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %n_phy10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i, ptr %n_phy10.i, align 1
  %id11.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 25
  %49 = ptrtoint ptr %id11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %nhost.0, ptr %id11.i, align 8
  %sas.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %sas.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %28, ptr %sas.i, align 8
  %shost12.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %shost12.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9, ptr %shost12.i, align 4
  %52 = load ptr, ptr %chip.i, align 4
  %slot_width14.i = getelementptr inbounds %struct.mvs_chip_info, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %slot_width14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %slot_width14.i, align 4
  %shl15.i = shl nuw i32 1, %54
  %shr.i = lshr i32 %shl15.i, 3
  %call9.i.i80.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shr.i, i32 noundef 3520) #17
  %tags.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 22
  %55 = ptrtoint ptr %tags.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i.i80.i, ptr %tags.i, align 4
  %tobool18.not.i = icmp eq ptr %call9.i.i80.i, null
  br i1 %tobool18.not.i, label %if.end.i131.err_out.i_crit_edge, label %if.end20.i

if.end.i131.err_out.i_crit_edge:                  ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out.i

if.end20.i:                                       ; preds = %if.end.i131
  %56 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip.i, align 4
  %dispatch.i = getelementptr inbounds %struct.mvs_chip_info, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dispatch.i, align 4
  %chip_ioremap.i = getelementptr inbounds %struct.mvs_dispatch, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %chip_ioremap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip_ioremap.i, align 4
  %call22.i = call i32 %61(ptr noundef nonnull %call9.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end20.i.err_out.i_crit_edge

if.end20.i.err_out.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out.i

if.end25.i:                                       ; preds = %if.end20.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pool_name.i.i) #12
  %62 = call ptr @memset(ptr %pool_name.i.i, i32 255, i32 32)
  %63 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call9.i.i.i, align 128
  %and.i.i = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end25.i.do.body.i.i_crit_edge

if.end25.i.do.body.i.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip.i, align 4
  %slot_width.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %slot_width.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slot_width.i.i, align 4
  %shl.i.i = shl nuw i32 1, %68
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i, %if.end25.i.do.body.i.i_crit_edge
  %slot_nr.0.i.i = phi i32 [ %shl.i.i, %if.else.i.i ], [ 64, %if.end25.i.do.body.i.i_crit_edge ]
  %lock.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @mvs_alloc.__key, i16 noundef signext 3) #12
  %69 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip.i, align 4
  %n_phy6.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %n_phy6.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_phy6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp8.not.i.i = icmp eq i32 %72, 0
  br i1 %cmp8.not.i.i, label %do.body.i.i.for.body8.i.i.preheader_crit_edge, label %for.body.lr.ph.i.i

do.body.i.i.for.body8.i.i.preheader_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i.i.preheader

for.body.lr.ph.i.i:                               ; preds = %do.body.i.i
  %sas_addr.i.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call9.i.i.i, ptr %arrayidx.i.i.i, align 8
  %port.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 1
  %74 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %port.i.i.i, align 4
  %timer.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 5
  call void @init_timer_key(ptr noundef %timer.i.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @mvs_phy_init.__key) #12
  %75 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip.i, align 4
  %n_phy.i.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %n_phy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_phy.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %i.09.i.i)
  %cmp.i.i84.i = icmp ugt i32 %78, %i.09.i.i
  %cond.i.i.i = zext i1 %cmp.i.i84.i to i32
  %enabled.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 5
  %79 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond.i.i.i, ptr %enabled.i.i.i, align 4
  %class.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 7
  %80 = ptrtoint ptr %class.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %class.i.i.i, align 4
  %iproto.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 8
  %81 = ptrtoint ptr %iproto.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 14, ptr %iproto.i.i.i, align 8
  %tproto.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 9
  %82 = ptrtoint ptr %tproto.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %tproto.i.i.i, align 4
  %type.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 10
  %83 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %type.i.i.i, align 8
  %role.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 11
  %84 = ptrtoint ptr %role.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 128, ptr %role.i.i.i, align 4
  %oob_mode.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 12
  %85 = ptrtoint ptr %oob_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %oob_mode.i.i.i, align 8
  %linkrate.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 13
  %86 = ptrtoint ptr %linkrate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %linkrate.i.i.i, align 4
  %id.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 6
  %87 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %i.09.i.i, ptr %id.i.i.i, align 8
  %sas_addr5.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 14
  %88 = ptrtoint ptr %sas_addr5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %sas_addr.i.i.i, ptr %sas_addr5.i.i.i, align 8
  %frame_rcvd.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 14
  %frame_rcvd7.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 17
  %89 = ptrtoint ptr %frame_rcvd7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %frame_rcvd.i.i.i, ptr %frame_rcvd7.i.i.i, align 8
  %90 = ptrtoint ptr %shost12.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %shost12.i, align 4
  %hostdata.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %91, i32 0, i32 53
  %ha.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 23
  %92 = ptrtoint ptr %ha.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %hostdata.i.i.i, ptr %ha.i.i.i, align 4
  %lldd_phy.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %i.09.i.i, i32 2, i32 24
  %93 = ptrtoint ptr %lldd_phy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx.i.i.i, ptr %lldd_phy.i.i.i, align 8
  %wide_port_phymap.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 24, i32 %i.09.i.i, i32 2
  %94 = ptrtoint ptr %wide_port_phymap.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %wide_port_phymap.i.i, align 1
  %port_attached.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 24, i32 %i.09.i.i, i32 1
  %95 = ptrtoint ptr %port_attached.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %port_attached.i.i, align 4
  %list.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 24, i32 %i.09.i.i, i32 3
  %96 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 24, i32 %i.09.i.i, i32 3, i32 1
  %97 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %98 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chip.i, align 4
  %n_phy.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_phy.i.i, align 4
  %cmp.i.i133 = icmp ult i32 %inc.i.i, %101
  br i1 %cmp.i.i133, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.body8.i.i.preheader_crit_edge

for.body.i.i.for.body8.i.i.preheader_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i.i.preheader

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body8.i.i.preheader:                          ; preds = %for.body.i.i.for.body8.i.i.preheader_crit_edge, %do.body.i.i.for.body8.i.i.preheader_crit_edge
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.body8.i.i.preheader
  %i.110.i.i = phi i32 [ %inc17.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %for.body8.i.i.preheader ]
  %taskfileset.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 36, i32 %i.110.i.i, i32 7
  %102 = ptrtoint ptr %taskfileset.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 127, ptr %taskfileset.i.i, align 4
  %dev_type.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 36, i32 %i.110.i.i, i32 1
  %103 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %dev_type.i.i, align 4
  %device_id.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 36, i32 %i.110.i.i, i32 5
  %104 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %i.110.i.i, ptr %device_id.i.i, align 4
  %dev_status.i.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 36, i32 %i.110.i.i, i32 8
  %105 = ptrtoint ptr %dev_status.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %dev_status.i.i, align 1
  %inc17.i.i = add nuw nsw i32 %i.110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc17.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.end18.i.i, label %for.body8.i.i.for.body8.i.i_crit_edge

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i.i

for.end18.i.i:                                    ; preds = %for.body8.i.i
  %106 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev2.i, align 4
  %108 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %chip.i, align 4
  %slot_width20.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %slot_width20.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %slot_width20.i.i, align 4
  %mul.i.i = shl i32 4, %111
  %tx_dma.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 10
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %107, i32 noundef %mul.i.i, ptr noundef %tx_dma.i.i, i32 noundef 3264, i32 noundef 0) #12
  %tx.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 9
  %112 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i.i.i, ptr %tx.i.i, align 16
  %tobool24.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool24.not.i.i, label %for.end18.i.i.mvs_alloc.exit.thread.i_crit_edge, label %if.end26.i.i

for.end18.i.i.mvs_alloc.exit.thread.i_crit_edge:  ; preds = %for.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_alloc.exit.thread.i

if.end26.i.i:                                     ; preds = %for.end18.i.i
  %113 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev2.i, align 4
  %115 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %chip.i, align 4
  %fis_offs.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %fis_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fis_offs.i.i, align 4
  %fis_count.i.i = getelementptr inbounds %struct.mvs_chip_info, ptr %116, i32 0, i32 3
  %119 = ptrtoint ptr %fis_count.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %fis_count.i.i, align 4
  %mul30.i.i = shl i32 %120, 8
  %add.i.i = add i32 %mul30.i.i, %118
  %rx_fis_dma.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 16
  %call.i1.i.i = call ptr @dma_alloc_attrs(ptr noundef %114, i32 noundef %add.i.i, ptr noundef %rx_fis_dma.i.i, i32 noundef 3264, i32 noundef 0) #12
  %rx_fis.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 15
  %121 = ptrtoint ptr %rx_fis.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i1.i.i, ptr %rx_fis.i.i, align 8
  %tobool33.not.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool33.not.i.i, label %if.end26.i.i.mvs_alloc.exit.thread.i_crit_edge, label %if.end35.i.i

if.end26.i.i.mvs_alloc.exit.thread.i_crit_edge:   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_alloc.exit.thread.i

if.end35.i.i:                                     ; preds = %if.end26.i.i
  %122 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev2.i, align 4
  %rx_dma.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 13
  %call.i2.i.i = call ptr @dma_alloc_attrs(ptr noundef %123, i32 noundef 4100, ptr noundef %rx_dma.i.i, i32 noundef 3264, i32 noundef 0) #12
  %rx.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 12
  %124 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i2.i.i, ptr %rx.i.i, align 4
  %tobool39.not.i.i = icmp eq ptr %call.i2.i.i, null
  br i1 %tobool39.not.i.i, label %if.end35.i.i.mvs_alloc.exit.thread.i_crit_edge, label %if.end41.i.i

if.end35.i.i.mvs_alloc.exit.thread.i_crit_edge:   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_alloc.exit.thread.i

if.end41.i.i:                                     ; preds = %if.end35.i.i
  %125 = ptrtoint ptr %call.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -15794176, ptr %call.i2.i.i, align 4
  %rx_cons.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 14
  %126 = ptrtoint ptr %rx_cons.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4095, ptr %rx_cons.i.i, align 4
  %127 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev2.i, align 4
  %mul45.i.i = shl i32 %slot_nr.0.i.i, 6
  %slot_dma.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 18
  %call.i3.i.i = call ptr @dma_alloc_attrs(ptr noundef %128, i32 noundef %mul45.i.i, ptr noundef %slot_dma.i.i, i32 noundef 3264, i32 noundef 0) #12
  %slot.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 17
  %129 = ptrtoint ptr %slot.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i3.i.i, ptr %slot.i.i, align 16
  %tobool48.not.i.i = icmp eq ptr %call.i3.i.i, null
  br i1 %tobool48.not.i.i, label %if.end41.i.i.mvs_alloc.exit.thread.i_crit_edge, label %if.end50.i.i

if.end41.i.i.mvs_alloc.exit.thread.i_crit_edge:   ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_alloc.exit.thread.i

if.end50.i.i:                                     ; preds = %if.end41.i.i
  %130 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev2.i, align 4
  %bulk_buffer_dma.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 38
  %call.i4.i.i = call ptr @dma_alloc_attrs(ptr noundef %131, i32 noundef 131072, ptr noundef %bulk_buffer_dma.i.i, i32 noundef 3264, i32 noundef 0) #12
  %bulk_buffer.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 37
  %132 = ptrtoint ptr %bulk_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i4.i.i, ptr %bulk_buffer.i.i, align 32
  %tobool54.not.i.i = icmp eq ptr %call.i4.i.i, null
  br i1 %tobool54.not.i.i, label %if.end50.i.i.mvs_alloc.exit.thread.i_crit_edge, label %if.end56.i.i

if.end50.i.i.mvs_alloc.exit.thread.i_crit_edge:   ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_alloc.exit.thread.i

if.end56.i.i:                                     ; preds = %if.end50.i.i
  %133 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev2.i, align 4
  %bulk_buffer_dma1.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 40
  %call.i5.i.i = call ptr @dma_alloc_attrs(ptr noundef %134, i32 noundef 131072, ptr noundef %bulk_buffer_dma1.i.i, i32 noundef 3264, i32 noundef 0) #12
  %bulk_buffer1.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 39
  %135 = ptrtoint ptr %bulk_buffer1.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i5.i.i, ptr %bulk_buffer1.i.i, align 8
  %tobool60.not.i.i = icmp eq ptr %call.i5.i.i, null
  br i1 %tobool60.not.i.i, label %if.end56.i.i.mvs_alloc.exit.thread.i_crit_edge, label %if.end62.i.i

if.end56.i.i.mvs_alloc.exit.thread.i_crit_edge:   ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_alloc.exit.thread.i

if.end62.i.i:                                     ; preds = %if.end56.i.i
  %136 = ptrtoint ptr %id11.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %id11.i, align 8
  %call63.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pool_name.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %137) #12
  %138 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev1.i, align 16
  %dev65.i.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %call66.i.i = call ptr @dma_pool_create(ptr noundef nonnull %pool_name.i.i, ptr noundef %dev65.i.i, i32 noundef 8192, i32 noundef 16, i32 noundef 0) #12
  %dma_pool.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 41
  %140 = ptrtoint ptr %dma_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call66.i.i, ptr %dma_pool.i.i, align 16
  %tobool68.not.i.i = icmp eq ptr %call66.i.i, null
  br i1 %tobool68.not.i.i, label %do.end72.i.i, label %if.end29

do.end72.i.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %pool_name.i.i) #15
  br label %mvs_alloc.exit.thread.i

mvs_alloc.exit.thread.i:                          ; preds = %do.end72.i.i, %if.end56.i.i.mvs_alloc.exit.thread.i_crit_edge, %if.end50.i.i.mvs_alloc.exit.thread.i_crit_edge, %if.end41.i.i.mvs_alloc.exit.thread.i_crit_edge, %if.end35.i.i.mvs_alloc.exit.thread.i_crit_edge, %if.end26.i.i.mvs_alloc.exit.thread.i_crit_edge, %for.end18.i.i.mvs_alloc.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pool_name.i.i) #12
  br label %err_out.i

err_out.i:                                        ; preds = %mvs_alloc.exit.thread.i, %if.end20.i.err_out.i_crit_edge, %if.end.i131.err_out.i_crit_edge
  call fastcc void @mvs_free(ptr noundef nonnull %call9.i.i.i) #12
  br label %err_out_regions

if.end29:                                         ; preds = %if.end62.i.i
  %tags_num.i.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 21
  %141 = ptrtoint ptr %tags_num.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %slot_nr.0.i.i, ptr %tags_num.i.i, align 128
  call void @mvs_tag_init(ptr noundef nonnull %call9.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pool_name.i.i) #12
  %hba_info_param = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 35
  %142 = call ptr @memset(ptr %hba_info_param, i32 255, i32 256)
  %143 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chip.i, align 4
  %n_phy.i136 = getelementptr inbounds %struct.mvs_chip_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %n_phy.i136 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %n_phy.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp22.not.i = icmp eq i32 %146, 0
  br i1 %cmp22.not.i, label %if.end29.mvs_init_sas_add.exit_crit_edge, label %if.end29.for.body.i_crit_edge

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

if.end29.mvs_init_sas_add.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_init_sas_add.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %conv24.i = phi i32 [ %conv.i137, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %i.023.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %dev_sas_addr.i = getelementptr %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 %conv24.i, i32 6
  %147 = ptrtoint ptr %dev_sas_addr.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 5766019502419148800, ptr %dev_sas_addr.i, align 8
  %inc.i = add i8 %i.023.i, 1
  %conv.i137 = zext i8 %inc.i to i32
  %148 = ptrtoint ptr %n_phy.i136 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %n_phy.i136, align 4
  %cmp.i = icmp ugt i32 %149, %conv.i137
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mvs_init_sas_add.exit_crit_edge

for.body.i.mvs_init_sas_add.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mvs_init_sas_add.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

mvs_init_sas_add.exit:                            ; preds = %for.body.i.mvs_init_sas_add.exit_crit_edge, %if.end29.mvs_init_sas_add.exit_crit_edge
  %sas_addr.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 6
  %dev_sas_addr12.i = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 23, i32 0, i32 6
  %150 = ptrtoint ptr %dev_sas_addr12.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %dev_sas_addr12.i, align 8
  %152 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %sas_addr.i, align 64
  %instance = getelementptr inbounds %struct.mvs_info, ptr %call9.i.i.i, i32 0, i32 30
  %153 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %nhost.0, ptr %instance, align 4
  %154 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %chip.i, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %155, i32 0, i32 7
  %156 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dispatch, align 4
  %chip_init = getelementptr inbounds %struct.mvs_dispatch, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %chip_init to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %chip_init, align 4
  %call31 = call i32 %159(ptr noundef nonnull %call9.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %mvs_init_sas_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @mvs_free(ptr noundef nonnull %call9.i.i.i)
  br label %err_out_regions

if.end34:                                         ; preds = %mvs_init_sas_add.exit
  %inc = add nuw i32 %nhost.0, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.end36, label %if.end34.do.body25_crit_edge

if.end34.do.body25_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

do.end36:                                         ; preds = %if.end34
  %160 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %161, i32 0, i32 21
  %162 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %lldd_ha, align 4
  %mv_tasklet = getelementptr inbounds %struct.mvs_prv_info, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %161 to i32
  call void @tasklet_init(ptr noundef %mv_tasklet, ptr noundef nonnull @mvs_tasklet, i32 noundef %164) #12
  call fastcc void @mvs_post_sas_ha_init(ptr noundef nonnull %call9, ptr noundef %arrayidx)
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call9, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %if.end45, label %do.end36.err_out_shost_crit_edge

do.end36.err_out_shost_crit_edge:                 ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_shost

if.end45:                                         ; preds = %do.end36
  %165 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hostdata, align 8
  %call48 = call i32 @sas_register_ha(ptr noundef %166) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.err_out_shost_crit_edge

if.end45.err_out_shost_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_shost

if.end51:                                         ; preds = %if.end45
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %167 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %irq, align 4
  %169 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hostdata, align 8
  %call.i138 = call i32 @request_threaded_irq(i32 noundef %168, ptr noundef nonnull @mvs_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %170) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool55.not = icmp eq i32 %call.i138, 0
  br i1 %tobool55.not, label %if.end57, label %err_not_sas

if.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %chip.i, align 4
  %dispatch59 = getelementptr inbounds %struct.mvs_chip_info, ptr %172, i32 0, i32 7
  %173 = ptrtoint ptr %dispatch59 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dispatch59, align 4
  %interrupt_enable = getelementptr inbounds %struct.mvs_dispatch, ptr %174, i32 0, i32 7
  %175 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %interrupt_enable, align 4
  call void %176(ptr noundef nonnull %call9.i.i.i) #12
  %177 = ptrtoint ptr %shost12.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %shost12.i, align 4
  call void @scsi_scan_host(ptr noundef %178) #12
  br label %cleanup

err_not_sas:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hostdata, align 8
  %call63 = call i32 @sas_unregister_ha(ptr noundef %180) #12
  br label %err_out_shost

err_out_shost:                                    ; preds = %err_not_sas, %if.end45.err_out_shost_crit_edge, %do.end36.err_out_shost_crit_edge
  %rc.0 = phi i32 [ %call.i, %do.end36.err_out_shost_crit_edge ], [ %call48, %if.end45.err_out_shost_crit_edge ], [ %call.i138, %err_not_sas ]
  %181 = ptrtoint ptr %shost12.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %shost12.i, align 4
  call void @scsi_remove_host(ptr noundef %182) #12
  br label %err_out_regions

err_out_regions:                                  ; preds = %err_out_shost, %if.then33, %err_out.i, %do.body25.err_out_regions_crit_edge, %if.then21, %if.then17, %if.end8.err_out_regions_crit_edge, %pci_go_64.exit
  %rc.1 = phi i32 [ %call.i12.i, %pci_go_64.exit ], [ -12, %if.then21 ], [ %call31, %if.then33 ], [ %rc.0, %err_out_shost ], [ -12, %if.then17 ], [ -12, %if.end8.err_out_regions_crit_edge ], [ -12, %err_out.i ], [ -12, %do.body25.err_out_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_regions, %if.end.err_out_disable_crit_edge
  %rc.2 = phi i32 [ %call1, %if.end.err_out_disable_crit_edge ], [ %rc.1, %err_out_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable, %if.end57, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ %call, %entry.cleanup_crit_edge ], [ %rc.2, %err_out_disable ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %mvi2 = getelementptr inbounds %struct.mvs_prv_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %mvi2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvi2, align 4
  %mv_tasklet = getelementptr inbounds %struct.mvs_prv_info, ptr %3, i32 0, i32 5
  tail call void @tasklet_kill(ptr noundef %mv_tasklet) #12
  %call4 = tail call i32 @sas_unregister_ha(ptr noundef %1) #12
  %shost = getelementptr inbounds %struct.mvs_info, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 4
  tail call void @sas_remove_host(ptr noundef %9) #12
  %chip = getelementptr inbounds %struct.mvs_info, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch, align 4
  %interrupt_disable = getelementptr inbounds %struct.mvs_dispatch, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_disable, align 4
  tail call void %15(ptr noundef %7) #12
  %pdev5 = getelementptr inbounds %struct.mvs_info, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev5, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp29.not = icmp eq i8 %5, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %5 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldd_ha, align 4
  %arrayidx12 = getelementptr %struct.mvs_prv_info, ptr %21, i32 0, i32 4, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  tail call fastcc void @mvs_free(ptr noundef %23)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sas_phy, align 4
  tail call void @kfree(ptr noundef %25) #12
  %sas_port = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sas_port, align 4
  tail call void @kfree(ptr noundef %27) #12
  tail call void @kfree(ptr noundef %1) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %opaque, i32 0, i32 21
  %0 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_ha, align 4
  %mvi1 = getelementptr inbounds %struct.mvs_prv_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mvi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvi1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !95

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.mvs_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dispatch, align 4
  %interrupt_disable = getelementptr inbounds %struct.mvs_dispatch, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_disable, align 4
  tail call void %9(ptr noundef nonnull %3) #12
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %dispatch6 = getelementptr inbounds %struct.mvs_chip_info, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %dispatch6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch6, align 4
  %isr_status = getelementptr inbounds %struct.mvs_dispatch, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %isr_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isr_status, align 4
  %call = tail call i32 %15(ptr noundef nonnull %3, i32 noundef %irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %dispatch10 = getelementptr inbounds %struct.mvs_chip_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %dispatch10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dispatch10, align 4
  %interrupt_enable = getelementptr inbounds %struct.mvs_dispatch, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_enable, align 4
  tail call void %21(ptr noundef nonnull %3) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %22 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldd_ha, align 4
  %state.i = getelementptr inbounds %struct.mvs_prv_info, ptr %23, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %mv_tasklet = getelementptr inbounds %struct.mvs_prv_info, ptr %23, i32 0, i32 5
  tail call void @__tasklet_schedule(ptr noundef %mv_tasklet) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_free(ptr noundef %mvi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mvi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mvi, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %slot_width = getelementptr inbounds %struct.mvs_chip_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_width, align 4
  %phi.bo = shl i32 64, %5
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end.if.end3_crit_edge
  %slot_nr.0 = phi i32 [ %phi.bo, %if.else ], [ 4096, %if.end.if.end3_crit_edge ]
  %dma_pool = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 41
  %6 = ptrtoint ptr %dma_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %7) #12
  %tx = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 9
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %chip6 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %12 = ptrtoint ptr %chip6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip6, align 4
  %slot_width7 = getelementptr inbounds %struct.mvs_chip_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %slot_width7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot_width7, align 4
  %mul = shl i32 4, %15
  %tx_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 10
  %16 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %mul, ptr noundef nonnull %9, i32 noundef %17, i32 noundef 0) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3.if.end10_crit_edge
  %rx_fis = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 15
  %18 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_fis, align 8
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %20 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev13, align 4
  %chip14 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %22 = ptrtoint ptr %chip14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip14, align 4
  %fis_offs = getelementptr inbounds %struct.mvs_chip_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %fis_offs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fis_offs, align 4
  %fis_count = getelementptr inbounds %struct.mvs_chip_info, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %fis_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fis_count, align 4
  %mul16 = shl i32 %27, 8
  %add = add i32 %mul16, %25
  %rx_fis_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 16
  %28 = ptrtoint ptr %rx_fis_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_fis_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %add, ptr noundef nonnull %19, i32 noundef %29, i32 noundef 0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge
  %rx = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 12
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx, align 4
  %tobool19.not = icmp eq ptr %31, null
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %dev21 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %32 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev21, align 4
  %rx_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 13
  %34 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef 4100, ptr noundef nonnull %31, i32 noundef %35, i32 noundef 0) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %slot = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 17
  %36 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slot, align 8
  %tobool24.not = icmp eq ptr %37, null
  br i1 %tobool24.not, label %if.end23.if.end29_crit_edge, label %if.then25

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %38 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev26, align 4
  %slot_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 18
  %40 = ptrtoint ptr %slot_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slot_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %slot_nr.0, ptr noundef nonnull %37, i32 noundef %41, i32 noundef 0) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23.if.end29_crit_edge
  %bulk_buffer = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 37
  %42 = ptrtoint ptr %bulk_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bulk_buffer, align 8
  %tobool30.not = icmp eq ptr %43, null
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %if.then31

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %dev32 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %44 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev32, align 4
  %bulk_buffer_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 38
  %46 = ptrtoint ptr %bulk_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bulk_buffer_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef 131072, ptr noundef nonnull %43, i32 noundef %47, i32 noundef 0) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29.if.end34_crit_edge
  %bulk_buffer1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 39
  %48 = ptrtoint ptr %bulk_buffer1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bulk_buffer1, align 8
  %tobool35.not = icmp eq ptr %49, null
  br i1 %tobool35.not, label %if.end34.if.end39_crit_edge, label %if.then36

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %dev37 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %50 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev37, align 4
  %bulk_buffer_dma1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 40
  %52 = ptrtoint ptr %bulk_buffer_dma1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bulk_buffer_dma1, align 4
  tail call void @dma_free_attrs(ptr noundef %51, i32 noundef 131072, ptr noundef nonnull %49, i32 noundef %53, i32 noundef 0) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34.if.end39_crit_edge
  %chip40 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %54 = ptrtoint ptr %chip40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip40, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dispatch, align 4
  %chip_iounmap = getelementptr inbounds %struct.mvs_dispatch, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %chip_iounmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip_iounmap, align 4
  tail call void %59(ptr noundef nonnull %mvi) #12
  %shost = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 8
  %60 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shost, align 4
  %tobool41.not = icmp eq ptr %61, null
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_host_put(ptr noundef nonnull %61) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %wq_list = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 29
  %62 = ptrtoint ptr %wq_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn99 = load ptr, ptr %wq_list, align 4
  %cmp.not100 = icmp eq ptr %.pn99, %wq_list
  br i1 %cmp.not100, label %if.end44.for.end_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end44.for.body_crit_edge
  %.pn101 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn99, %if.end44.for.body_crit_edge ]
  %mwq.0 = getelementptr i8, ptr %.pn101, i32 -112
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %mwq.0) #12
  %63 = ptrtoint ptr %.pn101 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn101, align 4
  %cmp.not = icmp eq ptr %.pn, %wq_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end44.for.end_crit_edge
  %tags = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 22
  %64 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tags, align 4
  tail call void @kfree(ptr noundef %65) #12
  tail call void @kfree(ptr noundef %mvi) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_tasklet(i32 noundef %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %opaque to ptr
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldd_ha, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  %mvi2 = getelementptr inbounds %struct.mvs_prv_info, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %mvi2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvi2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body6, label %if.end, !prof !95

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/mvsas/mv_init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #12, !srcloc !96
  unreachable

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.mvs_info, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dispatch, align 4
  %isr_status = getelementptr inbounds %struct.mvs_dispatch, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %isr_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isr_status, align 4
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call = tail call i32 %12(ptr noundef nonnull %6, i32 noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp41.not = icmp eq i8 %4, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %cmp41.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %for.body.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i8 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lldd_ha, align 4
  %arrayidx20 = getelementptr %struct.mvs_prv_info, ptr %18, i32 0, i32 4, i32 %indvars.iv
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20, align 4
  %chip21 = getelementptr inbounds %struct.mvs_info, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %chip21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip21, align 4
  %dispatch22 = getelementptr inbounds %struct.mvs_chip_info, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %dispatch22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dispatch22, align 4
  %isr = getelementptr inbounds %struct.mvs_dispatch, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isr, align 4
  %pdev23 = getelementptr inbounds %struct.mvs_info, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev23, align 8
  %irq24 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq24, align 4
  %call25 = tail call i32 %26(ptr noundef %20, i32 noundef %30, i32 noundef %call) #12
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.end.out_crit_edge
  %mvi.1 = phi ptr [ %6, %if.end.out_crit_edge ], [ %20, %for.body.out_crit_edge ]
  %chip26 = getelementptr inbounds %struct.mvs_info, ptr %mvi.1, i32 0, i32 20
  %31 = ptrtoint ptr %chip26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip26, align 4
  %dispatch27 = getelementptr inbounds %struct.mvs_chip_info, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %dispatch27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dispatch27, align 4
  %interrupt_enable = getelementptr inbounds %struct.mvs_dispatch, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %interrupt_enable, align 4
  tail call void %36(ptr noundef %mvi.1) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvs_post_sas_ha_init(ptr nocapture noundef %shost, ptr nocapture noundef readonly %chip_info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv1 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp78.not = icmp eq i8 %5, 0
  br i1 %cmp78.not, label %entry.for.end21_crit_edge, label %for.body.lr.ph

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %chip_info, i32 0, i32 1
  %sas_phy10 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 17
  %sas_port14 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %j.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %6 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_ha, align 4
  %arrayidx = getelementptr %struct.mvs_prv_info, ptr %7, i32 0, i32 4, i32 %j.079
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp676.not = icmp eq i32 %11, 0
  br i1 %cmp676.not, label %for.body.for.inc19_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %12 = phi i32 [ %21, %for.body8.for.body8_crit_edge ], [ %11, %for.body.for.body8_crit_edge ]
  %i.077 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ 0, %for.body.for.body8_crit_edge ]
  %sas_phy = getelementptr %struct.mvs_info, ptr %9, i32 0, i32 23, i32 %i.077, i32 2
  %13 = ptrtoint ptr %sas_phy10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sas_phy10, align 4
  %mul = mul i32 %12, %j.079
  %add = add i32 %mul, %i.077
  %arrayidx12 = getelementptr ptr, ptr %14, i32 %add
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sas_phy, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr %struct.mvs_info, ptr %9, i32 0, i32 24, i32 %i.077
  %16 = ptrtoint ptr %sas_port14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sas_port14, align 4
  %18 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_phy, align 4
  %mul16 = mul i32 %19, %j.079
  %add17 = add i32 %mul16, %i.077
  %arrayidx18 = getelementptr ptr, ptr %17, i32 %add17
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx13, ptr %arrayidx18, align 4
  %inc = add nuw i32 %i.077, 1
  %21 = load i32, ptr %n_phy, align 4
  %cmp6 = icmp ult i32 %inc, %21
  br i1 %cmp6, label %for.body8.for.body8_crit_edge, label %for.body8.for.inc19_crit_edge

for.body8.for.inc19_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

for.inc19:                                        ; preds = %for.body8.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %j.079, 1
  %exitcond.not = icmp eq i32 %inc20, %conv1
  br i1 %exitcond.not, label %for.inc19.for.end21_crit_edge, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %entry.for.end21_crit_edge
  %mvi.0.lcssa = phi ptr [ null, %entry.for.end21_crit_edge ], [ %9, %for.inc19.for.end21_crit_edge ]
  %sas_ha_name = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %sas_ha_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.1, ptr %sas_ha_name, align 4
  %dev = getelementptr inbounds %struct.mvs_info, ptr %mvi.0.lcssa, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev22 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev22, align 4
  %lldd_module = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %lldd_module to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %lldd_module, align 4
  %sas_addr = getelementptr inbounds %struct.mvs_info, ptr %mvi.0.lcssa, i32 0, i32 6
  %sas_addr24 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %sas_addr24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sas_addr, ptr %sas_addr24, align 4
  %n_phy26 = getelementptr inbounds %struct.mvs_chip_info, ptr %chip_info, i32 0, i32 1
  %28 = ptrtoint ptr %n_phy26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_phy26, align 4
  %mul27 = mul i32 %29, %conv1
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul27, ptr %num_phys, align 4
  %31 = ptrtoint ptr %mvi.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mvi.0.lcssa, align 8
  %and = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.end21.if.end_crit_edge

for.end21.if.end_crit_edge:                       ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi.0.lcssa, i32 0, i32 20
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %slot_width = getelementptr inbounds %struct.mvs_chip_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slot_width, align 4
  %shl = shl nuw i32 1, %36
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end21.if.end_crit_edge
  %can_queue.0 = phi i32 [ %shl, %if.else ], [ 62, %for.end21.if.end_crit_edge ]
  %chip28 = getelementptr inbounds %struct.mvs_info, ptr %mvi.0.lcssa, i32 0, i32 20
  %37 = ptrtoint ptr %chip28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip28, align 4
  %sg_width = getelementptr inbounds %struct.mvs_chip_info, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %sg_width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg_width, align 4
  %shl29 = shl nuw i32 1, %40
  %conv32 = and i32 %shl29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv32)
  %cmp33 = icmp ugt i32 %conv32, 128
  %phi.cast = trunc i32 %shl29 to i16
  %cond = select i1 %cmp33, i16 128, i16 %phi.cast
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 28
  %41 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %cond, ptr %sg_tablesize, align 2
  %can_queue38 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 26
  %42 = ptrtoint ptr %can_queue38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %can_queue.0, ptr %can_queue38, align 4
  %shost39 = getelementptr inbounds %struct.mvs_info, ptr %mvi.0.lcssa, i32 0, i32 8
  %43 = ptrtoint ptr %shost39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shost39, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 64, ptr %cmd_per_lun, align 8
  %46 = load ptr, ptr %shost39, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %core, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_register_ha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_unregister_ha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_queuecommand(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ioctl(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_eh_device_reset_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_eh_target_reset_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_slave_alloc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_slave_configure(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_target_alloc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_target_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_scan_finished(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_scan_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_change_queue_depth(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_version_show(ptr nocapture noundef readnone %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buffer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_coalescing_show(ptr nocapture noundef readnone %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buffer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @interrupt_coalescing, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.14, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_coalescing_store(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef readonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %1 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hostdata, align 8
  %cmp = icmp eq ptr %buffer, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.15, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp4 = icmp ugt i32 %4, 65535
  br i1 %cmp4, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 721, i32 noundef %4) #15
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end3
  store i32 %4, ptr @interrupt_coalescing, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %2, i32 0, i32 21
  %5 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lldd_ha, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %mvi11 = getelementptr inbounds %struct.mvs_prv_info, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %mvi11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvi11, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %for.cond.preheader, !prof !95

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1851.not = icmp eq i8 %8, 0
  br i1 %cmp1851.not, label %for.cond.preheader.do.end31_crit_edge, label %for.body.preheader

for.cond.preheader.do.end31_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i8 %8 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lldd_ha, align 4
  %arrayidx22 = getelementptr %struct.mvs_prv_info, ptr %12, i32 0, i32 4, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx22, align 4
  %chip = getelementptr inbounds %struct.mvs_info, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dispatch, align 4
  %tune_interrupt = getelementptr inbounds %struct.mvs_dispatch, ptr %18, i32 0, i32 49
  %19 = ptrtoint ptr %tune_interrupt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tune_interrupt, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %for.body.for.inc_crit_edge, label %if.then24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = load i32, ptr @interrupt_coalescing, align 4
  call void %20(ptr noundef %14, i32 noundef %21) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.do.end31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end31:                                         ; preds = %for.inc.do.end31_crit_edge, %for.cond.preheader.do.end31_crit_edge
  %22 = load i32, ptr @interrupt_coalescing, align 4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef 740, i32 noundef %22) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end31, %do.end
  %call34 = call i32 @strlen(ptr noundef nonnull %buffer) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call34, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_tag_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_domain_attach_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_port_formed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_port_deformed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_dev_found(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_dev_gone(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_queue_command(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_abort_task(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_abort_task_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_clear_aca(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_clear_task_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_I_T_nexus_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_lu_reset(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_query_task(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_phy_control(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_gpio_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @interrupt_coalescing, !1, !"interrupt_coalescing", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 13, i32 5}
!2 = !{ptr @__initcall__kmod_mvsas__292_784_mvs_init6, !3, !"__initcall__kmod_mvsas__292_784_mvs_init6", i1 false, i1 false}
!3 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 784, i32 1}
!4 = !{ptr @__exitcall_mvs_exit, !5, !"__exitcall_mvs_exit", i1 false, i1 false}
!5 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 785, i32 1}
!6 = !{ptr @__UNIQUE_ID_author293, !7, !"__UNIQUE_ID_author293", i1 false, i1 false}
!7 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 787, i32 1}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 788, i32 1}
!10 = !{ptr @__UNIQUE_ID_version295, !11, !"__UNIQUE_ID_version295", i1 false, i1 false}
!11 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 789, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_file296, !17, !"__UNIQUE_ID_file296", i1 false, i1 false}
!17 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 790, i32 1}
!18 = !{ptr @__UNIQUE_ID_license297, !17, !"__UNIQUE_ID_license297", i1 false, i1 false}
!19 = !{ptr @mvs_stt, !20, !"mvs_stt", i1 false, i1 false}
!20 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 15, i32 40}
!21 = !{ptr @mvs_pci_driver, !22, !"mvs_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 689, i32 26}
!23 = !{ptr @mvs_pci_table, !24, !"mvs_pci_table", i1 false, i1 false}
!24 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 630, i32 29}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 502, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mvs_pci_init._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @mvs_pci_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 394, i32 4}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pci_go_64._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @pci_go_64._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mvs_sht, !40, !"mvs_sht", i1 false, i1 false}
!40 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 32, i32 34}
!41 = !{ptr @mvst_host_groups, !42, !"mvst_host_groups", i1 false, i1 false}
!42 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 782, i32 1}
!43 = !{ptr @mvst_host_group, !42, !"mvst_host_group", i1 false, i1 false}
!44 = !{ptr @mvst_host_attrs, !45, !"mvst_host_attrs", i1 false, i1 false}
!45 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 776, i32 26}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 702, i32 8}
!48 = !{ptr @dev_attr_driver_version, !47, !"dev_attr_driver_version", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 699, i32 37}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 750, i32 8}
!53 = !{ptr @dev_attr_interrupt_coalescing, !52, !"dev_attr_interrupt_coalescing", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 747, i32 37}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 716, i32 21}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 720, i32 3}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @interrupt_coalescing_store._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @interrupt_coalescing_store._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 739, i32 2}
!65 = !{ptr @interrupt_coalescing_store._entry.18, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @interrupt_coalescing_store._entry_ptr.20, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mvs_chips, !68, !"mvs_chips", i1 false, i1 false}
!68 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 16, i32 35}
!69 = !{ptr @mvs_alloc.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 228, i32 2}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 281, i32 21}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 281, i32 29}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 285, i32 4}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mvs_alloc._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mvs_alloc._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mvs_phy_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 86, i32 2}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mvs_transport_ops, !85, !"mvs_transport_ops", i1 false, i1 false}
!85 = !{!"../drivers/scsi/mvsas/mv_init.c", i32 59, i32 44}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2155862890, i64 2155863383, i64 2155862927, i64 2155862983, i64 2155863017, i64 2155863041, i64 2155863082, i64 2155863103, i64 2155863131, i64 2155863165}
