; ModuleID = '/llk/IR_all_yes/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c_pt.bc'
source_filename = "../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_sas_hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.hisi_hba = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, [8 x i8], ptr, i32, %struct.spinlock, %struct.semaphore, %struct.timer_list, ptr, i32, i32, i32, ptr, i32, %struct.sas_ha_struct, ptr, [32 x %struct.hisi_sas_cq], [32 x %struct.hisi_sas_dq], [9 x %struct.hisi_sas_phy], [9 x %struct.hisi_sas_port], i32, [1024 x %struct.hisi_sas_device], [32 x ptr], [32 x i32], [32 x ptr], [32 x i32], ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [32 x i32], %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [8 x i32]], [2 x i32], [50 x [3 x %struct.hisi_sas_debugfs_regs]], [50 x [9 x %struct.hisi_sas_debugfs_port]], [50 x [32 x %struct.hisi_sas_debugfs_cq]], [50 x [32 x %struct.hisi_sas_debugfs_dq]], [50 x %struct.hisi_sas_debugfs_iost], [50 x %struct.hisi_sas_debugfs_itct], [50 x %struct.hisi_sas_debugfs_iost_cache], [50 x %struct.hisi_sas_debugfs_itct_cache], [50 x i64], i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.hisi_sas_cq = type { ptr, ptr, i32, i32, i32 }
%struct.hisi_sas_dq = type { ptr, %struct.list_head, %struct.spinlock, i32, i32 }
%struct.hisi_sas_phy = type { [3 x %struct.work_struct], ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, %struct.timer_list, %struct.spinlock, i64, i64, [32 x i8], i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.hisi_sas_debugfs_fifo }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.hisi_sas_debugfs_fifo = type { i32, i32, i32, i32, i32, i32, [32 x i32] }
%struct.hisi_sas_port = type { %struct.asd_sas_port, i8, i8 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.hisi_sas_device = type { ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hisi_sas_debugfs_regs = type { ptr, ptr }
%struct.hisi_sas_debugfs_port = type { ptr, ptr }
%struct.hisi_sas_debugfs_cq = type { ptr, ptr }
%struct.hisi_sas_debugfs_dq = type { ptr, ptr }
%struct.hisi_sas_debugfs_iost = type { ptr }
%struct.hisi_sas_debugfs_itct = type { ptr }
%struct.hisi_sas_debugfs_iost_cache = type { ptr }
%struct.hisi_sas_debugfs_itct_cache = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hisi_sas_itct = type { i64, i64, i64, i64, [12 x i64] }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.83, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.83 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.85 }
%union.anon.85 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.86, %union.anon.87, i8, i8, i8, i8, i8, %union.anon.88, i8, i8, i8, i32 }
%union.anon.86 = type { i8 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%struct.hisi_sas_slot = type { %struct.list_head, %struct.list_head, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.timer_list, i8, ptr, ptr, i32, i16 }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.90, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.90 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.hisi_sas_cmd_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.hisi_sas_sge = type { i64, i32, i32, i32, i32 }
%struct.sas_ssp_task = type { i8, [8 x i8], i8, i32, i8, ptr }
%struct.hisi_sas_tmf_task = type { i32, i32, i8, i16 }
%struct.hisi_sas_complete_v1_hdr = type { i32 }
%struct.hisi_sas_err_record_v1 = type { i32, i32, i32, i32 }
%struct.hisi_sas_status_buffer = type { %struct.hisi_sas_err_record, [1024 x i8] }
%struct.hisi_sas_err_record = type { [4 x i32] }

@__initcall__kmod_hisi_sas_v1_hw__298_1831_hisi_sas_v1_driver_init6 = internal global ptr @hisi_sas_v1_driver_init, section ".initcall6.init", align 4
@hisi_sas_v1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_sas_v1_probe, ptr @hisi_sas_v1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sas_v1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_sas_v1_driver_exit = internal global ptr @hisi_sas_v1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file299 = internal constant [57 x i8] c"hisi_sas_v1_hw.file=drivers/scsi/hisi_sas/hisi_sas_v1_hw\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [27 x i8] c"hisi_sas_v1_hw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [57 x i8] c"hisi_sas_v1_hw.author=John Garry <john.garry@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [65 x i8] c"hisi_sas_v1_hw.description=HISILICON SAS controller v1 hw driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [45 x i8] c"hisi_sas_v1_hw.alias=platform:hisi_sas_v1_hw\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_sas_v1_hw\00", [17 x i8] zeroinitializer }, align 32
@sas_v1_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip05-sas-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hisi_sas_v1_hw = internal constant { %struct.hisi_sas_hw, [44 x i8] } { %struct.hisi_sas_hw { ptr @hisi_sas_v1_init, ptr null, ptr @setup_itct_v1_hw, ptr null, ptr null, ptr @sl_notify_ssp_v1_hw, ptr @start_delivery_v1_hw, ptr @prep_ssp_v1_hw, ptr @prep_smp_v1_hw, ptr null, ptr null, ptr @phys_init_v1_hw, ptr @start_phy_v1_hw, ptr @disable_phy_v1_hw, ptr @phy_hard_reset_v1_hw, ptr null, ptr @phy_set_linkrate_v1_hw, ptr @phy_get_max_linkrate_v1_hw, ptr @clear_itct_v1_hw, ptr null, ptr @get_wideport_bitmap_v1_hw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, ptr @sht_v1_hw }, [44 x i8] zeroinitializer }, align 32
@sht_v1_hw = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sas_queuecommand, ptr null, ptr null, ptr @.str, ptr null, ptr @sas_ioctl, ptr null, ptr null, ptr null, ptr @sas_eh_device_reset_handler, ptr @sas_eh_target_reset_handler, ptr null, ptr null, ptr @hisi_sas_slave_alloc, ptr @hisi_sas_slave_configure, ptr null, ptr @sas_target_alloc, ptr @sas_target_destroy, ptr @hisi_sas_scan_finished, ptr @hisi_sas_scan_start, ptr @sas_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @sas_bios_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_sas_host_reset, ptr @.str, ptr null, i32 0, i32 -1, i16 124, i16 0, i32 1024, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr @host_v1_hw_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@hw_init_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hisi_sas_reset_hw failed, rc=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_init_v1_hw\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/scsi/hisi_sas/hisi_sas_v1_hw.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hw_init_v1_hw._entry_ptr = internal global ptr @hw_init_v1_hw._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@reset_hw_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset_hw_v1_hw\00", [17 x i8] zeroinitializer }, align 32
@reset_hw_v1_hw._entry_ptr = internal global ptr @reset_hw_v1_hw._entry, section ".printk_index", align 4
@reset_hw_v1_hw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@reset_hw_v1_hw._entry_ptr.10 = internal global ptr @reset_hw_v1_hw._entry.9, section ".printk_index", align 4
@reset_hw_v1_hw._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"De-reset failed\0A\00", [47 x i8] zeroinitializer }, align 32
@reset_hw_v1_hw._entry_ptr.13 = internal global ptr @reset_hw_v1_hw._entry.11, section ".printk_index", align 4
@reset_hw_v1_hw._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.3, i32 644, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no reset method\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@reset_hw_v1_hw._entry_ptr.17 = internal global ptr @reset_hw_v1_hw._entry.14, section ".printk_index", align 4
@interrupt_init_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1644, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq init: fail map phy interrupt %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt_init_v1_hw\00", [43 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry_ptr = internal global ptr @interrupt_init_v1_hw._entry, section ".printk_index", align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hisi_sas_v1_hw phy\00", [45 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 1652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"irq init: could not request phy interrupt %d, rc=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry_ptr.23 = internal global ptr @interrupt_init_v1_hw._entry.21, section ".printk_index", align 4
@interrupt_init_v1_hw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.3, i32 1663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"irq init: could not map cq interrupt %d\0A\00", [55 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry_ptr.26 = internal global ptr @interrupt_init_v1_hw._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hisi_sas_v1_hw cq\00", [46 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.3, i32 1671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"irq init: could not request cq interrupt %d, rc=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry_ptr.30 = internal global ptr @interrupt_init_v1_hw._entry.28, section ".printk_index", align 4
@interrupt_init_v1_hw._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.19, ptr @.str.3, i32 1681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"irq init: could not map fatal interrupt %d\0A\00", [52 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry_ptr.33 = internal global ptr @interrupt_init_v1_hw._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_sas_v1_hw fatal\00", [43 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.3, i32 1689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"irq init: could not request fatal interrupt %d, rc=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@interrupt_init_v1_hw._entry_ptr.37 = internal global ptr @interrupt_init_v1_hw._entry.35, section ".printk_index", align 4
@int_bcast_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bcast: irq_value = %x not set enable bit\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"int_bcast_v1_hw\00", [16 x i8] zeroinitializer }, align 32
@int_bcast_v1_hw._entry_ptr = internal global ptr @int_bcast_v1_hw._entry, section ".printk_index", align 4
@int_phyup_v1_hw.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 1, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"int_phyup_v1_hw\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"phyup: irq_value = %x not set enable bit\0A\00", [54 x i8] zeroinitializer }, align 32
@int_phyup_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 1342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"phyup: phy%d SATA attached equipment\0A\00", [58 x i8] zeroinitializer }, align 32
@int_phyup_v1_hw._entry_ptr = internal global ptr @int_phyup_v1_hw._entry, section ".printk_index", align 4
@int_phyup_v1_hw._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.3, i32 1349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phyup: phy%d invalid portid\0A\00", [35 x i8] zeroinitializer }, align 32
@int_phyup_v1_hw._entry_ptr.45 = internal global ptr @int_phyup_v1_hw._entry.43, section ".printk_index", align 4
@int_phyup_v1_hw._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.40, ptr @.str.3, i32 1368, ptr @.str.48, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phyup: phy%d link_rate=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@int_phyup_v1_hw._entry_ptr.49 = internal global ptr @int_phyup_v1_hw._entry.46, section ".printk_index", align 4
@int_abnormal_v1_hw.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"int_abnormal_v1_hw\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"abnormal: ID_TIMEOUT phy%d identify timeout\0A\00", [51 x i8] zeroinitializer }, align 32
@int_abnormal_v1_hw.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 1, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"abnormal: DWS_LOST phy%d dws lost\0A\00", [61 x i8] zeroinitializer }, align 32
@int_abnormal_v1_hw.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 1, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"abnormal: SN_FAIL_NGR phy%d sn fail ngr\0A\00", [55 x i8] zeroinitializer }, align 32
@int_abnormal_v1_hw.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"abnormal: SL_ID/OPAF_FAIL phy%d check adr frm err\0A\00", [45 x i8] zeroinitializer }, align 32
@int_abnormal_v1_hw.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.55, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"abnormal: SL_PS_FAIL phy%d fail\0A\00", [63 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slot_complete_v1_hw\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"slot complete: port has no device\0A\00", [61 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 1222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"slot complete: [%d:%d] has dq IPTT err\0A\00", [56 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr = internal global ptr @slot_complete_v1_hw._entry, section ".printk_index", align 4
@slot_complete_v1_hw._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.56, ptr @.str.3, i32 1226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"slot complete: [%d:%d] has dq type err\0A\00", [56 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.61 = internal global ptr @slot_complete_v1_hw._entry.59, section ".printk_index", align 4
@slot_complete_v1_hw._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.56, ptr @.str.3, i32 1230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"slot complete: [%d:%d] has dq force phy err\0A\00", [51 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.64 = internal global ptr @slot_complete_v1_hw._entry.62, section ".printk_index", align 4
@slot_complete_v1_hw._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.56, ptr @.str.3, i32 1234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"slot complete: [%d:%d] has dq phy id err\0A\00", [54 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.67 = internal global ptr @slot_complete_v1_hw._entry.65, section ".printk_index", align 4
@slot_complete_v1_hw._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.3, i32 1238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"slot complete: [%d:%d] has dq abort flag err\0A\00", [50 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.70 = internal global ptr @slot_complete_v1_hw._entry.68, section ".printk_index", align 4
@slot_complete_v1_hw._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.56, ptr @.str.3, i32 1242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"slot complete: [%d:%d] has dq IPTT or ICT err\0A\00", [49 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.73 = internal global ptr @slot_complete_v1_hw._entry.71, section ".printk_index", align 4
@slot_complete_v1_hw._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.3, i32 1246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"slot complete: [%d:%d] has dq SSP frame type err\0A\00", [46 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.76 = internal global ptr @slot_complete_v1_hw._entry.74, section ".printk_index", align 4
@slot_complete_v1_hw._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.56, ptr @.str.3, i32 1250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"slot complete: [%d:%d] has dq order frame len err\0A\00", [45 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.79 = internal global ptr @slot_complete_v1_hw._entry.77, section ".printk_index", align 4
@slot_complete_v1_hw._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.56, ptr @.str.3, i32 1297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"slot complete: SATA/STP not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.82 = internal global ptr @slot_complete_v1_hw._entry.80, section ".printk_index", align 4
@slot_complete_v1_hw._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.3, i32 1307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"slot complete: port %d has removed\0A\00", [60 x i8] zeroinitializer }, align 32
@slot_complete_v1_hw._entry_ptr.85 = internal global ptr @slot_complete_v1_hw._entry.83, section ".printk_index", align 4
@slot_err_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 1169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"slot err: SATA/STP not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slot_err_v1_hw\00", [17 x i8] zeroinitializer }, align 32
@slot_err_v1_hw._entry_ptr = internal global ptr @slot_err_v1_hw._entry, section ".printk_index", align 4
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Fatal DQ 1b ECC interrupt (0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Fatal DQ RAM ECC interrupt @ 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Fatal IOST 1b ECC interrupt (0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Fatal IOST RAM ECC interrupt @ 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Fatal TCT RAM ECC interrupt @ 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Fatal ITCT 1b ECC interrupt (0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Fatal DQ_CFG_ERR interrupt (0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Fatal CQ_CFG_ERR interrupt (0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Fatal AXI_WRONG_INT interrupt (0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Fatal AXI_OVERLF_INT incorrect interrupt (0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_itct_v1_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 513, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setup itct: unsupported dev type (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_itct_v1_hw\00", [47 x i8] zeroinitializer }, align 32
@setup_itct_v1_hw._entry_ptr = internal global ptr @setup_itct_v1_hw._entry, section ".printk_index", align 4
@phys_init_v1_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(timer)\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@host_v1_hw_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @host_v1_hw_group, ptr null], [24 x i8] zeroinitializer }, align 32
@host_v1_hw_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @host_v1_hw_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@host_v1_hw_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_phy_event_threshold, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_phy_event_threshold = external dso_local global %struct.device_attribute, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 128]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.105 = internal global [28 x i64] [i64 26, i64 32, i64 4, i64 5, i64 8, i64 9, i64 266, i64 267, i64 513, i64 514, i64 515, i64 516, i64 518, i64 519, i64 520, i64 521, i64 522, i64 523, i64 525, i64 526, i64 527, i64 528, i64 534, i64 538, i64 539, i64 540, i64 773, i64 775]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"hisi_sas_v1_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1821, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1825, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"sas_v1_of_match\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1808, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"hisi_sas_v1_hw\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1779, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"sht_v1_hw\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1752, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 755, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 614, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 627, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 640, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 644, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1643, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1649, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1651, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1662, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1668, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1670, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1680, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1686, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1688, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1412, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1333, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1341, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1349, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1367, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1454, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1458, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1461, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1466, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1470, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1212, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1221, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1225, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1229, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1233, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1237, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1241, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1245, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1249, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1297, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1306, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1169, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1541, i32 9 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1550, i32 9 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1557, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1566, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1575, i32 9 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1582, i32 9 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1599, i32 9 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1603, i32 9 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1607, i32 9 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1611, i32 9 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 512, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 817, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [18 x i8] c"host_v1_hw_groups\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"host_v1_hw_group\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1750, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"host_v1_hw_attrs\00", align 1
@___asan_gen_.396 = private constant [42 x i8] c"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1745, i32 26 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_hisi_sas_v1_driver_exit, ptr @__initcall__kmod_hisi_sas_v1_hw__298_1831_hisi_sas_v1_driver_init6, ptr @hisi_sas_v1_driver_exit, ptr @hw_init_v1_hw._entry, ptr @hw_init_v1_hw._entry_ptr, ptr @int_bcast_v1_hw._entry, ptr @int_bcast_v1_hw._entry_ptr, ptr @int_phyup_v1_hw._entry, ptr @int_phyup_v1_hw._entry.43, ptr @int_phyup_v1_hw._entry.46, ptr @int_phyup_v1_hw._entry_ptr, ptr @int_phyup_v1_hw._entry_ptr.45, ptr @int_phyup_v1_hw._entry_ptr.49, ptr @interrupt_init_v1_hw._entry, ptr @interrupt_init_v1_hw._entry.21, ptr @interrupt_init_v1_hw._entry.24, ptr @interrupt_init_v1_hw._entry.28, ptr @interrupt_init_v1_hw._entry.31, ptr @interrupt_init_v1_hw._entry.35, ptr @interrupt_init_v1_hw._entry_ptr, ptr @interrupt_init_v1_hw._entry_ptr.23, ptr @interrupt_init_v1_hw._entry_ptr.26, ptr @interrupt_init_v1_hw._entry_ptr.30, ptr @interrupt_init_v1_hw._entry_ptr.33, ptr @interrupt_init_v1_hw._entry_ptr.37, ptr @reset_hw_v1_hw._entry, ptr @reset_hw_v1_hw._entry.11, ptr @reset_hw_v1_hw._entry.14, ptr @reset_hw_v1_hw._entry.9, ptr @reset_hw_v1_hw._entry_ptr, ptr @reset_hw_v1_hw._entry_ptr.10, ptr @reset_hw_v1_hw._entry_ptr.13, ptr @reset_hw_v1_hw._entry_ptr.17, ptr @setup_itct_v1_hw._entry, ptr @setup_itct_v1_hw._entry_ptr, ptr @slot_complete_v1_hw._entry, ptr @slot_complete_v1_hw._entry.59, ptr @slot_complete_v1_hw._entry.62, ptr @slot_complete_v1_hw._entry.65, ptr @slot_complete_v1_hw._entry.68, ptr @slot_complete_v1_hw._entry.71, ptr @slot_complete_v1_hw._entry.74, ptr @slot_complete_v1_hw._entry.77, ptr @slot_complete_v1_hw._entry.80, ptr @slot_complete_v1_hw._entry.83, ptr @slot_complete_v1_hw._entry_ptr, ptr @slot_complete_v1_hw._entry_ptr.61, ptr @slot_complete_v1_hw._entry_ptr.64, ptr @slot_complete_v1_hw._entry_ptr.67, ptr @slot_complete_v1_hw._entry_ptr.70, ptr @slot_complete_v1_hw._entry_ptr.73, ptr @slot_complete_v1_hw._entry_ptr.76, ptr @slot_complete_v1_hw._entry_ptr.79, ptr @slot_complete_v1_hw._entry_ptr.82, ptr @slot_complete_v1_hw._entry_ptr.85, ptr @slot_err_v1_hw._entry, ptr @slot_err_v1_hw._entry_ptr, ptr @hisi_sas_v1_driver, ptr @.str, ptr @sas_v1_of_match, ptr @hisi_sas_v1_hw, ptr @sht_v1_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @phys_init_v1_hw.__key, ptr @.str.101, ptr @host_v1_hw_groups, ptr @host_v1_hw_group, ptr @host_v1_hw_attrs], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sas_v1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_v1_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sas_v1_hw to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht_v1_hw to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_init_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v1_hw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v1_hw._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v1_hw._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v1_hw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v1_hw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v1_hw._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v1_hw._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v1_hw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_bcast_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_phyup_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_phyup_v1_hw._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_phyup_v1_hw._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v1_hw._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_err_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_itct_v1_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phys_init_v1_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_v1_hw_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_v1_hw_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_v1_hw_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_sas_v1_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_sas_v1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_sas_v1_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hisi_sas_probe(ptr noundef %pdev, ptr noundef nonnull @hisi_sas_v1_hw) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v1_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hisi_sas_remove(ptr noundef %pdev) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v1_init(ptr noundef %hisi_hba) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i, align 4, !annotation !213
  %n_phy.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %3 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_phy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp136.i.i = icmp sgt i32 %4, 0
  br i1 %cmp136.i.i, label %for.body.lr.ph.i.i, label %entry.for.end.i.i_crit_edge

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %regs1.i.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0137.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i.i.i, align 4
  %mul.i.i.i = shl i32 %i.0137.i.i, 10
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 2068
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %8 = or i32 %7, 16777216
  %9 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i.i.i, align 4
  %add.ptr.i119.i.i = getelementptr i8, ptr %10, i32 2068
  %add.ptr2.i120.i.i = getelementptr i8, ptr %add.ptr.i119.i.i, i32 %mul.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i120.i.i, i32 %8) #9, !srcloc !217
  %inc.i.i = add nuw nsw i32 %i.0137.i.i, 1
  %11 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_phy.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %12
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #9
  %13 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_phy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4138.i.i = icmp sgt i32 %14, 0
  br i1 %cmp4138.i.i, label %for.body5.lr.ph.i.i, label %for.end.i.i.for.end17.i.i_crit_edge

for.end.i.i.for.end17.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.end.i.i
  %regs1.i121.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.inc15.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.1139.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc16.i.i, %for.inc15.i.i.for.body5.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %15, 100
  %mul.i122.i.i = shl i32 %i.1139.i.i, 10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %for.body5.i.i
  %16 = ptrtoint ptr %regs1.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i121.i.i, align 4
  %add.ptr.i123.i.i = getelementptr i8, ptr %17, i32 %mul.i122.i.i
  %add.ptr2.i124.i.i = getelementptr i8, ptr %add.ptr.i123.i.i, i32 2768
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i124.i.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %19 = ptrtoint ptr %regs1.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i121.i.i, align 4
  %add.ptr.i127.i.i = getelementptr i8, ptr %20, i32 %mul.i122.i.i
  %add.ptr2.i128.i.i = getelementptr i8, ptr %add.ptr.i127.i.i, i32 2792
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128.i.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %22 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  %23 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not.i.i = icmp eq i32 %23, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool10.not.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc15.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.cond.i.i
  tail call void @msleep(i32 noundef 20) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %24
  %cmp11.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp11.i.i, label %if.end.i.i.hw_init_v1_hw.exit_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

if.end.i.i.hw_init_v1_hw.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_init_v1_hw.exit

for.inc15.i.i:                                    ; preds = %while.cond.i.i
  %inc16.i.i = add nuw nsw i32 %i.1139.i.i, 1
  %25 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_phy.i.i, align 4
  %cmp4.i.i = icmp slt i32 %inc16.i.i, %26
  br i1 %cmp4.i.i, label %for.inc15.i.i.for.body5.i.i_crit_edge, label %for.inc15.i.i.for.end17.i.i_crit_edge

for.inc15.i.i.for.end17.i.i_crit_edge:            ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i.i

for.inc15.i.i.for.body5.i.i_crit_edge:            ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i.i

for.end17.i.i:                                    ; preds = %for.inc15.i.i.for.end17.i.i_crit_edge, %for.end.i.i.for.end17.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add19.i.i = add i32 %27, 100
  %regs1.i129.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %while.cond20.i.i

while.cond20.i.i:                                 ; preds = %if.end25.i.i.while.cond20.i.i_crit_edge, %for.end17.i.i
  %28 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i130.i.i = getelementptr i8, ptr %29, i32 20736
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130.i.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp23.i.i = icmp eq i32 %30, 0
  br i1 %cmp23.i.i, label %if.else.i.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %while.cond20.i.i
  tail call void @msleep(i32 noundef 20) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub26.i.i = sub i32 %add19.i.i, %31
  %cmp27.i.i = icmp slt i32 %sub26.i.i, 0
  br i1 %cmp27.i.i, label %if.end25.i.i.hw_init_v1_hw.exit_crit_edge, label %if.end25.i.i.while.cond20.i.i_crit_edge

if.end25.i.i.while.cond20.i.i_crit_edge:          ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond20.i.i

if.end25.i.i.hw_init_v1_hw.exit_crit_edge:        ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_init_v1_hw.exit

if.else.i.i:                                      ; preds = %while.cond20.i.i
  %ctrl.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 7
  %32 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %33, null
  br i1 %tobool42.not.i.i, label %do.end78.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.else.i.i
  %ctrl_reset_reg.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 8
  %34 = ptrtoint ptr %ctrl_reset_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrl_reset_reg.i.i, align 8
  %call45.i.i = tail call i32 @regmap_write(ptr noundef nonnull %33, i32 noundef %35, i32 noundef 524287) #9
  %36 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl.i.i, align 4
  %ctrl_clock_ena_reg.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 10
  %38 = ptrtoint ptr %ctrl_clock_ena_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrl_clock_ena_reg.i.i, align 8
  %add47.i.i = add i32 %39, 4
  %call48.i.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add47.i.i, i32 noundef 524287) #9
  tail call void @msleep(i32 noundef 1) #9
  %40 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl.i.i, align 4
  %ctrl_reset_sts_reg.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 9
  %42 = ptrtoint ptr %ctrl_reset_sts_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctrl_reset_sts_reg.i.i, align 4
  %call50.i.i = call i32 @regmap_read(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %val.i.i) #9
  %44 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i.i, align 4
  %and51.i.i = and i32 %45, 524287
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %and51.i.i)
  %cmp52.not.i.i = icmp eq i32 %and51.i.i, 524287
  br i1 %cmp52.not.i.i, label %if.end57.i.i, label %do.end56.i.i

do.end56.i.i:                                     ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  br label %hw_init_v1_hw.exit

if.end57.i.i:                                     ; preds = %if.then43.i.i
  %46 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl.i.i, align 4
  %48 = ptrtoint ptr %ctrl_reset_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctrl_reset_reg.i.i, align 8
  %add60.i.i = add i32 %49, 4
  %call61.i.i = call i32 @regmap_write(ptr noundef %47, i32 noundef %add60.i.i, i32 noundef 524287) #9
  %50 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl.i.i, align 4
  %52 = ptrtoint ptr %ctrl_clock_ena_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrl_clock_ena_reg.i.i, align 8
  %call64.i.i = call i32 @regmap_write(ptr noundef %51, i32 noundef %53, i32 noundef 524287) #9
  call void @msleep(i32 noundef 1) #9
  %54 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctrl.i.i, align 4
  %56 = ptrtoint ptr %ctrl_reset_sts_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctrl_reset_sts_reg.i.i, align 4
  %call67.i.i = call i32 @regmap_read(ptr noundef %55, i32 noundef %57, ptr noundef nonnull %val.i.i) #9
  %58 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i.i, align 4
  %and68.i.i = and i32 %59, 524287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.end.i, label %do.end73.i.i

do.end73.i.i:                                     ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #12
  br label %hw_init_v1_hw.exit

do.end78.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %hw_init_v1_hw.exit

if.end.i:                                         ; preds = %if.end57.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @msleep(i32 noundef 100) #9
  %queue_count.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 30
  %60 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %queue_count.i.i, align 4
  %sh_prom.i.i = zext i32 %61 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %62 = trunc i64 %notmask.i.i to i32
  %conv.i.i = xor i32 %62, -1
  %63 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs1.i129.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  %65 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %65) #9, !srcloc !217
  %66 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %67, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 285212672) #9, !srcloc !217
  %68 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i129.i.i = getelementptr i8, ptr %69, i32 148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i.i, i32 16777216) #9, !srcloc !217
  %70 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i131.i.i = getelementptr i8, ptr %71, i32 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i.i, i32 -16711680) #9, !srcloc !217
  %72 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i133.i.i = getelementptr i8, ptr %73, i32 568
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i.i, i32 17039360) #9, !srcloc !217
  %74 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i135.i.i = getelementptr i8, ptr %75, i32 204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i.i, i32 1677721600) #9, !srcloc !217
  %76 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i137.i.i = getelementptr i8, ptr %77, i32 144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i.i, i32 16777216) #9, !srcloc !217
  %78 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i139.i.i = getelementptr i8, ptr %79, i32 160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i.i, i32 1677721600) #9, !srcloc !217
  %80 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i141.i.i = getelementptr i8, ptr %81, i32 168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i.i, i32 270991360) #9, !srcloc !217
  %82 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i143.i.i = getelementptr i8, ptr %83, i32 172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i.i, i32 16777216) #9, !srcloc !217
  %84 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i145.i.i = getelementptr i8, ptr %85, i32 188
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i.i, i32 309985280) #9, !srcloc !217
  %86 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i147.i.i = getelementptr i8, ptr %87, i32 192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i.i, i32 1083965440) #9, !srcloc !217
  %88 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i149.i.i = getelementptr i8, ptr %89, i32 196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i.i, i32 33554432) #9, !srcloc !217
  %90 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i151.i.i = getelementptr i8, ptr %91, i32 444
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i.i, i32 201326592) #9, !srcloc !217
  %92 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i153.i.i = getelementptr i8, ptr %93, i32 448
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i.i, i32 -1601830656) #9, !srcloc !217
  %94 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i155.i.i = getelementptr i8, ptr %95, i32 452
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i.i, i32 16777216) #9, !srcloc !217
  %96 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i157.i.i = getelementptr i8, ptr %97, i32 456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i.i, i32 16777216) #9, !srcloc !217
  %98 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i159.i.i = getelementptr i8, ptr %99, i32 460
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i.i, i32 16777216) #9, !srcloc !217
  %100 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i161.i.i = getelementptr i8, ptr %101, i32 464
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i.i, i32 -1) #9, !srcloc !217
  %102 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i163.i.i = getelementptr i8, ptr %103, i32 468
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i.i, i32 0) #9, !srcloc !217
  %104 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i165.i.i = getelementptr i8, ptr %105, i32 472
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i.i, i32 -1) #9, !srcloc !217
  %106 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i167.i.i = getelementptr i8, ptr %107, i32 480
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i.i, i32 0) #9, !srcloc !217
  %108 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i169.i.i = getelementptr i8, ptr %109, i32 476
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169.i.i, i32 -1) #9, !srcloc !217
  %110 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i171.i.i = getelementptr i8, ptr %111, i32 484
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i.i, i32 0) #9, !srcloc !217
  %112 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i173.i.i = getelementptr i8, ptr %113, i32 492
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.i.i, i32 0) #9, !srcloc !217
  %114 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i175.i.i = getelementptr i8, ptr %115, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i.i, i32 33554432) #9, !srcloc !217
  %116 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i177.i.i = getelementptr i8, ptr %117, i32 212
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177.i.i, i32 34) #9, !srcloc !217
  %118 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %n_phy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp244.i.i = icmp sgt i32 %119, 0
  br i1 %cmp244.i.i, label %if.end.i.for.body.i14.i_crit_edge, label %if.end.i.for.cond2.preheader.i.i_crit_edge

if.end.i.for.cond2.preheader.i.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i.i

if.end.i.for.body.i14.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i14.i

for.cond2.preheader.i.i:                          ; preds = %for.body.i14.i.for.cond2.preheader.i.i_crit_edge, %if.end.i.for.cond2.preheader.i.i_crit_edge
  %120 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %queue_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp4246.i.i = icmp sgt i32 %121, 0
  br i1 %cmp4246.i.i, label %for.cond2.preheader.i.i.for.body6.i.i_crit_edge, label %for.cond2.preheader.i.i.if.end_crit_edge

for.cond2.preheader.i.i.if.end_crit_edge:         ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond2.preheader.i.i.for.body6.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body6.i.i

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %if.end.i.for.body.i14.i_crit_edge
  %i.0245.i.i = phi i32 [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %if.end.i.for.body.i14.i_crit_edge ]
  %122 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs1.i129.i.i, align 4
  %mul.i.i10.i = shl i32 %i.0245.i.i, 10
  %add.ptr.i179.i.i = getelementptr i8, ptr %123, i32 2060
  %add.ptr2.i.i11.i = getelementptr i8, ptr %add.ptr.i179.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i11.i, i32 -1979187200) #9, !srcloc !217
  %124 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i182.i.i = getelementptr i8, ptr %125, i32 2472
  %add.ptr2.i183.i.i = getelementptr i8, ptr %add.ptr.i182.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i183.i.i, i32 -2134898944) #9, !srcloc !217
  %126 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i186.i.i = getelementptr i8, ptr %127, i32 2096
  %add.ptr2.i187.i.i = getelementptr i8, ptr %add.ptr.i186.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i187.i.i, i32 15602948) #9, !srcloc !217
  %128 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i190.i.i = getelementptr i8, ptr %129, i32 2116
  %add.ptr2.i191.i.i = getelementptr i8, ptr %add.ptr.i190.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i191.i.i, i32 43136) #9, !srcloc !217
  %130 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i194.i.i = getelementptr i8, ptr %131, i32 2188
  %add.ptr2.i195.i.i = getelementptr i8, ptr %add.ptr.i194.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i195.i.i, i32 2105376125) #9, !srcloc !217
  %132 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i198.i.i = getelementptr i8, ptr %133, i32 2348
  %add.ptr2.i199.i.i = getelementptr i8, ptr %add.ptr.i198.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i199.i.i, i32 0) #9, !srcloc !217
  %134 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i202.i.i = getelementptr i8, ptr %135, i32 2300
  %add.ptr2.i203.i.i = getelementptr i8, ptr %add.ptr.i202.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i203.i.i, i32 1048576) #9, !srcloc !217
  %136 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i206.i.i = getelementptr i8, ptr %137, i32 2348
  %add.ptr2.i207.i.i = getelementptr i8, ptr %add.ptr.i206.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i207.i.i, i32 0) #9, !srcloc !217
  %138 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i210.i.i = getelementptr i8, ptr %139, i32 2352
  %add.ptr2.i211.i.i = getelementptr i8, ptr %add.ptr.i210.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i211.i.i, i32 171901184) #9, !srcloc !217
  %140 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i214.i.i = getelementptr i8, ptr %141, i32 2512
  %add.ptr2.i215.i.i = getelementptr i8, ptr %add.ptr.i214.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i215.i.i, i32 50331648) #9, !srcloc !217
  %142 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i218.i.i = getelementptr i8, ptr %143, i32 2348
  %add.ptr2.i219.i.i = getelementptr i8, ptr %add.ptr.i218.i.i, i32 %mul.i.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i219.i.i, i32 134217728) #9, !srcloc !217
  %inc.i12.i = add nuw nsw i32 %i.0245.i.i, 1
  %144 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %n_phy.i.i, align 4
  %cmp.i13.i = icmp slt i32 %inc.i12.i, %145
  br i1 %cmp.i13.i, label %for.body.i14.i.for.body.i14.i_crit_edge, label %for.body.i14.i.for.cond2.preheader.i.i_crit_edge

for.body.i14.i.for.cond2.preheader.i.i_crit_edge: ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i.i

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.cond2.preheader.i.i.for.body6.i.i_crit_edge
  %i.1247.i.i = phi i32 [ %inc27.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ 0, %for.cond2.preheader.i.i.for.body6.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.1247.i.i, 20
  %add.i15.i = add i32 %mul.i.i, 612
  %arrayidx.i.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 33, i32 %i.1247.i.i
  %146 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i221.i.i = getelementptr i8, ptr %147, i32 %add.i15.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.i.i, i32 0) #9, !srcloc !217
  %add9.i.i = add i32 %mul.i.i, 608
  %148 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i.i, align 4
  %150 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i223.i.i = getelementptr i8, ptr %151, i32 %add9.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  %152 = call i32 @llvm.bswap.i32(i32 %149) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223.i.i, i32 %152) #9, !srcloc !217
  %add13.i.i = add i32 %mul.i.i, 616
  %153 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i225.i.i = getelementptr i8, ptr %154, i32 %add13.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225.i.i, i32 1048576) #9, !srcloc !217
  %add15.i.i = add i32 %mul.i.i, 1252
  %arrayidx16.i.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 35, i32 %i.1247.i.i
  %155 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i227.i.i = getelementptr i8, ptr %156, i32 %add15.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227.i.i, i32 0) #9, !srcloc !217
  %add20.i.i = add i32 %mul.i.i, 1248
  %157 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx16.i.i, align 4
  %159 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i229.i.i = getelementptr i8, ptr %160, i32 %add20.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  %161 = call i32 @llvm.bswap.i32(i32 %158) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229.i.i, i32 %161) #9, !srcloc !217
  %add25.i.i = add i32 %mul.i.i, 1256
  %162 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i231.i.i = getelementptr i8, ptr %163, i32 %add25.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231.i.i, i32 1048576) #9, !srcloc !217
  %inc27.i.i = add nuw nsw i32 %i.1247.i.i, 1
  %164 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %queue_count.i.i, align 4
  %cmp4.i16.i = icmp slt i32 %inc27.i.i, %165
  br i1 %cmp4.i16.i, label %for.body6.i.i.for.body6.i.i_crit_edge, label %for.body6.i.i.if.end_crit_edge

for.body6.i.i.if.end_crit_edge:                   ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i.i

hw_init_v1_hw.exit:                               ; preds = %do.end78.i.i, %do.end73.i.i, %do.end56.i.i, %if.end25.i.i.hw_init_v1_hw.exit_crit_edge, %if.end.i.i.hw_init_v1_hw.exit_crit_edge
  %retval.4.i.ph.i = phi i32 [ -22, %do.end78.i.i ], [ -5, %do.end73.i.i ], [ -5, %do.end56.i.i ], [ -5, %if.end25.i.i.hw_init_v1_hw.exit_crit_edge ], [ -5, %if.end.i.i.hw_init_v1_hw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %retval.4.i.ph.i) #12
  br label %cleanup

if.end:                                           ; preds = %for.body6.i.i.if.end_crit_edge, %for.cond2.preheader.i.i.if.end_crit_edge
  %itct_dma.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 39
  %166 = ptrtoint ptr %itct_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %itct_dma.i.i, align 4
  %168 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i233.i.i = getelementptr i8, ptr %169, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  %170 = call i32 @llvm.bswap.i32(i32 %167) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233.i.i, i32 %170) #9, !srcloc !217
  %171 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i235.i.i = getelementptr i8, ptr %172, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235.i.i, i32 0) #9, !srcloc !217
  %iost_dma.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 41
  %173 = ptrtoint ptr %iost_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %iost_dma.i.i, align 4
  %175 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i237.i.i = getelementptr i8, ptr %176, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  %177 = call i32 @llvm.bswap.i32(i32 %174) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237.i.i, i32 %177) #9, !srcloc !217
  %178 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i239.i.i = getelementptr i8, ptr %179, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239.i.i, i32 0) #9, !srcloc !217
  %breakpoint_dma.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 43
  %180 = ptrtoint ptr %breakpoint_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %breakpoint_dma.i.i, align 4
  %182 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i241.i.i = getelementptr i8, ptr %183, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  %184 = call i32 @llvm.bswap.i32(i32 %181) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241.i.i, i32 %184) #9, !srcloc !217
  %185 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i243.i.i = getelementptr i8, ptr %186, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243.i.i, i32 0) #9, !srcloc !217
  %platform_dev.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 1
  %187 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %platform_dev.i, align 4
  %dev1.i16 = getelementptr inbounds %struct.platform_device, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %n_phy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp158.i = icmp sgt i32 %190, 0
  br i1 %cmp158.i, label %if.end.for.body.i_crit_edge, label %if.end.for.end17.i_crit_edge

if.end.for.end17.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.2.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.0159.i = phi i32 [ %inc16.i, %for.inc.2.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %i.0159.i
  %mul.i = mul i32 %i.0159.i, 3
  %call.i = call i32 @platform_get_irq(ptr noundef %188, i32 noundef %mul.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %for.body.i.do.end.i17_crit_edge, label %if.end.i18

for.body.i.do.end.i17_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i17

do.end.i17:                                       ; preds = %for.inc.1.i.do.end.i17_crit_edge, %for.inc.i.do.end.i17_crit_edge, %for.body.i.do.end.i17_crit_edge
  %idx.0157.lcssa.i = phi i32 [ %mul.i, %for.body.i.do.end.i17_crit_edge ], [ %inc14.i, %for.inc.i.do.end.i17_crit_edge ], [ %inc14.1.i, %for.inc.1.i.do.end.i17_crit_edge ]
  %call.lcssa.i = phi i32 [ %call.i, %for.body.i.do.end.i17_crit_edge ], [ %call.1.i, %for.inc.i.do.end.i17_crit_edge ], [ %call.2.i, %for.inc.1.i.do.end.i17_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.18, i32 noundef %idx.0157.lcssa.i) #12
  br label %cleanup

if.end.i18:                                       ; preds = %for.body.i
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i16, i32 noundef %call.i, ptr noundef nonnull @int_bcast_v1_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i18.do.end12.i_crit_edge

if.end.i18.do.end12.i_crit_edge:                  ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.end.2.i.do.end12.i_crit_edge, %if.end.1.i.do.end12.i_crit_edge, %if.end.i18.do.end12.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end.i18.do.end12.i_crit_edge ], [ %call.i.1.i, %if.end.1.i.do.end12.i_crit_edge ], [ %call.i.2.i, %if.end.2.i.do.end12.i_crit_edge ]
  %call.lcssa178.i = phi i32 [ %call.i, %if.end.i18.do.end12.i_crit_edge ], [ %call.1.i, %if.end.1.i.do.end12.i_crit_edge ], [ %call.2.i, %if.end.2.i.do.end12.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.22, i32 noundef %call.lcssa178.i, i32 noundef %call.i.lcssa.i) #12
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i18
  %inc14.i = add i32 %mul.i, 1
  %call.1.i = call i32 @platform_get_irq(ptr noundef %188, i32 noundef %inc14.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp6.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp6.1.i, label %for.inc.i.do.end.i17_crit_edge, label %if.end.1.i

for.inc.i.do.end.i17_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i17

if.end.1.i:                                       ; preds = %for.inc.i
  %call.i.1.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i16, i32 noundef %call.1.i, ptr noundef nonnull @int_phyup_v1_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %if.end.1.i.do.end12.i_crit_edge

if.end.1.i.do.end12.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

for.inc.1.i:                                      ; preds = %if.end.1.i
  %inc14.1.i = add i32 %mul.i, 2
  %call.2.i = call i32 @platform_get_irq(ptr noundef %188, i32 noundef %inc14.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp6.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp6.2.i, label %for.inc.1.i.do.end.i17_crit_edge, label %if.end.2.i

for.inc.1.i.do.end.i17_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i17

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call.i.2.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i16, i32 noundef %call.2.i, ptr noundef nonnull @int_abnormal_v1_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %if.end.2.i.do.end12.i_crit_edge

if.end.2.i.do.end12.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

for.inc.2.i:                                      ; preds = %if.end.2.i
  %inc16.i = add nuw nsw i32 %i.0159.i, 1
  %191 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %n_phy.i.i, align 4
  %cmp.i = icmp slt i32 %inc16.i, %192
  br i1 %cmp.i, label %for.inc.2.i.for.body.i_crit_edge, label %for.inc.2.i.for.end17.i_crit_edge

for.inc.2.i.for.end17.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17.i

for.inc.2.i.for.body.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end17.i:                                      ; preds = %for.inc.2.i.for.end17.i_crit_edge, %if.end.for.end17.i_crit_edge
  %.lcssa151.i = phi i32 [ %190, %if.end.for.end17.i_crit_edge ], [ %192, %for.inc.2.i.for.end17.i_crit_edge ]
  %193 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %queue_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp21160.i = icmp sgt i32 %194, 0
  br i1 %cmp21160.i, label %for.body22.preheader.i, label %for.end17.i.for.end41.i_crit_edge

for.end17.i.for.end41.i_crit_edge:                ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41.i

for.body22.preheader.i:                           ; preds = %for.end17.i
  %mul19.i = mul i32 %.lcssa151.i, 3
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.inc38.i.for.body22.i_crit_edge, %for.body22.preheader.i
  %idx.1162.i = phi i32 [ %inc40.i, %for.inc38.i.for.body22.i_crit_edge ], [ %mul19.i, %for.body22.preheader.i ]
  %i.1161.i = phi i32 [ %inc39.i, %for.inc38.i.for.body22.i_crit_edge ], [ 0, %for.body22.preheader.i ]
  %call23.i = call i32 @platform_get_irq(ptr noundef %188, i32 noundef %idx.1162.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.25, i32 noundef %idx.1162.i) #12
  br label %cleanup

if.end29.i:                                       ; preds = %for.body22.i
  %arrayidx30.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 26, i32 %i.1161.i
  %call.i135.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i16, i32 noundef %call23.i, ptr noundef nonnull @cq_interrupt_v1_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %arrayidx30.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %tobool32.not.i = icmp eq i32 %call.i135.i, 0
  br i1 %tobool32.not.i, label %for.inc38.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.29, i32 noundef %call23.i, i32 noundef %call.i135.i) #12
  br label %cleanup

for.inc38.i:                                      ; preds = %if.end29.i
  %inc39.i = add nuw nsw i32 %i.1161.i, 1
  %inc40.i = add i32 %idx.1162.i, 1
  %195 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %queue_count.i.i, align 4
  %cmp21.i = icmp slt i32 %inc39.i, %196
  br i1 %cmp21.i, label %for.inc38.i.for.body22.i_crit_edge, label %for.inc38.i.for.end41.i_crit_edge

for.inc38.i.for.end41.i_crit_edge:                ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41.i

for.inc38.i.for.body22.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i

for.end41.i:                                      ; preds = %for.inc38.i.for.end41.i_crit_edge, %for.end17.i.for.end41.i_crit_edge
  %.lcssa.i = phi i32 [ %194, %for.end17.i.for.end41.i_crit_edge ], [ %196, %for.inc38.i.for.end41.i_crit_edge ]
  %197 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %n_phy.i.i, align 4
  %mul43.i = mul i32 %198, 3
  %add.i = add i32 %mul43.i, %.lcssa.i
  %call48.i = call i32 @platform_get_irq(ptr noundef %188, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %for.end41.i.do.end53.i_crit_edge, label %if.end54.i

for.end41.i.do.end53.i_crit_edge:                 ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.i

do.end53.i:                                       ; preds = %for.inc63.i.do.end53.i_crit_edge, %for.end41.i.do.end53.i_crit_edge
  %idx.2166.lcssa.i = phi i32 [ %add.i, %for.end41.i.do.end53.i_crit_edge ], [ %inc65.i, %for.inc63.i.do.end53.i_crit_edge ]
  %call48.lcssa.i = phi i32 [ %call48.i, %for.end41.i.do.end53.i_crit_edge ], [ %call48.1.i, %for.inc63.i.do.end53.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.32, i32 noundef %idx.2166.lcssa.i) #12
  br label %cleanup

if.end54.i:                                       ; preds = %for.end41.i
  %call.i136.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i16, i32 noundef %call48.i, ptr noundef nonnull @fatal_ecc_int_v1_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %hisi_hba) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool57.not.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool57.not.i, label %for.inc63.i, label %if.end54.i.do.end61.i_crit_edge

if.end54.i.do.end61.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.end54.1.i.do.end61.i_crit_edge, %if.end54.i.do.end61.i_crit_edge
  %call.i136.lcssa.i = phi i32 [ %call.i136.i, %if.end54.i.do.end61.i_crit_edge ], [ %call.i136.1.i, %if.end54.1.i.do.end61.i_crit_edge ]
  %call48.lcssa167.i = phi i32 [ %call48.i, %if.end54.i.do.end61.i_crit_edge ], [ %call48.1.i, %if.end54.1.i.do.end61.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.36, i32 noundef %call48.lcssa167.i, i32 noundef %call.i136.lcssa.i) #12
  br label %cleanup

for.inc63.i:                                      ; preds = %if.end54.i
  %inc65.i = add i32 %add.i, 1
  %call48.1.i = call i32 @platform_get_irq(ptr noundef %188, i32 noundef %inc65.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1.i)
  %cmp49.1.i = icmp slt i32 %call48.1.i, 0
  br i1 %cmp49.1.i, label %for.inc63.i.do.end53.i_crit_edge, label %if.end54.1.i

for.inc63.i.do.end53.i_crit_edge:                 ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.i

if.end54.1.i:                                     ; preds = %for.inc63.i
  %call.i136.1.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i16, i32 noundef %call48.1.i, ptr noundef nonnull @fatal_axi_int_v1_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %hisi_hba) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.1.i)
  %tobool57.not.1.i = icmp eq i32 %call.i136.1.i, 0
  br i1 %tobool57.not.1.i, label %if.end4, label %if.end54.1.i.do.end61.i_crit_edge

if.end54.1.i.do.end61.i_crit_edge:                ; preds = %if.end54.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61.i

if.end4:                                          ; preds = %if.end54.1.i
  %199 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %queue_count.i.i, align 4
  %cq_nvecs.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 55
  %201 = ptrtoint ptr %cq_nvecs.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %cq_nvecs.i, align 8
  %202 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %n_phy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp37.i = icmp sgt i32 %203, 0
  br i1 %cmp37.i, label %if.end4.for.body.i22_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.for.body.i22_crit_edge:                   ; preds = %if.end4
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.body.i22.for.body.i22_crit_edge, %if.end4.for.body.i22_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i22.for.body.i22_crit_edge ], [ 0, %if.end4.for.body.i22_crit_edge ]
  %204 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs1.i129.i.i, align 4
  %mul.i.i20 = shl i32 %i.038.i, 10
  %add.ptr.i.i = getelementptr i8, ptr %205, i32 2480
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i20
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %207 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %208, i32 2480
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i3.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %206) #9, !srcloc !217
  %209 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %210, i32 2484
  %add.ptr2.i8.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %mul.i.i20
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i8.i) #9, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %212 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %213, i32 2484
  %add.ptr2.i12.i = getelementptr i8, ptr %add.ptr.i11.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i12.i, i32 %211) #9, !srcloc !217
  %214 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %215, i32 2488
  %add.ptr2.i16.i = getelementptr i8, ptr %add.ptr.i15.i, i32 %mul.i.i20
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i16.i) #9, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %217 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %218, i32 2488
  %add.ptr2.i20.i = getelementptr i8, ptr %add.ptr.i19.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i20.i, i32 %216) #9, !srcloc !217
  %219 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %220, i32 2492
  %add.ptr2.i24.i = getelementptr i8, ptr %add.ptr.i23.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i24.i, i32 -287097856) #9, !srcloc !217
  %221 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %222, i32 2496
  %add.ptr2.i28.i = getelementptr i8, ptr %add.ptr.i27.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i28.i, i32 -8453888) #9, !srcloc !217
  %223 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %224, i32 2500
  %add.ptr2.i32.i = getelementptr i8, ptr %add.ptr.i31.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i32.i, i32 704708736) #9, !srcloc !217
  %225 = ptrtoint ptr %regs1.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs1.i129.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %226, i32 2492
  %add.ptr2.i36.i = getelementptr i8, ptr %add.ptr.i35.i, i32 %mul.i.i20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i36.i, i32 -16826624) #9, !srcloc !217
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %227 = ptrtoint ptr %n_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %n_phy.i.i, align 4
  %cmp.i21 = icmp slt i32 %inc.i, %228
  br i1 %cmp.i21, label %for.body.i22.for.body.i22_crit_edge, label %for.body.i22.cleanup_crit_edge

for.body.i22.cleanup_crit_edge:                   ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i22.for.body.i22_crit_edge:              ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i22

cleanup:                                          ; preds = %for.body.i22.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end61.i, %do.end53.i, %do.end36.i, %do.end28.i, %do.end12.i, %do.end.i17, %hw_init_v1_hw.exit
  %retval.0 = phi i32 [ %retval.4.i.ph.i, %hw_init_v1_hw.exit ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.lcssa.i, %do.end.i17 ], [ %call.i.lcssa.i, %do.end12.i ], [ %call.i136.lcssa.i, %do.end61.i ], [ %call48.lcssa.i, %do.end53.i ], [ %call.i135.i, %do.end36.i ], [ %call23.i, %do.end28.i ], [ 0, %for.body.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @setup_itct_v1_hw(ptr nocapture noundef readonly %hisi_hba, ptr nocapture noundef readonly %sas_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_device = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 1
  %0 = ptrtoint ptr %sas_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sas_device, align 4
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %device_id2 = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 7
  %4 = ptrtoint ptr %device_id2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_id2, align 4
  %itct3 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 38
  %6 = ptrtoint ptr %itct3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %itct3, align 8
  %arrayidx = getelementptr %struct.hisi_sas_itct, ptr %7, i32 %5
  %port = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %call = tail call ptr @to_hisi_sas_port(ptr noundef %9) #9
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 128)
  %dev_type = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 5
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type, align 4
  %.off = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %entry.sw.epilog_crit_edge, label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.99, i32 noundef %12) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %qw0.0 = phi i64 [ 0, %do.end ], [ 1, %entry.sw.epilog_crit_edge ]
  %max_linkrate = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %max_linkrate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_linkrate, align 8
  %shl = shl i32 %14, 5
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 1
  %conv7 = zext i8 %16 to i32
  %shl8 = shl nuw nsw i32 %conv7, 13
  %or6 = or i32 %shl, %shl8
  %or9 = or i32 %or6, 532
  %conv10 = zext i32 %or9 to i64
  %or11 = or i64 %qw0.0, %conv10
  %17 = tail call i64 @llvm.bswap.i64(i64 %or11)
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx, align 8
  %sas_addr13 = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %sas_addr13 to i32
  call void @__asan_load8_noabort(i32 %19)
  %sas_addr.0.copyload = load i64, ptr %sas_addr13, align 16
  %sas_addr14 = getelementptr %struct.hisi_sas_itct, ptr %7, i32 %5, i32 1
  %20 = ptrtoint ptr %sas_addr14 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sas_addr.0.copyload, ptr %sas_addr14, align 8
  %qw2 = getelementptr %struct.hisi_sas_itct, ptr %7, i32 %5, i32 2
  %21 = ptrtoint ptr %qw2 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -864408558245052161, ptr %qw2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl_notify_ssp_v1_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr2.i14 = getelementptr i8, ptr %add.ptr.i13, i32 2196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14, i32 %3) #9, !srcloc !217
  tail call void @msleep(i32 noundef 1) #9
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr2.i18 = getelementptr i8, ptr %add.ptr.i17, i32 2196
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 %mul.i
  %add.ptr2.i22 = getelementptr i8, ptr %add.ptr.i21, i32 2196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22, i32 %9) #9, !srcloc !217
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_delivery_v1_hw(ptr noundef readonly %dq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq, align 4
  %id = getelementptr inbounds %struct.hisi_sas_dq, ptr %dq, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %list = getelementptr inbounds %struct.hisi_sas_dq, ptr %dq, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %cmp.not38 = icmp eq ptr %5, %list
  br i1 %cmp.not38, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %ready49 = getelementptr i8, ptr %5, i32 52
  %6 = ptrtoint ptr %ready49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ready49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not50 = icmp eq i32 %7, 0
  br i1 %tobool.not50, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.if.end_crit_edge

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  br label %if.end

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit
  %ready = getelementptr i8, ptr %.pn4353, i32 52
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ready, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.for.end.loopexit_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.preheader.if.end_crit_edge
  %.pn.in4051 = phi ptr [ %.pn4353, %for.body.if.end_crit_edge ], [ %5, %for.body.preheader.if.end_crit_edge ]
  %10 = ptrtoint ptr %.pn.in4051 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn4353 = load ptr, ptr %.pn.in4051, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in4051) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in4051, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in4051 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in4051, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in4051 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in4051, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in4051, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn4353, %list
  br i1 %cmp.not, label %list_del.exit.for.end.loopexit_crit_edge, label %for.body

list_del.exit.for.end.loopexit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %list_del.exit.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %s.04252.le = getelementptr i8, ptr %.pn.in4051, i32 -8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.preheader.for.end_crit_edge
  %s2.0.lcssa = phi ptr [ null, %for.body.preheader.for.end_crit_edge ], [ %s.04252.le, %for.end.loopexit ]
  %tobool14.not = icmp eq ptr %s2.0.lcssa, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !220
  %dlvry_queue_slot = getelementptr inbounds %struct.hisi_sas_slot, ptr %s2.0.lcssa, i32 0, i32 7
  %19 = ptrtoint ptr %dlvry_queue_slot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dlvry_queue_slot, align 4
  %add = add i32 %20, 1
  %rem = srem i32 %add, 4096
  %mul = mul i32 %3, 20
  %add20 = add i32 %mul, 620
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %rem) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #9, !srcloc !217
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prep_ssp_v1_hw(ptr nocapture noundef readnone %hisi_hba, ptr nocapture noundef readonly %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 8
  %cmd_hdr = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 13
  %2 = ptrtoint ptr %cmd_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_hdr, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_dev, align 128
  %port2 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 3
  %8 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port2, align 4
  %10 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4
  %cmd = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %tmf3 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 17
  %13 = ptrtoint ptr %tmf3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmf3, align 8
  %tobool.not = icmp eq ptr %14, null
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 1
  %conv = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv, 17
  %shl5 = select i1 %tobool.not, i32 0, i32 134217728
  %or = or i32 %shl, %shl5
  %or8 = or i32 %or, 805306528
  %17 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %3, align 8
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 15
  %19 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sc_data_direction, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sw.default [
    i32 1, label %if.else.if.end_crit_edge
    i32 2, label %sw.bb12
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb12:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb12, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = phi i1 [ false, %sw.bb12 ], [ true, %sw.default ], [ true, %entry.if.end_crit_edge ], [ false, %if.else.if.end_crit_edge ]
  %dw1.0 = phi i32 [ 9216, %sw.bb12 ], [ 1024, %sw.default ], [ 25600, %entry.if.end_crit_edge ], [ 17408, %if.else.if.end_crit_edge ]
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %7, i32 0, i32 7
  %22 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_id, align 4
  %shl15 = shl i32 %23, 16
  %or16 = or i32 %shl15, %dw1.0
  %24 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %dw117 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %dw117 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dw117, align 4
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %idx, align 4
  %conv23 = zext i16 %27 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv23)
  %transfer_tags = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %transfer_tags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %transfer_tags, align 4
  br i1 %tobool25.not, label %if.end.if.end28_crit_edge, label %if.then26

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end
  %n_elem = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 4
  %30 = ptrtoint ptr %n_elem to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %n_elem, align 8
  %conv27 = trunc i64 %31 to i32
  %buf.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv27)
  %cmp1.i = icmp sgt i32 %conv27, 0
  br i1 %cmp1.i, label %for.body.i.preheader, label %if.then26.prep_prd_sge_v1_hw.exit_crit_edge

if.then26.prep_prd_sge_v1_hw.exit_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_prd_sge_v1_hw.exit

for.body.i.preheader:                             ; preds = %if.then26
  %scatter = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scatter, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %sg.02.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %35, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [124 x %struct.hisi_sas_sge], ptr %add.ptr.i, i32 0, i32 %i.03.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 3
  %36 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %37 to i64
  %38 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #9
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx.i, align 8
  %page_ctrl_1.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 2
  %40 = ptrtoint ptr %page_ctrl_1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %page_ctrl_1.i, align 4
  %page_ctrl_0.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 1
  %41 = ptrtoint ptr %page_ctrl_0.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %page_ctrl_0.i, align 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 4
  %42 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_length.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %data_len.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 3
  %45 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %data_len.i, align 8
  %data_off.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 4
  %46 = ptrtoint ptr %data_off.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %data_off.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.02.i) #9
  %exitcond.not.i = icmp eq i32 %inc.i, %conv27
  br i1 %exitcond.not.i, label %for.body.i.prep_prd_sge_v1_hw.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.prep_prd_sge_v1_hw.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_prd_sge_v1_hw.exit

prep_prd_sge_v1_hw.exit:                          ; preds = %for.body.i.prep_prd_sge_v1_hw.exit_crit_edge, %if.then26.prep_prd_sge_v1_hw.exit_crit_edge
  %buf_dma.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %47 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_dma.i, align 8
  %add.i = add i32 %48, 1120
  %conv2.i = zext i32 %add.i to i64
  %49 = tail call i64 @llvm.bswap.i64(i64 %conv2.i) #9
  %prd_table_addr.i = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 10
  %50 = ptrtoint ptr %prd_table_addr.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %prd_table_addr.i, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv27) #9
  %52 = lshr i32 %51, 16
  %sg_len.i = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 6
  %53 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %sg_len.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %prep_prd_sge_v1_hw.exit, %if.end.if.end28_crit_edge
  %total_xfer_len = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total_xfer_len, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %data_transfer_len = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 4
  %57 = ptrtoint ptr %data_transfer_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %data_transfer_len, align 8
  %buf_dma = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %58 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_dma, align 8
  %add = add i32 %59, 1040
  %conv29 = zext i32 %add to i64
  %60 = tail call i64 @llvm.bswap.i64(i64 %conv29)
  %cmd_table_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 8
  %61 = ptrtoint ptr %cmd_table_addr to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %cmd_table_addr, align 8
  %62 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_dma, align 8
  %conv32 = zext i32 %63 to i64
  %64 = tail call i64 @llvm.bswap.i64(i64 %conv32)
  %sts_buffer_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 9
  %65 = ptrtoint ptr %sts_buffer_addr to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %sts_buffer_addr, align 8
  %buf = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf, align 4
  %add.ptr33 = getelementptr i8, ptr %67, i32 1064
  %enable_first_burst = getelementptr inbounds %struct.sas_ssp_task, ptr %10, i32 0, i32 2
  %68 = ptrtoint ptr %enable_first_burst to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %enable_first_burst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool34.not = icmp sgt i8 %bf.load, -1
  %spec.select112 = select i1 %tobool34.not, i32 8585229, i32 42139661
  %69 = tail call i32 @llvm.bswap.i32(i32 %spec.select112)
  %dw238 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %dw238 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dw238, align 8
  %LUN = getelementptr inbounds %struct.sas_ssp_task, ptr %10, i32 0, i32 1
  %71 = ptrtoint ptr %LUN to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %LUN, align 1
  %73 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %add.ptr33, align 1
  br i1 %tobool.not, label %if.then40, label %if.else51

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %74 = and i8 %bf.load, -128
  %75 = zext i8 %74 to i32
  %task_attr = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %76 = ptrtoint ptr %task_attr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %task_attr, align 4
  %or42 = or i32 %77, %75
  %task_prio = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 4
  %78 = ptrtoint ptr %task_prio to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %task_prio, align 4
  %conv43 = zext i8 %79 to i32
  %shl44 = shl nuw nsw i32 %conv43, 3
  %or45 = or i32 %or42, %shl44
  %conv46 = trunc i32 %or45 to i8
  %arrayidx = getelementptr i8, ptr %67, i32 1073
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv46, ptr %arrayidx, align 1
  %add.ptr47 = getelementptr i8, ptr %67, i32 1076
  %81 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 16
  %83 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %82, i32 0, i32 14
  %85 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %cmd_len, align 4
  %conv50 = zext i16 %86 to i32
  %87 = call ptr @memcpy(ptr %add.ptr47, ptr %84, i32 %conv50)
  br label %if.end67

if.else51:                                        ; preds = %if.end28
  %tmf52 = getelementptr inbounds %struct.hisi_sas_tmf_task, ptr %14, i32 0, i32 2
  %88 = ptrtoint ptr %tmf52 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tmf52, align 4
  %arrayidx53 = getelementptr i8, ptr %67, i32 1074
  %90 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx53, align 1
  %91 = load i8, ptr %tmf52, align 4
  %92 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %91, label %if.else51.if.end67_crit_edge [
    i8 1, label %if.else51.sw.bb56_crit_edge
    i8 -128, label %if.else51.sw.bb56_crit_edge113
  ]

if.else51.sw.bb56_crit_edge113:                   ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.else51.sw.bb56_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.else51.if.end67_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

sw.bb56:                                          ; preds = %if.else51.sw.bb56_crit_edge, %if.else51.sw.bb56_crit_edge113
  %tag_of_task_to_be_managed = getelementptr inbounds %struct.hisi_sas_tmf_task, ptr %14, i32 0, i32 3
  %93 = ptrtoint ptr %tag_of_task_to_be_managed to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %tag_of_task_to_be_managed, align 2
  %95 = lshr i16 %94, 8
  %conv58 = trunc i16 %95 to i8
  %arrayidx59 = getelementptr i8, ptr %67, i32 1076
  %96 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv58, ptr %arrayidx59, align 1
  %97 = load i16, ptr %tag_of_task_to_be_managed, align 2
  %conv63 = trunc i16 %97 to i8
  %arrayidx64 = getelementptr i8, ptr %67, i32 1077
  %98 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv63, ptr %arrayidx64, align 1
  br label %if.end67

if.end67:                                         ; preds = %sw.bb56, %if.else51.if.end67_crit_edge, %if.then40
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @prep_smp_v1_hw(ptr nocapture noundef readnone %hisi_hba, ptr nocapture noundef readonly %slot) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 8
  %cmd_hdr = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 13
  %2 = ptrtoint ptr %cmd_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_hdr, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %port2 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 3
  %6 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port2, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldd_dev, align 128
  %dma_length = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address, align 4
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 1
  %conv = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv, 17
  %or4 = or i32 %shl, 1476395008
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %3, align 8
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_id, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = lshr i32 %20, 16
  %dw1 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dw1, align 4
  %sub = add i32 %11, -4
  %div23 = lshr i32 %sub, 2
  %or7 = or i32 %div23, 8421376
  %23 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %dw2 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %dw2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dw2, align 8
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idx, align 4
  %conv8 = zext i16 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv8)
  %transfer_tags = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %transfer_tags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %transfer_tags, align 4
  %conv10 = zext i32 %13 to i64
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv10)
  %cmd_table_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %cmd_table_addr to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %cmd_table_addr, align 8
  %buf_dma = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %31 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_dma, align 8
  %conv11 = zext i32 %32 to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv11)
  %sts_buffer_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 9
  %34 = ptrtoint ptr %sts_buffer_addr to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %sts_buffer_addr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phys_init_v1_hw(ptr noundef %hisi_hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_phy = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %0 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %i.015, 10
  %add.ptr.i = getelementptr i8, ptr %3, i32 2500
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 1778384896) #9, !srcloc !217
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 2500
  %add.ptr2.i13 = getelementptr i8, ptr %add.ptr.i12, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i13) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %inc = add nuw nsw i32 %i.015, 1
  %7 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_phy, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %timer1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %timer1, ptr noundef nonnull @start_phys_v1_hw, i32 noundef 0, ptr noundef nonnull @.str.101, ptr noundef nonnull @phys_init_v1_hw.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 100
  %call2 = tail call i32 @mod_timer(ptr noundef %timer1, i32 noundef %add) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_phy_v1_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_addr.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 12
  %0 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %identify_frame.sroa.15.4.copyload.i = load i32, ptr %sas_addr.i, align 8
  %identify_frame.sroa.21.4.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 12, i32 4
  %1 = ptrtoint ptr %identify_frame.sroa.21.4.arraydecay.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %identify_frame.sroa.21.4.copyload.i = load i32, ptr %identify_frame.sroa.21.4.arraydecay.sroa_idx.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i.i, align 4
  %mul.i.i = shl i32 %phy_no, 10
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %mul.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 268504576) #9, !srcloc !217
  %4 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %add.ptr2.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 2208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39.i, i32 %identify_frame.sroa.15.4.copyload.i) #9, !srcloc !217
  %6 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr2.i43.i = getelementptr i8, ptr %add.ptr.i42.i, i32 2212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i43.i, i32 %identify_frame.sroa.21.4.copyload.i) #9, !srcloc !217
  %8 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %add.ptr2.i47.i = getelementptr i8, ptr %add.ptr.i46.i, i32 2216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i47.i, i32 %identify_frame.sroa.15.4.copyload.i) #9, !srcloc !217
  %10 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %add.ptr2.i51.i = getelementptr i8, ptr %add.ptr.i50.i, i32 2220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i51.i, i32 %identify_frame.sroa.21.4.copyload.i) #9, !srcloc !217
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %13, i32 %mul.i.i
  %add.ptr2.i55.i = getelementptr i8, ptr %add.ptr.i54.i, i32 2224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  %14 = shl i32 %phy_no, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i55.i, i32 %14) #9, !srcloc !217
  %15 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %16, i32 %mul.i.i
  %add.ptr2.i.i10 = getelementptr i8, ptr %add.ptr.i.i9, i32 2048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i10) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %18 = or i32 %17, 67108864
  %19 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %20, i32 %mul.i.i
  %add.ptr2.i8.i = getelementptr i8, ptr %add.ptr.i7.i, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i, i32 %18) #9, !srcloc !217
  %21 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %22, i32 %mul.i.i
  %add.ptr2.i.i14 = getelementptr i8, ptr %add.ptr.i.i13, i32 2472
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i14) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %24 = and i32 %23, -134217729
  %25 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %26, i32 %mul.i.i
  %add.ptr2.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 2472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7.i, i32 %24) #9, !srcloc !217
  %27 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %28, i32 %mul.i.i
  %add.ptr2.i.i18 = getelementptr i8, ptr %add.ptr.i.i17, i32 2048
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i18) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %30 = or i32 %29, 16777216
  %31 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i6.i19 = getelementptr i8, ptr %32, i32 %mul.i.i
  %add.ptr2.i7.i20 = getelementptr i8, ptr %add.ptr.i6.i19, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7.i20, i32 %30) #9, !srcloc !217
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disable_phy_v1_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr2.i7 = getelementptr i8, ptr %add.ptr.i6, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7, i32 %3) #9, !srcloc !217
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_hard_reset_v1_hw(ptr noundef %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hisi_sas_phy_enable(ptr noundef %hisi_hba, i32 noundef %phy_no, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 100) #9
  tail call void @hisi_sas_phy_enable(ptr noundef %hisi_hba, i32 noundef %phy_no, i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_set_linkrate_v1_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r, align 4
  %call = tail call zeroext i8 @hisi_sas_get_prog_phy_linkrate_mask(i32 noundef %1) #9
  %conv = zext i8 %call to i32
  %or = or i32 %conv, 2048
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #9, !srcloc !217
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phy_get_max_linkrate_v1_hw() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_itct_v1_hw(ptr nocapture noundef readonly %hisi_hba, ptr nocapture noundef readonly %sas_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 7
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_id, align 4
  %itct1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 38
  %2 = ptrtoint ptr %itct1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %itct1, align 8
  %arrayidx = getelementptr %struct.hisi_sas_itct, ptr %3, i32 %1
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 188
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %9, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %7) #9, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #9
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 188
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %14 = and i32 %13, -16777217
  %15 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %16, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %14) #9, !srcloc !217
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx, align 8
  %19 = and i64 %18, -288230376151711745
  store i64 %19, ptr %arrayidx, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_wideport_bitmap_v1_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %port_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !214
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %n_phy = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %4 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp sgt i32 %5, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bitmap.09 = phi i32 [ %bitmap.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.08, 2
  %shr = lshr i32 %3, %mul
  %and = and i32 %shr, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %port_id)
  %cmp1 = icmp eq i32 %and, %port_id
  %shl = shl nuw i32 1, %i.08
  %or = select i1 %cmp1, i32 %shl, i32 0
  %bitmap.1 = or i32 %or, %bitmap.09
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bitmap.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %bitmap.1, %for.body.for.end_crit_edge ]
  ret i32 %bitmap.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cq_interrupt_v1_hw(i32 noundef %irq, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %id = getelementptr inbounds %struct.hisi_sas_cq, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.hisi_hba, ptr %1, i32 0, i32 34, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %rd_point2 = getelementptr inbounds %struct.hisi_sas_cq, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %rd_point2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_point2, align 4
  %lock = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %shl = shl nuw i32 1, %3
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !217
  %mul = mul i32 %3, 20
  %add = add i32 %mul, 1260
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #9, !srcloc !214
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %14)
  %cmp.not36 = icmp eq i32 %7, %14
  br i1 %cmp.not36, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %slot_info = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 46
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %rd_point.037 = phi i32 [ %7, %while.body.lr.ph ], [ %spec.store.select, %while.body.while.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.hisi_sas_complete_v1_hdr, ptr %5, i32 %rd_point.037
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slot_info, align 8
  %arrayidx5 = getelementptr %struct.hisi_sas_slot, ptr %20, i32 %18
  %cmplt_queue_slot = getelementptr %struct.hisi_sas_slot, ptr %20, i32 %18, i32 9
  %21 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rd_point.037, ptr %cmplt_queue_slot, align 4
  %cmplt_queue = getelementptr %struct.hisi_sas_slot, ptr %20, i32 %18, i32 8
  %22 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %3, ptr %cmplt_queue, align 8
  tail call fastcc void @slot_complete_v1_hw(ptr noundef %1, ptr noundef %arrayidx5)
  %inc = add i32 %rd_point.037, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc)
  %cmp6 = icmp ugt i32 %inc, 4095
  %spec.store.select = select i1 %cmp6, i32 0, i32 %inc
  %cmp.not = icmp eq i32 %spec.store.select, %14
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rd_point.0.lcssa = phi i32 [ %7, %entry.while.end_crit_edge ], [ %14, %while.body.while.end_crit_edge ]
  %23 = ptrtoint ptr %rd_point2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rd_point.0.lcssa, ptr %rd_point2, align 4
  %add9 = add i32 %mul, 1264
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %25, i32 %add9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %rd_point.0.lcssa) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %26) #9, !srcloc !217
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @int_bcast_v1_hw(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hisi_hba1 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %hisi_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hisi_hba1, align 4
  %sas_phy2 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3
  %dev3 = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %id = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %5, 10
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2488
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !214
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %9) #12
  br label %end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 47
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @sas_notify_port_event(ptr noundef %sas_phy2, i32 noundef 1, i32 noundef 2592) #9
  br label %end

end:                                              ; preds = %if.then6, %if.end.end_crit_edge, %do.end
  %res.0 = phi i32 [ 1, %if.end.end_crit_edge ], [ 1, %if.then6 ], [ 0, %do.end ]
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 %mul.i
  %add.ptr2.i19 = getelementptr i8, ptr %add.ptr.i18, i32 2488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i19, i32 67108864) #9, !srcloc !217
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @int_phyup_v1_hw(i32 noundef %irq_no, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hisi_hba1 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %hisi_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hisi_hba1, align 4
  %dev2 = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %id = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %frame_rcvd4 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 17
  %6 = ptrtoint ptr %frame_rcvd4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frame_rcvd4, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %5, 10
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2488
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !214
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_phyup_v1_hw.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@int_phyup_v1_hw, %if.then10)) #9
          to label %end [label %if.then10], !srcloc !221

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_phyup_v1_hw.__UNIQUE_ID_ddebug292, ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %11) #9
  br label %end

if.end11:                                         ; preds = %entry
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #9, !srcloc !214
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %shl = shl nuw i32 1, %5
  %and13 = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %5) #12
  br label %end

if.end19:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #9, !srcloc !214
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %mul = shl i32 %5, 2
  %shr = lshr i32 %19, %mul
  %and21 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and21)
  %cmp = icmp eq i32 %and21, 15
  br i1 %cmp, label %do.end25, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end19
  %20 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %21, i32 %mul.i
  %add.ptr2.i127 = getelementptr i8, ptr %add.ptr.i126, i32 2244
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %7, align 4
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i126.1 = getelementptr i8, ptr %25, i32 %mul.i
  %add.ptr2.i127.1 = getelementptr i8, ptr %add.ptr.i126.1, i32 2248
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127.1) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %arrayidx.1 = getelementptr i32, ptr %7, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.1, align 4
  %28 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i126.2 = getelementptr i8, ptr %29, i32 %mul.i
  %add.ptr2.i127.2 = getelementptr i8, ptr %add.ptr.i126.2, i32 2252
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127.2) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %arrayidx.2 = getelementptr i32, ptr %7, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.2, align 4
  %32 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i126.3 = getelementptr i8, ptr %33, i32 %mul.i
  %add.ptr2.i127.3 = getelementptr i8, ptr %add.ptr.i126.3, i32 2256
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127.3) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %arrayidx.3 = getelementptr i32, ptr %7, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.3, align 4
  %36 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i126.4 = getelementptr i8, ptr %37, i32 %mul.i
  %add.ptr2.i127.4 = getelementptr i8, ptr %add.ptr.i126.4, i32 2260
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127.4) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %arrayidx.4 = getelementptr i32, ptr %7, i32 4
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.4, align 4
  %40 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i126.5 = getelementptr i8, ptr %41, i32 %mul.i
  %add.ptr2.i127.5 = getelementptr i8, ptr %add.ptr.i126.5, i32 2264
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i127.5) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %arrayidx.5 = getelementptr i32, ptr %7, i32 5
  %43 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.5, align 4
  %44 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %45, i32 48
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #9, !srcloc !214
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %shr32 = lshr i32 %47, %mul
  %and33 = and i32 %shr32, 15
  %linkrate = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 13
  %48 = ptrtoint ptr %linkrate to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and33, ptr %linkrate, align 4
  %oob_mode = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %oob_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %oob_mode, align 4
  %attached_sas_addr = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 15
  %50 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %arrayidx.3, align 1
  %52 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %attached_sas_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %5, i32 noundef %and33) #12
  %conv = zext i32 %and21 to i64
  %port_id37 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 8
  %53 = ptrtoint ptr %port_id37 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv, ptr %port_id37, align 8
  %phy_type = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 14
  %54 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phy_type, align 4
  %and38 = and i32 %55, -4
  %or = or i32 %and38, 2
  store i32 %or, ptr %phy_type, align 4
  %phy_attached = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 11
  %56 = ptrtoint ptr %phy_attached to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %phy_attached, align 8
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %7, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %conv40 = zext i8 %bf.clear to i32
  %identify = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %identify to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv40, ptr %identify, align 8
  %frame_rcvd_size = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 9
  %59 = ptrtoint ptr %frame_rcvd_size to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 32, ptr %frame_rcvd_size, align 8
  %trunc = trunc i8 %bf.lshr to i3
  %60 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.103)
  switch i3 %trunc, label %if.then51 [
    i3 1, label %for.body.preheader.if.end55.sink.split_crit_edge
    i3 0, label %for.body.preheader.if.end55_crit_edge
  ]

for.body.preheader.if.end55_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

for.body.preheader.if.end55.sink.split_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.sink.split

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %5) #12
  br label %end

if.then51:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then51, %for.body.preheader.if.end55.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then51 ], [ 8, %for.body.preheader.if.end55.sink.split_crit_edge ]
  %target_port_protocols53 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %target_port_protocols53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %target_port_protocols53, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %for.body.preheader.if.end55_crit_edge
  %call56 = tail call zeroext i1 @hisi_sas_notify_phy_event(ptr noundef %p, i32 noundef 0) #9
  br label %end

end:                                              ; preds = %if.end55, %do.end25, %do.end18, %if.then10, %do.body
  %res.0 = phi i32 [ 1, %do.end18 ], [ 0, %do.end25 ], [ 1, %if.end55 ], [ 0, %if.then10 ], [ 0, %do.body ]
  %reset_completion = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 5
  %62 = ptrtoint ptr %reset_completion to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reset_completion, align 8
  %tobool57.not = icmp eq ptr %63, null
  br i1 %tobool57.not, label %end.if.end60_crit_edge, label %if.then58

end.if.end60_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then58:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %63) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %end.if.end60_crit_edge
  %64 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %65, i32 %mul.i
  %add.ptr2.i133 = getelementptr i8, ptr %add.ptr.i132, i32 2488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i133, i32 1073741824) #9, !srcloc !217
  br i1 %tobool.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %67, i32 %mul.i
  %add.ptr2.i137 = getelementptr i8, ptr %add.ptr.i136, i32 2480
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i137) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %69 = and i32 %68, -16777217
  %70 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %71, i32 %mul.i
  %add.ptr2.i141 = getelementptr i8, ptr %add.ptr.i140, i32 2480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i141, i32 %69) #9, !srcloc !217
  %72 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %73, i32 %mul.i
  %add.ptr2.i145 = getelementptr i8, ptr %add.ptr.i144, i32 2492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i145, i32 -287097856) #9, !srcloc !217
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @int_abnormal_v1_hw(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hisi_hba1 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %hisi_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hisi_hba1, align 4
  %dev2 = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %id = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %5, 10
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2492
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %9 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %10, i32 %mul.i
  %add.ptr2.i152 = getelementptr i8, ptr %add.ptr.i151, i32 2492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i152, i32 -49408) #9, !srcloc !217
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %12, i32 %mul.i
  %add.ptr2.i156 = getelementptr i8, ptr %add.ptr.i155, i32 2480
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i156) #9, !srcloc !214
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #9, !srcloc !214
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %19 = lshr i32 %18, %5
  %20 = and i32 %19, 1
  tail call void @hisi_sas_phy_down(ptr noundef %1, i32 noundef %5, i32 noundef %20, i32 noundef 2592) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %do.body

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@int_abnormal_v1_hw, %if.then15)) #9
          to label %if.end17 [label %if.then15], !srcloc !221

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_abnormal_v1_hw.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef %5) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body, %if.end.if.end17_crit_edge
  %and18 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end37_crit_edge, label %do.body21

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@int_abnormal_v1_hw, %if.then33)) #9
          to label %if.end37 [label %if.then33], !srcloc !221

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_abnormal_v1_hw.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef %5) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body21, %if.end17.if.end37_crit_edge
  %and38 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end57_crit_edge, label %do.body41

if.end37.if.end57_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@int_abnormal_v1_hw, %if.then53)) #9
          to label %if.end57 [label %if.then53], !srcloc !221

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_abnormal_v1_hw.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %5) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %do.body41, %if.end37.if.end57_crit_edge
  %21 = and i32 %14, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end57.if.end79_crit_edge, label %do.body63

if.end57.if.end79_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.body63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@int_abnormal_v1_hw, %if.then75)) #9
          to label %if.end79 [label %if.then75], !srcloc !221

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_abnormal_v1_hw.__UNIQUE_ID_ddebug296, ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %5) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %do.body63, %if.end57.if.end79_crit_edge
  %and80 = and i32 %14, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end99_crit_edge, label %do.body83

if.end79.if.end99_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

do.body83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@int_abnormal_v1_hw, %if.then95)) #9
          to label %if.end99 [label %if.then95], !srcloc !221

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @int_abnormal_v1_hw.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %5) #9
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %do.body83, %if.end79.if.end99_crit_edge
  %23 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %24, i32 %mul.i
  %add.ptr2.i162 = getelementptr i8, ptr %add.ptr.i161, i32 2480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i162, i32 %13) #9, !srcloc !217
  %25 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %26, i32 %mul.i
  %add.ptr2.i170 = getelementptr i8, ptr %add.ptr.i169, i32 2492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not, label %if.else, label %if.then102

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i170, i32 -16826624) #9, !srcloc !217
  br label %if.end103

if.else:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i170, i32 %8) #9, !srcloc !217
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then102
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_port_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hisi_sas_notify_phy_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_phy_down(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slot_complete_v1_hw(ptr noundef %hisi_hba, ptr noundef %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 8
  %dev2 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %cmplt_queue = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 8
  %4 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmplt_queue, align 8
  %arrayidx = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 34, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmplt_queue_slot = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 9
  %8 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmplt_queue_slot, align 4
  %arrayidx4 = getelementptr %struct.hisi_sas_complete_v1_hdr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !222

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldd_task, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !222

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !222

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %task_status = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lldd_dev, align 128
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 1
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %20, -20
  %or = or i32 %and, 2
  store i32 %or, ptr %task_state_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call13) #9
  %tobool18.not = icmp eq ptr %18, null
  %21 = call ptr @memset(ptr %task_status, i32 0, i32 116)
  br i1 %tobool18.not, label %do.body28, label %if.end42, !prof !222

do.body28:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slot_complete_v1_hw.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slot_complete_v1_hw, %if.then38)) #9
          to label %do.end41 [label %if.then38], !srcloc !221

if.then38:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slot_complete_v1_hw.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.57) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body28
  %stat = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 138, ptr %stat, align 4
  br label %out

if.end42:                                         ; preds = %if.end
  %and43 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end120, label %if.then45

if.then45:                                        ; preds = %if.end42
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %23 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 328
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !214
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %and47 = and i32 %26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then45.if.end55_crit_edge, label %do.end52

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmplt_queue, align 8
  %29 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %28, i32 noundef %30) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.then45.if.end55_crit_edge
  %and56 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end64_crit_edge, label %do.end61

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmplt_queue, align 8
  %33 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %32, i32 noundef %34) #12
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end55.if.end64_crit_edge
  %and65 = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %do.end70

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmplt_queue, align 8
  %37 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %36, i32 noundef %38) #12
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %if.end64.if.end73_crit_edge
  %and74 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end82_crit_edge, label %do.end79

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmplt_queue, align 8
  %41 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %40, i32 noundef %42) #12
  br label %if.end82

if.end82:                                         ; preds = %do.end79, %if.end73.if.end82_crit_edge
  %and83 = and i32 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end91_crit_edge, label %do.end88

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmplt_queue, align 8
  %45 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %44, i32 noundef %46) #12
  br label %if.end91

if.end91:                                         ; preds = %do.end88, %if.end82.if.end91_crit_edge
  %and92 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end100_crit_edge, label %do.end97

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmplt_queue, align 8
  %49 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %48, i32 noundef %50) #12
  br label %if.end100

if.end100:                                        ; preds = %do.end97, %if.end91.if.end100_crit_edge
  %and101 = and i32 %26, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end109_crit_edge, label %do.end106

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmplt_queue, align 8
  %53 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, i32 noundef %52, i32 noundef %54) #12
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %if.end100.if.end109_crit_edge
  %and110 = and i32 %26, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end118_crit_edge, label %do.end115

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmplt_queue, align 8
  %57 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmplt_queue_slot, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78, i32 noundef %56, i32 noundef %58) #12
  br label %if.end118

if.end118:                                        ; preds = %do.end115, %if.end109.if.end118_crit_edge
  %stat119 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %stat119 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 135, ptr %stat119, align 4
  %open_rej_reason = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 5
  %60 = ptrtoint ptr %open_rej_reason to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %open_rej_reason, align 4
  br label %out

if.end120:                                        ; preds = %if.end42
  %61 = and i32 %12, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %61)
  %62 = icmp eq i32 %61, 262144
  %task_proto.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %task_proto.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %task_proto.i, align 4
  br i1 %62, label %if.then125, label %if.end135

if.then125:                                       ; preds = %if.end120
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %64, label %if.then125.slot_err_v1_hw.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 2, label %sw.bb45.i
    i32 1, label %if.then125.do.end.i_crit_edge
    i32 4, label %if.then125.do.end.i_crit_edge253
    i32 5, label %if.then125.do.end.i_crit_edge254
  ]

if.then125.do.end.i_crit_edge254:                 ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then125.do.end.i_crit_edge253:                 ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then125.do.end.i_crit_edge:                    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then125.slot_err_v1_hw.exit_crit_edge:         ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %slot_err_v1_hw.exit

sw.bb.i:                                          ; preds = %if.then125
  %buf.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %66 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %and.i = and i32 %70, 65535
  %shr4.i = lshr i32 %70, 16
  %trans_tx_fail_type5.i = getelementptr inbounds %struct.hisi_sas_err_record_v1, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %trans_tx_fail_type5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %trans_tx_fail_type5.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %trans_rx_fail_type6.i = getelementptr inbounds %struct.hisi_sas_err_record_v1, ptr %67, i32 0, i32 2
  %74 = ptrtoint ptr %trans_rx_fail_type6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %trans_rx_fail_type6.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = tail call i32 @llvm.cttz.i32(i32 %and.i, i1 true) #9, !range !223
  br label %if.end29.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %70)
  %tobool7.not.i = icmp ult i32 %70, 65536
  br i1 %tobool7.not.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = tail call i32 @llvm.cttz.i32(i32 %shr4.i, i1 true) #9, !range !223
  %add12.i = or i32 %78, 256
  br label %if.end29.i

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool14.not.i = icmp eq i32 %72, 0
  br i1 %tobool14.not.i, label %if.else20.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = tail call i32 @llvm.cttz.i32(i32 %73, i1 true) #9, !range !223
  %add19.i = or i32 %79, 512
  br label %if.end29.i

if.else20.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool21.not.i = icmp eq i32 %75, 0
  br i1 %tobool21.not.i, label %if.else20.i.sw.default.i_crit_edge, label %if.then22.i

if.else20.i.sw.default.i_crit_edge:               ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.i

if.then22.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = tail call i32 @llvm.cttz.i32(i32 %76, i1 true) #9, !range !223
  %add26.i = or i32 %80, 768
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then22.i, %if.then15.i, %if.then8.i, %if.then.i
  %error.0.i = phi i32 [ %77, %if.then.i ], [ %add12.i, %if.then8.i ], [ %add19.i, %if.then15.i ], [ %add26.i, %if.then22.i ]
  %81 = zext i32 %error.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %error.0.i, label %if.end29.i.sw.default.i_crit_edge [
    i32 8, label %if.end29.i.sw.bb30.i_crit_edge
    i32 267, label %if.end29.i.sw.bb30.i_crit_edge255
    i32 4, label %if.end29.i.sw.bb31.i_crit_edge
    i32 5, label %if.end29.i.sw.bb31.i_crit_edge256
    i32 9, label %if.end29.i.sw.bb31.i_crit_edge257
    i32 266, label %if.end29.i.sw.bb31.i_crit_edge258
    i32 773, label %if.end29.i.sw.bb31.i_crit_edge259
    i32 775, label %if.end29.i.sw.bb31.i_crit_edge260
    i32 513, label %sw.bb34.i
    i32 514, label %if.end29.i.sw.bb36.i_crit_edge
    i32 515, label %if.end29.i.sw.bb36.i_crit_edge261
    i32 516, label %if.end29.i.sw.bb36.i_crit_edge262
    i32 518, label %if.end29.i.sw.bb36.i_crit_edge263
    i32 519, label %if.end29.i.sw.bb36.i_crit_edge264
    i32 520, label %if.end29.i.sw.bb36.i_crit_edge265
    i32 521, label %if.end29.i.sw.bb36.i_crit_edge266
    i32 522, label %if.end29.i.sw.bb36.i_crit_edge267
    i32 523, label %if.end29.i.sw.bb36.i_crit_edge268
    i32 525, label %if.end29.i.sw.bb36.i_crit_edge269
    i32 527, label %if.end29.i.sw.bb36.i_crit_edge270
    i32 528, label %if.end29.i.sw.bb36.i_crit_edge271
    i32 526, label %sw.bb38.i
    i32 538, label %if.end29.i.sw.bb40.i_crit_edge
    i32 539, label %if.end29.i.sw.bb40.i_crit_edge272
    i32 540, label %if.end29.i.sw.bb42.i_crit_edge
    i32 534, label %if.end29.i.sw.bb42.i_crit_edge273
  ]

if.end29.i.sw.bb42.i_crit_edge273:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42.i

if.end29.i.sw.bb42.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42.i

if.end29.i.sw.bb40.i_crit_edge272:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40.i

if.end29.i.sw.bb40.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40.i

if.end29.i.sw.bb36.i_crit_edge271:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge270:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge269:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge268:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge267:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge266:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge265:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge264:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge263:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge262:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge261:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb36.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

if.end29.i.sw.bb31.i_crit_edge260:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

if.end29.i.sw.bb31.i_crit_edge259:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

if.end29.i.sw.bb31.i_crit_edge258:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

if.end29.i.sw.bb31.i_crit_edge257:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

if.end29.i.sw.bb31.i_crit_edge256:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

if.end29.i.sw.bb31.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

if.end29.i.sw.bb30.i_crit_edge255:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30.i

if.end29.i.sw.bb30.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30.i

if.end29.i.sw.default.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.i

sw.bb30.i:                                        ; preds = %if.end29.i.sw.bb30.i_crit_edge, %if.end29.i.sw.bb30.i_crit_edge255
  %stat.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %82 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 129, ptr %stat.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb31.i:                                        ; preds = %if.end29.i.sw.bb31.i_crit_edge, %if.end29.i.sw.bb31.i_crit_edge256, %if.end29.i.sw.bb31.i_crit_edge257, %if.end29.i.sw.bb31.i_crit_edge258, %if.end29.i.sw.bb31.i_crit_edge259, %if.end29.i.sw.bb31.i_crit_edge260
  %stat32.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %83 = ptrtoint ptr %stat32.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 130, ptr %stat32.i, align 4
  %residual33.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 4
  %84 = ptrtoint ptr %residual33.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %residual33.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb34.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %stat35.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %85 = ptrtoint ptr %stat35.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 138, ptr %stat35.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb36.i:                                        ; preds = %if.end29.i.sw.bb36.i_crit_edge, %if.end29.i.sw.bb36.i_crit_edge261, %if.end29.i.sw.bb36.i_crit_edge262, %if.end29.i.sw.bb36.i_crit_edge263, %if.end29.i.sw.bb36.i_crit_edge264, %if.end29.i.sw.bb36.i_crit_edge265, %if.end29.i.sw.bb36.i_crit_edge266, %if.end29.i.sw.bb36.i_crit_edge267, %if.end29.i.sw.bb36.i_crit_edge268, %if.end29.i.sw.bb36.i_crit_edge269, %if.end29.i.sw.bb36.i_crit_edge270, %if.end29.i.sw.bb36.i_crit_edge271
  %stat37.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %stat37.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 135, ptr %stat37.i, align 4
  %open_rej_reason.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 5
  %87 = ptrtoint ptr %open_rej_reason.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %open_rej_reason.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb38.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %stat39.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %88 = ptrtoint ptr %stat39.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 136, ptr %stat39.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb40.i:                                        ; preds = %if.end29.i.sw.bb40.i_crit_edge, %if.end29.i.sw.bb40.i_crit_edge272
  %stat41.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %89 = ptrtoint ptr %stat41.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 139, ptr %stat41.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb42.i:                                        ; preds = %if.end29.i.sw.bb42.i_crit_edge, %if.end29.i.sw.bb42.i_crit_edge273
  %stat43.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %stat43.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 132, ptr %stat43.i, align 4
  %abort.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 10
  %91 = ptrtoint ptr %abort.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %abort.i, align 8
  br label %slot_err_v1_hw.exit

sw.default.i:                                     ; preds = %if.end29.i.sw.default.i_crit_edge, %if.else20.i.sw.default.i_crit_edge
  %stat44.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %92 = ptrtoint ptr %stat44.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %stat44.i, align 4
  br label %slot_err_v1_hw.exit

sw.bb45.i:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  %stat46.i = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %stat46.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %stat46.i, align 4
  br label %slot_err_v1_hw.exit

do.end.i:                                         ; preds = %if.then125.do.end.i_crit_edge, %if.then125.do.end.i_crit_edge253, %if.then125.do.end.i_crit_edge254
  %94 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.86) #12
  br label %slot_err_v1_hw.exit

slot_err_v1_hw.exit:                              ; preds = %do.end.i, %sw.bb45.i, %sw.default.i, %sw.bb42.i, %sw.bb40.i, %sw.bb38.i, %sw.bb36.i, %sw.bb34.i, %sw.bb31.i, %sw.bb30.i, %if.then125.slot_err_v1_hw.exit_crit_edge
  %abort = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 10
  %96 = ptrtoint ptr %abort to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %abort, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool126.not = icmp eq i32 %97, 0
  br i1 %tobool126.not, label %slot_err_v1_hw.exit.out_crit_edge, label %if.then133, !prof !224

slot_err_v1_hw.exit.out_crit_edge:                ; preds = %slot_err_v1_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then133:                                       ; preds = %slot_err_v1_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sas_task_abort(ptr noundef nonnull %1) #9
  br label %cleanup

if.end135:                                        ; preds = %if.end120
  %98 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %64, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb138
    i32 1, label %if.end135.do.end149_crit_edge
    i32 4, label %if.end135.do.end149_crit_edge274
    i32 5, label %if.end135.do.end149_crit_edge275
  ]

if.end135.do.end149_crit_edge275:                 ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end149

if.end135.do.end149_crit_edge274:                 ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end149

if.end135.do.end149_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end149

sw.bb:                                            ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %99 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buf, align 4
  %iu136 = getelementptr inbounds %struct.hisi_sas_status_buffer, ptr %100, i32 0, i32 1
  tail call void @sas_ssp_task_response(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %iu136) #9
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end135
  %smp_resp = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1
  %101 = ptrtoint ptr %smp_resp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %smp_resp, align 4
  %and.i.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !224

do.body2.i:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !225
  unreachable

sg_page.exit:                                     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %103 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4
  %and.i251 = and i32 %102, -4
  %104 = inttoptr i32 %and.i251 to ptr
  %call140 = tail call ptr @page_address(ptr noundef %104) #9
  %stat141 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %105 = ptrtoint ptr %stat141 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %stat141, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %offset = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset, align 4
  %add.ptr142 = getelementptr i8, ptr %call140, i32 %107
  %buf143 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %108 = ptrtoint ptr %buf143 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buf143, align 4
  %add.ptr145 = getelementptr i8, ptr %109, i32 16
  %length = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 2
  %110 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %length, align 4
  %112 = call ptr @memcpy(ptr %add.ptr142, ptr %add.ptr145, i32 %111)
  br label %sw.epilog

do.end149:                                        ; preds = %if.end135.do.end149_crit_edge, %if.end135.do.end149_crit_edge274, %if.end135.do.end149_crit_edge275
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.81) #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %stat150 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %113 = ptrtoint ptr %stat150 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %stat150, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end149, %sg_page.exit, %sw.bb
  %port = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 3
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %port, align 4
  %port_attached = getelementptr inbounds %struct.hisi_sas_port, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %port_attached to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %port_attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool151.not = icmp eq i8 %117, 0
  br i1 %tobool151.not, label %do.end155, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end155:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.asd_sas_port, ptr %115, i32 0, i32 10
  %118 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %119) #12
  %stat157 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %120 = ptrtoint ptr %stat157 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 138, ptr %stat157, align 4
  br label %out

out:                                              ; preds = %do.end155, %sw.epilog.out_crit_edge, %slot_err_v1_hw.exit.out_crit_edge, %if.end118, %do.end41
  tail call void @hisi_sas_slot_task_free(ptr noundef %hisi_hba, ptr noundef nonnull %1, ptr noundef %slot) #9
  %task_done = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 10
  %121 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task_done, align 4
  %tobool159.not = icmp eq ptr %122, null
  br i1 %tobool159.not, label %out.cleanup_crit_edge, label %if.then160

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then160:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %122(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %out.cleanup_crit_edge, %if.then133, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_task_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_ssp_task_response(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_slot_task_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fatal_ecc_int_v1_hw(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 488
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !214
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %7, i32 2000
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.then.dev_name.exit_crit_edge ]
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.89, ptr noundef %retval.0.i, i32 noundef %13) #13
  unreachable

if.end:                                           ; preds = %entry
  %and4 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  %14 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %15, i32 324
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %init_name.i66 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i66, align 8
  %tobool.not.i67 = icmp eq ptr %18, null
  br i1 %tobool.not.i67, label %if.end.i68, label %if.then6.dev_name.exit70_crit_edge

if.then6.dev_name.exit70_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit70

if.end.i68:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  br label %dev_name.exit70

dev_name.exit70:                                  ; preds = %if.end.i68, %if.then6.dev_name.exit70_crit_edge
  %retval.0.i69 = phi ptr [ %20, %if.end.i68 ], [ %18, %if.then6.dev_name.exit70_crit_edge ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %and8 = lshr i32 %21, 16
  %shr = and i32 %and8, 4095
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.90, ptr noundef %retval.0.i69, i32 noundef %shr) #13
  unreachable

if.end10:                                         ; preds = %if.end
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  %22 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %23, i32 2000
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %init_name.i73 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i73, align 8
  %tobool.not.i74 = icmp eq ptr %26, null
  br i1 %tobool.not.i74, label %if.end.i75, label %if.then13.dev_name.exit77_crit_edge

if.then13.dev_name.exit77_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit77

if.end.i75:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  br label %dev_name.exit77

dev_name.exit77:                                  ; preds = %if.end.i75, %if.then13.dev_name.exit77_crit_edge
  %retval.0.i76 = phi ptr [ %28, %if.end.i75 ], [ %26, %if.then13.dev_name.exit77_crit_edge ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.91, ptr noundef %retval.0.i76, i32 noundef %29) #13
  unreachable

if.end17:                                         ; preds = %if.end10
  %and18 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end26, label %if.then20

if.then20:                                        ; preds = %if.end17
  %30 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %31, i32 320
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %init_name.i80 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i80, align 8
  %tobool.not.i81 = icmp eq ptr %34, null
  br i1 %tobool.not.i81, label %if.end.i82, label %if.then20.dev_name.exit84_crit_edge

if.then20.dev_name.exit84_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit84

if.end.i82:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  br label %dev_name.exit84

dev_name.exit84:                                  ; preds = %if.end.i82, %if.then20.dev_name.exit84_crit_edge
  %retval.0.i83 = phi ptr [ %36, %if.end.i82 ], [ %34, %if.then20.dev_name.exit84_crit_edge ]
  %37 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %and23 = lshr i32 %37, 16
  %shr24 = and i32 %and23, 1023
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.92, ptr noundef %retval.0.i83, i32 noundef %shr24) #13
  unreachable

if.end26:                                         ; preds = %if.end17
  %and27 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.end26
  %38 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %39, i32 336
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %init_name.i87 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i87, align 8
  %tobool.not.i88 = icmp eq ptr %42, null
  br i1 %tobool.not.i88, label %if.end.i89, label %if.then29.dev_name.exit91_crit_edge

if.then29.dev_name.exit91_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit91

if.end.i89:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  br label %dev_name.exit91

dev_name.exit91:                                  ; preds = %if.end.i89, %if.then29.dev_name.exit91_crit_edge
  %retval.0.i90 = phi ptr [ %44, %if.end.i89 ], [ %42, %if.then29.dev_name.exit91_crit_edge ]
  %45 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %and32 = lshr i32 %45, 16
  %shr33 = and i32 %and32, 1023
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i90, i32 noundef %shr33) #13
  unreachable

if.end35:                                         ; preds = %if.end26
  %and36 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.end35
  %46 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %47, i32 2000
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #9, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %init_name.i94 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %init_name.i94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i94, align 8
  %tobool.not.i95 = icmp eq ptr %50, null
  br i1 %tobool.not.i95, label %if.end.i96, label %if.then38.dev_name.exit98_crit_edge

if.then38.dev_name.exit98_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit98

if.end.i96:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  br label %dev_name.exit98

dev_name.exit98:                                  ; preds = %if.end.i96, %if.then38.dev_name.exit98_crit_edge
  %retval.0.i97 = phi ptr [ %52, %if.end.i96 ], [ %50, %if.then38.dev_name.exit98_crit_edge ]
  %53 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.94, ptr noundef %retval.0.i97, i32 noundef %53) #13
  unreachable

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %5, 63
  %54 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %55, i32 488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %56) #9, !srcloc !217
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fatal_axi_int_v1_hw(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 476
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !214
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 340
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #9, !srcloc !214
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %and = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.then.dev_name.exit_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.95, ptr noundef %retval.0.i, i32 noundef %9) #13
  unreachable

if.end:                                           ; preds = %entry
  %and4 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %init_name.i34 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i34, align 8
  %tobool.not.i35 = icmp eq ptr %15, null
  br i1 %tobool.not.i35, label %if.end.i36, label %if.then6.dev_name.exit38_crit_edge

if.then6.dev_name.exit38_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit38

if.end.i36:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  br label %dev_name.exit38

dev_name.exit38:                                  ; preds = %if.end.i36, %if.then6.dev_name.exit38_crit_edge
  %retval.0.i37 = phi ptr [ %17, %if.end.i36 ], [ %15, %if.then6.dev_name.exit38_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.96, ptr noundef %retval.0.i37, i32 noundef %9) #13
  unreachable

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  %init_name.i39 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i39, align 8
  %tobool.not.i40 = icmp eq ptr %19, null
  br i1 %tobool.not.i40, label %if.end.i41, label %if.then11.dev_name.exit43_crit_edge

if.then11.dev_name.exit43_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit43

if.end.i41:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  br label %dev_name.exit43

dev_name.exit43:                                  ; preds = %if.end.i41, %if.then11.dev_name.exit43_crit_edge
  %retval.0.i42 = phi ptr [ %21, %if.end.i41 ], [ %19, %if.then11.dev_name.exit43_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i42, i32 noundef %9) #13
  unreachable

if.end13:                                         ; preds = %if.end8
  %and14 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  %init_name.i44 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i44, align 8
  %tobool.not.i45 = icmp eq ptr %23, null
  br i1 %tobool.not.i45, label %if.end.i46, label %if.then16.dev_name.exit48_crit_edge

if.then16.dev_name.exit48_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit48

if.end.i46:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  br label %dev_name.exit48

dev_name.exit48:                                  ; preds = %if.end.i46, %if.then16.dev_name.exit48_crit_edge
  %retval.0.i47 = phi ptr [ %25, %if.end.i46 ], [ %23, %if.then16.dev_name.exit48_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.98, ptr noundef %retval.0.i47, i32 noundef %9) #13
  unreachable

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %5, 805306368
  %26 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %27, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %28) #9, !srcloc !217
  ret i32 1
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_hisi_sas_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_phys_v1_hw(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -164
  %n_phy = getelementptr i8, ptr %t, i32 -104
  %0 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs1.i = getelementptr i8, ptr %t, i32 -144
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %i.07, 10
  %add.ptr.i = getelementptr i8, ptr %3, i32 2500
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 704708608) #9, !srcloc !217
  tail call void @hisi_sas_phy_enable(ptr noundef %add.ptr, i32 noundef %i.07, i32 noundef 1) #9
  %inc = add nuw nsw i32 %i.07, 1
  %4 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_phy, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_phy_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hisi_sas_get_prog_phy_linkrate_mask(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_queuecommand(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_eh_device_reset_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_eh_target_reset_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_slave_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_slave_configure(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_target_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_target_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_scan_finished(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_scan_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_host_reset(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !194, !195, !197, !199, !200, !202}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @__initcall__kmod_hisi_sas_v1_hw__298_1831_hisi_sas_v1_driver_init6, !1, !"__initcall__kmod_hisi_sas_v1_hw__298_1831_hisi_sas_v1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1831, i32 1}
!2 = !{ptr @__exitcall_hisi_sas_v1_driver_exit, !1, !"__exitcall_hisi_sas_v1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file299, !4, !"__UNIQUE_ID_file299", i1 false, i1 false}
!4 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1833, i32 1}
!5 = !{ptr @__UNIQUE_ID_license300, !4, !"__UNIQUE_ID_license300", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1834, i32 1}
!8 = !{ptr @__UNIQUE_ID_description302, !9, !"__UNIQUE_ID_description302", i1 false, i1 false}
!9 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1835, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias303, !11, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!11 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1836, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1825, i32 11}
!14 = !{ptr @hisi_sas_v1_driver, !15, !"hisi_sas_v1_driver", i1 false, i1 false}
!15 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1821, i32 31}
!16 = !{ptr @hisi_sas_v1_hw, !17, !"hisi_sas_v1_hw", i1 false, i1 false}
!17 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1779, i32 33}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 755, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hw_init_v1_hw._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @hw_init_v1_hw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 612, i32 46}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 614, i32 4}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @reset_hw_v1_hw._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @reset_hw_v1_hw._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @reset_hw_v1_hw._entry.9, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 627, i32 4}
!35 = !{ptr @reset_hw_v1_hw._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 640, i32 4}
!38 = !{ptr @reset_hw_v1_hw._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @reset_hw_v1_hw._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 644, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @reset_hw_v1_hw._entry.14, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @reset_hw_v1_hw._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1643, i32 5}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @interrupt_init_v1_hw._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @interrupt_init_v1_hw._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1649, i32 12}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1651, i32 5}
!54 = !{ptr @interrupt_init_v1_hw._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @interrupt_init_v1_hw._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1662, i32 4}
!58 = !{ptr @interrupt_init_v1_hw._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @interrupt_init_v1_hw._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1668, i32 11}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1670, i32 4}
!64 = !{ptr @interrupt_init_v1_hw._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @interrupt_init_v1_hw._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1680, i32 4}
!68 = !{ptr @interrupt_init_v1_hw._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @interrupt_init_v1_hw._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1686, i32 11}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1688, i32 4}
!74 = !{ptr @interrupt_init_v1_hw._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @interrupt_init_v1_hw._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"phy_interrupts", i1 false, i1 false}
!77 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1619, i32 22}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1412, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @int_bcast_v1_hw._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @int_bcast_v1_hw._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1333, i32 3}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @int_phyup_v1_hw.__UNIQUE_ID_ddebug292, !84, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1341, i32 3}
!89 = !{ptr @int_phyup_v1_hw._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @int_phyup_v1_hw._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1349, i32 3}
!93 = !{ptr @int_phyup_v1_hw._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @int_phyup_v1_hw._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1367, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @int_phyup_v1_hw._entry.46, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @int_phyup_v1_hw._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1454, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug293, !101, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1458, i32 3}
!106 = !{ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug294, !105, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1461, i32 3}
!109 = !{ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug295, !108, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1466, i32 3}
!112 = !{ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug296, !111, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1470, i32 3}
!115 = !{ptr @int_abnormal_v1_hw.__UNIQUE_ID_ddebug297, !114, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1212, i32 3}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @slot_complete_v1_hw.__UNIQUE_ID_ddebug291, !117, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1221, i32 4}
!122 = !{ptr @slot_complete_v1_hw._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @slot_complete_v1_hw._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1225, i32 4}
!126 = !{ptr @slot_complete_v1_hw._entry.59, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @slot_complete_v1_hw._entry_ptr.61, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1229, i32 4}
!130 = !{ptr @slot_complete_v1_hw._entry.62, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @slot_complete_v1_hw._entry_ptr.64, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1233, i32 4}
!134 = !{ptr @slot_complete_v1_hw._entry.65, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @slot_complete_v1_hw._entry_ptr.67, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1237, i32 4}
!138 = !{ptr @slot_complete_v1_hw._entry.68, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @slot_complete_v1_hw._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1241, i32 4}
!142 = !{ptr @slot_complete_v1_hw._entry.71, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @slot_complete_v1_hw._entry_ptr.73, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1245, i32 4}
!146 = !{ptr @slot_complete_v1_hw._entry.74, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @slot_complete_v1_hw._entry_ptr.76, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1249, i32 4}
!150 = !{ptr @slot_complete_v1_hw._entry.77, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @slot_complete_v1_hw._entry_ptr.79, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1297, i32 3}
!154 = !{ptr @slot_complete_v1_hw._entry.80, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @slot_complete_v1_hw._entry_ptr.82, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1306, i32 3}
!158 = !{ptr @slot_complete_v1_hw._entry.83, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @slot_complete_v1_hw._entry_ptr.85, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1169, i32 3}
!162 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @slot_err_v1_hw._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @slot_err_v1_hw._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"fatal_interrupts", i1 false, i1 false}
!166 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1625, i32 22}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1541, i32 9}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1550, i32 9}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1557, i32 9}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1566, i32 9}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1575, i32 9}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1582, i32 9}
!179 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1599, i32 9}
!181 = !{ptr @.str.96, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1603, i32 9}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1607, i32 9}
!185 = !{ptr @.str.98, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1611, i32 9}
!187 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 512, i32 3}
!189 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @setup_itct_v1_hw._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @setup_itct_v1_hw._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @phys_init_v1_hw.__key, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 817, i32 2}
!194 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @sht_v1_hw, !196, !"sht_v1_hw", i1 false, i1 false}
!196 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1752, i32 34}
!197 = !{ptr @host_v1_hw_groups, !198, !"host_v1_hw_groups", i1 false, i1 false}
!198 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1750, i32 1}
!199 = !{ptr @host_v1_hw_group, !198, !"host_v1_hw_group", i1 false, i1 false}
!200 = !{ptr @host_v1_hw_attrs, !201, !"host_v1_hw_attrs", i1 false, i1 false}
!201 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1745, i32 26}
!202 = !{ptr @sas_v1_of_match, !203, !"sas_v1_of_match", i1 false, i1 false}
!203 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v1_hw.c", i32 1808, i32 34}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{!"auto-init"}
!214 = !{i64 7121134}
!215 = !{i64 2156034421}
!216 = !{i64 2156033825}
!217 = !{i64 7120716}
!218 = !{i64 2156033261}
!219 = !{i64 2156033462}
!220 = !{i64 2156055125}
!221 = !{i64 2149019434, i64 2149019439, i64 2149019452, i64 2149019496, i64 2149019530, i64 2149019551}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i32 0, i32 33}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{i64 2154986559, i64 2154987051, i64 2154986596, i64 2154986652, i64 2154986686, i64 2154986710, i64 2154986751, i64 2154986772, i64 2154986800, i64 2154986834}
