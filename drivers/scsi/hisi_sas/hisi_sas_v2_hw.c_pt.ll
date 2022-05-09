; ModuleID = '/llk/IR_all_yes/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c_pt.bc'
source_filename = "../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_sas_hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hisi_sas_hw_error = type { i32, i32, i32, ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.host_to_dev_fis = type { i8, i8, i8, i8, i8, %union.anon.91, %union.anon.92, i8, i8, i8, i8, i8, %union.anon.93, i8, i8, i8, i32 }
%union.anon.91 = type { i8 }
%union.anon.92 = type { i8 }
%union.anon.93 = type { i8 }
%struct.sas_ata_task = type <{ %struct.host_to_dev_fis, [16 x i8], i8, i8 }>
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.hisi_sas_initial_fis = type { %struct.hisi_sas_err_record, %struct.dev_to_host_fis, [3 x i32] }
%struct.hisi_sas_err_record = type { [4 x i32] }
%struct.hisi_sas_complete_v2_hdr = type { i32, i32, i32, i32 }
%struct.hisi_sas_status_buffer = type { %struct.hisi_sas_err_record, [1024 x i8] }
%struct.hisi_sas_err_record_v2 = type { i32, i32, i16, i16, i32 }

@__initcall__kmod_hisi_sas_v2_hw__297_3654_hisi_sas_v2_driver_init6 = internal global ptr @hisi_sas_v2_driver_init, section ".initcall6.init", align 4
@hisi_sas_v2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_sas_v2_probe, ptr @hisi_sas_v2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sas_v2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_sas_v2_driver_exit = internal global ptr @hisi_sas_v2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file298 = internal constant [57 x i8] c"hisi_sas_v2_hw.file=drivers/scsi/hisi_sas/hisi_sas_v2_hw\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [27 x i8] c"hisi_sas_v2_hw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [57 x i8] c"hisi_sas_v2_hw.author=John Garry <john.garry@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [65 x i8] c"hisi_sas_v2_hw.description=HISILICON SAS controller v2 hw driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [45 x i8] c"hisi_sas_v2_hw.alias=platform:hisi_sas_v2_hw\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_sas_v2_hw\00", [17 x i8] zeroinitializer }, align 32
@sas_v2_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip06-sas-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip07-sas-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hisi_sas_v2_hw = internal constant { %struct.hisi_sas_hw, [44 x i8] } { %struct.hisi_sas_hw { ptr @hisi_sas_v2_init, ptr @hisi_sas_v2_interrupt_preinit, ptr @setup_itct_v2_hw, ptr @slot_index_alloc_quirk_v2_hw, ptr @alloc_dev_quirk_v2_hw, ptr @sl_notify_ssp_v2_hw, ptr @start_delivery_v2_hw, ptr @prep_ssp_v2_hw, ptr @prep_smp_v2_hw, ptr @prep_ata_v2_hw, ptr @prep_abort_v2_hw, ptr @phys_init_v2_hw, ptr @start_phy_v2_hw, ptr @disable_phy_v2_hw, ptr @phy_hard_reset_v2_hw, ptr @phy_get_events_v2_hw, ptr @phy_set_linkrate_v2_hw, ptr @phy_get_max_linkrate_v2_hw, ptr @clear_itct_v2_hw, ptr @free_device_v2_hw, ptr @get_wideport_bitmap_v2_hw, ptr null, ptr @soft_reset_v2_hw, ptr @get_phys_state_v2_hw, ptr @write_gpio_v2_hw, ptr @wait_cmds_complete_timeout_v2_hw, ptr null, i32 16, ptr @sht_v2_hw }, [44 x i8] zeroinitializer }, align 32
@sht_v2_hw = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sas_queuecommand, ptr null, ptr null, ptr @.str, ptr null, ptr @sas_ioctl, ptr null, ptr null, ptr null, ptr @sas_eh_device_reset_handler, ptr @sas_eh_target_reset_handler, ptr null, ptr null, ptr @hisi_sas_slave_alloc, ptr @hisi_sas_slave_configure, ptr null, ptr @sas_target_alloc, ptr @sas_target_destroy, ptr @hisi_sas_scan_finished, ptr @hisi_sas_scan_start, ptr @sas_change_queue_depth, ptr @map_queues_v2_hw, ptr null, ptr @ata_scsi_dma_need_drain, ptr @sas_bios_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_sas_host_reset, ptr @.str, ptr null, i32 0, i32 -1, i16 124, i16 0, i32 1024, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 2, i32 0, ptr @host_v2_hw_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@hw_init_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hisi_sas_reset_hw failed, rc=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_init_v2_hw\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/scsi/hisi_sas/hisi_sas_v2_hw.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hw_init_v2_hw._entry_ptr = internal global ptr @hw_init_v2_hw._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@reset_hw_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset_hw_v2_hw\00", [17 x i8] zeroinitializer }, align 32
@reset_hw_v2_hw._entry_ptr = internal global ptr @reset_hw_v2_hw._entry, section ".printk_index", align 4
@reset_hw_v2_hw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 1093, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SAS reset fail.\0A\00", [47 x i8] zeroinitializer }, align 32
@reset_hw_v2_hw._entry_ptr.11 = internal global ptr @reset_hw_v2_hw._entry.9, section ".printk_index", align 4
@reset_hw_v2_hw._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 1106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SAS de-reset fail.\0A\00", [44 x i8] zeroinitializer }, align 32
@reset_hw_v2_hw._entry_ptr.14 = internal global ptr @reset_hw_v2_hw._entry.12, section ".printk_index", align 4
@reset_hw_v2_hw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.3, i32 1110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no reset method\0A\00", [47 x i8] zeroinitializer }, align 32
@reset_hw_v2_hw._entry_ptr.17 = internal global ptr @reset_hw_v2_hw._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hip06-sas-v2-quirk-amt\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hisilicon,signal-attenuation\00", [35 x i8] zeroinitializer }, align 32
@init_reg_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1226, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"unknown signal attenuation values, using default PHY ctrl config\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_reg_v2_hw\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@init_reg_v2_hw._entry_ptr = internal global ptr @init_reg_v2_hw._entry, section ".printk_index", align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hisi_sas_v2_hw phy\00", [45 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 3334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"irq init: could not request phy interrupt %d, rc=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt_init_v2_hw\00", [43 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry_ptr = internal global ptr @interrupt_init_v2_hw._entry, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hisi_sas_v2_hw sata\00", [44 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 3348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"irq init: could not request sata interrupt %d, rc=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry_ptr.29 = internal global ptr @interrupt_init_v2_hw._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_sas_v2_hw fatal\00", [43 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.3, i32 3360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"irq init: could not request fatal interrupt %d, rc=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry_ptr.33 = internal global ptr @interrupt_init_v2_hw._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hisi_sas_v2_hw cq\00", [46 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.3, i32 3376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"irq init: could not request cq interrupt %d, rc=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@interrupt_init_v2_hw._entry_ptr.37 = internal global ptr @interrupt_init_v2_hw._entry.35, section ".printk_index", align 4
@phy_up_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 2667, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phyup: phy%d invalid portid\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_up_v2_hw\00", [19 x i8] zeroinitializer }, align 32
@phy_up_v2_hw._entry_ptr = internal global ptr @phy_up_v2_hw._entry, section ".printk_index", align 4
@phy_up_v2_hw._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 2681, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phyup: phy%d link_rate=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@phy_up_v2_hw._entry_ptr.43 = internal global ptr @phy_up_v2_hw._entry.40, section ".printk_index", align 4
@phy_down_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 2730, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phydown: phy%d phy_state=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_down_v2_hw\00", [17 x i8] zeroinitializer }, align 32
@phy_down_v2_hw._entry_ptr = internal global ptr @phy_down_v2_hw._entry, section ".printk_index", align 4
@int_chnl_int_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 2890, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s error (phy%d 0x%x) found!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"int_chnl_int_v2_hw\00", [45 x i8] zeroinitializer }, align 32
@int_chnl_int_v2_hw._entry_ptr = internal global ptr @int_chnl_int_v2_hw._entry, section ".printk_index", align 4
@int_chnl_int_v2_hw._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 2903, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy%d identify timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@int_chnl_int_v2_hw._entry_ptr.50 = internal global ptr @int_chnl_int_v2_hw._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmac_tx_ecc_bad_err\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmac_rx_ecc_bad_err\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_tx_axi_wr_err\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_tx_axi_rd_err\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_rx_axi_wr_err\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_rx_axi_rd_err\00", [46 x i8] zeroinitializer }, align 32
@sata_int_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 3219, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sata int: phy%d did not receive FIS\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sata_int_v2_hw\00", [17 x i8] zeroinitializer }, align 32
@sata_int_v2_hw._entry_ptr = internal global ptr @sata_int_v2_hw._entry, section ".printk_index", align 4
@sata_int_v2_hw._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 3227, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sata int: phy%d FIS status: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@sata_int_v2_hw._entry_ptr.61 = internal global ptr @sata_int_v2_hw._entry.59, section ".printk_index", align 4
@sata_int_v2_hw._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.3, i32 3248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sata int: phy%d invalid portid\0A\00", [32 x i8] zeroinitializer }, align 32
@sata_int_v2_hw._entry_ptr.64 = internal global ptr @sata_int_v2_hw._entry.62, section ".printk_index", align 4
@sata_int_v2_hw._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.3, i32 3266, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sata int phyup: phy%d link_rate=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@sata_int_v2_hw._entry_ptr.67 = internal global ptr @sata_int_v2_hw._entry.65, section ".printk_index", align 4
@one_bit_ecc_errors = internal constant { [10 x %struct.hisi_sas_hw_error], [48 x i8] } { [10 x %struct.hisi_sas_hw_error] [%struct.hisi_sas_hw_error { i32 1, i32 4095, i32 0, ptr @.str.70, i32 324, ptr null }, %struct.hisi_sas_hw_error { i32 4, i32 1023, i32 0, ptr @.str.71, i32 320, ptr null }, %struct.hisi_sas_hw_error { i32 32, i32 1023, i32 0, ptr @.str.72, i32 336, ptr null }, %struct.hisi_sas_hw_error { i32 128, i32 4095, i32 0, ptr @.str.73, i32 296, ptr null }, %struct.hisi_sas_hw_error { i32 256, i32 8384512, i32 12, ptr @.str.74, i32 296, ptr null }, %struct.hisi_sas_hw_error { i32 1024, i32 63, i32 0, ptr @.str.75, i32 316, ptr null }, %struct.hisi_sas_hw_error { i32 8192, i32 511, i32 0, ptr @.str.76, i32 2792, ptr null }, %struct.hisi_sas_hw_error { i32 32768, i32 261632, i32 9, ptr @.str.77, i32 2792, ptr null }, %struct.hisi_sas_hw_error { i32 131072, i32 133955584, i32 18, ptr @.str.78, i32 2792, ptr null }, %struct.hisi_sas_hw_error { i32 524288, i32 511, i32 0, ptr @.str.79, i32 2796, ptr null }], [48 x i8] zeroinitializer }, align 32
@one_bit_ecc_error_process_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 2949, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s found: mem addr is 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"one_bit_ecc_error_process_v2_hw\00", [32 x i8] zeroinitializer }, align 32
@one_bit_ecc_error_process_v2_hw._entry_ptr = internal global ptr @one_bit_ecc_error_process_v2_hw._entry, section ".printk_index", align 4
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hgc_dqe_ecc1b_intr\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hgc_iost_ecc1b_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hgc_itct_ecc1b_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hgc_iostl_ecc1b_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hgc_itctl_ecc1b_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hgc_cqe_ecc1b_intr\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxm_mem0_ecc1b_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxm_mem1_ecc1b_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxm_mem2_ecc1b_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxm_mem3_ecc1b_intr\00", [44 x i8] zeroinitializer }, align 32
@multi_bit_ecc_errors = internal constant { [10 x %struct.hisi_sas_hw_error], [48 x i8] } { [10 x %struct.hisi_sas_hw_error] [%struct.hisi_sas_hw_error { i32 2, i32 268369920, i32 16, ptr @.str.82, i32 324, ptr null }, %struct.hisi_sas_hw_error { i32 8, i32 67043328, i32 16, ptr @.str.83, i32 320, ptr null }, %struct.hisi_sas_hw_error { i32 16, i32 67043328, i32 16, ptr @.str.84, i32 336, ptr null }, %struct.hisi_sas_hw_error { i32 64, i32 4095, i32 0, ptr @.str.85, i32 296, ptr null }, %struct.hisi_sas_hw_error { i32 512, i32 8384512, i32 12, ptr @.str.86, i32 296, ptr null }, %struct.hisi_sas_hw_error { i32 2048, i32 16128, i32 8, ptr @.str.87, i32 316, ptr null }, %struct.hisi_sas_hw_error { i32 4096, i32 511, i32 0, ptr @.str.88, i32 2792, ptr null }, %struct.hisi_sas_hw_error { i32 16384, i32 261632, i32 9, ptr @.str.89, i32 2792, ptr null }, %struct.hisi_sas_hw_error { i32 65536, i32 133955584, i32 18, ptr @.str.90, i32 2792, ptr null }, %struct.hisi_sas_hw_error { i32 262144, i32 511, i32 0, ptr @.str.91, i32 2796, ptr null }], [48 x i8] zeroinitializer }, align 32
@multi_bit_ecc_error_process_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 2969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s (0x%x) found: mem addr is 0x%08X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"multi_bit_ecc_error_process_v2_hw\00", [62 x i8] zeroinitializer }, align 32
@multi_bit_ecc_error_process_v2_hw._entry_ptr = internal global ptr @multi_bit_ecc_error_process_v2_hw._entry, section ".printk_index", align 4
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hgc_dqe_eccbad_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hgc_iost_eccbad_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hgc_itct_eccbad_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hgc_iostl_eccbad_intr\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hgc_itctl_eccbad_intr\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hgc_cqe_eccbad_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxm_mem0_eccbad_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxm_mem1_eccbad_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxm_mem2_eccbad_intr\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxm_mem3_eccbad_intr\00", [43 x i8] zeroinitializer }, align 32
@fatal_axi_errors = internal constant { [7 x %struct.hisi_sas_hw_error], [56 x i8] } { [7 x %struct.hisi_sas_hw_error] [%struct.hisi_sas_hw_error { i32 256, i32 0, i32 0, ptr @.str.97, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 512, i32 0, i32 0, ptr @.str.98, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 1024, i32 0, i32 0, ptr @.str.99, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 2048, i32 0, i32 0, ptr null, i32 340, ptr @axi_error }, %struct.hisi_sas_hw_error { i32 4096, i32 0, i32 0, ptr null, i32 340, ptr @fifo_error }, %struct.hisi_sas_hw_error { i32 16384, i32 0, i32 0, ptr @.str.100, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 65536, i32 0, i32 0, ptr @.str.101, i32 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@fatal_axi_int_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 3079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s (0x%x) found!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fatal_axi_int_v2_hw\00", [44 x i8] zeroinitializer }, align 32
@fatal_axi_int_v2_hw._entry_ptr = internal global ptr @fatal_axi_int_v2_hw._entry, section ".printk_index", align 4
@fatal_axi_int_v2_hw._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 3084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fatal_axi_int_v2_hw._entry_ptr.95 = internal global ptr @fatal_axi_int_v2_hw._entry.94, section ".printk_index", align 4
@fatal_axi_int_v2_hw.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.96, i8 3, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clear ITCT ok\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write pointer and depth\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iptt no match slot\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"read pointer and depth\00", [41 x i8] zeroinitializer }, align 32
@axi_error = internal constant { [9 x %struct.hisi_sas_hw_error], [40 x i8] } { [9 x %struct.hisi_sas_hw_error] [%struct.hisi_sas_hw_error { i32 0, i32 1, i32 0, ptr @.str.102, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 2, i32 0, ptr @.str.103, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 4, i32 0, ptr @.str.104, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 8, i32 0, ptr @.str.105, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 16, i32 0, ptr @.str.106, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 32, i32 0, ptr @.str.107, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 64, i32 0, ptr @.str.108, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 128, i32 0, ptr @.str.109, i32 0, ptr null }, %struct.hisi_sas_hw_error zeroinitializer], [40 x i8] zeroinitializer }, align 32
@fifo_error = internal constant { [6 x %struct.hisi_sas_hw_error], [48 x i8] } { [6 x %struct.hisi_sas_hw_error] [%struct.hisi_sas_hw_error { i32 0, i32 256, i32 0, ptr @.str.110, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 512, i32 0, ptr @.str.111, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 1024, i32 0, ptr @.str.112, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 2048, i32 0, ptr @.str.113, i32 0, ptr null }, %struct.hisi_sas_hw_error { i32 0, i32 4096, i32 0, ptr @.str.114, i32 0, ptr null }, %struct.hisi_sas_hw_error zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LM add/fetch list\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SAS_HGC_ABT fetch LM list\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IOST_AXI_W_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IOST_AXI_R_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ITCT_AXI_W_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ITCT_AXI_R_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SATA_AXI_W_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SATA_AXI_R_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DQE_AXI_R_ERR\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CQE_AXI_W_ERR\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CQE_WINFO_FIFO\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CQE_MSG_FIFIO\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GETDQE_FIFO\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CMDP_FIFO\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AWTCTRL_FIFO\00", [19 x i8] zeroinitializer }, align 32
@slot_complete_v2_hw.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 2, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slot_complete_v2_hw\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"slot complete: port has no device\0A\00", [61 x i8] zeroinitializer }, align 32
@slot_complete_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 2405, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"erroneous completion iptt=%d task=%pK dev id=%d CQ hdr: 0x%x 0x%x 0x%x 0x%x Error info: 0x%x 0x%x 0x%x 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@slot_complete_v2_hw._entry_ptr = internal global ptr @slot_complete_v2_hw._entry, section ".printk_index", align 4
@slot_complete_v2_hw._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.115, ptr @.str.3, i32 2455, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"slot complete: port %d has removed\0A\00", [60 x i8] zeroinitializer }, align 32
@slot_complete_v2_hw._entry_ptr.120 = internal global ptr @slot_complete_v2_hw._entry.118, section ".printk_index", align 4
@slot_complete_v2_hw._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.3, i32 2463, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"slot complete: task(%pK) aborted\0A\00", [62 x i8] zeroinitializer }, align 32
@slot_complete_v2_hw._entry_ptr.123 = internal global ptr @slot_complete_v2_hw._entry.121, section ".printk_index", align 4
@slot_complete_v2_hw._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.115, ptr @.str.3, i32 2475, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"slot complete: task(%pK) ignored\0A\00", [62 x i8] zeroinitializer }, align 32
@slot_complete_v2_hw._entry_ptr.126 = internal global ptr @slot_complete_v2_hw._entry.124, section ".printk_index", align 4
@parse_trans_tx_err_code_v2_hw.trans_tx_err_code_prio = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\17\18\19\12\13\14\15\16\1A\1B\1C\1D\1E\1F", [33 x i8] zeroinitializer }, align 32
@parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" !\22#$%&'-./()*+,0123456789:;<=>?", [32 x i8] zeroinitializer }, align 32
@parse_dma_rx_err_code_v2_hw.dma_rx_err_code_prio = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"yefghijklmnopqrstuvwx`abcd", [38 x i8] zeroinitializer }, align 32
@setup_itct_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 952, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setup itct: unsupported dev type (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_itct_v2_hw\00", [47 x i8] zeroinitializer }, align 32
@setup_itct_v2_hw._entry_ptr = internal global ptr @setup_itct_v2_hw._entry, section ".printk_index", align 4
@alloc_dev_quirk_v2_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sas_dev->lock\00", [17 x i8] zeroinitializer }, align 32
@sata_index_alloc_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 828, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"alloc sata index failed, index=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sata_index_alloc_v2_hw\00", [41 x i8] zeroinitializer }, align 32
@sata_index_alloc_v2_hw._entry_ptr = internal global ptr @sata_index_alloc_v2_hw._entry, section ".printk_index", align 4
@prep_abort_v2_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(timer)\00", [24 x i8] zeroinitializer }, align 32
@disable_phy_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 1518, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phy%d, wait tx fifo need send break\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disable_phy_v2_hw\00", [46 x i8] zeroinitializer }, align 32
@disable_phy_v2_hw._entry_ptr = internal global ptr @disable_phy_v2_hw._entry, section ".printk_index", align 4
@axi_bus_is_idle_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"bus is not idle phy%d, axi150:0x%x axi100:0x%x port204:0x%x port240:0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axi_bus_is_idle_v2_hw\00", [42 x i8] zeroinitializer }, align 32
@axi_bus_is_idle_v2_hw._entry_ptr = internal global ptr @axi_bus_is_idle_v2_hw._entry, section ".printk_index", align 4
@wait_io_done_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 1471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IO not done phy%d, port264:0x%x port200:0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait_io_done_v2_hw\00", [45 x i8] zeroinitializer }, align 32
@wait_io_done_v2_hw._entry_ptr = internal global ptr @wait_io_done_v2_hw._entry, section ".printk_index", align 4
@clear_itct_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 998, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to clear ITCT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clear_itct_v2_hw\00", [47 x i8] zeroinitializer }, align 32
@clear_itct_v2_hw._entry_ptr = internal global ptr @clear_itct_v2_hw._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@soft_reset_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.3, i32 3456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wait axi bus state to idle timeout!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"soft_reset_v2_hw\00", [47 x i8] zeroinitializer }, align 32
@soft_reset_v2_hw._entry_ptr = internal global ptr @soft_reset_v2_hw._entry, section ".printk_index", align 4
@write_gpio_v2_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.3, i32 3503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write gpio: unsupported or bad reg type %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_gpio_v2_hw\00", [47 x i8] zeroinitializer }, align 32
@write_gpio_v2_hw._entry_ptr = internal global ptr @write_gpio_v2_hw._entry, section ".printk_index", align 4
@wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.3, ptr @.str.147, i8 3, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wait_cmds_complete_timeout_v2_hw\00", [63 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wait commands complete timeout!\0A\00", [63 x i8] zeroinitializer }, align 32
@wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.3, ptr @.str.148, i8 3, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wait commands complete %dms\0A\00", [35 x i8] zeroinitializer }, align 32
@host_v2_hw_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @host_v2_hw_group, ptr null], [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@host_v2_hw_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @host_v2_hw_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@host_v2_hw_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_phy_event_threshold, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_phy_event_threshold = external dso_local global %struct.device_attribute, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 128]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 16, i64 20]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.160 = internal global [10 x i64] [i64 8, i64 8, i64 2, i64 4, i64 6, i64 8, i64 10, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.161 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.162 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.163 = internal global [63 x i64] [i64 61, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 32, i64 33, i64 34, i64 39, i64 40, i64 41, i64 42, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 56, i64 67, i64 69, i64 70, i64 71, i64 72, i64 90, i64 99, i64 101, i64 102, i64 103, i64 105, i64 106, i64 108, i64 114, i64 115, i64 116, i64 121]
@__sancov_gen_cov_switch_values.164 = internal global [80 x i64] [i64 78, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 27, i64 28, i64 30, i64 31, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 56, i64 67, i64 69, i64 70, i64 71, i64 72, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 88, i64 99, i64 101, i64 102, i64 103, i64 105, i64 106, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 121]
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"hisi_sas_v2_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3644, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3648, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"sas_v2_of_match\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3630, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"hisi_sas_v2_hw\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3590, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"sht_v2_hw\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3561, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1385, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1081, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1093, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1106, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1110, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1172, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1211, i32 43 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1226, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3331, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3333, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3345, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3347, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3357, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3359, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3373, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3375, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2667, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2681, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2730, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2889, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2902, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2832, i32 10 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2836, i32 10 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2840, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2844, i32 10 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2848, i32 10 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2852, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3219, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3226, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3248, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3266, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [19 x i8] c"one_bit_ecc_errors\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 420, i32 39 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2948, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 425, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 432, i32 10 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 439, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 446, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 453, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 460, i32 10 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 467, i32 10 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 474, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 481, i32 10 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 488, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant [21 x i8] c"multi_bit_ecc_errors\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 493, i32 39 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2968, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 498, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 505, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 512, i32 10 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 519, i32 10 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 526, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 533, i32 10 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 540, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 547, i32 10 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 554, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 561, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"fatal_axi_errors\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3018, i32 39 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3078, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3083, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3095, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3021, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3025, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3029, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant [10 x i8] c"axi_error\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2997, i32 39 }
@___asan_gen_.483 = private unnamed_addr constant [11 x i8] c"fifo_error\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3009, i32 39 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3043, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3047, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2998, i32 26 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2999, i32 26 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3000, i32 26 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3001, i32 26 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3002, i32 26 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3003, i32 26 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3004, i32 26 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3005, i32 26 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3010, i32 27 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3011, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3012, i32 27 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3013, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3014, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2355, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2400, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2454, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2463, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2474, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant [23 x i8] c"trans_tx_err_code_prio\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1834, i32 18 }
@___asan_gen_.564 = private unnamed_addr constant [23 x i8] c"trans_rx_err_code_prio\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1879, i32 18 }
@___asan_gen_.567 = private unnamed_addr constant [21 x i8] c"dma_rx_err_code_prio\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1977, i32 18 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 951, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 870, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 828, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 2616, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1517, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1446, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 1470, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 998, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.640 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 87, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3456, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3502, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3526, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3530, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [18 x i8] c"host_v2_hw_groups\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [17 x i8] c"host_v2_hw_group\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3539, i32 1 }
@___asan_gen_.675 = private unnamed_addr constant [17 x i8] c"host_v2_hw_attrs\00", align 1
@___asan_gen_.676 = private constant [42 x i8] c"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.676, i32 3534, i32 26 }
@llvm.compiler.used = appending global [214 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_hisi_sas_v2_driver_exit, ptr @__initcall__kmod_hisi_sas_v2_hw__297_3654_hisi_sas_v2_driver_init6, ptr @axi_bus_is_idle_v2_hw._entry, ptr @axi_bus_is_idle_v2_hw._entry_ptr, ptr @clear_itct_v2_hw._entry, ptr @clear_itct_v2_hw._entry_ptr, ptr @disable_phy_v2_hw._entry, ptr @disable_phy_v2_hw._entry_ptr, ptr @fatal_axi_int_v2_hw._entry, ptr @fatal_axi_int_v2_hw._entry.94, ptr @fatal_axi_int_v2_hw._entry_ptr, ptr @fatal_axi_int_v2_hw._entry_ptr.95, ptr @hisi_sas_v2_driver_exit, ptr @hw_init_v2_hw._entry, ptr @hw_init_v2_hw._entry_ptr, ptr @init_reg_v2_hw._entry, ptr @init_reg_v2_hw._entry_ptr, ptr @int_chnl_int_v2_hw._entry, ptr @int_chnl_int_v2_hw._entry.48, ptr @int_chnl_int_v2_hw._entry_ptr, ptr @int_chnl_int_v2_hw._entry_ptr.50, ptr @interrupt_init_v2_hw._entry, ptr @interrupt_init_v2_hw._entry.27, ptr @interrupt_init_v2_hw._entry.31, ptr @interrupt_init_v2_hw._entry.35, ptr @interrupt_init_v2_hw._entry_ptr, ptr @interrupt_init_v2_hw._entry_ptr.29, ptr @interrupt_init_v2_hw._entry_ptr.33, ptr @interrupt_init_v2_hw._entry_ptr.37, ptr @multi_bit_ecc_error_process_v2_hw._entry, ptr @multi_bit_ecc_error_process_v2_hw._entry_ptr, ptr @one_bit_ecc_error_process_v2_hw._entry, ptr @one_bit_ecc_error_process_v2_hw._entry_ptr, ptr @phy_down_v2_hw._entry, ptr @phy_down_v2_hw._entry_ptr, ptr @phy_up_v2_hw._entry, ptr @phy_up_v2_hw._entry.40, ptr @phy_up_v2_hw._entry_ptr, ptr @phy_up_v2_hw._entry_ptr.43, ptr @reset_hw_v2_hw._entry, ptr @reset_hw_v2_hw._entry.12, ptr @reset_hw_v2_hw._entry.15, ptr @reset_hw_v2_hw._entry.9, ptr @reset_hw_v2_hw._entry_ptr, ptr @reset_hw_v2_hw._entry_ptr.11, ptr @reset_hw_v2_hw._entry_ptr.14, ptr @reset_hw_v2_hw._entry_ptr.17, ptr @sata_index_alloc_v2_hw._entry, ptr @sata_index_alloc_v2_hw._entry_ptr, ptr @sata_int_v2_hw._entry, ptr @sata_int_v2_hw._entry.59, ptr @sata_int_v2_hw._entry.62, ptr @sata_int_v2_hw._entry.65, ptr @sata_int_v2_hw._entry_ptr, ptr @sata_int_v2_hw._entry_ptr.61, ptr @sata_int_v2_hw._entry_ptr.64, ptr @sata_int_v2_hw._entry_ptr.67, ptr @setup_itct_v2_hw._entry, ptr @setup_itct_v2_hw._entry_ptr, ptr @slot_complete_v2_hw._entry, ptr @slot_complete_v2_hw._entry.118, ptr @slot_complete_v2_hw._entry.121, ptr @slot_complete_v2_hw._entry.124, ptr @slot_complete_v2_hw._entry_ptr, ptr @slot_complete_v2_hw._entry_ptr.120, ptr @slot_complete_v2_hw._entry_ptr.123, ptr @slot_complete_v2_hw._entry_ptr.126, ptr @soft_reset_v2_hw._entry, ptr @soft_reset_v2_hw._entry_ptr, ptr @wait_io_done_v2_hw._entry, ptr @wait_io_done_v2_hw._entry_ptr, ptr @write_gpio_v2_hw._entry, ptr @write_gpio_v2_hw._entry_ptr, ptr @hisi_sas_v2_driver, ptr @.str, ptr @sas_v2_of_match, ptr @hisi_sas_v2_hw, ptr @sht_v2_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @one_bit_ecc_errors, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @multi_bit_ecc_errors, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @fatal_axi_errors, ptr @.str.92, ptr @.str.93, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @axi_error, ptr @fifo_error, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @parse_trans_tx_err_code_v2_hw.trans_tx_err_code_prio, ptr @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio, ptr @parse_dma_rx_err_code_v2_hw.dma_rx_err_code_prio, ptr @.str.127, ptr @.str.128, ptr @alloc_dev_quirk_v2_hw.__key, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @prep_abort_v2_hw.__key, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @init_completion.__key, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @host_v2_hw_groups, ptr @host_v2_hw_group, ptr @host_v2_hw_attrs], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sas_v2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_v2_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sas_v2_hw to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht_v2_hw to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_init_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v2_hw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v2_hw._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hw_v2_hw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_reg_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v2_hw._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v2_hw._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_init_v2_hw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_up_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_up_v2_hw._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_down_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_chnl_int_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_chnl_int_v2_hw._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_int_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_int_v2_hw._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_int_v2_hw._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_int_v2_hw._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_bit_ecc_errors to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_bit_ecc_error_process_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bit_ecc_errors to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bit_ecc_error_process_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fatal_axi_errors to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fatal_axi_int_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fatal_axi_int_v2_hw._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_error to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_error to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v2_hw._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v2_hw._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot_complete_v2_hw._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_trans_tx_err_code_v2_hw.trans_tx_err_code_prio to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dma_rx_err_code_v2_hw.dma_rx_err_code_prio to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_itct_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev_quirk_v2_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_index_alloc_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prep_abort_v2_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_phy_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_bus_is_idle_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_io_done_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_itct_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_reset_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_gpio_v2_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_v2_hw_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_v2_hw_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_v2_hw_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_sas_v2_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_sas_v2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_sas_v2_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hisi_sas_probe(ptr noundef %pdev, ptr noundef nonnull @hisi_sas_v2_hw) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v2_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hisi_sas_remove(ptr noundef %pdev) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v2_init(ptr noundef %hisi_hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sata_dev_bitmap = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 49
  %0 = call ptr @memset(ptr %sata_dev_bitmap, i32 0, i32 128)
  %call = tail call fastcc i32 @hw_init_v2_hw(ptr noundef %hisi_hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_dev.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 1
  %1 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_dev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %irq_map.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 13
  %3 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %6, ptr noundef nonnull @int_phy_updown_v2_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef %hisi_hba) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.cond.1.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.cond3.preheader.i:                            ; preds = %for.cond.1.i
  %n_phy.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %7 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4133.i = icmp sgt i32 %8, 0
  br i1 %cmp4133.i, label %for.cond3.preheader.i.for.body5.i_crit_edge, label %for.cond3.preheader.i.for.cond21.preheader.i_crit_edge

for.cond3.preheader.i.for.cond21.preheader.i_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader.i

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.cond.1.i:                                     ; preds = %if.end
  %9 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_map.i, align 8
  %arrayidx.1.i = getelementptr i32, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i, align 4
  %call.i.1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %12, ptr noundef nonnull @int_chnl_int_v2_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef %hisi_hba) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond3.preheader.i, label %for.cond.1.i.do.end.i_crit_edge

for.cond.1.i.do.end.i_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %for.cond.1.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %.lcssa145.i = phi i32 [ %6, %if.end.do.end.i_crit_edge ], [ %12, %for.cond.1.i.do.end.i_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end.do.end.i_crit_edge ], [ %call.i.1.i, %for.cond.1.i.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.24, i32 noundef %.lcssa145.i, i32 noundef %call.i.lcssa.i) #12
  br label %cleanup

for.cond3.i:                                      ; preds = %for.body5.i
  %inc19.i = add nuw nsw i32 %phy_no.0134.i, 1
  %13 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_phy.i, align 4
  %cmp4.i = icmp slt i32 %inc19.i, %14
  br i1 %cmp4.i, label %for.cond3.i.for.body5.i_crit_edge, label %for.cond3.i.for.cond21.preheader.i_crit_edge

for.cond3.i.for.cond21.preheader.i_crit_edge:     ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader.i

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

for.cond21.preheader.i:                           ; preds = %for.cond3.i.for.cond21.preheader.i_crit_edge, %for.cond3.preheader.i.for.cond21.preheader.i_crit_edge
  %15 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_map.i, align 8
  %arrayidx26.i = getelementptr i32, ptr %16, i32 81
  %17 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26.i, align 4
  %call.i121.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %18, ptr noundef nonnull @fatal_ecc_int_v2_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %hisi_hba) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool29.not.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool29.not.i, label %for.cond21.i, label %for.cond21.preheader.i.do.end33.i_crit_edge

for.cond21.preheader.i.do.end33.i_crit_edge:      ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %phy_no.0134.i = phi i32 [ %inc19.i, %for.cond3.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no.0134.i
  %19 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_map.i, align 8
  %add9.i = add nuw i32 %phy_no.0134.i, 72
  %arrayidx10.i = getelementptr i32, ptr %20, i32 %add9.i
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  %call.i120.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %22, ptr noundef nonnull @sata_int_v2_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %arrayidx7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %tobool12.not.i = icmp eq i32 %call.i120.i, 0
  br i1 %tobool12.not.i, label %for.cond3.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.28, i32 noundef %22, i32 noundef %call.i120.i) #12
  br label %cleanup

for.cond21.i:                                     ; preds = %for.cond21.preheader.i
  %23 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_map.i, align 8
  %arrayidx26.1.i = getelementptr i32, ptr %24, i32 82
  %25 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx26.1.i, align 4
  %call.i121.1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %26, ptr noundef nonnull @fatal_axi_int_v2_hw, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %hisi_hba) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.1.i)
  %tobool29.not.1.i = icmp eq i32 %call.i121.1.i, 0
  br i1 %tobool29.not.1.i, label %for.cond21.1.i, label %for.cond21.i.do.end33.i_crit_edge

for.cond21.i.do.end33.i_crit_edge:                ; preds = %for.cond21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

for.cond21.1.i:                                   ; preds = %for.cond21.i
  %cq_nvecs.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 55
  %27 = ptrtoint ptr %cq_nvecs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cq_nvecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp39136.i = icmp sgt i32 %28, 0
  br i1 %cmp39136.i, label %for.cond21.1.i.for.body40.i_crit_edge, label %for.cond21.1.i.cleanup_crit_edge

for.cond21.1.i.cleanup_crit_edge:                 ; preds = %for.cond21.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond21.1.i.for.body40.i_crit_edge:            ; preds = %for.cond21.1.i
  br label %for.body40.i

do.end33.i:                                       ; preds = %for.cond21.i.do.end33.i_crit_edge, %for.cond21.preheader.i.do.end33.i_crit_edge
  %.lcssa.i = phi i32 [ %18, %for.cond21.preheader.i.do.end33.i_crit_edge ], [ %26, %for.cond21.i.do.end33.i_crit_edge ]
  %call.i121.lcssa.i = phi i32 [ %call.i121.i, %for.cond21.preheader.i.do.end33.i_crit_edge ], [ %call.i121.1.i, %for.cond21.i.do.end33.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.32, i32 noundef %.lcssa.i, i32 noundef %call.i121.lcssa.i) #12
  br label %cleanup

for.body40.i:                                     ; preds = %for.inc60.i.for.body40.i_crit_edge, %for.cond21.1.i.for.body40.i_crit_edge
  %queue_no.0137.i = phi i32 [ %inc61.i, %for.inc60.i.for.body40.i_crit_edge ], [ 0, %for.cond21.1.i.for.body40.i_crit_edge ]
  %arrayidx42.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 26, i32 %queue_no.0137.i
  %29 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_map.i, align 8
  %add44.i = add nuw i32 %queue_no.0137.i, 96
  %arrayidx45.i = getelementptr i32, ptr %30, i32 %add44.i
  %31 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx45.i, align 4
  %irq_no.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 26, i32 %queue_no.0137.i, i32 4
  %33 = ptrtoint ptr %irq_no.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %irq_no.i, align 4
  %call47.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %32, ptr noundef nonnull @cq_interrupt_v2_hw, ptr noundef nonnull @cq_thread_v2_hw, i32 noundef 8192, ptr noundef nonnull @.str.34, ptr noundef %arrayidx42.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  %34 = ptrtoint ptr %irq_no.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_no.i, align 4
  br i1 %tobool48.not.i, label %if.end54.i, label %cleanup57.i

if.end54.i:                                       ; preds = %for.body40.i
  %call.i122.i = tail call ptr @irq_get_irq_data(i32 noundef %35) #9
  %tobool.not.i.i = icmp eq ptr %call.i122.i, null
  br i1 %tobool.not.i.i, label %if.end54.i.for.inc60.i_crit_edge, label %cond.true.i.i

if.end54.i.for.inc60.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60.i

cond.true.i.i:                                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i122.i, i32 0, i32 3
  %36 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %common.i.i, align 4
  %affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %affinity.i.i, align 4
  br label %for.inc60.i

cleanup57.i:                                      ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.36, i32 noundef %35, i32 noundef %call47.i) #12
  br label %cleanup

for.inc60.i:                                      ; preds = %cond.true.i.i, %if.end54.i.for.inc60.i_crit_edge
  %cond.i.i = phi ptr [ %39, %cond.true.i.i ], [ null, %if.end54.i.for.inc60.i_crit_edge ]
  %irq_mask.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 26, i32 %queue_no.0137.i, i32 1
  %40 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cond.i.i, ptr %irq_mask.i, align 4
  %inc61.i = add nuw nsw i32 %queue_no.0137.i, 1
  %41 = ptrtoint ptr %cq_nvecs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cq_nvecs.i, align 8
  %cmp39.i = icmp slt i32 %inc61.i, %42
  br i1 %cmp39.i, label %for.inc60.i.for.body40.i_crit_edge, label %for.inc60.i.cleanup_crit_edge

for.inc60.i.cleanup_crit_edge:                    ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc60.i.for.body40.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40.i

cleanup:                                          ; preds = %for.inc60.i.cleanup_crit_edge, %cleanup57.i, %do.end33.i, %for.cond21.1.i.cleanup_crit_edge, %cleanup.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -2, %do.end.i ], [ -2, %cleanup.i ], [ -2, %do.end33.i ], [ -2, %cleanup57.i ], [ 0, %for.cond21.1.i.cleanup_crit_edge ], [ 0, %for.inc60.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sas_v2_interrupt_preinit(ptr noundef %hisi_hba) #2 align 64 {
entry:
  %desc = alloca %struct.irq_affinity, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_dev = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 1
  %0 = ptrtoint ptr %platform_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_dev, align 4
  %shost1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 25
  %2 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %desc) #9
  %4 = getelementptr inbounds i8, ptr %desc, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 28)
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 96, ptr %desc, align 4
  %7 = getelementptr inbounds %struct.irq_affinity, ptr %desc, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %7, align 4
  %irq_map = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 13
  %call = call i32 @devm_platform_get_irqs_affinity(ptr noundef %1, ptr noundef nonnull %desc, i32 noundef 113, i32 noundef 128, ptr noundef %irq_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %call, -112
  %cq_nvecs = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 55
  %9 = ptrtoint ptr %cq_nvecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %cq_nvecs, align 8
  %nr_hw_queues = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 34
  %10 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nr_hw_queues, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %desc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @setup_itct_v2_hw(ptr nocapture noundef readonly %hisi_hba, ptr nocapture noundef readonly %sas_dev) #2 align 64 {
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
  %parent = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 64
  %port = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %call = tail call ptr @to_hisi_sas_port(ptr noundef %11) #9
  %12 = call ptr @memset(ptr %arrayidx, i32 0, i32 128)
  %dev_type = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 5
  %13 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge39
    i32 3, label %entry.sw.epilog_crit_edge40
    i32 5, label %entry.sw.bb5_crit_edge
    i32 9, label %entry.sw.bb5_crit_edge41
  ]

entry.sw.bb5_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.epilog_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge41
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %sw.bb5.if.else_crit_edge, label %land.lhs.true

sw.bb5.if.else_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb5
  %dev_type6 = getelementptr inbounds %struct.domain_device, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %dev_type6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type6, align 4
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb5.if.else_crit_edge
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.127, i32 noundef %14) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.else, %land.lhs.true.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge39, %entry.sw.epilog_crit_edge40
  %qw0.0 = phi i64 [ 0, %do.end ], [ 2, %if.else ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge39 ], [ 1, %entry.sw.epilog_crit_edge40 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ]
  %linkrate = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %linkrate, align 16
  %shl = shl i32 %21, 5
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id, align 1
  %conv13 = zext i8 %23 to i32
  %shl14 = shl i32 %conv13, 28
  %or12 = or i32 %shl, %shl14
  %or15 = or i32 %or12, 49938948
  %conv16 = zext i32 %or15 to i64
  %or17 = or i64 %qw0.0, %conv16
  %24 = tail call i64 @llvm.bswap.i64(i64 %or17)
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx, align 8
  %sas_addr19 = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %sas_addr19 to i32
  call void @__asan_load8_noabort(i32 %26)
  %sas_addr.0.copyload = load i64, ptr %sas_addr19, align 16
  %sas_addr20 = getelementptr %struct.hisi_sas_itct, ptr %7, i32 %5, i32 1
  %27 = ptrtoint ptr %sas_addr20 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sas_addr.0.copyload, ptr %sas_addr20, align 8
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev_type.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %29, label %if.then23 [
    i32 5, label %sw.epilog.if.end24_crit_edge
    i32 7, label %sw.epilog.if.end24_crit_edge42
    i32 8, label %sw.epilog.if.end24_crit_edge43
    i32 9, label %sw.epilog.if.end24_crit_edge44
  ]

sw.epilog.if.end24_crit_edge44:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.epilog.if.end24_crit_edge43:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.epilog.if.end24_crit_edge42:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %qw2 = getelementptr %struct.hisi_sas_itct, ptr %7, i32 %5, i32 2
  %31 = ptrtoint ptr %qw2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -8641562159643361024, ptr %qw2, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %sw.epilog.if.end24_crit_edge, %sw.epilog.if.end24_crit_edge42, %sw.epilog.if.end24_crit_edge43, %sw.epilog.if.end24_crit_edge44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_index_alloc_quirk_v2_hw(ptr noundef %hisi_hba, ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %1, label %dev_is_sata.exit [
    i32 5, label %entry.dev_is_sata.exit.thread_crit_edge
    i32 7, label %entry.dev_is_sata.exit.thread_crit_edge49
    i32 8, label %entry.dev_is_sata.exit.thread_crit_edge50
  ]

entry.dev_is_sata.exit.thread_crit_edge50:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit.thread

entry.dev_is_sata.exit.thread_crit_edge49:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit.thread

entry.dev_is_sata.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit.thread

dev_is_sata.exit.thread:                          ; preds = %entry.dev_is_sata.exit.thread_crit_edge, %entry.dev_is_sata.exit.thread_crit_edge49, %entry.dev_is_sata.exit.thread_crit_edge50
  %slot_index_tags36 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 22
  %3 = ptrtoint ptr %slot_index_tags36 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slot_index_tags36, align 4
  br label %if.else

dev_is_sata.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp7.i.not = icmp eq i32 %1, 9
  %slot_index_tags = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 22
  %5 = ptrtoint ptr %slot_index_tags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slot_index_tags, align 4
  br i1 %cmp7.i.not, label %dev_is_sata.exit.if.else_crit_edge, label %if.then

dev_is_sata.exit.if.else_crit_edge:               ; preds = %dev_is_sata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %dev_is_sata.exit
  call void @__sanitizer_cov_trace_pc() #11
  %slot_index_count = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 19
  %7 = ptrtoint ptr %slot_index_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot_index_count, align 8
  br label %if.end5

if.else:                                          ; preds = %dev_is_sata.exit.if.else_crit_edge, %dev_is_sata.exit.thread
  %9 = phi ptr [ %4, %dev_is_sata.exit.thread ], [ %6, %dev_is_sata.exit.if.else_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.domain_device, ptr %device, i32 0, i32 20
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 128
  %.in = getelementptr inbounds %struct.hisi_sas_device, ptr %.pn, i32 0, i32 8
  %11 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %12)
  %cmp = icmp sgt i32 %12, 62
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add = shl i32 %12, 6
  %mul = add i32 %add, 64
  %mul4 = add i32 %add, 128
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %13 = phi ptr [ %9, %if.end ], [ %6, %if.then ]
  %14 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  %start.0 = phi i32 [ %mul, %if.end ], [ 1, %if.then ]
  %end.0 = phi i32 [ %mul4, %if.end ], [ %8, %if.then ]
  %lock = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %slot_index_count6 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 19
  %15 = ptrtoint ptr %slot_index_count6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_index_count6, align 8
  %call741 = tail call i32 @_find_next_zero_bit_be(ptr noundef %13, i32 noundef %16, i32 noundef %start.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call741, i32 %end.0)
  %cmp8.not42 = icmp slt i32 %call741, %end.0
  br i1 %cmp8.not42, label %if.end5.if.end11_crit_edge, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  br label %if.end11

if.end11:                                         ; preds = %if.end14.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %call743 = phi i32 [ %call7, %if.end14.if.end11_crit_edge ], [ %call741, %if.end5.if.end11_crit_edge ]
  %and = and i32 %call743, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and)
  %tobool12.not = icmp eq i32 %14, %and
  br i1 %tobool12.not, label %if.end14, label %while.end

if.end14:                                         ; preds = %if.end11
  %inc = add nsw i32 %call743, 1
  %17 = ptrtoint ptr %slot_index_count6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot_index_count6, align 8
  %call7 = tail call i32 @_find_next_zero_bit_be(ptr noundef %13, i32 noundef %18, i32 noundef %inc) #9
  %cmp8.not = icmp slt i32 %call7, %end.0
  br i1 %cmp8.not, label %if.end14.if.end11_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end14.if.end11_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.end:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %call743, ptr noundef %13) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.end14.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call743, %while.end ], [ -132, %if.end5.cleanup.sink.split_crit_edge ], [ -132, %if.end14.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @alloc_dev_quirk_v2_hw(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %device, i32 0, i32 1
  %6 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %7, label %dev_is_sata.exit [
    i32 5, label %entry.dev_is_sata.exit.thread_crit_edge
    i32 7, label %entry.dev_is_sata.exit.thread_crit_edge71
    i32 8, label %entry.dev_is_sata.exit.thread_crit_edge72
  ]

entry.dev_is_sata.exit.thread_crit_edge72:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit.thread

entry.dev_is_sata.exit.thread_crit_edge71:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit.thread

entry.dev_is_sata.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit.thread

dev_is_sata.exit.thread:                          ; preds = %entry.dev_is_sata.exit.thread_crit_edge, %entry.dev_is_sata.exit.thread_crit_edge71, %entry.dev_is_sata.exit.thread_crit_edge72
  %lock55 = getelementptr inbounds %struct.hisi_hba, ptr %5, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock55) #9
  br label %if.then

dev_is_sata.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp7.i.not = icmp eq i32 %7, 9
  %lock = getelementptr inbounds %struct.hisi_hba, ptr %5, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br i1 %cmp7.i.not, label %dev_is_sata.exit.if.then_crit_edge, label %dev_is_sata.exit.if.end3_crit_edge

dev_is_sata.exit.if.end3_crit_edge:               ; preds = %dev_is_sata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

dev_is_sata.exit.if.then_crit_edge:               ; preds = %dev_is_sata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %dev_is_sata.exit.if.then_crit_edge, %dev_is_sata.exit.thread
  %lock59 = phi ptr [ %lock55, %dev_is_sata.exit.thread ], [ %lock, %dev_is_sata.exit.if.then_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.hisi_hba, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %sata_dev_bitmap.i = getelementptr inbounds %struct.hisi_hba, ptr %5, i32 0, i32 49
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %sata_dev_bitmap.i, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %call.i)
  %cmp.i = icmp ugt i32 %call.i, 62
  br i1 %cmp.i, label %sata_index_alloc_v2_hw.exit, label %sata_index_alloc_v2_hw.exit.thread

sata_index_alloc_v2_hw.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %sata_dev_bitmap.i) #9
  br label %if.end3

sata_index_alloc_v2_hw.exit:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.130, i32 noundef %call.i) #12
  br label %out

if.end3:                                          ; preds = %sata_index_alloc_v2_hw.exit.thread, %dev_is_sata.exit.if.end3_crit_edge
  %tobool.not61 = phi i1 [ true, %dev_is_sata.exit.if.end3_crit_edge ], [ false, %sata_index_alloc_v2_hw.exit.thread ]
  %lock58 = phi ptr [ %lock, %dev_is_sata.exit.if.end3_crit_edge ], [ %lock59, %sata_index_alloc_v2_hw.exit.thread ]
  %sata_idx.1 = phi i32 [ -1, %dev_is_sata.exit.if.end3_crit_edge ], [ %call.i, %sata_index_alloc_v2_hw.exit.thread ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3
  %i.064 = phi i32 [ 0, %if.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  %and = and i32 %i.064, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not61, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %dev_type = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 5
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %if.then9, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064
  %queue_count = getelementptr inbounds %struct.hisi_hba, ptr %5, i32 0, i32 30
  %13 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %queue_count, align 4
  %rem = srem i32 %i.064, %14
  %arrayidx11 = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 27, i32 %rem
  %device_id = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 7
  %15 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.064, ptr %device_id, align 4
  %dev_status = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 6
  %16 = ptrtoint ptr %dev_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dev_status, align 4
  %17 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_type.i, align 4
  %19 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dev_type, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %arrayidx, align 4
  %sas_device = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 1
  %21 = ptrtoint ptr %sas_device to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %device, ptr %sas_device, align 4
  %sata_idx19 = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 8
  %22 = ptrtoint ptr %sata_idx19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sata_idx.1, ptr %sata_idx19, align 4
  %dq20 = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 3
  %23 = ptrtoint ptr %dq20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx11, ptr %dq20, align 4
  %lock21 = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock21, ptr noundef nonnull @.str.129, ptr noundef nonnull @alloc_dev_quirk_v2_hw.__key, i16 noundef signext 3) #9
  %list = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.hisi_hba, ptr %5, i32 0, i32 31, i32 %i.064, i32 4, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i, align 4
  br label %out

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then9, %sata_index_alloc_v2_hw.exit
  %lock57 = phi ptr [ %lock58, %if.then9 ], [ %lock59, %sata_index_alloc_v2_hw.exit ], [ %lock58, %for.inc.out_crit_edge ]
  %sas_dev.0 = phi ptr [ %arrayidx, %if.then9 ], [ null, %sata_index_alloc_v2_hw.exit ], [ null, %for.inc.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock57) #9
  ret ptr %sas_dev.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl_notify_ssp_v2_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 8340
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr2.i14 = getelementptr i8, ptr %add.ptr.i13, i32 8340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14, i32 %3) #9, !srcloc !357
  tail call void @msleep(i32 noundef 1) #9
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr2.i18 = getelementptr i8, ptr %add.ptr.i17, i32 8340
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 %mul.i
  %add.ptr2.i22 = getelementptr i8, ptr %add.ptr.i21, i32 8340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22, i32 %9) #9, !srcloc !357
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_delivery_v2_hw(ptr noundef readonly %dq) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !358
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %rem) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #9, !srcloc !357
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prep_ssp_v2_hw(ptr nocapture noundef readnone %hisi_hba, ptr nocapture noundef readonly %slot) #2 align 64 {
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
  %shl = shl nuw nsw i32 %conv, 18
  %shl5 = select i1 %tobool.not, i32 0, i32 134217728
  %or = or i32 %shl, %shl5
  %or7 = or i32 %or, 536871072
  %17 = tail call i32 @llvm.bswap.i32(i32 %or7)
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
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %20, label %sw.default [
    i32 1, label %if.else.if.end_crit_edge
    i32 2, label %sw.bb13
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb13, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool20.not = phi i1 [ false, %sw.bb13 ], [ true, %sw.default ], [ true, %entry.if.end_crit_edge ], [ false, %if.else.if.end_crit_edge ]
  %dw1.0 = phi i32 [ 3104, %sw.bb13 ], [ 3072, %sw.default ], [ 5120, %entry.if.end_crit_edge ], [ 3136, %if.else.if.end_crit_edge ]
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
  %dw218 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %dw218 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 218137346, ptr %dw218, align 8
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %idx, align 4
  %conv19 = zext i16 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv19)
  %transfer_tags = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %transfer_tags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %transfer_tags, align 4
  br i1 %tobool20.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.end
  %n_elem = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 4
  %31 = ptrtoint ptr %n_elem to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %n_elem, align 8
  %conv22 = trunc i64 %32 to i32
  %buf.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22)
  %cmp1.i = icmp sgt i32 %conv22, 0
  br i1 %cmp1.i, label %for.body.i.preheader, label %if.then21.prep_prd_sge_v2_hw.exit_crit_edge

if.then21.prep_prd_sge_v2_hw.exit_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_prd_sge_v2_hw.exit

for.body.i.preheader:                             ; preds = %if.then21
  %scatter = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scatter, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %sg.02.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %36, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [124 x %struct.hisi_sas_sge], ptr %add.ptr.i, i32 0, i32 %i.03.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %38 to i64
  %39 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #9
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx.i, align 8
  %page_ctrl_1.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 2
  %41 = ptrtoint ptr %page_ctrl_1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %page_ctrl_1.i, align 4
  %page_ctrl_0.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 1
  %42 = ptrtoint ptr %page_ctrl_0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %page_ctrl_0.i, align 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 4
  %43 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %data_len.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 3
  %46 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %data_len.i, align 8
  %data_off.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 4
  %47 = ptrtoint ptr %data_off.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %data_off.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.02.i) #9
  %exitcond.not.i = icmp eq i32 %inc.i, %conv22
  br i1 %exitcond.not.i, label %for.body.i.prep_prd_sge_v2_hw.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.prep_prd_sge_v2_hw.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_prd_sge_v2_hw.exit

prep_prd_sge_v2_hw.exit:                          ; preds = %for.body.i.prep_prd_sge_v2_hw.exit_crit_edge, %if.then21.prep_prd_sge_v2_hw.exit_crit_edge
  %buf_dma.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %48 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf_dma.i, align 8
  %add.i = add i32 %49, 1120
  %conv2.i = zext i32 %add.i to i64
  %50 = tail call i64 @llvm.bswap.i64(i64 %conv2.i) #9
  %prd_table_addr.i = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 10
  %51 = ptrtoint ptr %prd_table_addr.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %prd_table_addr.i, align 8
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv22) #9
  %53 = lshr i32 %52, 16
  %sg_len.i = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sg_len.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %prep_prd_sge_v2_hw.exit, %if.end.if.end23_crit_edge
  %total_xfer_len = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total_xfer_len, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %data_transfer_len = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 4
  %58 = ptrtoint ptr %data_transfer_len to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %data_transfer_len, align 8
  %buf_dma = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %59 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_dma, align 8
  %add = add i32 %60, 1040
  %conv24 = zext i32 %add to i64
  %61 = tail call i64 @llvm.bswap.i64(i64 %conv24)
  %cmd_table_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 8
  %62 = ptrtoint ptr %cmd_table_addr to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %cmd_table_addr, align 8
  %63 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_dma, align 8
  %conv27 = zext i32 %64 to i64
  %65 = tail call i64 @llvm.bswap.i64(i64 %conv27)
  %sts_buffer_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 9
  %66 = ptrtoint ptr %sts_buffer_addr to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %sts_buffer_addr, align 8
  %buf = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf, align 4
  %add.ptr28 = getelementptr i8, ptr %68, i32 1064
  %LUN = getelementptr inbounds %struct.sas_ssp_task, ptr %10, i32 0, i32 1
  %69 = ptrtoint ptr %LUN to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %LUN, align 1
  %71 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %add.ptr28, align 1
  br i1 %tobool.not, label %if.then30, label %if.else39

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %task_attr = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %72 = ptrtoint ptr %task_attr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %task_attr, align 4
  %task_prio = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 4
  %74 = ptrtoint ptr %task_prio to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %task_prio, align 4
  %conv31 = zext i8 %75 to i32
  %shl32 = shl nuw nsw i32 %conv31, 3
  %or33 = or i32 %shl32, %73
  %conv34 = trunc i32 %or33 to i8
  %arrayidx = getelementptr i8, ptr %68, i32 1073
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv34, ptr %arrayidx, align 1
  %add.ptr35 = getelementptr i8, ptr %68, i32 1076
  %77 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmd, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %78, i32 0, i32 14
  %81 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %cmd_len, align 4
  %conv38 = zext i16 %82 to i32
  %83 = call ptr @memcpy(ptr %add.ptr35, ptr %80, i32 %conv38)
  br label %if.end56

if.else39:                                        ; preds = %if.end23
  %tmf40 = getelementptr inbounds %struct.hisi_sas_tmf_task, ptr %14, i32 0, i32 2
  %84 = ptrtoint ptr %tmf40 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tmf40, align 4
  %arrayidx41 = getelementptr i8, ptr %68, i32 1074
  %86 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx41, align 1
  %87 = load i8, ptr %tmf40, align 4
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %87, label %if.else39.if.end56_crit_edge [
    i8 1, label %if.else39.sw.bb44_crit_edge
    i8 -128, label %if.else39.sw.bb44_crit_edge99
  ]

if.else39.sw.bb44_crit_edge99:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.else39.sw.bb44_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.else39.if.end56_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

sw.bb44:                                          ; preds = %if.else39.sw.bb44_crit_edge, %if.else39.sw.bb44_crit_edge99
  %tag_of_task_to_be_managed = getelementptr inbounds %struct.hisi_sas_tmf_task, ptr %14, i32 0, i32 3
  %89 = ptrtoint ptr %tag_of_task_to_be_managed to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tag_of_task_to_be_managed, align 2
  %91 = lshr i16 %90, 8
  %conv47 = trunc i16 %91 to i8
  %arrayidx48 = getelementptr i8, ptr %68, i32 1076
  %92 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv47, ptr %arrayidx48, align 1
  %93 = load i16, ptr %tag_of_task_to_be_managed, align 2
  %conv52 = trunc i16 %93 to i8
  %arrayidx53 = getelementptr i8, ptr %68, i32 1077
  %94 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv52, ptr %arrayidx53, align 1
  br label %if.end56

if.end56:                                         ; preds = %sw.bb44, %if.else39.if.end56_crit_edge, %if.then30
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @prep_smp_v2_hw(ptr nocapture noundef readnone %hisi_hba, ptr nocapture noundef readonly %slot) #3 align 64 {
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
  %dma_address = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length, align 4
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 1
  %conv = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv, 18
  %or4 = or i32 %shl, 1207959552
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %3, align 8
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_id, align 4
  %shl5 = shl i32 %19, 16
  %or6 = or i32 %shl5, 2048
  %20 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %dw1 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dw1, align 4
  %sub = add i32 %13, -4
  %div25 = lshr i32 %sub, 2
  %or9 = or i32 %div25, 8421376
  %22 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %dw2 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %dw2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dw2, align 8
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %idx, align 4
  %conv10 = zext i16 %25 to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv10)
  %transfer_tags = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %transfer_tags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %transfer_tags, align 4
  %conv12 = zext i32 %11 to i64
  %28 = tail call i64 @llvm.bswap.i64(i64 %conv12)
  %cmd_table_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %cmd_table_addr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %cmd_table_addr, align 8
  %buf_dma = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %30 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_dma, align 8
  %conv13 = zext i32 %31 to i64
  %32 = tail call i64 @llvm.bswap.i64(i64 %conv13)
  %sts_buffer_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %3, i32 0, i32 9
  %33 = ptrtoint ptr %sts_buffer_addr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %sts_buffer_addr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prep_ata_v2_hw(ptr nocapture noundef readnone %hisi_hba, ptr nocapture noundef readonly %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 64
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_dev, align 128
  %cmd_hdr = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 13
  %8 = ptrtoint ptr %cmd_hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_hdr, align 4
  %port = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %call = tail call ptr @to_hisi_sas_port(ptr noundef %11) #9
  %tmf3 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 17
  %12 = ptrtoint ptr %tmf3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmf3, align 8
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 1
  %conv = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv, 18
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_type, align 4
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ -2147483648, %if.else ], [ 1610612736, %land.lhs.true.if.end_crit_edge ]
  %or6 = or i32 %shl, %.sink
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %land.lhs.true8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true8:                                   ; preds = %if.end
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end15_crit_edge, label %if.then10

land.lhs.true8.if.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  %phy_id = getelementptr inbounds %struct.hisi_sas_tmf_task, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_id, align 4
  %shl13 = shl i32 256, %23
  %or11 = or i32 %or6, %shl13
  %or14 = or i32 %or11, 131072
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %dw0.1 = phi i32 [ %or14, %if.then10 ], [ %or6, %land.lhs.true8.if.end15_crit_edge ], [ %or6, %if.end.if.end15_crit_edge ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %dw0.1)
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %9, align 8
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv17 = zext i8 %bf.lshr to i32
  %27 = zext i32 %conv17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %conv17, label %sw.default [
    i32 1, label %if.end15.sw.epilog_crit_edge
    i32 2, label %sw.bb19
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %if.end15.sw.epilog_crit_edge
  %tobool60.not = phi i1 [ true, %sw.default ], [ false, %sw.bb19 ], [ false, %if.end15.sw.epilog_crit_edge ]
  %dw1.0 = phi i32 [ 0, %sw.default ], [ 32, %sw.bb19 ], [ 64, %if.end15.sw.epilog_crit_edge ]
  %28 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4
  %command = getelementptr inbounds %struct.host_to_dev_fis, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %command, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp = icmp eq i8 %30, 8
  br i1 %cmp, label %land.lhs.true23, label %sw.epilog.if.end30_crit_edge

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true23:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %control = getelementptr inbounds %struct.host_to_dev_fis, ptr %28, i32 0, i32 15
  %31 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %control, align 1
  %33 = shl i8 %32, 5
  %34 = and i8 %33, -128
  %35 = zext i8 %34 to i32
  %36 = or i32 %dw1.0, %35
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true23, %sw.epilog.if.end30_crit_edge
  %dw1.1 = phi i32 [ %dw1.0, %sw.epilog.if.end30_crit_edge ], [ %36, %land.lhs.true23 ]
  %call36 = tail call zeroext i8 @hisi_sas_get_ata_protocol(ptr noundef %28, i32 noundef %conv17) #9
  %conv37 = zext i8 %call36 to i32
  %shl38 = shl nuw nsw i32 %conv37, 11
  %or39 = or i32 %shl38, %dw1.1
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %7, i32 0, i32 7
  %37 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device_id, align 4
  %shl40 = shl i32 %38, 16
  %or41 = or i32 %or39, %shl40
  %39 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %dw142 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 1
  %40 = ptrtoint ptr %dw142 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dw142, align 4
  %use_ncq = getelementptr inbounds %struct.sas_ata_task, ptr %28, i32 0, i32 3
  %41 = ptrtoint ptr %use_ncq to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load43 = load i8, ptr %use_ncq, align 1
  %42 = and i8 %bf.load43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool45.not = icmp eq i8 %42, 0
  br i1 %tobool45.not, label %if.end30.if.end56_crit_edge, label %if.then46

if.end30.if.end56_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then46:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %uldd_task, align 4
  %tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tag, align 4
  %47 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %.tr = trunc i32 %46 to i8
  %50 = shl i8 %.tr, 3
  %conv53 = or i8 %50, %49
  store i8 %conv53, ptr %47, align 4
  %shl54 = shl i32 %46, 10
  %phi.bo = or i32 %shl54, 33554439
  br label %if.end56

if.end56:                                         ; preds = %if.then46, %if.end30.if.end56_crit_edge
  %dw2.0 = phi i32 [ %phi.bo, %if.then46 ], [ 33554439, %if.end30.if.end56_crit_edge ]
  %51 = tail call i32 @llvm.bswap.i32(i32 %dw2.0)
  %dw258 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 2
  %52 = ptrtoint ptr %dw258 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dw258, align 8
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %53 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %idx, align 4
  %conv59 = zext i16 %54 to i32
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv59)
  %transfer_tags = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 3
  %56 = ptrtoint ptr %transfer_tags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %transfer_tags, align 4
  br i1 %tobool60.not, label %if.end56.if.end63_crit_edge, label %if.then61

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then61:                                        ; preds = %if.end56
  %n_elem = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 4
  %57 = ptrtoint ptr %n_elem to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %n_elem, align 8
  %conv62 = trunc i64 %58 to i32
  %buf.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %59 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv62)
  %cmp1.i = icmp sgt i32 %conv62, 0
  br i1 %cmp1.i, label %for.body.i.preheader, label %if.then61.prep_prd_sge_v2_hw.exit_crit_edge

if.then61.prep_prd_sge_v2_hw.exit_crit_edge:      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_prd_sge_v2_hw.exit

for.body.i.preheader:                             ; preds = %if.then61
  %scatter = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scatter, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %sg.02.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %62, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [124 x %struct.hisi_sas_sge], ptr %add.ptr.i, i32 0, i32 %i.03.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 3
  %63 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %64 to i64
  %65 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #9
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx.i, align 8
  %page_ctrl_1.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 2
  %67 = ptrtoint ptr %page_ctrl_1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %page_ctrl_1.i, align 4
  %page_ctrl_0.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 1
  %68 = ptrtoint ptr %page_ctrl_0.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %page_ctrl_0.i, align 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 4
  %69 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_length.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  %data_len.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 3
  %72 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %data_len.i, align 8
  %data_off.i = getelementptr inbounds %struct.hisi_sas_sge, ptr %arrayidx.i, i32 0, i32 4
  %73 = ptrtoint ptr %data_off.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %data_off.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.02.i) #9
  %exitcond.not.i = icmp eq i32 %inc.i, %conv62
  br i1 %exitcond.not.i, label %for.body.i.prep_prd_sge_v2_hw.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.prep_prd_sge_v2_hw.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prep_prd_sge_v2_hw.exit

prep_prd_sge_v2_hw.exit:                          ; preds = %for.body.i.prep_prd_sge_v2_hw.exit_crit_edge, %if.then61.prep_prd_sge_v2_hw.exit_crit_edge
  %buf_dma.i = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %74 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_dma.i, align 8
  %add.i = add i32 %75, 1120
  %conv2.i = zext i32 %add.i to i64
  %76 = tail call i64 @llvm.bswap.i64(i64 %conv2.i) #9
  %prd_table_addr.i = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 10
  %77 = ptrtoint ptr %prd_table_addr.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %prd_table_addr.i, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %conv62) #9
  %79 = lshr i32 %78, 16
  %sg_len.i = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 6
  %80 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %sg_len.i, align 8
  br label %if.end63

if.end63:                                         ; preds = %prep_prd_sge_v2_hw.exit, %if.end56.if.end63_crit_edge
  %total_xfer_len = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 7
  %81 = ptrtoint ptr %total_xfer_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %total_xfer_len, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %data_transfer_len = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 4
  %84 = ptrtoint ptr %data_transfer_len to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %data_transfer_len, align 8
  %buf_dma = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 19
  %85 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_dma, align 8
  %add = add i32 %86, 1040
  %conv64 = zext i32 %add to i64
  %87 = tail call i64 @llvm.bswap.i64(i64 %conv64)
  %cmd_table_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 8
  %88 = ptrtoint ptr %cmd_table_addr to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %cmd_table_addr, align 8
  %89 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buf_dma, align 8
  %conv67 = zext i32 %90 to i64
  %91 = tail call i64 @llvm.bswap.i64(i64 %conv67)
  %sts_buffer_addr = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %9, i32 0, i32 9
  %92 = ptrtoint ptr %sts_buffer_addr to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %sts_buffer_addr, align 8
  %buf = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %93 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buf, align 4
  %95 = ptrtoint ptr %use_ncq to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load68 = load i8, ptr %use_ncq, align 1
  %96 = and i8 %bf.load68, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool71.not = icmp eq i8 %96, 0
  br i1 %tobool71.not, label %if.then75, label %if.end63.if.end80_crit_edge, !prof !360

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then75:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.host_to_dev_fis, ptr %28, i32 0, i32 1
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags, align 1
  %99 = or i8 %98, -128
  store i8 %99, ptr %flags, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end63.if.end80_crit_edge
  %add.ptr = getelementptr i8, ptr %94, i32 1040
  %100 = call ptr @memcpy(ptr %add.ptr, ptr %28, i32 20)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prep_abort_v2_hw(ptr nocapture noundef readnone %hisi_hba, ptr noundef %slot, i32 noundef %device_id, i32 noundef %abort_flag, i32 noundef %tag_to_abort) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmd_hdr = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 13
  %4 = ptrtoint ptr %cmd_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_hdr, align 4
  %port3 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 3
  %6 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port3, align 4
  %internal_abort_timer = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %internal_abort_timer, ptr noundef nonnull @hisi_sas_internal_abort_quirk_timeout, i32 noundef 0, ptr noundef nonnull @.str.132, ptr noundef nonnull @prep_abort_v2_hw.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 10
  %call4 = tail call i32 @mod_timer(ptr noundef %internal_abort_timer, i32 noundef %add) #9
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 1
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %12, label %lor.rhs.i [
    i32 5, label %entry.dev_is_sata.exit_crit_edge
    i32 7, label %entry.dev_is_sata.exit_crit_edge21
    i32 8, label %entry.dev_is_sata.exit_crit_edge22
  ]

entry.dev_is_sata.exit_crit_edge22:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit

entry.dev_is_sata.exit_crit_edge21:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit

entry.dev_is_sata.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_is_sata.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %cmp7.i = icmp eq i32 %12, 9
  %phi.bo = select i1 %cmp7.i, i32 4, i32 0
  br label %dev_is_sata.exit

dev_is_sata.exit:                                 ; preds = %lor.rhs.i, %entry.dev_is_sata.exit_crit_edge, %entry.dev_is_sata.exit_crit_edge21, %entry.dev_is_sata.exit_crit_edge22
  %14 = phi i32 [ 4, %entry.dev_is_sata.exit_crit_edge ], [ %phi.bo, %lor.rhs.i ], [ 4, %entry.dev_is_sata.exit_crit_edge21 ], [ 4, %entry.dev_is_sata.exit_crit_edge22 ]
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 18
  %or = or i32 %14, %shl
  %or7 = or i32 %or, %abort_flag
  %or9 = or i32 %or7, -1610612736
  %15 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %5, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %device_id)
  %18 = lshr i32 %17, 16
  %dw1 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dw1, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %tag_to_abort)
  %21 = lshr i32 %20, 16
  %dw7 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %dw7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dw7, align 4
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx, align 4
  %conv12 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv12)
  %transfer_tags = getelementptr inbounds %struct.hisi_sas_cmd_hdr, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %transfer_tags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %transfer_tags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phys_init_v2_hw(ptr noundef %hisi_hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_phy = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %0 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %phy3 = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %i.011, i32 3, i32 4
  %2 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy3, align 4
  %enabled = getelementptr inbounds %struct.sas_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hisi_sas_phy_enable(ptr noundef %hisi_hba, i32 noundef %i.011, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %6 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_phy, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_phy_v2_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no) #2 align 64 {
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
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 268504576) #9, !srcloc !357
  %4 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %add.ptr2.i39.i = getelementptr i8, ptr %add.ptr.i38.i, i32 8352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39.i, i32 %identify_frame.sroa.15.4.copyload.i) #9, !srcloc !357
  %6 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr2.i43.i = getelementptr i8, ptr %add.ptr.i42.i, i32 8356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i43.i, i32 %identify_frame.sroa.21.4.copyload.i) #9, !srcloc !357
  %8 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %add.ptr2.i47.i = getelementptr i8, ptr %add.ptr.i46.i, i32 8360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i47.i, i32 %identify_frame.sroa.15.4.copyload.i) #9, !srcloc !357
  %10 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %add.ptr2.i51.i = getelementptr i8, ptr %add.ptr.i50.i, i32 8364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i51.i, i32 %identify_frame.sroa.21.4.copyload.i) #9, !srcloc !357
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %13, i32 %mul.i.i
  %add.ptr2.i55.i = getelementptr i8, ptr %add.ptr.i54.i, i32 8368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %14 = shl i32 %phy_no, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i55.i, i32 %14) #9, !srcloc !357
  %15 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %16, i32 %mul.i.i
  %add.ptr2.i.i8 = getelementptr i8, ptr %add.ptr.i.i7, i32 8192
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i8) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %18 = or i32 %17, 67108864
  %19 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %20, i32 %mul.i.i
  %add.ptr2.i8.i = getelementptr i8, ptr %add.ptr.i7.i, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i, i32 %18) #9, !srcloc !357
  %21 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %22, i32 %mul.i.i
  %add.ptr2.i.i12 = getelementptr i8, ptr %add.ptr.i.i11, i32 8192
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i12) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %24 = or i32 %23, 16777216
  %25 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %26, i32 %mul.i.i
  %add.ptr2.i7.i = getelementptr i8, ptr %add.ptr.i6.i, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7.i, i32 %24) #9, !srcloc !357
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disable_phy_v2_hw(ptr noundef %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20480
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %or = or i32 %5, 1
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 20480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %8) #9, !srcloc !357
  %9 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !354
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shl.i = shl nuw i32 1, %phy_no
  %and.i = and i32 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i52 = getelementptr i8, ptr %14, i32 %mul.i
  br i1 %tobool.not.i.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i52, i32 8708
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then.do_disable_crit_edge, label %if.end.i

if.then.do_disable_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_disable

if.end.i:                                         ; preds = %if.then
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i
  %cmp45.i.i = phi i1 [ true, %if.end.i ], [ %cmp.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.044.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %20, i32 20816
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #9, !srcloc !354
  %22 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %23, i32 20736
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %25 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %26, i32 %mul.i
  %add.ptr2.i.i14.i = getelementptr i8, ptr %add.ptr.i33.i.i, i32 8708
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i14.i) #9, !srcloc !354
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %29 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i36.i.i = getelementptr i8, ptr %30, i32 %mul.i
  %add.ptr2.i37.i.i = getelementptr i8, ptr %add.ptr.i36.i.i, i32 8768
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i37.i.i) #9, !srcloc !354
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %21)
  %cmp5.i.i = icmp ne i32 %21, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.i.i = icmp ne i32 %24, 0
  %or.cond.i.i = select i1 %cmp5.i.i, i1 true, i1 %cmp6.i.i
  %and.i.i = and i32 %28, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i15.i = icmp eq i32 %and.i.i, 0
  %or.cond28.i.i = select i1 %or.cond.i.i, i1 true, i1 %tobool.not.i15.i
  %and9.i.i = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %or.cond29.i.i = select i1 %or.cond28.i.i, i1 true, i1 %tobool10.not.i.i
  br i1 %or.cond29.i.i, label %if.end.i.i, label %axi_bus_is_idle_v2_hw.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #9
  %inc.i.i = add nuw nsw i32 %i.044.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.044.i.i)
  %cmp.i.i = icmp ult i32 %i.044.i.i, 999
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.135, i32 noundef %phy_no, i32 noundef %35, i32 noundef %34, i32 noundef %28, i32 noundef %32) #12
  br label %if.end

axi_bus_is_idle_v2_hw.exit.i:                     ; preds = %for.body.i.i
  br i1 %cmp45.i.i, label %if.end3.i, label %axi_bus_is_idle_v2_hw.exit.i.if.end_crit_edge

axi_bus_is_idle_v2_hw.exit.i.if.end_crit_edge:    ; preds = %axi_bus_is_idle_v2_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end3.i:                                        ; preds = %axi_bus_is_idle_v2_hw.exit.i
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  %38 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i1938.i = getelementptr i8, ptr %39, i32 %mul.i
  %add.ptr2.i.i2039.i = getelementptr i8, ptr %add.ptr.i.i1938.i, i32 8804
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i2039.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %41 = and i32 %40, -1069613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %41)
  %cmp2.not.i40.i = icmp eq i32 %41, 1073741824
  br i1 %cmp2.not.i40.i, label %if.end.i23.i.preheader, label %if.end3.i.do_disable_crit_edge

if.end3.i.do_disable_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_disable

if.end.i23.i.preheader:                           ; preds = %if.end3.i
  %42 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i22.i.i87 = getelementptr i8, ptr %43, i32 %mul.i
  %add.ptr2.i23.i.i88 = getelementptr i8, ptr %add.ptr.i22.i.i87, i32 8704
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i23.i.i88) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %45 = and i32 %44, -16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %45)
  %cmp5.i22.i90 = icmp eq i32 %45, 33554432
  br i1 %cmp5.i22.i90, label %if.end.i23.i.preheader.do_disable_crit_edge, label %if.end7.i.i.preheader

if.end.i23.i.preheader.do_disable_crit_edge:      ; preds = %if.end.i23.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_disable

if.end7.i.i.preheader:                            ; preds = %if.end.i23.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #9
  br label %for.body.i21.i

for.body.i21.i:                                   ; preds = %if.end7.i.i.for.body.i21.i_crit_edge, %if.end7.i.i.preheader
  %inc.i24.i125 = phi i32 [ 1, %if.end7.i.i.preheader ], [ %inc.i24.i, %if.end7.i.i.for.body.i21.i_crit_edge ]
  %i.028.i42.i91124 = phi i32 [ 0, %if.end7.i.i.preheader ], [ %inc.i24.i125, %if.end7.i.i.for.body.i21.i_crit_edge ]
  %47 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %48, i32 %mul.i
  %add.ptr2.i.i20.i = getelementptr i8, ptr %add.ptr.i.i19.i, i32 8804
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i20.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %50 = and i32 %49, -1069613056
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %50)
  %cmp2.not.i.i = icmp eq i32 %50, 1073741824
  br i1 %cmp2.not.i.i, label %if.end.i23.i, label %for.body.i21.i.allowed_disable_phy_v2_hw.exit_crit_edge

for.body.i21.i.allowed_disable_phy_v2_hw.exit_crit_edge: ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %allowed_disable_phy_v2_hw.exit

if.end.i23.i:                                     ; preds = %for.body.i21.i
  %51 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %52, i32 %mul.i
  %add.ptr2.i23.i.i = getelementptr i8, ptr %add.ptr.i22.i.i, i32 8704
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i23.i.i) #9, !srcloc !354
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %and4.i.i = and i32 %54, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4.i.i)
  %cmp5.i22.i = icmp eq i32 %and4.i.i, 2
  br i1 %cmp5.i22.i, label %if.end.i23.i.allowed_disable_phy_v2_hw.exit_crit_edge, label %if.end7.i.i

if.end.i23.i.allowed_disable_phy_v2_hw.exit_crit_edge: ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %allowed_disable_phy_v2_hw.exit

if.end7.i.i:                                      ; preds = %if.end.i23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #9
  %inc.i24.i = add nuw nsw i32 %inc.i24.i125, 1
  %exitcond.not.i26.i = icmp eq i32 %inc.i24.i, 1000
  br i1 %exitcond.not.i26.i, label %do.end.i27.i, label %if.end7.i.i.for.body.i21.i_crit_edge

if.end7.i.i.for.body.i21.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21.i

do.end.i27.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.137, i32 noundef %phy_no, i32 noundef 1, i32 noundef %54) #12
  br label %if.end

allowed_disable_phy_v2_hw.exit:                   ; preds = %if.end.i23.i.allowed_disable_phy_v2_hw.exit_crit_edge, %for.body.i21.i.allowed_disable_phy_v2_hw.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.028.i42.i91124)
  %cmp.i25.i.le = icmp ult i32 %i.028.i42.i91124, 999
  br i1 %cmp.i25.i.le, label %allowed_disable_phy_v2_hw.exit.do_disable_crit_edge, label %allowed_disable_phy_v2_hw.exit.if.end_crit_edge

allowed_disable_phy_v2_hw.exit.if.end_crit_edge:  ; preds = %allowed_disable_phy_v2_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

allowed_disable_phy_v2_hw.exit.do_disable_crit_edge: ; preds = %allowed_disable_phy_v2_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_disable

if.end:                                           ; preds = %allowed_disable_phy_v2_hw.exit.if.end_crit_edge, %do.end.i27.i, %axi_bus_is_idle_v2_hw.exit.i.if.end_crit_edge, %do.end.i.i
  %wq = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 18
  %56 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wq, align 4
  %rst_work = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 50
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %rst_work) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i52, i32 8792
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %59 = and i32 %58, -1071710208
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %59)
  %cmp.not = icmp eq i32 %59, 65536
  br i1 %cmp.not, label %if.end9, label %if.end6.do_disable_crit_edge

if.end6.do_disable_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_disable

if.end9:                                          ; preds = %if.end6
  %60 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %61, i32 %mul.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i54, i32 8708
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i55 = icmp eq i32 %63, 0
  br i1 %tobool.not.i55, label %if.end9.do_disable_crit_edge, label %do.end

if.end9.do_disable_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_disable

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.133, i32 noundef %phy_no) #12
  %64 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %65, i32 %mul.i
  %add.ptr2.i59 = getelementptr i8, ptr %add.ptr.i58, i32 8376
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i59) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %67 = or i32 %66, 524288
  %68 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %69, i32 %mul.i
  %add.ptr2.i63 = getelementptr i8, ptr %add.ptr.i62, i32 8376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i63, i32 %67) #9, !srcloc !357
  br label %do_disable

do_disable:                                       ; preds = %do.end, %if.end9.do_disable_crit_edge, %if.end6.do_disable_crit_edge, %allowed_disable_phy_v2_hw.exit.do_disable_crit_edge, %if.end.i23.i.preheader.do_disable_crit_edge, %if.end3.i.do_disable_crit_edge, %if.then.do_disable_crit_edge
  %70 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %71, i32 %mul.i
  %add.ptr2.i67 = getelementptr i8, ptr %add.ptr.i66, i32 8192
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i67) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %73 = and i32 %72, -16777217
  %74 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %75, i32 %mul.i
  %add.ptr2.i71 = getelementptr i8, ptr %add.ptr.i70, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i71, i32 %73) #9, !srcloc !357
  %and17 = and i32 %5, -2
  %76 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %77, i32 20480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %78 = tail call i32 @llvm.bswap.i32(i32 %and17) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %78) #9, !srcloc !357
  br label %cleanup

cleanup:                                          ; preds = %do_disable, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_hard_reset_v2_hw(ptr noundef %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hisi_sas_phy_enable(ptr noundef %hisi_hba, i32 noundef %phy_no, i32 noundef 0) #9
  %identify = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 4
  %0 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 8376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %5 = or i32 %4, 67108864
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr2.i13 = getelementptr i8, ptr %add.ptr.i12, i32 8376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i13, i32 %5) #9, !srcloc !357
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @msleep(i32 noundef 100) #9
  tail call void @hisi_sas_phy_enable(ptr noundef %hisi_hba, i32 noundef %phy_no, i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_get_events_v2_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy3 = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 3, i32 4
  %0 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy3, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 8848
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr2.i24 = getelementptr i8, ptr %add.ptr.i23, i32 8856
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i24) #9, !srcloc !354
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %shr = lshr i32 %5, 16
  %loss_of_dword_sync_count = getelementptr inbounds %struct.sas_phy, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %loss_of_dword_sync_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loss_of_dword_sync_count, align 4
  %add = add i32 %11, %shr
  store i32 %add, ptr %loss_of_dword_sync_count, align 4
  %and5 = and i32 %5, 65535
  %phy_reset_problem_count = getelementptr inbounds %struct.sas_phy, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %phy_reset_problem_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_reset_problem_count, align 8
  %add6 = add i32 %13, %and5
  store i32 %add6, ptr %phy_reset_problem_count, align 8
  %and7 = lshr i32 %9, 16
  %shr8 = and i32 %and7, 255
  %invalid_dword_count = getelementptr inbounds %struct.sas_phy, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %invalid_dword_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %invalid_dword_count, align 4
  %add9 = add i32 %15, %shr8
  store i32 %add9, ptr %invalid_dword_count, align 4
  %and10 = and i32 %9, 255
  %running_disparity_error_count = getelementptr inbounds %struct.sas_phy, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %running_disparity_error_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %running_disparity_error_count, align 8
  %add11 = add i32 %17, %and10
  store i32 %add11, ptr %running_disparity_error_count, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_set_linkrate_v2_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %phy_no, ptr nocapture noundef readonly %r) #2 align 64 {
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
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 8200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #9, !srcloc !357
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phy_get_max_linkrate_v2_hw() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_itct_v2_hw(ptr nocapture noundef readonly %hisi_hba, ptr nocapture noundef %sas_dev) #2 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #9
  %0 = getelementptr inbounds i8, ptr %completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @init_completion.__key) #9
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 7
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_id, align 4
  %itct1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 38
  %5 = ptrtoint ptr %itct1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %itct1, align 8
  %arrayidx = getelementptr %struct.hisi_sas_itct, ptr %6, i32 %4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 448
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %dev2 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %completion3 = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 2
  %12 = ptrtoint ptr %completion3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %completion, ptr %completion3, align 4
  %13 = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %15, i32 448
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 8388608) #9, !srcloc !357
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = and i32 %4, 2047
  %17 = or i32 %16, 65536
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %20, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %18) #9, !srcloc !357
  %21 = ptrtoint ptr %completion3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %completion3, align 4
  %call8 = call i32 @wait_for_completion_timeout(ptr noundef %22, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.do.end_crit_edge, label %if.end11

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end11.do.end_crit_edge, %if.end.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.139) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %23 = call ptr @memset(ptr %arrayidx, i32 0, i32 128)
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i30.1 = getelementptr i8, ptr %25, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.1, i32 %18) #9, !srcloc !357
  %26 = ptrtoint ptr %completion3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %completion3, align 4
  %call8.1 = call i32 @wait_for_completion_timeout(ptr noundef %27, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.end11.do.end_crit_edge, label %if.end11.1

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end11.1:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memset(ptr %arrayidx, i32 0, i32 128)
  br label %cleanup

cleanup:                                          ; preds = %if.end11.1, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end11.1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_device_v2_hw(ptr nocapture noundef readonly %sas_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_device = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 1
  %0 = ptrtoint ptr %sas_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sas_device, align 4
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 5, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge5
    i32 8, label %entry.if.then_crit_edge6
    i32 9, label %entry.if.then_crit_edge7
  ]

entry.if.then_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge5, %entry.if.then_crit_edge6, %entry.if.then_crit_edge7
  %5 = ptrtoint ptr %sas_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sas_dev, align 4
  %sata_idx = getelementptr inbounds %struct.hisi_sas_device, ptr %sas_dev, i32 0, i32 8
  %7 = ptrtoint ptr %sata_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sata_idx, align 4
  %sata_dev_bitmap = getelementptr inbounds %struct.hisi_hba, ptr %6, i32 0, i32 49
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %sata_dev_bitmap) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_wideport_bitmap_v2_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %port_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #9, !srcloc !354
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %n_phy = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %8 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp342 = icmp sgt i32 %9, 0
  br i1 %cmp342, label %for.body.preheader, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

for.body.preheader:                               ; preds = %entry
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 8)
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %3, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %port_id)
  %cmp5 = icmp eq i32 %and4, %port_id
  %or = zext i1 %cmp5 to i32
  %bitmap.1 = select i1 %tobool.not, i32 0, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %exitcond.not = icmp eq i32 %10, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %and.1 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %shr.1 = lshr i32 %3, 4
  %and4.1 = and i32 %shr.1, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.1, i32 %port_id)
  %cmp5.1 = icmp eq i32 %and4.1, %port_id
  %or.1 = select i1 %cmp5.1, i32 2, i32 0
  %spec.select37.1 = or i32 %or.1, %bitmap.1
  %bitmap.1.1 = select i1 %tobool.not.1, i32 %bitmap.1, i32 %spec.select37.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %exitcond.not.1 = icmp eq i32 %10, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %and.2 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %shr.2 = lshr i32 %3, 8
  %and4.2 = and i32 %shr.2, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.2, i32 %port_id)
  %cmp5.2 = icmp eq i32 %and4.2, %port_id
  %or.2 = select i1 %cmp5.2, i32 4, i32 0
  %spec.select37.2 = or i32 %or.2, %bitmap.1.1
  %bitmap.1.2 = select i1 %tobool.not.2, i32 %bitmap.1.1, i32 %spec.select37.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %exitcond.not.2 = icmp eq i32 %10, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %and.3 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %shr.3 = lshr i32 %3, 12
  %and4.3 = and i32 %shr.3, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.3, i32 %port_id)
  %cmp5.3 = icmp eq i32 %and4.3, %port_id
  %or.3 = select i1 %cmp5.3, i32 8, i32 0
  %spec.select37.3 = or i32 %or.3, %bitmap.1.2
  %bitmap.1.3 = select i1 %tobool.not.3, i32 %bitmap.1.2, i32 %spec.select37.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %exitcond.not.3 = icmp eq i32 %10, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %and.4 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %shr.4 = lshr i32 %3, 16
  %and4.4 = and i32 %shr.4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.4, i32 %port_id)
  %cmp5.4 = icmp eq i32 %and4.4, %port_id
  %or.4 = select i1 %cmp5.4, i32 16, i32 0
  %spec.select37.4 = or i32 %or.4, %bitmap.1.3
  %bitmap.1.4 = select i1 %tobool.not.4, i32 %bitmap.1.3, i32 %spec.select37.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %exitcond.not.4 = icmp eq i32 %10, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %and.5 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %shr.5 = lshr i32 %3, 20
  %and4.5 = and i32 %shr.5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.5, i32 %port_id)
  %cmp5.5 = icmp eq i32 %and4.5, %port_id
  %or.5 = select i1 %cmp5.5, i32 32, i32 0
  %spec.select37.5 = or i32 %or.5, %bitmap.1.4
  %bitmap.1.5 = select i1 %tobool.not.5, i32 %bitmap.1.4, i32 %spec.select37.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %exitcond.not.5 = icmp eq i32 %10, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  %and.6 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %shr.6 = lshr i32 %3, 24
  %and4.6 = and i32 %shr.6, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.6, i32 %port_id)
  %cmp5.6 = icmp eq i32 %and4.6, %port_id
  %or.6 = select i1 %cmp5.6, i32 64, i32 0
  %spec.select37.6 = or i32 %or.6, %bitmap.1.5
  %bitmap.1.6 = select i1 %tobool.not.6, i32 %bitmap.1.5, i32 %spec.select37.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %exitcond.not.6 = icmp eq i32 %10, 7
  br i1 %exitcond.not.6, label %for.body.6.for.end_crit_edge, label %for.body.7

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %and.7 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %shr.7 = lshr i32 %3, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7, i32 %port_id)
  %cmp5.7 = icmp eq i32 %shr.7, %port_id
  %or.7 = select i1 %cmp5.7, i32 128, i32 0
  %spec.select37.7 = or i32 %or.7, %bitmap.1.6
  %bitmap.1.7 = select i1 %tobool.not.7, i32 %bitmap.1.6, i32 %spec.select37.7
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %bitmap.1.lcssa = phi i32 [ %bitmap.1, %for.body.preheader.for.end_crit_edge ], [ %bitmap.1.1, %for.body.1.for.end_crit_edge ], [ %bitmap.1.2, %for.body.2.for.end_crit_edge ], [ %bitmap.1.3, %for.body.3.for.end_crit_edge ], [ %bitmap.1.4, %for.body.4.for.end_crit_edge ], [ %bitmap.1.5, %for.body.5.for.end_crit_edge ], [ %bitmap.1.6, %for.body.6.for.end_crit_edge ], [ %bitmap.1.7, %for.body.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp10 = icmp eq i32 %9, 9
  br i1 %cmp10, label %if.then11, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %and13 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %14 = lshr i32 %13, 8
  %shr17 = and i32 %14, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17, i32 %port_id)
  %cmp18 = icmp eq i32 %shr17, %port_id
  %or.cond = select i1 %tobool14.not, i1 %cmp18, i1 false
  %or20 = or i32 %bitmap.1.lcssa, 512
  %bitmap.2 = select i1 %or.cond, i32 %or20, i32 %bitmap.1.lcssa
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %for.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %bitmap.3 = phi i32 [ %bitmap.2, %if.then11 ], [ %bitmap.1.lcssa, %for.end.if.end23_crit_edge ], [ 0, %entry.if.end23_crit_edge ]
  ret i32 %bitmap.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soft_reset_v2_hw(ptr noundef %hisi_hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %platform_dev.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 1
  %2 = ptrtoint ptr %platform_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_dev.i, align 4
  %queue_count.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 30
  %4 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp45.i = icmp sgt i32 %5, 0
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %regs1.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.046.i, 2
  %add.i = add i32 %mul.i, 3216
  %6 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !357
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %8 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %regs1.i31.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %10 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %11, i32 452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 -1) #9, !srcloc !357
  %12 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %13, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 -1) #9, !srcloc !357
  %14 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %15, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 -1) #9, !srcloc !357
  %16 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %17, i32 492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 -1) #9, !srcloc !357
  %n_phy.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %18 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp247.i = icmp sgt i32 %19, 0
  br i1 %cmp247.i, label %for.end.i.for.body3.i_crit_edge, label %for.end.i.for.body9.i.preheader_crit_edge

for.end.i.for.body9.i.preheader_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i.preheader

for.end.i.for.body3.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.end.i.for.body3.i_crit_edge
  %i.148.i = phi i32 [ %inc5.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.end.i.for.body3.i_crit_edge ]
  %20 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i31.i, align 4
  %mul.i.i = shl i32 %i.148.i, 10
  %add.ptr.i40.i = getelementptr i8, ptr %21, i32 8644
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i40.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -1) #9, !srcloc !357
  %22 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %23, i32 8648
  %add.ptr2.i44.i = getelementptr i8, ptr %add.ptr.i43.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i44.i, i32 -1) #9, !srcloc !357
  %inc5.i = add nuw nsw i32 %i.148.i, 1
  %24 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_phy.i, align 4
  %cmp2.i = icmp slt i32 %inc5.i, %25
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.body9.i.preheader_crit_edge

for.body3.i.for.body9.i.preheader_crit_edge:      ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i.preheader

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.body9.i.preheader:                            ; preds = %for.body3.i.for.body9.i.preheader_crit_edge, %for.end.i.for.body9.i.preheader_crit_edge
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.i.preheader
  %i.249.i = phi i32 [ %inc11.i, %for.body9.i.for.body9.i_crit_edge ], [ 0, %for.body9.i.preheader ]
  %call.i = tail call i32 @platform_get_irq(ptr noundef %3, i32 noundef %i.249.i) #9
  tail call void @synchronize_irq(i32 noundef %call.i) #9
  %inc11.i = add nuw nsw i32 %i.249.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, 128
  br i1 %exitcond.not.i, label %interrupt_disable_v2_hw.exit, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i

interrupt_disable_v2_hw.exit:                     ; preds = %for.body9.i
  %26 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1.i31.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !357
  tail call void @hisi_sas_stop_phys(ptr noundef %hisi_hba) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #9
  %38 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 20480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !357
  %40 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %41, i32 20816
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %42)
  %cmp = icmp eq i32 %42, 50331648
  br i1 %cmp, label %interrupt_disable_v2_hw.exit.while.end7_crit_edge, label %if.end

interrupt_disable_v2_hw.exit.while.end7_crit_edge: ; preds = %interrupt_disable_v2_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end:                                           ; preds = %interrupt_disable_v2_hw.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #9
  %44 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.1 = getelementptr i8, ptr %45, i32 20816
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.1) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %46)
  %cmp.1 = icmp eq i32 %46, 50331648
  br i1 %cmp.1, label %if.end.while.end7_crit_edge, label %if.end.1

if.end.while.end7_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #9
  %48 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.2 = getelementptr i8, ptr %49, i32 20816
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.2) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %50)
  %cmp.2 = icmp eq i32 %50, 50331648
  br i1 %cmp.2, label %if.end.1.while.end7_crit_edge, label %if.end.2

if.end.1.while.end7_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #9
  %52 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.3 = getelementptr i8, ptr %53, i32 20816
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.3) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %54)
  %cmp.3 = icmp eq i32 %54, 50331648
  br i1 %cmp.3, label %if.end.2.while.end7_crit_edge, label %if.end.3

if.end.2.while.end7_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #9
  %56 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.4 = getelementptr i8, ptr %57, i32 20816
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.4) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %58)
  %cmp.4 = icmp eq i32 %58, 50331648
  br i1 %cmp.4, label %if.end.3.while.end7_crit_edge, label %if.end.4

if.end.3.while.end7_crit_edge:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #9
  %60 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.5 = getelementptr i8, ptr %61, i32 20816
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.5) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %62)
  %cmp.5 = icmp eq i32 %62, 50331648
  br i1 %cmp.5, label %if.end.4.while.end7_crit_edge, label %if.end.5

if.end.4.while.end7_crit_edge:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #9
  %64 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.6 = getelementptr i8, ptr %65, i32 20816
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.6) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %66)
  %cmp.6 = icmp eq i32 %66, 50331648
  br i1 %cmp.6, label %if.end.5.while.end7_crit_edge, label %if.end.6

if.end.5.while.end7_crit_edge:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #9
  %68 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.7 = getelementptr i8, ptr %69, i32 20816
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.7) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %70)
  %cmp.7 = icmp eq i32 %70, 50331648
  br i1 %cmp.7, label %if.end.6.while.end7_crit_edge, label %if.end.7

if.end.6.while.end7_crit_edge:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #9
  %72 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.8 = getelementptr i8, ptr %73, i32 20816
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.8) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %74)
  %cmp.8 = icmp eq i32 %74, 50331648
  br i1 %cmp.8, label %if.end.7.while.end7_crit_edge, label %if.end.8

if.end.7.while.end7_crit_edge:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #9
  %76 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.9 = getelementptr i8, ptr %77, i32 20816
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.9) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %78)
  %cmp.9 = icmp eq i32 %78, 50331648
  br i1 %cmp.9, label %if.end.8.while.end7_crit_edge, label %if.end.9

if.end.8.while.end7_crit_edge:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.9:                                         ; preds = %if.end.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 2147480) #9
  %80 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.10 = getelementptr i8, ptr %81, i32 20816
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.10) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %82)
  %cmp.10 = icmp eq i32 %82, 50331648
  br i1 %cmp.10, label %if.end.9.while.end7_crit_edge, label %if.end.10

if.end.9.while.end7_crit_edge:                    ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.10:                                        ; preds = %if.end.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 2147480) #9
  %84 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i26.11 = getelementptr i8, ptr %85, i32 20816
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.11) #9, !srcloc !354
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %86)
  %cmp.11 = icmp eq i32 %86, 50331648
  br i1 %cmp.11, label %if.end.10.while.end7_crit_edge, label %if.end.11

if.end.10.while.end7_crit_edge:                   ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end7

if.end.11:                                        ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.142) #12
  br label %cleanup12

while.end7:                                       ; preds = %if.end.10.while.end7_crit_edge, %if.end.9.while.end7_crit_edge, %if.end.8.while.end7_crit_edge, %if.end.7.while.end7_crit_edge, %if.end.6.while.end7_crit_edge, %if.end.5.while.end7_crit_edge, %if.end.4.while.end7_crit_edge, %if.end.3.while.end7_crit_edge, %if.end.2.while.end7_crit_edge, %if.end.1.while.end7_crit_edge, %if.end.while.end7_crit_edge, %interrupt_disable_v2_hw.exit.while.end7_crit_edge
  tail call void @hisi_sas_init_mem(ptr noundef %hisi_hba) #9
  %call8 = tail call fastcc i32 @hw_init_v2_hw(ptr noundef %hisi_hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %while.end7.cleanup12_crit_edge

while.end7.cleanup12_crit_edge:                   ; preds = %while.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup12

if.end11:                                         ; preds = %while.end7
  %88 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_phy.i, align 4
  %notmask.i = shl nsw i32 -1, %89
  %sub.i = xor i32 %notmask.i, -1
  %reject_stp_links_msk.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 23
  %90 = ptrtoint ptr %reject_stp_links_msk.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub.i, ptr %reject_stp_links_msk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp16.i = icmp sgt i32 %89, 0
  br i1 %cmp16.i, label %if.end11.for.body.i33_crit_edge, label %if.end11.cleanup12_crit_edge

if.end11.cleanup12_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup12

if.end11.for.body.i33_crit_edge:                  ; preds = %if.end11
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.inc.i.for.body.i33_crit_edge, %if.end11.for.body.i33_crit_edge
  %phy_no.017.i = phi i32 [ %inc.i34, %for.inc.i.for.body.i33_crit_edge ], [ 0, %if.end11.for.body.i33_crit_edge ]
  %91 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs1.i31.i, align 4
  %mul.i.i30 = shl i32 %phy_no.017.i, 10
  %add.ptr.i.i31 = getelementptr i8, ptr %92, i32 8472
  %add.ptr2.i.i32 = getelementptr i8, ptr %add.ptr.i.i31, i32 %mul.i.i30
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i32) #9, !srcloc !354
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %and.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i33.for.inc.i_crit_edge, label %if.end.i

for.body.i33.for.inc.i_crit_edge:                 ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  %and2.i = and i32 %94, -2
  %95 = ptrtoint ptr %regs1.i31.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs1.i31.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %96, i32 8472
  %add.ptr2.i15.i = getelementptr i8, ptr %add.ptr.i14.i, i32 %mul.i.i30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %97 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i15.i, i32 %97) #9, !srcloc !357
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i33.for.inc.i_crit_edge
  %inc.i34 = add nuw nsw i32 %phy_no.017.i, 1
  %98 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %n_phy.i, align 4
  %cmp.i35 = icmp slt i32 %inc.i34, %99
  br i1 %cmp.i35, label %for.inc.i.for.body.i33_crit_edge, label %for.inc.i.cleanup12_crit_edge

for.inc.i.cleanup12_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup12

for.inc.i.for.body.i33_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i33

cleanup12:                                        ; preds = %for.inc.i.cleanup12_crit_edge, %if.end11.cleanup12_crit_edge, %while.end7.cleanup12_crit_edge, %if.end.11
  %retval.2 = phi i32 [ %call8, %while.end7.cleanup12_crit_edge ], [ -1, %if.end.11 ], [ 0, %if.end11.cleanup12_crit_edge ], [ 0, %for.inc.i.cleanup12_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_phys_state_v2_hw(ptr nocapture noundef readonly %hisi_hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_gpio_v2_hw(ptr nocapture noundef readonly %hisi_hba, i8 noundef zeroext %reg_type, i8 noundef zeroext %reg_index, i8 noundef zeroext %reg_count, ptr nocapture noundef readonly %write_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %sgpio_regs = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 6
  %2 = ptrtoint ptr %sgpio_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgpio_regs, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %reg_type)
  %cond17 = icmp eq i8 %reg_type, 3
  br i1 %cond17, label %sw.bb, label %do.end13

sw.bb:                                            ; preds = %if.end
  %conv2 = zext i8 %reg_count to i32
  %mul = shl nuw nsw i32 %conv2, 2
  %n_phy = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %4 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_phy, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp429 = icmp sgt i32 %6, 0
  br i1 %cmp429, label %for.body.lr.ph, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb
  %conv7 = zext i8 %reg_index to i32
  %mul8 = shl nuw nsw i32 %conv7, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %phy_no.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %sgpio_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgpio_regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %mul8
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %phy_no.030
  %add = add nuw nsw i32 %phy_no.030, 3
  %rem = and i32 %phy_no.030, 3
  %mul10.neg = mul nsw i32 %rem, -2
  %sub = add i32 %add, %mul10.neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr i8, ptr %write_data, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %10) #9, !srcloc !363
  %inc = add nuw nsw i32 %phy_no.030, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %reg_type to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %for.body.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wait_cmds_complete_timeout_v2_hw(ptr nocapture noundef readonly %hisi_hba, i32 noundef %delay_ms, i32 noundef %timeout_ms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_ms)
  %cmp44 = icmp sgt i32 %timeout_ms, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %entries_old.046 = phi i32 [ 0, %for.body.lr.ph ], [ %5, %if.end.for.body_crit_edge ]
  %time.045 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 584
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %entries_old.046)
  %cmp2 = icmp eq i32 %5, %entries_old.046
  br i1 %cmp2, label %do.body11, label %if.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef %delay_ms) #9
  %add = add i32 %time.045, %delay_ms
  %cmp = icmp slt i32 %add, %timeout_ms
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_cmds_complete_timeout_v2_hw, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !364

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.147) #9
  br label %cleanup

do.body11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_cmds_complete_timeout_v2_hw, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !364

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.148, i32 noundef %time.045) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body11, %if.then8, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_init_v2_hw(ptr noundef readonly %hisi_hba) unnamed_addr #2 align 64 {
entry:
  %signal.i = alloca [3 x i32], align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !365
  %n_phy.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %3 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.i = icmp eq i32 %4, 9
  %..i = select i1 %cmp.i, i32 2097151, i32 524287
  %regs1.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %5 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !357
  %7 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3153.i = icmp sgt i32 %8, 0
  br i1 %cmp3153.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.0154.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i.i, align 4
  %mul.i.i = shl i32 %i.0154.i, 10
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8192
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %12 = and i32 %11, -16777217
  %13 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %14, i32 8192
  %add.ptr2.i137.i = getelementptr i8, ptr %add.ptr.i136.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i137.i, i32 %12) #9, !srcloc !357
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %15 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_phy.i, align 4
  %cmp3.i = icmp slt i32 %inc.i, %16
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #9
  %18 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6155.i = icmp sgt i32 %19, 0
  br i1 %cmp6155.i, label %for.end.i.for.body7.i_crit_edge, label %for.end.i.for.end22.i_crit_edge

for.end.i.for.end22.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22.i

for.end.i.for.body7.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc20.i.for.body7.i_crit_edge, %for.end.i.for.body7.i_crit_edge
  %i.1156.i = phi i32 [ %inc21.i, %for.inc20.i.for.body7.i_crit_edge ], [ 0, %for.end.i.for.body7.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %20, 100
  %mul.i139.i = shl i32 %i.1156.i, 10
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end15.i.while.cond.i_crit_edge, %for.body7.i
  %21 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %22, i32 %mul.i139.i
  %add.ptr2.i141.i = getelementptr i8, ptr %add.ptr.i140.i, i32 8912
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i141.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %24 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %25, i32 %mul.i139.i
  %add.ptr2.i145.i = getelementptr i8, ptr %add.ptr.i144.i, i32 8936
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i145.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %27 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  %28 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not.i = icmp eq i32 %28, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool13.not.i, i1 false
  br i1 %or.cond.i, label %for.inc20.i, label %if.end15.i

if.end15.i:                                       ; preds = %while.cond.i
  tail call void @msleep(i32 noundef 20) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %29
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %if.end15.i.do.end_crit_edge, label %if.end15.i.while.cond.i_crit_edge

if.end15.i.while.cond.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc20.i:                                      ; preds = %while.cond.i
  %inc21.i = add nuw nsw i32 %i.1156.i, 1
  %30 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_phy.i, align 4
  %cmp6.i = icmp slt i32 %inc21.i, %31
  br i1 %cmp6.i, label %for.inc20.i.for.body7.i_crit_edge, label %for.inc20.i.for.end22.i_crit_edge

for.inc20.i.for.end22.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22.i

for.inc20.i.for.body7.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i

for.end22.i:                                      ; preds = %for.inc20.i.for.end22.i_crit_edge, %for.end.i.for.end22.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add24.i = add i32 %32, 100
  br label %while.cond25.i

while.cond25.i:                                   ; preds = %if.end30.i.while.cond25.i_crit_edge, %for.end22.i
  %33 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %34, i32 20736
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp28.i = icmp eq i32 %35, 0
  br i1 %cmp28.i, label %if.else47.i, label %if.end30.i

if.end30.i:                                       ; preds = %while.cond25.i
  tail call void @msleep(i32 noundef 20) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub31.i = sub i32 %add24.i, %36
  %cmp32.i = icmp slt i32 %sub31.i, 0
  br i1 %cmp32.i, label %if.end30.i.do.end_crit_edge, label %if.end30.i.while.cond25.i_crit_edge

if.end30.i.while.cond25.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond25.i

if.end30.i.do.end_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else47.i:                                      ; preds = %while.cond25.i
  %ctrl.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 7
  %37 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl.i, align 4
  %tobool48.not.i = icmp eq ptr %38, null
  br i1 %tobool48.not.i, label %do.end84.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.else47.i
  %ctrl_reset_reg.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 8
  %39 = ptrtoint ptr %ctrl_reset_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrl_reset_reg.i, align 8
  %call51.i = tail call i32 @regmap_write(ptr noundef nonnull %38, i32 noundef %40, i32 noundef %..i) #9
  %41 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl.i, align 4
  %ctrl_clock_ena_reg.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 10
  %43 = ptrtoint ptr %ctrl_clock_ena_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl_clock_ena_reg.i, align 8
  %add53.i = add i32 %44, 4
  %call54.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add53.i, i32 noundef %..i) #9
  tail call void @msleep(i32 noundef 1) #9
  %45 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl.i, align 4
  %ctrl_reset_sts_reg.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 9
  %47 = ptrtoint ptr %ctrl_reset_sts_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrl_reset_sts_reg.i, align 4
  %call56.i = call i32 @regmap_read(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %val.i) #9
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  %and57.i = and i32 %50, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %and57.i)
  %cmp58.not.i = icmp eq i32 %..i, %and57.i
  br i1 %cmp58.not.i, label %if.end63.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %do.end

if.end63.i:                                       ; preds = %if.then49.i
  %51 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl.i, align 4
  %53 = ptrtoint ptr %ctrl_reset_reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctrl_reset_reg.i, align 8
  %add66.i = add i32 %54, 4
  %call67.i = call i32 @regmap_write(ptr noundef %52, i32 noundef %add66.i, i32 noundef %..i) #9
  %55 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctrl.i, align 4
  %57 = ptrtoint ptr %ctrl_clock_ena_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrl_clock_ena_reg.i, align 8
  %call70.i = call i32 @regmap_write(ptr noundef %56, i32 noundef %58, i32 noundef %..i) #9
  call void @msleep(i32 noundef 1) #9
  %59 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl.i, align 4
  %61 = ptrtoint ptr %ctrl_reset_sts_reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctrl_reset_sts_reg.i, align 4
  %call73.i = call i32 @regmap_read(ptr noundef %60, i32 noundef %62, ptr noundef nonnull %val.i) #9
  %63 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i, align 4
  %and74.i = and i32 %64, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end, label %do.end79.i

do.end79.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  br label %do.end

do.end84.i:                                       ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #12
  br label %do.end

do.end:                                           ; preds = %do.end84.i, %do.end79.i, %do.end62.i, %if.end30.i.do.end_crit_edge, %if.end15.i.do.end_crit_edge
  %retval.4.i.ph = phi i32 [ -22, %do.end84.i ], [ -5, %do.end79.i ], [ -5, %do.end62.i ], [ -5, %if.end30.i.do.end_crit_edge ], [ -5, %if.end15.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %retval.4.i.ph) #12
  br label %cleanup

if.end:                                           ; preds = %if.end63.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @msleep(i32 noundef 100) #9
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %signal.i) #9
  %67 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %signal.i, align 4, !annotation !365
  %68 = getelementptr inbounds [3 x i32], ptr %signal.i, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %68, align 4, !annotation !365
  %70 = getelementptr inbounds [3 x i32], ptr %signal.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4, !annotation !365
  %call.i = call zeroext i1 @device_property_present(ptr noundef %66, ptr noundef nonnull @.str.18) #9
  br i1 %call.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %73, i32 20496
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 538968064) #9, !srcloc !357
  %74 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i246.i = getelementptr i8, ptr %75, i32 20500
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246.i, i32 538968064) #9, !srcloc !357
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %queue_count.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 30
  %76 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %queue_count.i, align 4
  %sh_prom.i = zext i32 %77 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %78 = trunc i64 %notmask.i to i32
  %conv.i = xor i32 %78, -1
  %79 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs1.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %81 = call i32 @llvm.bswap.i32(i32 %conv.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %81) #9, !srcloc !357
  %82 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i249.i = getelementptr i8, ptr %83, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249.i, i32 192) #9, !srcloc !357
  %84 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i251.i = getelementptr i8, ptr %85, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251.i, i32 256) #9, !srcloc !357
  %86 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i253.i = getelementptr i8, ptr %87, i32 136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253.i, i32 0) #9, !srcloc !357
  %88 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i255.i = getelementptr i8, ptr %89, i32 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255.i, i32 -16318464) #9, !srcloc !357
  %90 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i257.i = getelementptr i8, ptr %91, i32 156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257.i, i32 16777216) #9, !srcloc !357
  %92 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i259.i = getelementptr i8, ptr %93, i32 160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.i, i32 -201261056) #9, !srcloc !357
  %94 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i261.i = getelementptr i8, ptr %95, i32 164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.i, i32 838860800) #9, !srcloc !357
  %96 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i263.i = getelementptr i8, ptr %97, i32 168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263.i, i32 16777216) #9, !srcloc !357
  %98 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i265.i = getelementptr i8, ptr %99, i32 188
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265.i, i32 16777216) #9, !srcloc !357
  %100 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i267.i = getelementptr i8, ptr %101, i32 568
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267.i, i32 16777216) #9, !srcloc !357
  %102 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i269.i = getelementptr i8, ptr %103, i32 144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269.i, i32 16777216) #9, !srcloc !357
  %104 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i271.i = getelementptr i8, ptr %105, i32 412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271.i, i32 201326592) #9, !srcloc !357
  %106 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i273.i = getelementptr i8, ptr %107, i32 416
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273.i, i32 1610612736) #9, !srcloc !357
  %108 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i275.i = getelementptr i8, ptr %109, i32 420
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275.i, i32 50331648) #9, !srcloc !357
  %110 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i277.i = getelementptr i8, ptr %111, i32 424
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277.i, i32 16777216) #9, !srcloc !357
  %112 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i279.i = getelementptr i8, ptr %113, i32 428
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279.i, i32 16777216) #9, !srcloc !357
  %114 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i281.i = getelementptr i8, ptr %115, i32 432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281.i, i32 0) #9, !srcloc !357
  %116 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i283.i = getelementptr i8, ptr %117, i32 440
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283.i, i32 -1) #9, !srcloc !357
  %118 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i285.i = getelementptr i8, ptr %119, i32 444
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285.i, i32 -1) #9, !srcloc !357
  %120 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i287.i = getelementptr i8, ptr %121, i32 448
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287.i, i32 -1) #9, !srcloc !357
  %122 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i289.i = getelementptr i8, ptr %123, i32 452
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289.i, i32 -16843138) #9, !srcloc !357
  %124 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i291.i = getelementptr i8, ptr %125, i32 456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291.i, i32 -16843138) #9, !srcloc !357
  %126 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i293.i = getelementptr i8, ptr %127, i32 460
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293.i, i32 -31392129) #9, !srcloc !357
  %128 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i295.i = getelementptr i8, ptr %129, i32 492
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295.i, i32 806154495) #9, !srcloc !357
  %130 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp419.i = icmp sgt i32 %131, 0
  br i1 %cmp419.i, label %if.end.i.for.body.i13_crit_edge, label %if.end.i.for.end.i15_crit_edge

if.end.i.for.end.i15_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i15

if.end.i.for.body.i13_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %if.end.i.for.body.i13_crit_edge
  %i.0420.i = phi i32 [ %inc.i11, %for.body.i13.for.body.i13_crit_edge ], [ 0, %if.end.i.for.body.i13_crit_edge ]
  %mul.i = shl i32 %i.0420.i, 2
  %add.i10 = add i32 %mul.i, 3216
  %132 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i297.i = getelementptr i8, ptr %133, i32 %add.i10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297.i, i32 0) #9, !srcloc !357
  %inc.i11 = add nuw nsw i32 %i.0420.i, 1
  %134 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %queue_count.i, align 4
  %cmp.i12 = icmp slt i32 %inc.i11, %135
  br i1 %cmp.i12, label %for.body.i13.for.body.i13_crit_edge, label %for.body.i13.for.end.i15_crit_edge

for.body.i13.for.end.i15_crit_edge:               ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i15

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i13

for.end.i15:                                      ; preds = %for.body.i13.for.end.i15_crit_edge, %if.end.i.for.end.i15_crit_edge
  %136 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i299.i = getelementptr i8, ptr %137, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299.i, i32 16777216) #9, !srcloc !357
  %138 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i301.i = getelementptr i8, ptr %139, i32 3200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301.i, i32 16777216) #9, !srcloc !357
  %call4.i = call i32 @device_property_read_u32_array(ptr noundef %66, ptr noundef nonnull @.str.19, ptr noundef nonnull %signal.i, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i14 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i14, label %for.cond6.preheader.i, label %for.end.i15.if.end32.i_crit_edge

for.end.i15.if.end32.i_crit_edge:                 ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

for.cond6.preheader.i:                            ; preds = %for.end.i15
  %140 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9200, i32 %141)
  %cmp12.i = icmp eq i32 %141, 9200
  br i1 %cmp12.i, label %land.lhs.true.i, label %for.cond6.preheader.i.do.end.i_crit_edge

for.cond6.preheader.i.do.end.i_crit_edge:         ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.cond6.preheader.i
  %142 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp15.i = icmp eq i32 %143, 0
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %144 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10476, i32 %145)
  %cmp19.i = icmp eq i32 %145, 10476
  br i1 %cmp19.i, label %land.lhs.true17.i.if.end32.i_crit_edge, label %land.lhs.true17.i.do.end.i_crit_edge

land.lhs.true17.i.do.end.i_crit_edge:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true17.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

do.end.i:                                         ; preds = %land.lhs.true17.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.cond6.preheader.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.20) #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end.i, %land.lhs.true17.i.if.end32.i_crit_edge, %for.end.i15.if.end32.i_crit_edge
  %sas_phy_ctrl.3.i = phi i32 [ 51091720, %for.end.i15.if.end32.i_crit_edge ], [ 51091720, %do.end.i ], [ 50424424, %land.lhs.true17.i.if.end32.i_crit_edge ]
  %146 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp34422.i = icmp sgt i32 %147, 0
  br i1 %cmp34422.i, label %for.body36.lr.ph.i, label %if.end32.i.for.cond58.preheader.i_crit_edge

if.end32.i.for.cond58.preheader.i_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond58.preheader.i

for.body36.lr.ph.i:                               ; preds = %if.end32.i
  %148 = call i32 @llvm.bswap.i32(i32 %sas_phy_ctrl.3.i) #9
  %refclk_frequency_mhz.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 11
  br label %for.body36.i

for.cond58.preheader.i:                           ; preds = %if.end54.i.for.cond58.preheader.i_crit_edge, %if.end32.i.for.cond58.preheader.i_crit_edge
  %149 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp60424.i = icmp sgt i32 %150, 0
  br i1 %cmp60424.i, label %for.cond58.preheader.i.for.body62.i_crit_edge, label %for.cond58.preheader.i.init_reg_v2_hw.exit_crit_edge

for.cond58.preheader.i.init_reg_v2_hw.exit_crit_edge: ; preds = %for.cond58.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_reg_v2_hw.exit

for.cond58.preheader.i.for.body62.i_crit_edge:    ; preds = %for.cond58.preheader.i
  br label %for.body62.i

for.body36.i:                                     ; preds = %if.end54.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %i.2423.i = phi i32 [ 0, %for.body36.lr.ph.i ], [ %inc56.i, %if.end54.i.for.body36.i_crit_edge ]
  %phy40.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %i.2423.i, i32 3, i32 4
  %151 = ptrtoint ptr %phy40.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %phy40.i, align 4
  %tobool41.not.i = icmp eq ptr %152, null
  br i1 %tobool41.not.i, label %for.body36.i.if.end50.i_crit_edge, label %lor.lhs.false.i

for.body36.i.if.end50.i_crit_edge:                ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

lor.lhs.false.i:                                  ; preds = %for.body36.i
  %maximum_linkrate.i = getelementptr inbounds %struct.sas_phy, ptr %152, i32 0, i32 8
  %153 = ptrtoint ptr %maximum_linkrate.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %maximum_linkrate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %154)
  %cmp43.i = icmp ult i32 %154, 8
  br i1 %cmp43.i, label %lor.lhs.false.i.if.end50.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.end50.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i = call zeroext i8 @hisi_sas_get_prog_phy_linkrate_mask(i32 noundef %154) #9
  %conv49.i = zext i8 %call48.i to i32
  %or.i = or i32 %conv49.i, 2048
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i, %lor.lhs.false.i.if.end50.i_crit_edge, %for.body36.i.if.end50.i_crit_edge
  %prog_phy_link_rate.0.i = phi i32 [ %or.i, %if.else.i ], [ 2133, %lor.lhs.false.i.if.end50.i_crit_edge ], [ 2133, %for.body36.i.if.end50.i_crit_edge ]
  %155 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs1.i.i, align 4
  %mul.i.i17 = shl i32 %i.2423.i, 10
  %add.ptr.i303.i = getelementptr i8, ptr %156, i32 8200
  %add.ptr2.i.i18 = getelementptr i8, ptr %add.ptr.i303.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  %157 = call i32 @llvm.bswap.i32(i32 %prog_phy_link_rate.0.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i18, i32 %157) #9, !srcloc !357
  %158 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i306.i = getelementptr i8, ptr %159, i32 8224
  %add.ptr2.i307.i = getelementptr i8, ptr %add.ptr.i306.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i307.i, i32 %148) #9, !srcloc !357
  %160 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i310.i = getelementptr i8, ptr %161, i32 8332
  %add.ptr2.i311.i = getelementptr i8, ptr %add.ptr.i310.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i311.i, i32 2105376125) #9, !srcloc !357
  %162 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i314.i = getelementptr i8, ptr %163, i32 8340
  %add.ptr2.i315.i = getelementptr i8, ptr %add.ptr.i314.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i315.i, i32 0) #9, !srcloc !357
  %164 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i318.i = getelementptr i8, ptr %165, i32 8376
  %add.ptr2.i319.i = getelementptr i8, ptr %add.ptr.i318.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i319.i, i32 33554432) #9, !srcloc !357
  %166 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i322.i = getelementptr i8, ptr %167, i32 8476
  %add.ptr2.i323.i = getelementptr i8, ptr %add.ptr.i322.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i323.i, i32 134217728) #9, !srcloc !357
  %168 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i326.i = getelementptr i8, ptr %169, i32 8628
  %add.ptr2.i327.i = getelementptr i8, ptr %add.ptr.i326.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i327.i, i32 -1) #9, !srcloc !357
  %170 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i330.i = getelementptr i8, ptr %171, i32 8632
  %add.ptr2.i331.i = getelementptr i8, ptr %add.ptr.i330.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i331.i, i32 -1) #9, !srcloc !357
  %172 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i334.i = getelementptr i8, ptr %173, i32 8636
  %add.ptr2.i335.i = getelementptr i8, ptr %add.ptr.i334.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i335.i, i32 -8390401) #9, !srcloc !357
  %174 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i338.i = getelementptr i8, ptr %175, i32 8444
  %add.ptr2.i339.i = getelementptr i8, ptr %add.ptr.i338.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i339.i, i32 1048576) #9, !srcloc !357
  %176 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i342.i = getelementptr i8, ptr %177, i32 8644
  %add.ptr2.i343.i = getelementptr i8, ptr %add.ptr.i342.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i343.i, i32 -8419841) #9, !srcloc !357
  %178 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i346.i = getelementptr i8, ptr %179, i32 8648
  %add.ptr2.i347.i = getelementptr i8, ptr %add.ptr.i346.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i347.i, i32 -17039473) #9, !srcloc !357
  %180 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i350.i = getelementptr i8, ptr %181, i32 8324
  %add.ptr2.i351.i = getelementptr i8, ptr %add.ptr.i350.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i351.i, i32 -66979821) #9, !srcloc !357
  %182 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i354.i = getelementptr i8, ptr %183, i32 8880
  %add.ptr2.i355.i = getelementptr i8, ptr %add.ptr.i354.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i355.i, i32 0) #9, !srcloc !357
  %184 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i358.i = getelementptr i8, ptr %185, i32 8884
  %add.ptr2.i359.i = getelementptr i8, ptr %add.ptr.i358.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i359.i, i32 0) #9, !srcloc !357
  %186 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i362.i = getelementptr i8, ptr %187, i32 8888
  %add.ptr2.i363.i = getelementptr i8, ptr %add.ptr.i362.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i363.i, i32 0) #9, !srcloc !357
  %188 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i366.i = getelementptr i8, ptr %189, i32 8892
  %add.ptr2.i367.i = getelementptr i8, ptr %add.ptr.i366.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i367.i, i32 0) #9, !srcloc !357
  %190 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i370.i = getelementptr i8, ptr %191, i32 8896
  %add.ptr2.i371.i = getelementptr i8, ptr %add.ptr.i370.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i371.i, i32 0) #9, !srcloc !357
  %192 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i374.i = getelementptr i8, ptr %193, i32 8656
  %add.ptr2.i375.i = getelementptr i8, ptr %add.ptr.i374.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i375.i, i32 0) #9, !srcloc !357
  %194 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i378.i = getelementptr i8, ptr %195, i32 8900
  %add.ptr2.i379.i = getelementptr i8, ptr %add.ptr.i378.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i379.i, i32 0) #9, !srcloc !357
  %196 = ptrtoint ptr %refclk_frequency_mhz.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %refclk_frequency_mhz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %197)
  %cmp51.i = icmp eq i32 %197, 66
  br i1 %cmp51.i, label %if.then53.i, label %if.end50.i.if.end54.i_crit_edge

if.end50.i.if.end54.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i382.i = getelementptr i8, ptr %199, i32 8212
  %add.ptr2.i383.i = getelementptr i8, ptr %add.ptr.i382.i, i32 %mul.i.i17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i383.i, i32 -1799972607) #9, !srcloc !357
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end54.i_crit_edge
  %inc56.i = add nuw nsw i32 %i.2423.i, 1
  %200 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %n_phy.i, align 4
  %cmp34.i = icmp slt i32 %inc56.i, %201
  br i1 %cmp34.i, label %if.end54.i.for.body36.i_crit_edge, label %if.end54.i.for.cond58.preheader.i_crit_edge

if.end54.i.for.cond58.preheader.i_crit_edge:      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond58.preheader.i

if.end54.i.for.body36.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %for.cond58.preheader.i.for.body62.i_crit_edge
  %i.3425.i = phi i32 [ %inc86.i, %for.body62.i.for.body62.i_crit_edge ], [ 0, %for.cond58.preheader.i.for.body62.i_crit_edge ]
  %mul63.i = mul i32 %i.3425.i, 20
  %add64.i = add i32 %mul63.i, 612
  %arrayidx65.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 33, i32 %i.3425.i
  %202 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i385.i = getelementptr i8, ptr %203, i32 %add64.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i385.i, i32 0) #9, !srcloc !357
  %add68.i = add i32 %mul63.i, 608
  %204 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx65.i, align 4
  %206 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i387.i = getelementptr i8, ptr %207, i32 %add68.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %208 = call i32 @llvm.bswap.i32(i32 %205) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i387.i, i32 %208) #9, !srcloc !357
  %add72.i = add i32 %mul63.i, 616
  %209 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i389.i = getelementptr i8, ptr %210, i32 %add72.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i389.i, i32 1048576) #9, !srcloc !357
  %add74.i = add i32 %mul63.i, 1252
  %arrayidx75.i = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 35, i32 %i.3425.i
  %211 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i391.i = getelementptr i8, ptr %212, i32 %add74.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391.i, i32 0) #9, !srcloc !357
  %add79.i = add i32 %mul63.i, 1248
  %213 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx75.i, align 4
  %215 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i393.i = getelementptr i8, ptr %216, i32 %add79.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %217 = call i32 @llvm.bswap.i32(i32 %214) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393.i, i32 %217) #9, !srcloc !357
  %add84.i = add i32 %mul63.i, 1256
  %218 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i395.i = getelementptr i8, ptr %219, i32 %add84.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i395.i, i32 1048576) #9, !srcloc !357
  %inc86.i = add nuw nsw i32 %i.3425.i, 1
  %220 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %queue_count.i, align 4
  %cmp60.i = icmp slt i32 %inc86.i, %221
  br i1 %cmp60.i, label %for.body62.i.for.body62.i_crit_edge, label %for.body62.i.init_reg_v2_hw.exit_crit_edge

for.body62.i.init_reg_v2_hw.exit_crit_edge:       ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_reg_v2_hw.exit

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62.i

init_reg_v2_hw.exit:                              ; preds = %for.body62.i.init_reg_v2_hw.exit_crit_edge, %for.cond58.preheader.i.init_reg_v2_hw.exit_crit_edge
  %itct_dma.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 39
  %222 = ptrtoint ptr %itct_dma.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %itct_dma.i, align 4
  %224 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i397.i = getelementptr i8, ptr %225, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %226 = call i32 @llvm.bswap.i32(i32 %223) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397.i, i32 %226) #9, !srcloc !357
  %227 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i399.i = getelementptr i8, ptr %228, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399.i, i32 0) #9, !srcloc !357
  %iost_dma.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 41
  %229 = ptrtoint ptr %iost_dma.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %iost_dma.i, align 4
  %231 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i401.i = getelementptr i8, ptr %232, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %233 = call i32 @llvm.bswap.i32(i32 %230) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401.i, i32 %233) #9, !srcloc !357
  %234 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i403.i = getelementptr i8, ptr %235, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403.i, i32 0) #9, !srcloc !357
  %breakpoint_dma.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 43
  %236 = ptrtoint ptr %breakpoint_dma.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %breakpoint_dma.i, align 4
  %238 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i405.i = getelementptr i8, ptr %239, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %240 = call i32 @llvm.bswap.i32(i32 %237) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405.i, i32 %240) #9, !srcloc !357
  %241 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i407.i = getelementptr i8, ptr %242, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407.i, i32 0) #9, !srcloc !357
  %sata_breakpoint_dma.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 45
  %243 = ptrtoint ptr %sata_breakpoint_dma.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %sata_breakpoint_dma.i, align 4
  %245 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i409.i = getelementptr i8, ptr %246, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %247 = call i32 @llvm.bswap.i32(i32 %244) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409.i, i32 %247) #9, !srcloc !357
  %248 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i411.i = getelementptr i8, ptr %249, i32 92
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i411.i, i32 0) #9, !srcloc !357
  %initial_fis_dma.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 37
  %250 = ptrtoint ptr %initial_fis_dma.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %initial_fis_dma.i, align 4
  %252 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i413.i = getelementptr i8, ptr %253, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %254 = call i32 @llvm.bswap.i32(i32 %251) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413.i, i32 %254) #9, !srcloc !357
  %255 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regs1.i.i, align 4
  %add.ptr.i415.i = getelementptr i8, ptr %256, i32 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415.i, i32 0) #9, !srcloc !357
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %signal.i) #9
  br label %cleanup

cleanup:                                          ; preds = %init_reg_v2_hw.exit, %do.end
  %retval.0 = phi i32 [ %retval.4.i.ph, %do.end ], [ 0, %init_reg_v2_hw.exit ]
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hisi_sas_get_prog_phy_linkrate_mask(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_int_v2_hw(i32 noundef %irq_no, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hisi_hba1 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %hisi_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hisi_hba1, align 4
  %dev3 = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %timer = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %timer) #9
  %id = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %initial_fis4 = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %initial_fis4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %initial_fis4, align 8
  %fis5 = getelementptr %struct.hisi_sas_initial_fis, ptr %7, i32 %5, i32 1
  %.frozen = freeze i32 %5
  %div = sdiv i32 %.frozen, 4
  %mul = shl nsw i32 %div, 2
  %add = add i32 %mul, 452
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %12 = mul i32 %div, 4
  %rem.decomposed = sub i32 %.frozen, %12
  %mul8 = shl nsw i32 %rem.decomposed, 3
  %shl = shl nuw i32 1, %mul8
  %or = or i32 %11, %shl
  %13 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %15) #9, !srcloc !357
  %add9 = add i32 %mul, 440
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %17, i32 %add9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #9, !srcloc !354
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %20 = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %5) #12
  br label %end

if.end:                                           ; preds = %entry
  %status = getelementptr %struct.hisi_sas_initial_fis, ptr %7, i32 %5, i32 1, i32 2
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status, align 1
  %conv = zext i8 %22 to i32
  %and17 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %5, i32 noundef %conv) #12
  %call24 = tail call zeroext i1 @hisi_sas_notify_phy_event(ptr noundef %p, i32 noundef 1) #9
  br label %end

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp26 = icmp eq i32 %5, 8
  %23 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs1.i, align 4
  br i1 %cmp26, label %if.then30, label %if.else, !prof !366

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i147 = getelementptr i8, ptr %24, i32 44
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #9, !srcloc !354
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %and32 = lshr i32 %26, 16
  %and34 = lshr i32 %26, 20
  br label %if.end44

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i149 = getelementptr i8, ptr %24, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #9, !srcloc !354
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %mul37 = shl i32 %5, 2
  %shr38 = lshr i32 %28, %mul37
  %29 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %30, i32 48
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #9, !srcloc !354
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shr42 = lshr i32 %32, %mul37
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then30
  %port_id.0.in = phi i32 [ %and32, %if.then30 ], [ %shr38, %if.else ]
  %link_rate.0.in = phi i32 [ %and34, %if.then30 ], [ %shr42, %if.else ]
  %port_id.0 = and i32 %port_id.0.in, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %port_id.0)
  %cmp45 = icmp eq i32 %port_id.0, 15
  br i1 %cmp45, label %do.end50, label %if.end51

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %5) #12
  br label %end

if.end51:                                         ; preds = %if.end44
  %link_rate.0 = and i32 %link_rate.0.in, 15
  %linkrate = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 13
  %33 = ptrtoint ptr %linkrate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %link_rate.0, ptr %linkrate, align 4
  %34 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %5, 10
  %add.ptr.i153 = getelementptr i8, ptr %35, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i153, i32 8196
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %and53 = and i32 %37, 15
  %maximum_linkrate = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 17
  %38 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and53, ptr %maximum_linkrate, align 8
  %shr54 = lshr i32 %37, 4
  %and55 = and i32 %shr54, 15
  %minimum_linkrate = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 16
  %39 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and55, ptr %minimum_linkrate, align 4
  %oob_mode = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %oob_mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %oob_mode, align 4
  %shost = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 25
  %41 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shost, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %host_no, align 4
  %conv57 = trunc i32 %44 to i8
  %conv59 = trunc i32 %5 to i8
  %attached_sas_addr61 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 15
  %45 = ptrtoint ptr %attached_sas_addr61 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 80, ptr %attached_sas_addr61, align 4
  %attached_sas_addr.sroa.5.0.arraydecay.sroa_idx = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 15, i32 1
  %46 = call ptr @memset(ptr %attached_sas_addr.sroa.5.0.arraydecay.sroa_idx, i32 0, i32 5)
  %attached_sas_addr.sroa.597.0.arraydecay.sroa_idx = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 15, i32 6
  %47 = ptrtoint ptr %attached_sas_addr.sroa.597.0.arraydecay.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv57, ptr %attached_sas_addr.sroa.597.0.arraydecay.sroa_idx, align 2
  %attached_sas_addr.sroa.6.0.arraydecay.sroa_idx = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 15, i32 7
  %48 = ptrtoint ptr %attached_sas_addr.sroa.6.0.arraydecay.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv59, ptr %attached_sas_addr.sroa.6.0.arraydecay.sroa_idx, align 1
  %frame_rcvd = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 3, i32 17
  %49 = ptrtoint ptr %frame_rcvd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %frame_rcvd, align 4
  %51 = call ptr @memcpy(ptr %50, ptr %fis5, i32 20)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %5, i32 noundef %link_rate.0) #12
  %phy_type = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 14
  %52 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phy_type, align 4
  %and66 = and i32 %53, -4
  %conv67 = zext i32 %port_id.0 to i64
  %port_id68 = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 8
  %54 = ptrtoint ptr %port_id68 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv67, ptr %port_id68, align 8
  %or70 = or i32 %and66, 1
  store i32 %or70, ptr %phy_type, align 4
  %phy_attached = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 11
  %55 = ptrtoint ptr %phy_attached to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %phy_attached, align 8
  %identify = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 4
  %56 = ptrtoint ptr %identify to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %identify, align 8
  %frame_rcvd_size = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 9
  %57 = ptrtoint ptr %frame_rcvd_size to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 20, ptr %frame_rcvd_size, align 8
  %target_port_protocols = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %target_port_protocols, align 8
  %call72 = tail call zeroext i1 @hisi_sas_notify_phy_event(ptr noundef %p, i32 noundef 0) #9
  %reset_completion = getelementptr inbounds %struct.hisi_sas_phy, ptr %p, i32 0, i32 5
  %59 = ptrtoint ptr %reset_completion to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset_completion, align 8
  %tobool73.not = icmp eq ptr %60, null
  br i1 %tobool73.not, label %if.end51.end_crit_edge, label %if.then74

if.end51.end_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.then74:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %60) #9
  br label %end

end:                                              ; preds = %if.then74, %if.end51.end_crit_edge, %do.end50, %do.end21, %do.end
  %res.0 = phi i32 [ 0, %do.end ], [ 0, %do.end21 ], [ 0, %do.end50 ], [ 1, %if.then74 ], [ 1, %if.end51.end_crit_edge ]
  %61 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %62, i32 %add9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %63) #9, !srcloc !357
  %64 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %65, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %10) #9, !srcloc !357
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cq_interrupt_v2_hw(i32 noundef %irq_no, ptr nocapture noundef readonly %p) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !357
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cq_thread_v2_hw(i32 noundef %irq_no, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %rd_point2 = getelementptr inbounds %struct.hisi_sas_cq, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %rd_point2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_point2, align 4
  %id = getelementptr inbounds %struct.hisi_sas_cq, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %reject_stp_links_msk = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %reject_stp_links_msk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reject_stp_links_msk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !360

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @phys_try_accept_stp_links_v2_hw(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.hisi_hba, ptr %1, i32 0, i32 34, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %mul = mul i32 %5, 20
  %add = add i32 %mul, 1260
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %13)
  %cmp.not87 = icmp eq i32 %3, %13
  br i1 %cmp.not87, label %if.end.while.end37_crit_edge, label %while.body.lr.ph

if.end.while.end37_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end37

while.body.lr.ph:                                 ; preds = %if.end
  %itct11 = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 38
  %slot_info = getelementptr inbounds %struct.hisi_hba, ptr %1, i32 0, i32 46
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %rd_point.088 = phi i32 [ %3, %while.body.lr.ph ], [ %spec.store.select, %if.end32.while.body_crit_edge ]
  %act = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %9, i32 %rd_point.088, i32 2
  %14 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %while.body
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true), !range !367
  %dw110 = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %9, i32 %rd_point.088, i32 1
  %18 = ptrtoint ptr %dw110 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dw110, align 4
  %20 = and i32 %19, 65535
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %shr = lshr exact i32 %21, 16
  %22 = ptrtoint ptr %itct11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %itct11, align 8
  %qw4_15 = getelementptr %struct.hisi_sas_itct, ptr %23, i32 %shr, i32 4
  br label %while.body15

while.body15:                                     ; preds = %while.body15.while.body15_crit_edge, %if.then8
  %ncq_tag_count.086.in = phi i32 [ %17, %if.then8 ], [ %33, %while.body15.while.body15_crit_edge ]
  %act_tmp.085 = phi i32 [ %16, %if.then8 ], [ %and22, %while.body15.while.body15_crit_edge ]
  %div80.lhs.trunc = trunc i32 %ncq_tag_count.086.in to i8
  %div80.lhs.trunc.frozen = freeze i8 %div80.lhs.trunc
  %div8081 = udiv i8 %div80.lhs.trunc.frozen, 5
  %div80.zext = zext i8 %div8081 to i32
  %arrayidx17 = getelementptr i64, ptr %qw4_15, i32 %div80.zext
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx17, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = mul i8 %div8081, 5
  %rem8283.decomposed = sub i8 %div80.lhs.trunc.frozen, %27
  %narrow = mul nuw nsw i8 %rem8283.decomposed, 12
  %sh_prom = zext i8 %narrow to i64
  %shr19 = lshr i64 %26, %sh_prom
  %28 = trunc i64 %shr19 to i32
  %conv = and i32 %28, 4095
  %29 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slot_info, align 8
  %arrayidx21 = getelementptr %struct.hisi_sas_slot, ptr %30, i32 %conv
  %cmplt_queue_slot = getelementptr %struct.hisi_sas_slot, ptr %30, i32 %conv, i32 9
  %31 = ptrtoint ptr %cmplt_queue_slot to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rd_point.088, ptr %cmplt_queue_slot, align 4
  %cmplt_queue = getelementptr %struct.hisi_sas_slot, ptr %30, i32 %conv, i32 8
  %32 = ptrtoint ptr %cmplt_queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %5, ptr %cmplt_queue, align 8
  tail call fastcc void @slot_complete_v2_hw(ptr noundef %1, ptr noundef %arrayidx21)
  %shl = shl nuw i32 1, %ncq_tag_count.086.in
  %neg = xor i32 %shl, -1
  %and22 = and i32 %act_tmp.085, %neg
  %33 = tail call i32 @llvm.cttz.i32(i32 %and22, i1 true), !range !367
  %iszero23 = icmp eq i32 %and22, 0
  br i1 %iszero23, label %while.body15.if.end32_crit_edge, label %while.body15.while.body15_crit_edge

while.body15.while.body15_crit_edge:              ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body15

while.body15.if.end32_crit_edge:                  ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dw126 = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %9, i32 %rd_point.088, i32 1
  %34 = ptrtoint ptr %dw126 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dw126, align 4
  %36 = and i32 %35, -65536
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %slot_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slot_info, align 8
  %arrayidx29 = getelementptr %struct.hisi_sas_slot, ptr %39, i32 %37
  %cmplt_queue_slot30 = getelementptr %struct.hisi_sas_slot, ptr %39, i32 %37, i32 9
  %40 = ptrtoint ptr %cmplt_queue_slot30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rd_point.088, ptr %cmplt_queue_slot30, align 4
  %cmplt_queue31 = getelementptr %struct.hisi_sas_slot, ptr %39, i32 %37, i32 8
  %41 = ptrtoint ptr %cmplt_queue31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %5, ptr %cmplt_queue31, align 8
  tail call fastcc void @slot_complete_v2_hw(ptr noundef %1, ptr noundef %arrayidx29)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %while.body15.if.end32_crit_edge
  %inc = add i32 %rd_point.088, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc)
  %cmp33 = icmp ugt i32 %inc, 4095
  %spec.store.select = select i1 %cmp33, i32 0, i32 %inc
  %cmp.not = icmp eq i32 %spec.store.select, %13
  br i1 %cmp.not, label %if.end32.while.end37_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end32.while.end37_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end37

while.end37:                                      ; preds = %if.end32.while.end37_crit_edge, %if.end.while.end37_crit_edge
  %rd_point.0.lcssa = phi i32 [ %3, %if.end.while.end37_crit_edge ], [ %13, %if.end32.while.end37_crit_edge ]
  %42 = ptrtoint ptr %rd_point2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rd_point.0.lcssa, ptr %rd_point2, align 4
  %add40 = add i32 %mul, 1264
  %43 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %44, i32 %add40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %rd_point.0.lcssa) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %45) #9, !srcloc !357
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @int_phy_updown_v2_hw(i32 noundef %irq_no, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 328
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shr = lshr i32 %3, 9
  %and = and i32 %shr, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not48 = icmp eq i32 %and, 0
  br i1 %tobool.not48, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %entry.while.body_crit_edge
  %res.052 = phi i32 [ %res.2, %if.end26.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %phy_no.050 = phi i32 [ %inc, %if.end26.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %irq_msk.049 = phi i32 [ %shr27, %if.end26.while.body_crit_edge ], [ %and, %entry.while.body_crit_edge ]
  %and1 = and i32 %irq_msk.049, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %while.body.if.end26_crit_edge, label %if.then

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no.050, 10
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 8628
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i45, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %and4 = and i32 %7, 20
  %8 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %and4, label %if.then.if.end26_crit_edge [
    i32 4, label %sw.bb
    i32 16, label %sw.bb7
    i32 20, label %sw.bb12
  ]

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @phy_up_v2_hw(i32 noundef %phy_no.050, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  %spec.select = select i1 %cmp, i32 1, i32 %res.052
  br label %if.end26

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @phy_down_v2_hw(i32 noundef %phy_no.050, ptr noundef %p)
  br label %if.end26

sw.bb12:                                          ; preds = %if.then
  %9 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %10, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #9, !srcloc !354
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shl = shl nuw i32 1, %phy_no.050
  %and14 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call fastcc i32 @phy_up_v2_hw(i32 noundef %phy_no.050, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 1
  %spec.select43 = select i1 %cmp18, i32 1, i32 %res.052
  br label %if.end26

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @phy_down_v2_hw(i32 noundef %phy_no.050, ptr noundef %p)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16, %sw.bb7, %sw.bb, %if.then.if.end26_crit_edge, %while.body.if.end26_crit_edge
  %res.2 = phi i32 [ %res.052, %while.body.if.end26_crit_edge ], [ %res.052, %if.then.if.end26_crit_edge ], [ 1, %if.else ], [ 1, %sw.bb7 ], [ %spec.select, %sw.bb ], [ %spec.select43, %if.then16 ]
  %shr27 = lshr i32 %irq_msk.049, 1
  %inc = add nuw nsw i32 %phy_no.050, 1
  %tobool.not = icmp ult i32 %irq_msk.049, 2
  br i1 %tobool.not, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %entry.while.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %res.2, %if.end26.while.end_crit_edge ]
  ret i32 %res.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @int_chnl_int_v2_hw(i32 noundef %irq_no, ptr noundef %p) #2 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 460
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %5 = or i32 %4, 128
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %7, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %5) #9, !srcloc !357
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %9, i32 328
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #9, !srcloc !354
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shr = lshr i32 %11, 18
  %and = and i32 %shr, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not139 = icmp eq i32 %and, 0
  br i1 %tobool.not139, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %wq = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 18
  %rst_work = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 50
  %flags.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 47
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  %phy_no.0141 = phi i32 [ 0, %while.body.lr.ph ], [ %inc52, %if.end49.while.body_crit_edge ]
  %irq_msk.0140 = phi i32 [ %and, %while.body.lr.ph ], [ %and51, %if.end49.while.body_crit_edge ]
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no.0141, 10
  %add.ptr.i114 = getelementptr i8, ptr %13, i32 8628
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i114, i32 %mul.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %17, i32 8632
  %add.ptr2.i118 = getelementptr i8, ptr %add.ptr.i117, i32 %mul.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i118) #9, !srcloc !354
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %20 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %21, i32 8636
  %add.ptr2.i122 = getelementptr i8, ptr %add.ptr.i121, i32 %mul.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i122) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %shl = shl nuw i32 1, %phy_no.0141
  %and6 = and i32 %shl, %irq_msk.0140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %while.body.if.end14_crit_edge, label %for.body.preheader

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body.preheader:                               ; preds = %while.body
  %and10 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.body.preheader.cleanup_crit_edge, label %do.end

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.51, i32 noundef %phy_no.0141, i32 noundef %19) #12
  %23 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %rst_work) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.preheader.cleanup_crit_edge
  %and10.1 = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.1)
  %tobool11.not.1 = icmp eq i32 %and10.1, 0
  br i1 %tobool11.not.1, label %cleanup.cleanup.1_crit_edge, label %do.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

do.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.52, i32 noundef %phy_no.0141, i32 noundef %19) #12
  %25 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wq, align 4
  %call.i.1 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %rst_work) #9
  br label %cleanup.1

cleanup.1:                                        ; preds = %do.end.1, %cleanup.cleanup.1_crit_edge
  %and10.2 = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.2)
  %tobool11.not.2 = icmp eq i32 %and10.2, 0
  br i1 %tobool11.not.2, label %cleanup.1.cleanup.2_crit_edge, label %do.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

do.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.53, i32 noundef %phy_no.0141, i32 noundef %19) #12
  %27 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wq, align 4
  %call.i.2 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %rst_work) #9
  br label %cleanup.2

cleanup.2:                                        ; preds = %do.end.2, %cleanup.1.cleanup.2_crit_edge
  %and10.3 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.3)
  %tobool11.not.3 = icmp eq i32 %and10.3, 0
  br i1 %tobool11.not.3, label %cleanup.2.cleanup.3_crit_edge, label %do.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

do.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.54, i32 noundef %phy_no.0141, i32 noundef %19) #12
  %29 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wq, align 4
  %call.i.3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %rst_work) #9
  br label %cleanup.3

cleanup.3:                                        ; preds = %do.end.3, %cleanup.2.cleanup.3_crit_edge
  %and10.4 = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.4)
  %tobool11.not.4 = icmp eq i32 %and10.4, 0
  br i1 %tobool11.not.4, label %cleanup.3.cleanup.4_crit_edge, label %do.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.4

do.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.55, i32 noundef %phy_no.0141, i32 noundef %19) #12
  %31 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq, align 4
  %call.i.4 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %rst_work) #9
  br label %cleanup.4

cleanup.4:                                        ; preds = %do.end.4, %cleanup.3.cleanup.4_crit_edge
  %and10.5 = and i32 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.5)
  %tobool11.not.5 = icmp eq i32 %and10.5, 0
  br i1 %tobool11.not.5, label %cleanup.4.cleanup.5_crit_edge, label %do.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.5

do.end.5:                                         ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.56, i32 noundef %phy_no.0141, i32 noundef %19) #12
  %33 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wq, align 4
  %call.i.5 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %rst_work) #9
  br label %cleanup.5

cleanup.5:                                        ; preds = %do.end.5, %cleanup.4.cleanup.5_crit_edge
  %35 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %36, i32 8632
  %add.ptr2.i126 = getelementptr i8, ptr %add.ptr.i125, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i126, i32 %18) #9, !srcloc !357
  br label %if.end14

if.end14:                                         ; preds = %cleanup.5, %while.body.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  %or.cond107 = select i1 %tobool7.not, i1 true, i1 %tobool19.not
  br i1 %or.cond107, label %if.end14.if.end31_crit_edge, label %if.then20

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then20:                                        ; preds = %if.end14
  %37 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool24.not = icmp eq i32 %37, 0
  br i1 %tobool24.not, label %if.then20.if.end30_crit_edge, label %do.end28

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22 = getelementptr %struct.hisi_hba, ptr %p, i32 0, i32 28, i32 %phy_no.0141
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %phy_no.0141) #12
  %call29 = tail call zeroext i1 @hisi_sas_notify_phy_event(ptr noundef %arrayidx22, i32 noundef 1) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.then20.if.end30_crit_edge
  %38 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %39, i32 8636
  %add.ptr2.i130 = getelementptr i8, ptr %add.ptr.i129, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i130, i32 %22) #9, !srcloc !357
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end14.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool36.not = icmp eq i32 %14, 0
  %or.cond108 = select i1 %tobool7.not, i1 true, i1 %tobool36.not
  br i1 %or.cond108, label %if.end31.if.end49_crit_edge, label %if.then37

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then37:                                        ; preds = %if.end31
  %and38 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then37.if.end41_crit_edge, label %if.then40

if.then37.if.end41_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %if.then37
  %sas_phy2.i = getelementptr %struct.hisi_hba, ptr %p, i32 0, i32 28, i32 %phy_no.0141, i32 3
  %40 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 8896
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16777216) #9, !srcloc !357
  %42 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %43, i32 8344
  %add.ptr2.i18.i = getelementptr i8, ptr %add.ptr.i17.i, i32 %mul.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %45 = and i32 %44, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.then40.phy_bcast_v2_hw.exit_crit_edge, label %land.lhs.true.i

if.then40.phy_bcast_v2_hw.exit_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_bcast_v2_hw.exit

land.lhs.true.i:                                  ; preds = %if.then40
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.phy_bcast_v2_hw.exit_crit_edge

land.lhs.true.i.phy_bcast_v2_hw.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_bcast_v2_hw.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 @sas_notify_port_event(ptr noundef %sas_phy2.i, i32 noundef 1, i32 noundef 2592) #9
  br label %phy_bcast_v2_hw.exit

phy_bcast_v2_hw.exit:                             ; preds = %if.then.i, %land.lhs.true.i.phy_bcast_v2_hw.exit_crit_edge, %if.then40.phy_bcast_v2_hw.exit_crit_edge
  %48 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %49, i32 8628
  %add.ptr2.i22.i = getelementptr i8, ptr %add.ptr.i21.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22.i, i32 33554432) #9, !srcloc !357
  %50 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %51, i32 8896
  %add.ptr2.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i26.i, i32 0) #9, !srcloc !357
  br label %if.end41

if.end41:                                         ; preds = %phy_bcast_v2_hw.exit, %if.then37.if.end41_crit_edge
  %and42 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hisi_sas_phy_oob_ready(ptr noundef %p, i32 noundef %phy_no.0141) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %and48 = and i32 %15, -22
  %52 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %53, i32 8628
  %add.ptr2.i134 = getelementptr i8, ptr %add.ptr.i133, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %and48) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i134, i32 %54) #9, !srcloc !357
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %if.end31.if.end49_crit_edge
  %neg = xor i32 %shl, -1
  %and51 = and i32 %irq_msk.0140, %neg
  %inc52 = add i32 %phy_no.0141, 1
  %tobool.not = icmp eq i32 %and51, 0
  br i1 %tobool.not, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %entry.while.end_crit_edge
  %55 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %56, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %4) #9, !srcloc !357
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_up_v2_hw(i32 noundef %phy_no, ptr noundef %hisi_hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no
  %dev3 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %frame_rcvd4 = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 3, i32 17
  %2 = ptrtoint ptr %frame_rcvd4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame_rcvd4, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 8892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #9, !srcloc !357
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !354
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shl.i = shl nuw i32 1, %phy_no
  %and.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %timer = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 6
  %call5 = tail call i32 @del_timer(ptr noundef %timer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %phy_no)
  %cmp = icmp eq i32 %phy_no, 8
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i108 = getelementptr i8, ptr %11, i32 44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #9, !srcloc !354
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %and = lshr i32 %13, 16
  %and8 = lshr i32 %13, 20
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i110 = getelementptr i8, ptr %11, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #9, !srcloc !354
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %mul = shl i32 %phy_no, 2
  %shr11 = lshr i32 %15, %mul
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #9, !srcloc !354
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %shr15 = lshr i32 %19, %mul
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then6
  %port_id.0.in = phi i32 [ %and, %if.then6 ], [ %shr11, %if.else ]
  %link_rate.0.in = phi i32 [ %and8, %if.then6 ], [ %shr15, %if.else ]
  %port_id.0 = and i32 %port_id.0.in, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %port_id.0)
  %cmp18 = icmp eq i32 %port_id.0, 15
  br i1 %cmp18, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end17
  %link_rate.0 = and i32 %link_rate.0.in, 15
  %20 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %21, i32 %mul.i
  %add.ptr2.i116 = getelementptr i8, ptr %add.ptr.i115, i32 8388
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %3, align 4
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i115.1 = getelementptr i8, ptr %25, i32 %mul.i
  %add.ptr2.i116.1 = getelementptr i8, ptr %add.ptr.i115.1, i32 8392
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116.1) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %arrayidx24.1 = getelementptr i32, ptr %3, i32 1
  %27 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx24.1, align 4
  %28 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i115.2 = getelementptr i8, ptr %29, i32 %mul.i
  %add.ptr2.i116.2 = getelementptr i8, ptr %add.ptr.i115.2, i32 8396
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116.2) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %arrayidx24.2 = getelementptr i32, ptr %3, i32 2
  %31 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx24.2, align 4
  %32 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i115.3 = getelementptr i8, ptr %33, i32 %mul.i
  %add.ptr2.i116.3 = getelementptr i8, ptr %add.ptr.i115.3, i32 8400
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116.3) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %arrayidx24.3 = getelementptr i32, ptr %3, i32 3
  %35 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx24.3, align 4
  %36 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i115.4 = getelementptr i8, ptr %37, i32 %mul.i
  %add.ptr2.i116.4 = getelementptr i8, ptr %add.ptr.i115.4, i32 8404
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116.4) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %arrayidx24.4 = getelementptr i32, ptr %3, i32 4
  %39 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx24.4, align 4
  %40 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i115.5 = getelementptr i8, ptr %41, i32 %mul.i
  %add.ptr2.i116.5 = getelementptr i8, ptr %add.ptr.i115.5, i32 8408
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i116.5) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %arrayidx24.5 = getelementptr i32, ptr %3, i32 5
  %43 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx24.5, align 4
  %linkrate = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 3, i32 13
  %44 = ptrtoint ptr %linkrate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %link_rate.0, ptr %linkrate, align 4
  %oob_mode = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 3, i32 12
  %45 = ptrtoint ptr %oob_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %oob_mode, align 4
  %attached_sas_addr = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 3, i32 15
  %46 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %arrayidx24.3, align 1
  %48 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %attached_sas_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %phy_no, i32 noundef %link_rate.0) #12
  %conv = zext i32 %port_id.0 to i64
  %port_id28 = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 8
  %49 = ptrtoint ptr %port_id28 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv, ptr %port_id28, align 8
  %phy_type = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 14
  %50 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_type, align 4
  %and29 = and i32 %51, -4
  %or = or i32 %and29, 2
  store i32 %or, ptr %phy_type, align 4
  %phy_attached = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 11
  %52 = ptrtoint ptr %phy_attached to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %phy_attached, align 8
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %3, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %conv31 = zext i8 %bf.clear to i32
  %identify = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 4
  %54 = ptrtoint ptr %identify to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv31, ptr %identify, align 8
  %frame_rcvd_size = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 9
  %55 = ptrtoint ptr %frame_rcvd_size to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 32, ptr %frame_rcvd_size, align 8
  %trunc = trunc i8 %bf.lshr to i3
  %56 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.158)
  switch i3 %trunc, label %if.then43 [
    i3 1, label %if.then36
    i3 0, label %for.body.preheader.if.end51_crit_edge
  ]

for.body.preheader.if.end51_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %phy_no) #12
  br label %end

if.then36:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %target_port_protocols = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 4, i32 2
  %57 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %target_port_protocols, align 8
  br label %if.end51

if.then43:                                        ; preds = %for.body.preheader
  %target_port_protocols45 = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 4, i32 2
  %58 = ptrtoint ptr %target_port_protocols45 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %target_port_protocols45, align 8
  %pprev.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17, i32 0, i32 1
  %59 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.not, label %if.then48, label %if.then43.if.end51_crit_edge

if.then43.if.end51_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %timer46 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17
  %function.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17, i32 2
  %61 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @link_timeout_disable_link, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %62, 100
  %expires.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17, i32 1
  %63 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer46) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then43.if.end51_crit_edge, %if.then36, %for.body.preheader.if.end51_crit_edge
  %call52 = tail call zeroext i1 @hisi_sas_notify_phy_event(ptr noundef %arrayidx, i32 noundef 0) #9
  br label %end

end:                                              ; preds = %if.end51, %do.end, %entry.end_crit_edge
  %res.0 = phi i32 [ 1, %entry.end_crit_edge ], [ 0, %do.end ], [ 1, %if.end51 ]
  %reset_completion = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 5
  %64 = ptrtoint ptr %reset_completion to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reset_completion, align 8
  %tobool53.not = icmp eq ptr %65, null
  br i1 %tobool53.not, label %end.if.end56_crit_edge, label %if.then54

end.if.end56_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then54:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %65) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %end.if.end56_crit_edge
  %66 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %67, i32 %mul.i
  %add.ptr2.i120 = getelementptr i8, ptr %add.ptr.i119, i32 8628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i120, i32 67108864) #9, !srcloc !357
  %68 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %69, i32 %mul.i
  %add.ptr2.i124 = getelementptr i8, ptr %add.ptr.i123, i32 8892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i124, i32 0) #9, !srcloc !357
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_down_v2_hw(i32 noundef %phy_no, ptr noundef %hisi_hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port2 = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 2
  %0 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port2, align 8
  %dev3 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %timer = getelementptr %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 28, i32 %phy_no, i32 6
  %call = tail call i32 @del_timer(ptr noundef %timer) #9
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no, 10
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 8884
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #9, !srcloc !357
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #9, !srcloc !354
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %phy_no, i32 noundef %9) #12
  %10 = lshr i32 %9, %phy_no
  %11 = and i32 %10, 1
  tail call void @hisi_sas_phy_down(ptr noundef %hisi_hba, i32 noundef %phy_no, i32 noundef %11, i32 noundef 2592) #9
  %12 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %13, i32 %mul.i
  %add.ptr2.i6 = getelementptr i8, ptr %add.ptr.i5, i32 8340
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i6) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %15 = and i32 %14, -513
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %17, i32 %mul.i
  %add.ptr2.i10 = getelementptr i8, ptr %add.ptr.i9, i32 8340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10, i32 %15) #9, !srcloc !357
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.hisi_sas_port, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !354
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %25, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #9, !srcloc !354
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %n_phy.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %28 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp342.i = icmp sgt i32 %29, 0
  br i1 %cmp342.i, label %for.body.preheader.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.preheader.i:                             ; preds = %land.lhs.true
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 8) #9
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %23, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv)
  %cmp5.i = icmp eq i32 %and4.i, %conv
  %or.i = zext i1 %cmp5.i to i32
  %bitmap.1.i = select i1 %tobool.not.i, i32 0, i32 %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %exitcond.not.i = icmp eq i32 %30, 1
  br i1 %exitcond.not.i, label %for.body.preheader.i.for.end.i_crit_edge, label %for.body.i.1

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %and.i.1 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  %shr.i.1 = lshr i32 %23, 4
  %and4.i.1 = and i32 %shr.i.1, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.1, i32 %conv)
  %cmp5.i.1 = icmp eq i32 %and4.i.1, %conv
  %or.i.1 = select i1 %cmp5.i.1, i32 2, i32 0
  %spec.select37.i.1 = or i32 %or.i.1, %bitmap.1.i
  %bitmap.1.i.1 = select i1 %tobool.not.i.1, i32 %bitmap.1.i, i32 %spec.select37.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %exitcond.not.i.1 = icmp eq i32 %30, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.end.i_crit_edge, label %for.body.i.2

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %and.i.2 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  %shr.i.2 = lshr i32 %23, 8
  %and4.i.2 = and i32 %shr.i.2, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.2, i32 %conv)
  %cmp5.i.2 = icmp eq i32 %and4.i.2, %conv
  %or.i.2 = select i1 %cmp5.i.2, i32 4, i32 0
  %spec.select37.i.2 = or i32 %or.i.2, %bitmap.1.i.1
  %bitmap.1.i.2 = select i1 %tobool.not.i.2, i32 %bitmap.1.i.1, i32 %spec.select37.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %exitcond.not.i.2 = icmp eq i32 %30, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.end.i_crit_edge, label %for.body.i.3

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %and.i.3 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  %shr.i.3 = lshr i32 %23, 12
  %and4.i.3 = and i32 %shr.i.3, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.3, i32 %conv)
  %cmp5.i.3 = icmp eq i32 %and4.i.3, %conv
  %or.i.3 = select i1 %cmp5.i.3, i32 8, i32 0
  %spec.select37.i.3 = or i32 %or.i.3, %bitmap.1.i.2
  %bitmap.1.i.3 = select i1 %tobool.not.i.3, i32 %bitmap.1.i.2, i32 %spec.select37.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %exitcond.not.i.3 = icmp eq i32 %30, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.for.end.i_crit_edge, label %for.body.i.4

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %and.i.4 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool.not.i.4 = icmp eq i32 %and.i.4, 0
  %shr.i.4 = lshr i32 %23, 16
  %and4.i.4 = and i32 %shr.i.4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.4, i32 %conv)
  %cmp5.i.4 = icmp eq i32 %and4.i.4, %conv
  %or.i.4 = select i1 %cmp5.i.4, i32 16, i32 0
  %spec.select37.i.4 = or i32 %or.i.4, %bitmap.1.i.3
  %bitmap.1.i.4 = select i1 %tobool.not.i.4, i32 %bitmap.1.i.3, i32 %spec.select37.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %exitcond.not.i.4 = icmp eq i32 %30, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.for.end.i_crit_edge, label %for.body.i.5

for.body.i.4.for.end.i_crit_edge:                 ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %and.i.5 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %tobool.not.i.5 = icmp eq i32 %and.i.5, 0
  %shr.i.5 = lshr i32 %23, 20
  %and4.i.5 = and i32 %shr.i.5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.5, i32 %conv)
  %cmp5.i.5 = icmp eq i32 %and4.i.5, %conv
  %or.i.5 = select i1 %cmp5.i.5, i32 32, i32 0
  %spec.select37.i.5 = or i32 %or.i.5, %bitmap.1.i.4
  %bitmap.1.i.5 = select i1 %tobool.not.i.5, i32 %bitmap.1.i.4, i32 %spec.select37.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %exitcond.not.i.5 = icmp eq i32 %30, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.for.end.i_crit_edge, label %for.body.i.6

for.body.i.5.for.end.i_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %and.i.6 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %tobool.not.i.6 = icmp eq i32 %and.i.6, 0
  %shr.i.6 = lshr i32 %23, 24
  %and4.i.6 = and i32 %shr.i.6, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.6, i32 %conv)
  %cmp5.i.6 = icmp eq i32 %and4.i.6, %conv
  %or.i.6 = select i1 %cmp5.i.6, i32 64, i32 0
  %spec.select37.i.6 = or i32 %or.i.6, %bitmap.1.i.5
  %bitmap.1.i.6 = select i1 %tobool.not.i.6, i32 %bitmap.1.i.5, i32 %spec.select37.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %exitcond.not.i.6 = icmp eq i32 %30, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.for.end.i_crit_edge, label %for.body.i.7

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.7 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7)
  %tobool.not.i.7 = icmp eq i32 %and.i.7, 0
  %shr.i.7 = lshr i32 %23, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.7, i32 %conv)
  %cmp5.i.7 = icmp eq i32 %shr.i.7, %conv
  %or.i.7 = select i1 %cmp5.i.7, i32 128, i32 0
  %spec.select37.i.7 = or i32 %or.i.7, %bitmap.1.i.6
  %bitmap.1.i.7 = select i1 %tobool.not.i.7, i32 %bitmap.1.i.6, i32 %spec.select37.i.7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.7, %for.body.i.6.for.end.i_crit_edge, %for.body.i.5.for.end.i_crit_edge, %for.body.i.4.for.end.i_crit_edge, %for.body.i.3.for.end.i_crit_edge, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %bitmap.1.i.lcssa = phi i32 [ %bitmap.1.i, %for.body.preheader.i.for.end.i_crit_edge ], [ %bitmap.1.i.1, %for.body.i.1.for.end.i_crit_edge ], [ %bitmap.1.i.2, %for.body.i.2.for.end.i_crit_edge ], [ %bitmap.1.i.3, %for.body.i.3.for.end.i_crit_edge ], [ %bitmap.1.i.4, %for.body.i.4.for.end.i_crit_edge ], [ %bitmap.1.i.5, %for.body.i.5.for.end.i_crit_edge ], [ %bitmap.1.i.6, %for.body.i.6.for.end.i_crit_edge ], [ %bitmap.1.i.7, %for.body.i.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %29)
  %cmp10.i = icmp eq i32 %29, 9
  br i1 %cmp10.i, label %if.then11.i, label %get_wideport_bitmap_v2_hw.exit

if.then11.i:                                      ; preds = %for.end.i
  %31 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %32, i32 44
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %and13.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %34 = lshr i32 %33, 8
  %shr17.i = and i32 %34, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17.i, i32 %conv)
  %cmp18.i = icmp ne i32 %shr17.i, %conv
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %cmp18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap.1.i.lcssa)
  %tobool9.not = icmp eq i32 %bitmap.1.i.lcssa, 0
  %or.cond = select i1 %or.cond.i, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.then11.i.if.then_crit_edge, label %if.then11.i.if.end18_crit_edge

if.then11.i.if.end18_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11.i.if.then_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

get_wideport_bitmap_v2_hw.exit:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap.1.i.lcssa)
  %tobool9.not.old = icmp eq i32 %bitmap.1.i.lcssa, 0
  br i1 %tobool9.not.old, label %get_wideport_bitmap_v2_hw.exit.if.then_crit_edge, label %get_wideport_bitmap_v2_hw.exit.if.end18_crit_edge

get_wideport_bitmap_v2_hw.exit.if.end18_crit_edge: ; preds = %get_wideport_bitmap_v2_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

get_wideport_bitmap_v2_hw.exit.if.then_crit_edge: ; preds = %get_wideport_bitmap_v2_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %get_wideport_bitmap_v2_hw.exit.if.then_crit_edge, %if.then11.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %35 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %36, i32 44
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %38 = and i32 %37, -16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i14.not = icmp eq i32 %38, 0
  br i1 %tobool.not.i14.not, label %land.lhs.true11, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true11:                                  ; preds = %if.then
  %pprev.i.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17, i32 0, i32 1
  %39 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true11.if.end18_crit_edge, label %if.then15

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  %timer12 = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 17
  %call17 = tail call i32 @del_timer(ptr noundef %timer12) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true11.if.end18_crit_edge, %if.then.if.end18_crit_edge, %get_wideport_bitmap_v2_hw.exit.if.end18_crit_edge, %if.then11.i.if.end18_crit_edge, %entry.if.end18_crit_edge
  %41 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %42, i32 %mul.i
  %add.ptr2.i18 = getelementptr i8, ptr %add.ptr.i17, i32 8376
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %44 = or i32 %43, 33554432
  %45 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %46, i32 %mul.i
  %add.ptr2.i22 = getelementptr i8, ptr %add.ptr.i21, i32 8376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22, i32 %44) #9, !srcloc !357
  %47 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %48, i32 %mul.i
  %add.ptr2.i26 = getelementptr i8, ptr %add.ptr.i25, i32 8628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i26, i32 268435456) #9, !srcloc !357
  %49 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %50, i32 %mul.i
  %add.ptr2.i30 = getelementptr i8, ptr %add.ptr.i29, i32 8884
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i30, i32 0) #9, !srcloc !357
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hisi_sas_notify_phy_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @link_timeout_disable_link(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr i8, ptr %t, i32 -144
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %n_phy = getelementptr i8, ptr %t, i32 -104
  %4 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp24 = icmp slt i32 %5, 1
  %or.cond25 = select i1 %cmp24, i1 true, i1 %tobool.not
  br i1 %or.cond25, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reject_stp_links_msk = getelementptr i8, ptr %t, i32 68
  %6 = ptrtoint ptr %reject_stp_links_msk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reject_stp_links_msk, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.026
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp ne i32 %and, 0
  %and3 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond20 = select i1 %tobool1.not, i1 true, i1 %tobool4.not
  br i1 %or.cond20, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %i.026, 10
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i22, i32 8472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 100663296) #9, !srcloc !357
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.026, 1
  %cmp.not = icmp slt i32 %inc, %5
  br i1 %cmp.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5, %entry.for.end_crit_edge
  %function = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @link_timeout_enable_link, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 10
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @link_timeout_enable_link(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_phy = getelementptr i8, ptr %t, i32 -104
  %0 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reject_stp_links_msk = getelementptr i8, ptr %t, i32 68
  %regs1.i = getelementptr i8, ptr %t, i32 -144
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %reject_stp_links_msk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reject_stp_links_msk, align 8
  %shl = shl nuw i32 1, %i.022
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %i.022, 10
  %add.ptr.i = getelementptr i8, ptr %5, i32 8472
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 %mul.i
  %add.ptr2.i20 = getelementptr i8, ptr %add.ptr.i19, i32 8472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i20, i32 117440512) #9, !srcloc !357
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %10 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_phy, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then3, %entry.for.end_crit_edge
  %function = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @link_timeout_disable_link, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 90
  %call7 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_phy_down(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_phy_oob_ready(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_port_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fatal_ecc_int_v2_hw(i32 noundef %irq_no, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 492
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %3 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %4, i32 492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -1) #9, !srcloc !357
  %5 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %6, i32 488
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #9, !srcloc !354
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.012.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @one_bit_ecc_errors, i32 0, i32 %i.012.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %12, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg.i = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @one_bit_ecc_errors, i32 0, i32 %i.012.i, i32 4
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  %15 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !354
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %msk.i = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @one_bit_ecc_errors, i32 0, i32 %i.012.i, i32 1
  %19 = ptrtoint ptr %msk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msk.i, align 4
  %and2.i = and i32 %20, %18
  %shift.i = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @one_bit_ecc_errors, i32 0, i32 %i.012.i, i32 2
  %21 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %and2.i, %22
  %msg.i = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @one_bit_ecc_errors, i32 0, i32 %i.012.i, i32 3
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.68, ptr noundef %24, i32 noundef %shr.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %one_bit_ecc_error_process_v2_hw.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

one_bit_ecc_error_process_v2_hw.exit:             ; preds = %for.inc.i
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  %wq.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 18
  %rst_work.i = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 50
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i32.for.body.i21_crit_edge, %one_bit_ecc_error_process_v2_hw.exit
  %i.016.i = phi i32 [ 0, %one_bit_ecc_error_process_v2_hw.exit ], [ %inc.i30, %for.inc.i32.for.body.i21_crit_edge ]
  %arrayidx.i18 = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @multi_bit_ecc_errors, i32 0, i32 %i.016.i
  %27 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i18, align 4
  %and.i19 = and i32 %28, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i20, label %for.body.i21.for.inc.i32_crit_edge, label %if.then.i29

for.body.i21.for.inc.i32_crit_edge:               ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i32

if.then.i29:                                      ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  %reg.i22 = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @multi_bit_ecc_errors, i32 0, i32 %i.016.i, i32 4
  %29 = ptrtoint ptr %reg.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i22, align 4
  %31 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %32, i32 %30
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #9, !srcloc !354
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %msk.i24 = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @multi_bit_ecc_errors, i32 0, i32 %i.016.i, i32 1
  %35 = ptrtoint ptr %msk.i24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msk.i24, align 4
  %and2.i25 = and i32 %36, %34
  %shift.i26 = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @multi_bit_ecc_errors, i32 0, i32 %i.016.i, i32 2
  %37 = ptrtoint ptr %shift.i26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shift.i26, align 4
  %shr.i27 = lshr i32 %and2.i25, %38
  %msg.i28 = getelementptr [10 x %struct.hisi_sas_hw_error], ptr @multi_bit_ecc_errors, i32 0, i32 %i.016.i, i32 3
  %39 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %msg.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.80, ptr noundef %40, i32 noundef %8, i32 noundef %shr.i27) #12
  %41 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %rst_work.i) #9
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.then.i29, %for.body.i21.for.inc.i32_crit_edge
  %inc.i30 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i31 = icmp eq i32 %inc.i30, 10
  br i1 %exitcond.not.i31, label %for.inc.i32.if.end_crit_edge, label %for.inc.i32.for.body.i21_crit_edge

for.inc.i32.for.body.i21_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21

for.inc.i32.if.end_crit_edge:                     ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.inc.i32.if.end_crit_edge, %entry.if.end_crit_edge
  %43 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %44, i32 488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %7) #9, !srcloc !357
  %45 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %46, i32 492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %2) #9, !srcloc !357
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fatal_axi_int_v2_hw(i32 noundef %irq_no, ptr noundef %p) #2 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 460
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !354
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %or = or i32 %5, -2
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %7, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %8) #9, !srcloc !357
  %9 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %10, i32 448
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #9, !srcloc !354
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %wq = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 18
  %rst_work = getelementptr inbounds %struct.hisi_hba, ptr %p, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %entry
  %i.096 = phi i32 [ 0, %entry ], [ %inc, %for.inc28.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.hisi_sas_hw_error], ptr @fatal_axi_errors, i32 0, i32 %i.096
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %and = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc28_crit_edge, label %if.end

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.end:                                           ; preds = %for.body
  %shift = getelementptr [7 x %struct.hisi_sas_hw_error], ptr @fatal_axi_errors, i32 0, i32 %i.096, i32 2
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift, align 4
  %shl = shl nuw i32 1, %16
  %17 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %18, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %19) #9, !srcloc !357
  %20 = add nsw i32 %i.096, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %20)
  %21 = icmp ult i32 %20, -2
  br i1 %21, label %do.end22, label %if.then5

if.then5:                                         ; preds = %if.end
  %sub = getelementptr [7 x %struct.hisi_sas_hw_error], ptr @fatal_axi_errors, i32 0, i32 %i.096, i32 5
  %22 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sub, align 4
  %reg = getelementptr [7 x %struct.hisi_sas_hw_error], ptr @fatal_axi_errors, i32 0, i32 %i.096, i32 4
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %26 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #9, !srcloc !354
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.then5
  %sub6.0 = phi ptr [ %23, %if.then5 ], [ %incdec.ptr, %for.inc ]
  %msk = getelementptr inbounds %struct.hisi_sas_hw_error, ptr %sub6.0, i32 0, i32 1
  %30 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool10.not = icmp eq i32 %31, 0
  br i1 %tobool10.not, label %lor.rhs, label %for.cond9.for.body12_crit_edge

for.cond9.for.body12_crit_edge:                   ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

lor.rhs:                                          ; preds = %for.cond9
  %msg = getelementptr inbounds %struct.hisi_sas_hw_error, ptr %sub6.0, i32 0, i32 3
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg, align 4
  %tobool11.not = icmp eq ptr %33, null
  br i1 %tobool11.not, label %lor.rhs.for.inc28_crit_edge, label %lor.rhs.for.body12_crit_edge

lor.rhs.for.body12_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

lor.rhs.for.inc28_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

for.body12:                                       ; preds = %lor.rhs.for.body12_crit_edge, %for.cond9.for.body12_crit_edge
  %and14 = and i32 %31, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.body12.for.inc_crit_edge, label %do.end

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %msg18 = getelementptr inbounds %struct.hisi_sas_hw_error, ptr %sub6.0, i32 0, i32 3
  %34 = ptrtoint ptr %msg18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef %35, i32 noundef %12) #12
  %36 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %rst_work) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body12.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.hisi_sas_hw_error, ptr %sub6.0, i32 1
  br label %for.cond9

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msg23 = getelementptr [7 x %struct.hisi_sas_hw_error], ptr @fatal_axi_errors, i32 0, i32 %i.096, i32 3
  %38 = ptrtoint ptr %msg23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef %39, i32 noundef %12) #12
  %40 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wq, align 4
  %call.i86 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %rst_work) #9
  br label %for.inc28

for.inc28:                                        ; preds = %do.end22, %lor.rhs.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end29, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end29:                                        ; preds = %for.inc28
  %and30 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %for.end29.if.end45_crit_edge, label %if.then32

for.end29.if.end45_crit_edge:                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then32:                                        ; preds = %for.end29
  %42 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %43, i32 68
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %45 = and i32 %44, -16318464
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %48, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 0) #9, !srcloc !357
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fatal_axi_int_v2_hw.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fatal_axi_int_v2_hw, %if.then41)) #9
          to label %do.end44 [label %if.then41], !srcloc !364

if.then41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fatal_axi_int_v2_hw.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.96) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %if.then32
  %completion = getelementptr %struct.hisi_hba, ptr %p, i32 0, i32 31, i32 %46, i32 2
  %49 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %50) #9
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %for.end29.if.end45_crit_edge
  %51 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %52, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %11) #9, !srcloc !357
  %53 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %54, i32 460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %4) #9, !srcloc !357
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phys_try_accept_stp_links_v2_hw(ptr noundef %hisi_hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_phy = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 14
  %0 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reject_stp_links_msk = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 23
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %hisi_hba, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %phy_no.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %reject_stp_links_msk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reject_stp_links_msk, align 8
  %shl = shl nuw i32 1, %phy_no.028
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %phy_no.028, 10
  %add.ptr.i = getelementptr i8, ptr %5, i32 8708
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %tobool2.not = icmp ult i32 %6, 65536
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 8472
  %add.ptr2.i22 = getelementptr i8, ptr %add.ptr.i21, i32 %mul.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i22) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %10 = or i32 %9, 16777216
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %12, i32 8472
  %add.ptr2.i26 = getelementptr i8, ptr %add.ptr.i25, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i26, i32 %10) #9, !srcloc !357
  tail call void @_clear_bit(i32 noundef %phy_no.028, ptr noundef %reject_stp_links_msk) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %phy_no.028, 1
  %13 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_phy, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slot_complete_v2_hw(ptr noundef %hisi_hba, ptr noundef %slot) unnamed_addr #2 align 64 {
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
  %arrayidx4 = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %7, i32 %9
  %is_internal5 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 16
  %10 = ptrtoint ptr %is_internal5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_internal5, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %entry.cleanup207_crit_edge, label %lor.lhs.false, !prof !366

entry.cleanup207_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup207

lor.lhs.false:                                    ; preds = %entry
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lldd_task, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup207_crit_edge, label %lor.rhs, !prof !366

lor.lhs.false.cleanup207_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup207

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %lor.rhs.cleanup207_crit_edge, label %if.end, !prof !366

lor.rhs.cleanup207_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup207

if.end:                                           ; preds = %lor.rhs
  %task_status = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9
  %port = getelementptr inbounds %struct.domain_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 4
  %ha14 = getelementptr inbounds %struct.asd_sas_port, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %ha14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ha14, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %15, i32 0, i32 20
  %20 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldd_dev, align 128
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 1
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %23, -18
  store i32 %and, ptr %task_state_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call16) #9
  %tobool20.not = icmp eq ptr %21, null
  %24 = call ptr @memset(ptr %task_status, i32 0, i32 116)
  br i1 %tobool20.not, label %do.body30, label %if.end45, !prof !366

do.body30:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slot_complete_v2_hw.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slot_complete_v2_hw, %if.then41)) #9
          to label %do.end44 [label %if.then41], !srcloc !364

if.then41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slot_complete_v2_hw.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.116) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body30
  %stat = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 138, ptr %stat, align 4
  br label %do.body150

if.end45:                                         ; preds = %if.end
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and47 = lshr i32 %28, 13
  %shr = and i32 %and47, 7
  %29 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %shr, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb49
    i32 2, label %sw.bb52
    i32 1, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %stat48 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %stat48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 141, ptr %stat48, align 4
  br label %do.body150

sw.bb49:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %stat50 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %stat50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %stat50, align 4
  %internal_abort_timer = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 15
  %call51 = tail call i32 @del_timer_sync(ptr noundef %internal_abort_timer) #9
  br label %do.body150

sw.bb52:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %internal_abort_timer54 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 15
  %call55 = tail call i32 @del_timer_sync(ptr noundef %internal_abort_timer54) #9
  br label %do.body150

sw.bb56:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %stat57 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %stat57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %stat57, align 4
  %internal_abort_timer58 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 15
  %call59 = tail call i32 @del_timer_sync(ptr noundef %internal_abort_timer58) #9
  br label %do.body150

sw.epilog:                                        ; preds = %if.end45
  %33 = and i32 %28, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %33)
  %34 = icmp eq i32 %33, 4096
  br i1 %34, label %if.then64, label %if.end117

if.then64:                                        ; preds = %sw.epilog
  %and65 = lshr i32 %28, 2
  %buf = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  %trunc = trunc i32 %and65 to i8
  %37 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %trunc, label %if.then64.if.end92_crit_edge [
    i8 2, label %if.then64.if.end92.sink.split_crit_edge
    i8 4, label %if.then64.if.end92.sink.split_crit_edge316
    i8 8, label %if.then64.if.end92.sink.split_crit_edge317
    i8 6, label %if.then64.if.end92.sink.split_crit_edge318
    i8 10, label %if.then64.if.end92.sink.split_crit_edge319
    i8 16, label %if.then64.if.then90_crit_edge
    i8 32, label %if.then64.if.then90_crit_edge320
    i8 64, label %if.then64.if.then90_crit_edge321
  ]

if.then64.if.then90_crit_edge321:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.then64.if.then90_crit_edge320:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.then64.if.then90_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.then64.if.end92.sink.split_crit_edge319:       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.then64.if.end92.sink.split_crit_edge318:       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.then64.if.end92.sink.split_crit_edge317:       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.then64.if.end92.sink.split_crit_edge316:       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.then64.if.end92.sink.split_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.then64.if.end92_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then90:                                        ; preds = %if.then64.if.then90_crit_edge, %if.then64.if.then90_crit_edge320, %if.then64.if.then90_crit_edge321
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.then90, %if.then64.if.end92.sink.split_crit_edge, %if.then64.if.end92.sink.split_crit_edge316, %if.then64.if.end92.sink.split_crit_edge317, %if.then64.if.end92.sink.split_crit_edge318, %if.then64.if.end92.sink.split_crit_edge319
  %.sink = phi i32 [ 2, %if.then90 ], [ 1, %if.then64.if.end92.sink.split_crit_edge ], [ 1, %if.then64.if.end92.sink.split_crit_edge316 ], [ 1, %if.then64.if.end92.sink.split_crit_edge317 ], [ 1, %if.then64.if.end92.sink.split_crit_edge318 ], [ 1, %if.then64.if.end92.sink.split_crit_edge319 ]
  tail call fastcc void @slot_err_v2_hw(ptr noundef nonnull %1, ptr noundef %slot, i32 noundef %.sink)
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.then64.if.end92_crit_edge
  %stat93 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %stat93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stat93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %39)
  %cmp94.not = icmp eq i32 %39, 129
  br i1 %cmp94.not, label %if.end92.if.end106_crit_edge, label %do.end99

if.end92.if.end106_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %idx = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 20
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idx, align 4
  %conv100 = zext i16 %41 to i32
  %device_id = getelementptr inbounds %struct.hisi_sas_device, ptr %21, i32 0, i32 7
  %42 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_id, align 4
  %44 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx4, align 4
  %dw1 = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %7, i32 %9, i32 1
  %46 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dw1, align 4
  %act = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %7, i32 %9, i32 2
  %48 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %act, align 4
  %dw3 = getelementptr %struct.hisi_sas_complete_v2_hdr, ptr %7, i32 %9, i32 3
  %50 = ptrtoint ptr %dw3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dw3, align 4
  %52 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %36, align 4
  %arrayidx103 = getelementptr i32, ptr %36, i32 1
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx103, align 4
  %arrayidx104 = getelementptr i32, ptr %36, i32 2
  %56 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx104, align 4
  %arrayidx105 = getelementptr i32, ptr %36, i32 3
  %58 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx105, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.117, i32 noundef %conv100, ptr noundef nonnull %1, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #12
  br label %if.end106

if.end106:                                        ; preds = %do.end99, %if.end92.if.end106_crit_edge
  %abort = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 10
  %60 = ptrtoint ptr %abort to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %abort, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool107.not = icmp eq i32 %61, 0
  br i1 %tobool107.not, label %if.end106.do.body150_crit_edge, label %if.then114, !prof !360

if.end106.do.body150_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body150

if.then114:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sas_task_abort(ptr noundef nonnull %1) #9
  br label %cleanup207

if.end117:                                        ; preds = %sw.epilog
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %task_proto, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %63, label %sw.default137 [
    i32 8, label %sw.bb118
    i32 2, label %sw.bb125
    i32 1, label %if.end117.sw.bb135_crit_edge
    i32 4, label %if.end117.sw.bb135_crit_edge322
    i32 5, label %if.end117.sw.bb135_crit_edge323
  ]

if.end117.sw.bb135_crit_edge323:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

if.end117.sw.bb135_crit_edge322:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

if.end117.sw.bb135_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

sw.bb118:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %buf119 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %65 = ptrtoint ptr %buf119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf119, align 4
  %iu121 = getelementptr inbounds %struct.hisi_sas_status_buffer, ptr %66, i32 0, i32 1
  tail call void @sas_ssp_task_response(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %iu121) #9
  br label %sw.epilog139

sw.bb125:                                         ; preds = %if.end117
  %smp_resp = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1
  %67 = ptrtoint ptr %smp_resp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %smp_resp, align 4
  %and.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !360

do.body2.i:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !369
  unreachable

sg_page.exit:                                     ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  %69 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4
  %and.i = and i32 %68, -4
  %70 = inttoptr i32 %and.i to ptr
  %call127 = tail call ptr @page_address(ptr noundef %70) #9
  %stat128 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %stat128 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %stat128, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %69, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %offset = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset, align 4
  %add.ptr129 = getelementptr i8, ptr %call127, i32 %73
  %buf130 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %74 = ptrtoint ptr %buf130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf130, align 4
  %add.ptr132 = getelementptr i8, ptr %75, i32 16
  %length = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 4, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length, align 4
  %78 = call ptr @memcpy(ptr %add.ptr129, ptr %add.ptr132, i32 %77)
  br label %sw.epilog139

sw.bb135:                                         ; preds = %if.end117.sw.bb135_crit_edge, %if.end117.sw.bb135_crit_edge322, %if.end117.sw.bb135_crit_edge323
  tail call void @hisi_sas_sata_done(ptr noundef nonnull %1, ptr noundef %slot) #9
  br label %sw.epilog139

sw.default137:                                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %stat138 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %stat138 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %stat138, align 4
  br label %sw.epilog139

sw.epilog139:                                     ; preds = %sw.default137, %sw.bb135, %sg_page.exit, %sw.bb118
  %port140 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 3
  %80 = ptrtoint ptr %port140 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %port140, align 4
  %port_attached = getelementptr inbounds %struct.hisi_sas_port, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %port_attached to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %port_attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool141.not = icmp eq i8 %83, 0
  br i1 %tobool141.not, label %do.end145, label %sw.epilog139.do.body150_crit_edge

sw.epilog139.do.body150_crit_edge:                ; preds = %sw.epilog139
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body150

do.end145:                                        ; preds = %sw.epilog139
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.asd_sas_port, ptr %81, i32 0, i32 10
  %84 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.119, i32 noundef %85) #12
  %stat147 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %stat147 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 138, ptr %stat147, align 4
  br label %do.body150

do.body150:                                       ; preds = %do.end145, %sw.epilog139.do.body150_crit_edge, %if.end106.do.body150_crit_edge, %sw.bb56, %sw.bb52, %sw.bb49, %sw.bb, %do.end44
  %call158 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %87 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %task_state_flags, align 4
  %and164 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end171, label %if.then166

if.then166:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call158) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.122, ptr noundef nonnull %1) #12
  br label %cleanup207

if.end171:                                        ; preds = %do.body150
  %or = or i32 %88, 2
  %89 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or, ptr %task_state_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call158) #9
  tail call void @hisi_sas_slot_task_free(ptr noundef %hisi_hba, ptr noundef nonnull %1, ptr noundef %slot) #9
  br i1 %tobool.not, label %land.lhs.true175, label %if.end171.if.end202_crit_edge

if.end171.if.end202_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

land.lhs.true175:                                 ; preds = %if.end171
  %task_proto176 = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %task_proto176 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %task_proto176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp177.not = icmp eq i32 %91, 2
  br i1 %cmp177.not, label %land.lhs.true175.if.end202_crit_edge, label %do.body181

land.lhs.true175.if.end202_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

do.body181:                                       ; preds = %land.lhs.true175
  %call188 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %15) #9
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %19, i32 0, i32 2
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %state, align 4
  %94 = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool194.not = icmp eq i32 %94, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %15, i32 noundef %call188) #9
  br i1 %tobool194.not, label %do.body181.if.end202_crit_edge, label %if.then195

do.body181.if.end202_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then195:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.125, ptr noundef nonnull %1) #12
  br label %cleanup207

if.end202:                                        ; preds = %do.body181.if.end202_crit_edge, %land.lhs.true175.if.end202_crit_edge, %if.end171.if.end202_crit_edge
  %task_done = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 10
  %95 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task_done, align 4
  %tobool203.not = icmp eq ptr %96, null
  br i1 %tobool203.not, label %if.end202.cleanup207_crit_edge, label %if.then204

if.end202.cleanup207_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup207

if.then204:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %96(ptr noundef nonnull %1) #9
  br label %cleanup207

cleanup207:                                       ; preds = %if.then204, %if.end202.cleanup207_crit_edge, %if.then195, %if.then166, %if.then114, %lor.rhs.cleanup207_crit_edge, %lor.lhs.false.cleanup207_crit_edge, %entry.cleanup207_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slot_err_v2_hw(ptr noundef %task, ptr noundef %slot, i32 noundef %err_phase) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task_status = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %buf = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 18
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %trans_rx_fail_type2 = getelementptr inbounds %struct.hisi_sas_err_record_v2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %trans_rx_fail_type2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trans_rx_fail_type2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %dma_rx_err_type5 = getelementptr inbounds %struct.hisi_sas_err_record_v2, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dma_rx_err_type5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_rx_err_type5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err_phase)
  %cmp = icmp eq i32 %err_phase, 1
  br i1 %cmp, label %if.then, label %entry.for.body.i13_crit_edge

entry.for.body.i13_crit_edge:                     ; preds = %entry
  br label %for.body.i13

if.then:                                          ; preds = %entry
  %dma_tx_err_type3 = getelementptr inbounds %struct.hisi_sas_err_record_v2, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dma_tx_err_type3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dma_tx_err_type3, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %and1.i = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.i:                                       ; preds = %if.then
  %and1.1.i = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.1.i)
  %tobool.not.1.i = icmp eq i32 %and1.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end26_crit_edge

for.cond.i.if.end26_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.1.i:                                     ; preds = %for.cond.i
  %and1.2.i = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.2.i)
  %tobool.not.2.i = icmp eq i32 %and1.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end26_crit_edge

for.cond.1.i.if.end26_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %and1.3.i = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.3.i)
  %tobool.not.3.i = icmp eq i32 %and1.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.end26_crit_edge

for.cond.2.i.if.end26_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %and1.4.i = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.4.i)
  %tobool.not.4.i = icmp eq i32 %and1.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.if.end26_crit_edge

for.cond.3.i.if.end26_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %and1.5.i = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.5.i)
  %tobool.not.5.i = icmp eq i32 %and1.5.i, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.if.end26_crit_edge

for.cond.4.i.if.end26_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %and1.6.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.6.i)
  %tobool.not.6.i = icmp eq i32 %and1.6.i, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.if.end26_crit_edge

for.cond.5.i.if.end26_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %and1.7.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.7.i)
  %tobool.not.7.i = icmp eq i32 %and1.7.i, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.cond.6.i.if.end26_crit_edge

for.cond.6.i.if.end26_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %and1.8.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.8.i)
  %tobool.not.8.i = icmp eq i32 %and1.8.i, 0
  br i1 %tobool.not.8.i, label %for.cond.8.i, label %for.cond.7.i.if.end26_crit_edge

for.cond.7.i.if.end26_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %and1.9.i = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.9.i)
  %tobool.not.9.i = icmp eq i32 %and1.9.i, 0
  br i1 %tobool.not.9.i, label %for.cond.9.i, label %for.cond.8.i.if.end26_crit_edge

for.cond.8.i.if.end26_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %and1.10.i = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.10.i)
  %tobool.not.10.i = icmp eq i32 %and1.10.i, 0
  br i1 %tobool.not.10.i, label %for.cond.9.i.for.body.i_crit_edge, label %for.cond.9.i.if.end26_crit_edge

for.cond.9.i.if.end26_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.9.i.for.body.i_crit_edge:                ; preds = %for.cond.9.i
  br label %for.body.i

for.cond.i1:                                      ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.cond.i1.if.end26_crit_edge, label %for.cond.i1.for.body.i_crit_edge

for.cond.i1.for.body.i_crit_edge:                 ; preds = %for.cond.i1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i1.if.end26_crit_edge:                   ; preds = %for.cond.i1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.i:                                       ; preds = %for.cond.i1.for.body.i_crit_edge, %for.cond.9.i.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i1.for.body.i_crit_edge ], [ 0, %for.cond.9.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [31 x i8], ptr @parse_trans_tx_err_code_v2_hw.trans_tx_err_code_prio, i32 0, i32 %i.09.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i2 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i2, label %for.cond.i1, label %if.end26.loopexit.split.loop.exit

for.cond.i6:                                      ; preds = %for.body.i13
  %inc.i4 = add nuw nsw i32 %i.09.i7, 1
  %exitcond.not.i5 = icmp eq i32 %inc.i4, 32
  br i1 %exitcond.not.i5, label %for.cond.i6.for.body.i27_crit_edge, label %for.cond.i6.for.body.i13_crit_edge

for.cond.i6.for.body.i13_crit_edge:               ; preds = %for.cond.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i13

for.cond.i6.for.body.i27_crit_edge:               ; preds = %for.cond.i6
  br label %for.body.i27

for.body.i13:                                     ; preds = %for.cond.i6.for.body.i13_crit_edge, %entry.for.body.i13_crit_edge
  %i.09.i7 = phi i32 [ %inc.i4, %for.cond.i6.for.body.i13_crit_edge ], [ 0, %entry.for.body.i13_crit_edge ]
  %arrayidx.i8 = getelementptr [32 x i8], ptr @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio, i32 0, i32 %i.09.i7
  %16 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i8, align 1
  %conv.i9 = zext i8 %17 to i32
  %sub.i = add nsw i32 %conv.i9, -32
  %shl.i10 = shl nuw i32 1, %sub.i
  %and.i11 = and i32 %shl.i10, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %for.cond.i6, label %if.end26.loopexit90

for.cond.i19:                                     ; preds = %for.body.i27
  %inc.i17 = add nuw nsw i32 %i.09.i20, 1
  %exitcond.not.i18 = icmp eq i32 %inc.i17, 26
  br i1 %exitcond.not.i18, label %for.cond.i19.if.end26_crit_edge, label %for.cond.i19.for.body.i27_crit_edge

for.cond.i19.for.body.i27_crit_edge:              ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i27

for.cond.i19.if.end26_crit_edge:                  ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.i27:                                     ; preds = %for.cond.i19.for.body.i27_crit_edge, %for.cond.i6.for.body.i27_crit_edge
  %i.09.i20 = phi i32 [ %inc.i17, %for.cond.i19.for.body.i27_crit_edge ], [ 0, %for.cond.i6.for.body.i27_crit_edge ]
  %arrayidx.i21 = getelementptr [26 x i8], ptr @parse_dma_rx_err_code_v2_hw.dma_rx_err_code_prio, i32 0, i32 %i.09.i20
  %18 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i21, align 1
  %conv.i22 = zext i8 %19 to i32
  %sub.i23 = add nsw i32 %conv.i22, -96
  %shl.i24 = shl nuw i32 1, %sub.i23
  %and.i25 = and i32 %shl.i24, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %for.cond.i19, label %if.end26.loopexit88.split.loop.exit

if.end26.loopexit.split.loop.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le = zext i8 %15 to i32
  br label %if.end26

if.end26.loopexit88.split.loop.exit:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i22.le = zext i8 %19 to i32
  br label %if.end26

if.end26.loopexit90:                              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i9.le = zext i8 %17 to i32
  br label %if.end26

if.end26:                                         ; preds = %if.end26.loopexit90, %if.end26.loopexit88.split.loop.exit, %if.end26.loopexit.split.loop.exit, %for.cond.i19.if.end26_crit_edge, %for.cond.i1.if.end26_crit_edge, %for.cond.9.i.if.end26_crit_edge, %for.cond.8.i.if.end26_crit_edge, %for.cond.7.i.if.end26_crit_edge, %for.cond.6.i.if.end26_crit_edge, %for.cond.5.i.if.end26_crit_edge, %for.cond.4.i.if.end26_crit_edge, %for.cond.3.i.if.end26_crit_edge, %for.cond.2.i.if.end26_crit_edge, %for.cond.1.i.if.end26_crit_edge, %for.cond.i.if.end26_crit_edge, %if.then.if.end26_crit_edge
  %error.0 = phi i32 [ 69, %if.then.if.end26_crit_edge ], [ 70, %for.cond.i.if.end26_crit_edge ], [ 71, %for.cond.1.i.if.end26_crit_edge ], [ 72, %for.cond.2.i.if.end26_crit_edge ], [ 73, %for.cond.3.i.if.end26_crit_edge ], [ 74, %for.cond.4.i.if.end26_crit_edge ], [ 64, %for.cond.5.i.if.end26_crit_edge ], [ 65, %for.cond.6.i.if.end26_crit_edge ], [ 66, %for.cond.7.i.if.end26_crit_edge ], [ 67, %for.cond.8.i.if.end26_crit_edge ], [ 68, %for.cond.9.i.if.end26_crit_edge ], [ %conv.i9.le, %if.end26.loopexit90 ], [ %conv.i.le, %if.end26.loopexit.split.loop.exit ], [ %conv.i22.le, %if.end26.loopexit88.split.loop.exit ], [ -1, %for.cond.i1.if.end26_crit_edge ], [ -1, %for.cond.i19.if.end26_crit_edge ]
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %20 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %task_proto, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %21, label %if.end26.sw.epilog88_crit_edge [
    i32 8, label %sw.bb
    i32 2, label %sw.bb52
    i32 1, label %if.end26.sw.bb54_crit_edge
    i32 4, label %if.end26.sw.bb54_crit_edge115
    i32 5, label %if.end26.sw.bb54_crit_edge116
  ]

if.end26.sw.bb54_crit_edge116:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb54

if.end26.sw.bb54_crit_edge115:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb54

if.end26.sw.bb54_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb54

if.end26.sw.epilog88_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog88

sw.bb:                                            ; preds = %if.end26
  %23 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %error.0, label %sw.bb.sw.epilog88_crit_edge [
    i32 15, label %sw.bb27
    i32 8, label %sw.bb28
    i32 9, label %sw.bb31
    i32 10, label %sw.bb34
    i32 2, label %sw.bb37
    i32 108, label %sw.bb.sw.bb40_crit_edge
    i32 3, label %sw.bb.sw.bb40_crit_edge117
    i32 106, label %sw.bb.sw.bb40_crit_edge118
    i32 12, label %sw.bb43
    i32 101, label %sw.bb45
    i32 102, label %sw.bb47
    i32 0, label %sw.bb.sw.bb50_crit_edge
    i32 1, label %sw.bb.sw.bb50_crit_edge119
    i32 4, label %sw.bb.sw.bb50_crit_edge120
    i32 6, label %sw.bb.sw.bb50_crit_edge121
    i32 11, label %sw.bb.sw.bb50_crit_edge122
    i32 13, label %sw.bb.sw.bb50_crit_edge123
    i32 14, label %sw.bb.sw.bb50_crit_edge124
    i32 16, label %sw.bb.sw.bb50_crit_edge125
    i32 18, label %sw.bb.sw.bb50_crit_edge126
    i32 19, label %sw.bb.sw.bb50_crit_edge127
    i32 20, label %sw.bb.sw.bb50_crit_edge128
    i32 21, label %sw.bb.sw.bb50_crit_edge129
    i32 22, label %sw.bb.sw.bb50_crit_edge130
    i32 23, label %sw.bb.sw.bb50_crit_edge131
    i32 24, label %sw.bb.sw.bb50_crit_edge132
    i32 25, label %sw.bb.sw.bb50_crit_edge133
    i32 26, label %sw.bb.sw.bb50_crit_edge134
    i32 27, label %sw.bb.sw.bb50_crit_edge135
    i32 28, label %sw.bb.sw.bb50_crit_edge136
    i32 29, label %sw.bb.sw.bb50_crit_edge137
    i32 32, label %sw.bb.sw.bb50_crit_edge138
    i32 33, label %sw.bb.sw.bb50_crit_edge139
    i32 34, label %sw.bb.sw.bb50_crit_edge140
    i32 39, label %sw.bb.sw.bb50_crit_edge141
    i32 40, label %sw.bb.sw.bb50_crit_edge142
    i32 41, label %sw.bb.sw.bb50_crit_edge143
    i32 42, label %sw.bb.sw.bb50_crit_edge144
    i32 44, label %sw.bb.sw.bb50_crit_edge145
    i32 46, label %sw.bb.sw.bb50_crit_edge146
    i32 47, label %sw.bb.sw.bb50_crit_edge147
    i32 17, label %sw.bb.sw.bb50_crit_edge148
    i32 45, label %sw.bb.sw.bb50_crit_edge149
    i32 48, label %sw.bb.sw.bb50_crit_edge150
    i32 49, label %sw.bb.sw.bb50_crit_edge151
    i32 50, label %sw.bb.sw.bb50_crit_edge152
    i32 51, label %sw.bb.sw.bb50_crit_edge153
    i32 56, label %sw.bb.sw.bb50_crit_edge154
    i32 67, label %sw.bb.sw.bb50_crit_edge155
    i32 69, label %sw.bb.sw.bb50_crit_edge156
    i32 70, label %sw.bb.sw.bb50_crit_edge157
    i32 71, label %sw.bb.sw.bb50_crit_edge158
    i32 72, label %sw.bb.sw.bb50_crit_edge159
    i32 90, label %sw.bb.sw.bb50_crit_edge160
    i32 99, label %sw.bb.sw.bb50_crit_edge161
    i32 103, label %sw.bb.sw.bb50_crit_edge162
    i32 114, label %sw.bb.sw.bb50_crit_edge163
    i32 115, label %sw.bb.sw.bb50_crit_edge164
    i32 116, label %sw.bb.sw.bb50_crit_edge165
    i32 105, label %sw.bb.sw.bb50_crit_edge166
    i32 121, label %sw.bb.sw.bb50_crit_edge167
  ]

sw.bb.sw.bb50_crit_edge167:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge166:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge165:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge164:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge163:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge162:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge161:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge160:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge159:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge158:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge157:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge156:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge155:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge154:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge153:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge152:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge151:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge150:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge149:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge148:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge147:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge146:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge145:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge144:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge143:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge142:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge141:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge140:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge139:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge138:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge137:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge136:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge135:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge134:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge133:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge132:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge131:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge130:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge129:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge128:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge127:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge126:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge125:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge124:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge123:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge122:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge121:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge120:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge119:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb50_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb50

sw.bb.sw.bb40_crit_edge118:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40

sw.bb.sw.bb40_crit_edge117:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40

sw.bb.sw.bb40_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40

sw.bb.sw.epilog88_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog88

sw.bb27:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 135, ptr %stat, align 4
  %open_rej_reason = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %25 = ptrtoint ptr %open_rej_reason to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %open_rej_reason, align 4
  br label %sw.epilog88

sw.bb28:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat29 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %stat29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 135, ptr %stat29, align 4
  %open_rej_reason30 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %27 = ptrtoint ptr %open_rej_reason30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %open_rej_reason30, align 4
  br label %sw.epilog88

sw.bb31:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat32 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %stat32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 135, ptr %stat32, align 4
  %open_rej_reason33 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %29 = ptrtoint ptr %open_rej_reason33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %open_rej_reason33, align 4
  br label %sw.epilog88

sw.bb34:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat35 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %stat35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 135, ptr %stat35, align 4
  %open_rej_reason36 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %31 = ptrtoint ptr %open_rej_reason36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %open_rej_reason36, align 4
  br label %sw.epilog88

sw.bb37:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat38 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %stat38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 135, ptr %stat38, align 4
  %open_rej_reason39 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %33 = ptrtoint ptr %open_rej_reason39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %open_rej_reason39, align 4
  br label %sw.epilog88

sw.bb40:                                          ; preds = %sw.bb.sw.bb40_crit_edge, %sw.bb.sw.bb40_crit_edge117, %sw.bb.sw.bb40_crit_edge118
  %stat41 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %stat41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 135, ptr %stat41, align 4
  %open_rej_reason42 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %35 = ptrtoint ptr %open_rej_reason42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %open_rej_reason42, align 4
  br label %sw.epilog88

sw.bb43:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat44 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %stat44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 128, ptr %stat44, align 4
  br label %sw.epilog88

sw.bb45:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %stat46 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %stat46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 130, ptr %stat46, align 4
  %residual = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 4
  %38 = ptrtoint ptr %residual to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %residual, align 4
  br label %sw.epilog88

sw.bb47:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %residual48 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 4
  %39 = ptrtoint ptr %residual48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %4, ptr %residual48, align 4
  %stat49 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %stat49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 129, ptr %stat49, align 4
  br label %sw.epilog88

sw.bb50:                                          ; preds = %sw.bb.sw.bb50_crit_edge, %sw.bb.sw.bb50_crit_edge119, %sw.bb.sw.bb50_crit_edge120, %sw.bb.sw.bb50_crit_edge121, %sw.bb.sw.bb50_crit_edge122, %sw.bb.sw.bb50_crit_edge123, %sw.bb.sw.bb50_crit_edge124, %sw.bb.sw.bb50_crit_edge125, %sw.bb.sw.bb50_crit_edge126, %sw.bb.sw.bb50_crit_edge127, %sw.bb.sw.bb50_crit_edge128, %sw.bb.sw.bb50_crit_edge129, %sw.bb.sw.bb50_crit_edge130, %sw.bb.sw.bb50_crit_edge131, %sw.bb.sw.bb50_crit_edge132, %sw.bb.sw.bb50_crit_edge133, %sw.bb.sw.bb50_crit_edge134, %sw.bb.sw.bb50_crit_edge135, %sw.bb.sw.bb50_crit_edge136, %sw.bb.sw.bb50_crit_edge137, %sw.bb.sw.bb50_crit_edge138, %sw.bb.sw.bb50_crit_edge139, %sw.bb.sw.bb50_crit_edge140, %sw.bb.sw.bb50_crit_edge141, %sw.bb.sw.bb50_crit_edge142, %sw.bb.sw.bb50_crit_edge143, %sw.bb.sw.bb50_crit_edge144, %sw.bb.sw.bb50_crit_edge145, %sw.bb.sw.bb50_crit_edge146, %sw.bb.sw.bb50_crit_edge147, %sw.bb.sw.bb50_crit_edge148, %sw.bb.sw.bb50_crit_edge149, %sw.bb.sw.bb50_crit_edge150, %sw.bb.sw.bb50_crit_edge151, %sw.bb.sw.bb50_crit_edge152, %sw.bb.sw.bb50_crit_edge153, %sw.bb.sw.bb50_crit_edge154, %sw.bb.sw.bb50_crit_edge155, %sw.bb.sw.bb50_crit_edge156, %sw.bb.sw.bb50_crit_edge157, %sw.bb.sw.bb50_crit_edge158, %sw.bb.sw.bb50_crit_edge159, %sw.bb.sw.bb50_crit_edge160, %sw.bb.sw.bb50_crit_edge161, %sw.bb.sw.bb50_crit_edge162, %sw.bb.sw.bb50_crit_edge163, %sw.bb.sw.bb50_crit_edge164, %sw.bb.sw.bb50_crit_edge165, %sw.bb.sw.bb50_crit_edge166, %sw.bb.sw.bb50_crit_edge167
  %stat51 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %stat51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 132, ptr %stat51, align 4
  %abort = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 10
  %42 = ptrtoint ptr %abort to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %abort, align 8
  br label %sw.epilog88

sw.bb52:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %stat53 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %stat53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %stat53, align 4
  br label %sw.epilog88

sw.bb54:                                          ; preds = %if.end26.sw.bb54_crit_edge, %if.end26.sw.bb54_crit_edge115, %if.end26.sw.bb54_crit_edge116
  %44 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %error.0, label %sw.default84 [
    i32 15, label %sw.bb55
    i32 12, label %sw.bb58
    i32 8, label %sw.bb60
    i32 9, label %sw.bb63
    i32 10, label %sw.bb66
    i32 2, label %sw.bb69
    i32 106, label %sw.bb54.sw.bb72_crit_edge
    i32 108, label %sw.bb54.sw.bb72_crit_edge168
    i32 3, label %sw.bb54.sw.bb72_crit_edge169
    i32 101, label %sw.bb75
    i32 102, label %sw.bb78
    i32 0, label %sw.bb54.sw.bb81_crit_edge
    i32 1, label %sw.bb54.sw.bb81_crit_edge170
    i32 4, label %sw.bb54.sw.bb81_crit_edge171
    i32 6, label %sw.bb54.sw.bb81_crit_edge172
    i32 11, label %sw.bb54.sw.bb81_crit_edge173
    i32 13, label %sw.bb54.sw.bb81_crit_edge174
    i32 14, label %sw.bb54.sw.bb81_crit_edge175
    i32 16, label %sw.bb54.sw.bb81_crit_edge176
    i32 18, label %sw.bb54.sw.bb81_crit_edge177
    i32 19, label %sw.bb54.sw.bb81_crit_edge178
    i32 20, label %sw.bb54.sw.bb81_crit_edge179
    i32 21, label %sw.bb54.sw.bb81_crit_edge180
    i32 22, label %sw.bb54.sw.bb81_crit_edge181
    i32 23, label %sw.bb54.sw.bb81_crit_edge182
    i32 24, label %sw.bb54.sw.bb81_crit_edge183
    i32 25, label %sw.bb54.sw.bb81_crit_edge184
    i32 27, label %sw.bb54.sw.bb81_crit_edge185
    i32 28, label %sw.bb54.sw.bb81_crit_edge186
    i32 30, label %sw.bb54.sw.bb81_crit_edge187
    i32 31, label %sw.bb54.sw.bb81_crit_edge188
    i32 34, label %sw.bb54.sw.bb81_crit_edge189
    i32 33, label %sw.bb54.sw.bb81_crit_edge190
    i32 35, label %sw.bb54.sw.bb81_crit_edge191
    i32 36, label %sw.bb54.sw.bb81_crit_edge192
    i32 37, label %sw.bb54.sw.bb81_crit_edge193
    i32 38, label %sw.bb54.sw.bb81_crit_edge194
    i32 39, label %sw.bb54.sw.bb81_crit_edge195
    i32 40, label %sw.bb54.sw.bb81_crit_edge196
    i32 41, label %sw.bb54.sw.bb81_crit_edge197
    i32 42, label %sw.bb54.sw.bb81_crit_edge198
    i32 44, label %sw.bb54.sw.bb81_crit_edge199
    i32 45, label %sw.bb54.sw.bb81_crit_edge200
    i32 46, label %sw.bb54.sw.bb81_crit_edge201
    i32 47, label %sw.bb54.sw.bb81_crit_edge202
    i32 48, label %sw.bb54.sw.bb81_crit_edge203
    i32 49, label %sw.bb54.sw.bb81_crit_edge204
    i32 50, label %sw.bb54.sw.bb81_crit_edge205
    i32 56, label %sw.bb54.sw.bb81_crit_edge206
    i32 67, label %sw.bb54.sw.bb81_crit_edge207
    i32 69, label %sw.bb54.sw.bb81_crit_edge208
    i32 70, label %sw.bb54.sw.bb81_crit_edge209
    i32 71, label %sw.bb54.sw.bb81_crit_edge210
    i32 72, label %sw.bb54.sw.bb81_crit_edge211
    i32 80, label %sw.bb54.sw.bb81_crit_edge212
    i32 81, label %sw.bb54.sw.bb81_crit_edge213
    i32 82, label %sw.bb54.sw.bb81_crit_edge214
    i32 83, label %sw.bb54.sw.bb81_crit_edge215
    i32 84, label %sw.bb54.sw.bb81_crit_edge216
    i32 85, label %sw.bb54.sw.bb81_crit_edge217
    i32 88, label %sw.bb54.sw.bb81_crit_edge218
    i32 99, label %sw.bb54.sw.bb81_crit_edge219
    i32 103, label %sw.bb54.sw.bb81_crit_edge220
    i32 105, label %sw.bb54.sw.bb81_crit_edge221
    i32 109, label %sw.bb54.sw.bb81_crit_edge222
    i32 110, label %sw.bb54.sw.bb81_crit_edge223
    i32 111, label %sw.bb54.sw.bb81_crit_edge224
    i32 112, label %sw.bb54.sw.bb81_crit_edge225
    i32 113, label %sw.bb54.sw.bb81_crit_edge226
    i32 114, label %sw.bb54.sw.bb81_crit_edge227
    i32 115, label %sw.bb54.sw.bb81_crit_edge228
    i32 116, label %sw.bb54.sw.bb81_crit_edge229
    i32 117, label %sw.bb54.sw.bb81_crit_edge230
    i32 118, label %sw.bb54.sw.bb81_crit_edge231
    i32 119, label %sw.bb54.sw.bb81_crit_edge232
    i32 121, label %sw.bb54.sw.bb81_crit_edge233
    i32 51, label %sw.bb54.sw.bb81_crit_edge234
    i32 7, label %sw.bb54.sw.bb81_crit_edge235
  ]

sw.bb54.sw.bb81_crit_edge235:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge234:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge233:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge232:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge231:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge230:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge229:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge228:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge227:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge226:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge225:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge224:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge223:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge222:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge221:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge220:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge219:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge218:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge217:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge216:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge215:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge214:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge213:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge212:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge211:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge210:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge209:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge208:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge207:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge206:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge205:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge204:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge203:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge202:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge201:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge200:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge199:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge198:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge197:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge196:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge195:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge194:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge193:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge192:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge191:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge190:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge189:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge188:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge187:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge186:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge185:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge184:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge183:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge182:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge181:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge180:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge179:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge178:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge177:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge176:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge175:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge174:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge173:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge172:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge171:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge170:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb81_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81

sw.bb54.sw.bb72_crit_edge169:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb72

sw.bb54.sw.bb72_crit_edge168:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb72

sw.bb54.sw.bb72_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb72

sw.bb55:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat56 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %stat56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 135, ptr %stat56, align 4
  %open_rej_reason57 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %46 = ptrtoint ptr %open_rej_reason57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 10, ptr %open_rej_reason57, align 4
  br label %sw.epilog86

sw.bb58:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %task_status, align 4
  %stat59 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %stat59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %stat59, align 4
  br label %sw.epilog86

sw.bb60:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat61 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %stat61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 135, ptr %stat61, align 4
  %open_rej_reason62 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %50 = ptrtoint ptr %open_rej_reason62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %open_rej_reason62, align 4
  br label %sw.epilog86

sw.bb63:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat64 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %stat64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 135, ptr %stat64, align 4
  %open_rej_reason65 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %52 = ptrtoint ptr %open_rej_reason65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %open_rej_reason65, align 4
  br label %sw.epilog86

sw.bb66:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat67 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %stat67 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 135, ptr %stat67, align 4
  %open_rej_reason68 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %54 = ptrtoint ptr %open_rej_reason68 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %open_rej_reason68, align 4
  br label %sw.epilog86

sw.bb69:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat70 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %stat70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 135, ptr %stat70, align 4
  %open_rej_reason71 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %56 = ptrtoint ptr %open_rej_reason71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %open_rej_reason71, align 4
  br label %sw.epilog86

sw.bb72:                                          ; preds = %sw.bb54.sw.bb72_crit_edge, %sw.bb54.sw.bb72_crit_edge168, %sw.bb54.sw.bb72_crit_edge169
  %stat73 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %stat73 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 135, ptr %stat73, align 4
  %open_rej_reason74 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 5
  %58 = ptrtoint ptr %open_rej_reason74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %open_rej_reason74, align 4
  br label %sw.epilog86

sw.bb75:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat76 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %stat76 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 130, ptr %stat76, align 4
  %residual77 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 4
  %60 = ptrtoint ptr %residual77 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %residual77, align 4
  br label %sw.epilog86

sw.bb78:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %residual79 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 4
  %61 = ptrtoint ptr %residual79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %4, ptr %residual79, align 4
  %stat80 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %stat80 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 129, ptr %stat80, align 4
  br label %sw.epilog86

sw.bb81:                                          ; preds = %sw.bb54.sw.bb81_crit_edge, %sw.bb54.sw.bb81_crit_edge170, %sw.bb54.sw.bb81_crit_edge171, %sw.bb54.sw.bb81_crit_edge172, %sw.bb54.sw.bb81_crit_edge173, %sw.bb54.sw.bb81_crit_edge174, %sw.bb54.sw.bb81_crit_edge175, %sw.bb54.sw.bb81_crit_edge176, %sw.bb54.sw.bb81_crit_edge177, %sw.bb54.sw.bb81_crit_edge178, %sw.bb54.sw.bb81_crit_edge179, %sw.bb54.sw.bb81_crit_edge180, %sw.bb54.sw.bb81_crit_edge181, %sw.bb54.sw.bb81_crit_edge182, %sw.bb54.sw.bb81_crit_edge183, %sw.bb54.sw.bb81_crit_edge184, %sw.bb54.sw.bb81_crit_edge185, %sw.bb54.sw.bb81_crit_edge186, %sw.bb54.sw.bb81_crit_edge187, %sw.bb54.sw.bb81_crit_edge188, %sw.bb54.sw.bb81_crit_edge189, %sw.bb54.sw.bb81_crit_edge190, %sw.bb54.sw.bb81_crit_edge191, %sw.bb54.sw.bb81_crit_edge192, %sw.bb54.sw.bb81_crit_edge193, %sw.bb54.sw.bb81_crit_edge194, %sw.bb54.sw.bb81_crit_edge195, %sw.bb54.sw.bb81_crit_edge196, %sw.bb54.sw.bb81_crit_edge197, %sw.bb54.sw.bb81_crit_edge198, %sw.bb54.sw.bb81_crit_edge199, %sw.bb54.sw.bb81_crit_edge200, %sw.bb54.sw.bb81_crit_edge201, %sw.bb54.sw.bb81_crit_edge202, %sw.bb54.sw.bb81_crit_edge203, %sw.bb54.sw.bb81_crit_edge204, %sw.bb54.sw.bb81_crit_edge205, %sw.bb54.sw.bb81_crit_edge206, %sw.bb54.sw.bb81_crit_edge207, %sw.bb54.sw.bb81_crit_edge208, %sw.bb54.sw.bb81_crit_edge209, %sw.bb54.sw.bb81_crit_edge210, %sw.bb54.sw.bb81_crit_edge211, %sw.bb54.sw.bb81_crit_edge212, %sw.bb54.sw.bb81_crit_edge213, %sw.bb54.sw.bb81_crit_edge214, %sw.bb54.sw.bb81_crit_edge215, %sw.bb54.sw.bb81_crit_edge216, %sw.bb54.sw.bb81_crit_edge217, %sw.bb54.sw.bb81_crit_edge218, %sw.bb54.sw.bb81_crit_edge219, %sw.bb54.sw.bb81_crit_edge220, %sw.bb54.sw.bb81_crit_edge221, %sw.bb54.sw.bb81_crit_edge222, %sw.bb54.sw.bb81_crit_edge223, %sw.bb54.sw.bb81_crit_edge224, %sw.bb54.sw.bb81_crit_edge225, %sw.bb54.sw.bb81_crit_edge226, %sw.bb54.sw.bb81_crit_edge227, %sw.bb54.sw.bb81_crit_edge228, %sw.bb54.sw.bb81_crit_edge229, %sw.bb54.sw.bb81_crit_edge230, %sw.bb54.sw.bb81_crit_edge231, %sw.bb54.sw.bb81_crit_edge232, %sw.bb54.sw.bb81_crit_edge233, %sw.bb54.sw.bb81_crit_edge234, %sw.bb54.sw.bb81_crit_edge235
  %abort82 = getelementptr inbounds %struct.hisi_sas_slot, ptr %slot, i32 0, i32 10
  %63 = ptrtoint ptr %abort82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %abort82, align 8
  %stat83 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %64 = ptrtoint ptr %stat83 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 138, ptr %stat83, align 4
  br label %sw.epilog86

sw.default84:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %stat85 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %stat85 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 137, ptr %stat85, align 4
  br label %sw.epilog86

sw.epilog86:                                      ; preds = %sw.default84, %sw.bb81, %sw.bb78, %sw.bb75, %sw.bb72, %sw.bb69, %sw.bb66, %sw.bb63, %sw.bb60, %sw.bb58, %sw.bb55
  tail call void @hisi_sas_sata_done(ptr noundef %task, ptr noundef %slot) #9
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %sw.epilog86, %sw.bb52, %sw.bb50, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb27, %sw.bb.sw.epilog88_crit_edge, %if.end26.sw.epilog88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_task_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_ssp_task_response(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_sata_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_slot_task_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_platform_get_irqs_affinity(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_hisi_sas_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hisi_sas_get_ata_protocol(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_sas_internal_abort_quirk_timeout(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr i8, ptr %t, i32 -56
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.end:                                           ; preds = %entry
  %phy_list = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %phy_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %phy_list
  br i1 %cmp.not, label %for.cond.cleanup20_crit_edge, label %for.body

for.cond.cleanup20_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

for.body:                                         ; preds = %for.cond
  %lldd_phy = getelementptr i8, ptr %.pn, i32 16
  %3 = ptrtoint ptr %lldd_phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lldd_phy, align 4
  %hisi_hba6 = getelementptr inbounds %struct.hisi_sas_phy, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %hisi_hba6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hisi_hba6, align 4
  %id = getelementptr i8, ptr %.pn, i32 -144
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %regs1.i = getelementptr inbounds %struct.hisi_hba, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1.i, align 4
  %mul.i = shl i32 %8, 10
  %add.ptr.i = getelementptr i8, ptr %10, i32 8804
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %11)
  %cmp7 = icmp ne i32 %11, 131072
  %12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  %or.cond = and i1 %cmp7, %tobool8.not
  br i1 %or.cond, label %for.body.for.cond_crit_edge, label %if.then9

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i.le = getelementptr inbounds %struct.hisi_hba, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %regs1.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i.le, align 4
  %add.ptr.i39 = getelementptr i8, ptr %14, i32 %mul.i
  %add.ptr2.i40 = getelementptr i8, ptr %add.ptr.i39, i32 8376
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i40) #9, !srcloc !354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %16 = or i32 %15, 524288
  %17 = ptrtoint ptr %regs1.i.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs1.i.le, align 4
  %add.ptr.i43 = getelementptr i8, ptr %18, i32 %mul.i
  %add.ptr2.i44 = getelementptr i8, ptr %add.ptr.i43, i32 8376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i44, i32 %16) #9, !srcloc !357
  br label %cleanup20

cleanup20:                                        ; preds = %if.then9, %for.cond.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_phy_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_stop_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_sas_init_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_queues_v2_hw(ptr nocapture noundef readonly %shost) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13
  %nr_queues = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not = icmp eq i32 %1, 0
  br i1 %cmp24.not, label %entry.for.end9_crit_edge, label %for.body.lr.ph

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.body.lr.ph:                                   ; preds = %entry
  %irq_map = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %queue_offset = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 0, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %irq_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_map, align 8
  %add = add i32 %queue.025, 96
  %arrayidx1 = getelementptr i32, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %irq_get_affinity_mask.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

irq_get_affinity_mask.exit:                       ; preds = %for.body
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i, align 4
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %affinity.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %irq_get_affinity_mask.exit.for.inc_crit_edge, label %for.cond3.preheader

irq_get_affinity_mask.exit.for.inc_crit_edge:     ; preds = %irq_get_affinity_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond3.preheader:                              ; preds = %irq_get_affinity_mask.exit
  %call421 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %9) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call421, i32 %10)
  %cmp522 = icmp ult i32 %call421, %10
  br i1 %cmp522, label %for.cond3.preheader.for.body6_crit_edge, label %for.cond3.preheader.for.inc_crit_edge

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %call423 = phi i32 [ %call4, %for.body6.for.body6_crit_edge ], [ %call421, %for.cond3.preheader.for.body6_crit_edge ]
  %11 = ptrtoint ptr %queue_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_offset, align 4
  %add7 = add i32 %12, %queue.025
  %13 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tag_set, align 4
  %arrayidx8 = getelementptr i32, ptr %14, i32 %call423
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add7, ptr %arrayidx8, align 4
  %call4 = tail call i32 @cpumask_next(i32 noundef %call423, ptr noundef nonnull %9) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %16
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.inc_crit_edge

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.inc:                                          ; preds = %for.body6.for.inc_crit_edge, %for.cond3.preheader.for.inc_crit_edge, %irq_get_affinity_mask.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %queue.025, 1
  %17 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_queues, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end9_crit_edge

for.inc.for.end9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end9:                                         ; preds = %for.inc.for.end9_crit_edge, %entry.for.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_host_reset(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_sas_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
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
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !274, !276, !278, !280, !282, !283, !284, !285, !287, !288, !290, !291, !292, !293, !295, !296, !298, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !319, !321, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !338, !340, !341, !343}
!llvm.module.flags = !{!345, !346, !347, !348, !349, !350, !351, !352}
!llvm.ident = !{!353}

!0 = !{ptr @__initcall__kmod_hisi_sas_v2_hw__297_3654_hisi_sas_v2_driver_init6, !1, !"__initcall__kmod_hisi_sas_v2_hw__297_3654_hisi_sas_v2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3654, i32 1}
!2 = !{ptr @__exitcall_hisi_sas_v2_driver_exit, !1, !"__exitcall_hisi_sas_v2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file298, !4, !"__UNIQUE_ID_file298", i1 false, i1 false}
!4 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3656, i32 1}
!5 = !{ptr @__UNIQUE_ID_license299, !4, !"__UNIQUE_ID_license299", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author300, !7, !"__UNIQUE_ID_author300", i1 false, i1 false}
!7 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3657, i32 1}
!8 = !{ptr @__UNIQUE_ID_description301, !9, !"__UNIQUE_ID_description301", i1 false, i1 false}
!9 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3658, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias302, !11, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!11 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3659, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3648, i32 11}
!14 = !{ptr @hisi_sas_v2_driver, !15, !"hisi_sas_v2_driver", i1 false, i1 false}
!15 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3644, i32 31}
!16 = !{ptr @hisi_sas_v2_hw, !17, !"hisi_sas_v2_hw", i1 false, i1 false}
!17 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3590, i32 33}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1385, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hw_init_v2_hw._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @hw_init_v2_hw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1079, i32 46}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1081, i32 4}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @reset_hw_v2_hw._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @reset_hw_v2_hw._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1093, i32 4}
!35 = !{ptr @reset_hw_v2_hw._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @reset_hw_v2_hw._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1106, i32 4}
!39 = !{ptr @reset_hw_v2_hw._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @reset_hw_v2_hw._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1110, i32 3}
!43 = !{ptr @reset_hw_v2_hw._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @reset_hw_v2_hw._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1172, i32 35}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1211, i32 43}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1226, i32 4}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @init_reg_v2_hw._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @init_reg_v2_hw._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"sig_atten_lu", i1 false, i1 false}
!56 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1158, i32 36}
!57 = distinct !{null, !58, !"x6000", i1 false, i1 false}
!58 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1157, i32 42}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3331, i32 11}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3333, i32 4}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @interrupt_init_v2_hw._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @interrupt_init_v2_hw._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3345, i32 11}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3347, i32 4}
!70 = !{ptr @interrupt_init_v2_hw._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @interrupt_init_v2_hw._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3357, i32 11}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3359, i32 4}
!76 = !{ptr @interrupt_init_v2_hw._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @interrupt_init_v2_hw._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3373, i32 13}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3375, i32 4}
!82 = !{ptr @interrupt_init_v2_hw._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @interrupt_init_v2_hw._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"phy_interrupts", i1 false, i1 false}
!85 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3285, i32 22}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2667, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @phy_up_v2_hw._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @phy_up_v2_hw._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2681, i32 2}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @phy_up_v2_hw._entry.40, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @phy_up_v2_hw._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2730, i32 2}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @phy_down_v2_hw._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @phy_down_v2_hw._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2889, i32 5}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @int_chnl_int_v2_hw._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @int_chnl_int_v2_hw._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2902, i32 5}
!108 = !{ptr @int_chnl_int_v2_hw._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @int_chnl_int_v2_hw._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2832, i32 10}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2836, i32 10}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2840, i32 10}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2844, i32 10}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2848, i32 10}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2852, i32 10}
!122 = distinct !{null, !123, !"port_ecc_axi_error", i1 false, i1 false}
!123 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2829, i32 39}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3219, i32 3}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sata_int_v2_hw._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @sata_int_v2_hw._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3226, i32 3}
!131 = !{ptr @sata_int_v2_hw._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @sata_int_v2_hw._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3248, i32 3}
!135 = !{ptr @sata_int_v2_hw._entry.62, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sata_int_v2_hw._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3266, i32 2}
!139 = !{ptr @sata_int_v2_hw._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sata_int_v2_hw._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"fatal_interrupts", i1 false, i1 false}
!142 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3290, i32 22}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2948, i32 4}
!145 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @one_bit_ecc_error_process_v2_hw._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @one_bit_ecc_error_process_v2_hw._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 425, i32 10}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 432, i32 10}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 439, i32 10}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 446, i32 10}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 453, i32 10}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 460, i32 10}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 467, i32 10}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 474, i32 10}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 481, i32 10}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 488, i32 10}
!168 = !{ptr @one_bit_ecc_errors, !169, !"one_bit_ecc_errors", i1 false, i1 false}
!169 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 420, i32 39}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2968, i32 4}
!172 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @multi_bit_ecc_error_process_v2_hw._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @multi_bit_ecc_error_process_v2_hw._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 498, i32 10}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 505, i32 10}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 512, i32 10}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 519, i32 10}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 526, i32 10}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 533, i32 10}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 540, i32 10}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 547, i32 10}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 554, i32 10}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 561, i32 10}
!195 = !{ptr @multi_bit_ecc_errors, !196, !"multi_bit_ecc_errors", i1 false, i1 false}
!196 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 493, i32 39}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3078, i32 5}
!199 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @fatal_axi_int_v2_hw._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @fatal_axi_int_v2_hw._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @fatal_axi_int_v2_hw._entry.94, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3083, i32 4}
!204 = !{ptr @fatal_axi_int_v2_hw._entry_ptr.95, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3095, i32 3}
!207 = !{ptr @fatal_axi_int_v2_hw.__UNIQUE_ID_ddebug292, !206, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3021, i32 10}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3025, i32 10}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3029, i32 10}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3043, i32 10}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3047, i32 10}
!218 = !{ptr @fatal_axi_errors, !219, !"fatal_axi_errors", i1 false, i1 false}
!219 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3018, i32 39}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2998, i32 26}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2999, i32 26}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3000, i32 26}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3001, i32 26}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3002, i32 26}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3003, i32 26}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3004, i32 26}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3005, i32 26}
!236 = !{ptr @axi_error, !237, !"axi_error", i1 false, i1 false}
!237 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2997, i32 39}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3010, i32 27}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3011, i32 27}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3012, i32 27}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3013, i32 27}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3014, i32 27}
!248 = !{ptr @fifo_error, !249, !"fifo_error", i1 false, i1 false}
!249 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3009, i32 39}
!250 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2355, i32 3}
!252 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @slot_complete_v2_hw.__UNIQUE_ID_ddebug291, !251, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!254 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2400, i32 4}
!256 = !{ptr @slot_complete_v2_hw._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @slot_complete_v2_hw._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.119, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2454, i32 3}
!260 = !{ptr @slot_complete_v2_hw._entry.118, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @slot_complete_v2_hw._entry_ptr.120, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2463, i32 3}
!264 = !{ptr @slot_complete_v2_hw._entry.121, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @slot_complete_v2_hw._entry_ptr.123, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2474, i32 4}
!268 = !{ptr @slot_complete_v2_hw._entry.124, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @slot_complete_v2_hw._entry_ptr.126, !267, !"_entry_ptr", i1 false, i1 false}
!270 = distinct !{null, !271, !"dma_tx_err_code_prio", i1 false, i1 false}
!271 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1925, i32 18}
!272 = !{ptr @parse_trans_tx_err_code_v2_hw.trans_tx_err_code_prio, !273, !"trans_tx_err_code_prio", i1 false, i1 false}
!273 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1834, i32 18}
!274 = !{ptr @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio, !275, !"trans_rx_err_code_prio", i1 false, i1 false}
!275 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1879, i32 18}
!276 = !{ptr @parse_dma_rx_err_code_v2_hw.dma_rx_err_code_prio, !277, !"dma_rx_err_code_prio", i1 false, i1 false}
!277 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1977, i32 18}
!278 = distinct !{null, !279, !"sipc_rx_err_code_prio", i1 false, i1 false}
!279 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1951, i32 18}
!280 = !{ptr @.str.127, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 951, i32 3}
!282 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @setup_itct_v2_hw._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @setup_itct_v2_hw._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @alloc_dev_quirk_v2_hw.__key, !286, !"__key", i1 false, i1 false}
!286 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 870, i32 4}
!287 = !{ptr @.str.129, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.130, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 828, i32 3}
!290 = !{ptr @.str.131, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @sata_index_alloc_v2_hw._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @sata_index_alloc_v2_hw._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @prep_abort_v2_hw.__key, !294, !"__key", i1 false, i1 false}
!294 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 2616, i32 2}
!295 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.133, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1517, i32 3}
!298 = !{ptr @.str.134, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @disable_phy_v2_hw._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @disable_phy_v2_hw._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.135, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1446, i32 2}
!303 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @axi_bus_is_idle_v2_hw._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @axi_bus_is_idle_v2_hw._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.137, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 1470, i32 2}
!308 = !{ptr @.str.138, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @wait_io_done_v2_hw._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @wait_io_done_v2_hw._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.139, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 998, i32 4}
!313 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @clear_itct_v2_hw._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @clear_itct_v2_hw._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @init_completion.__key, !317, !"__key", i1 false, i1 false}
!317 = !{!"../include/linux/completion.h", i32 87, i32 2}
!318 = !{ptr @.str.141, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.142, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3456, i32 4}
!321 = !{ptr @.str.143, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @soft_reset_v2_hw._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @soft_reset_v2_hw._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.144, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3502, i32 3}
!326 = !{ptr @.str.145, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @write_gpio_v2_hw._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @write_gpio_v2_hw._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.146, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3526, i32 3}
!331 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug295, !330, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!333 = !{ptr @.str.148, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3530, i32 2}
!335 = !{ptr @wait_cmds_complete_timeout_v2_hw.__UNIQUE_ID_ddebug296, !334, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!336 = !{ptr @sht_v2_hw, !337, !"sht_v2_hw", i1 false, i1 false}
!337 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3561, i32 34}
!338 = !{ptr @host_v2_hw_groups, !339, !"host_v2_hw_groups", i1 false, i1 false}
!339 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3539, i32 1}
!340 = !{ptr @host_v2_hw_group, !339, !"host_v2_hw_group", i1 false, i1 false}
!341 = !{ptr @host_v2_hw_attrs, !342, !"host_v2_hw_attrs", i1 false, i1 false}
!342 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3534, i32 26}
!343 = !{ptr @sas_v2_of_match, !344, !"sas_v2_of_match", i1 false, i1 false}
!344 = !{!"../drivers/scsi/hisi_sas/hisi_sas_v2_hw.c", i32 3630, i32 34}
!345 = !{i32 1, !"wchar_size", i32 2}
!346 = !{i32 1, !"min_enum_size", i32 4}
!347 = !{i32 8, !"branch-target-enforcement", i32 0}
!348 = !{i32 8, !"sign-return-address", i32 0}
!349 = !{i32 8, !"sign-return-address-all", i32 0}
!350 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!351 = !{i32 7, !"uwtable", i32 1}
!352 = !{i32 7, !"frame-pointer", i32 2}
!353 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!354 = !{i64 7174256}
!355 = !{i64 2156090503}
!356 = !{i64 2156089907}
!357 = !{i64 7173838}
!358 = !{i64 2156128262}
!359 = !{i64 2156089544}
!360 = !{!"branch_weights", i32 2000, i32 1}
!361 = !{i64 2156089061}
!362 = !{i64 2156206275}
!363 = !{i64 7173641}
!364 = !{i64 2149072556, i64 2149072561, i64 2149072574, i64 2149072618, i64 2149072652, i64 2149072673}
!365 = !{!"auto-init"}
!366 = !{!"branch_weights", i32 1, i32 2000}
!367 = !{i32 0, i32 33}
!368 = !{i8 0, i8 2}
!369 = !{i64 2155039681, i64 2155040173, i64 2155039718, i64 2155039774, i64 2155039808, i64 2155039832, i64 2155039873, i64 2155039894, i64 2155039922, i64 2155039956}
