; ModuleID = '/llk/IR_all_yes/drivers/scsi/myrs.c_pt.bc'
source_filename = "../drivers/scsi/myrs.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.myrs_privdata = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.myrs_devstate_name_entry = type { i8, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.myrs_cpu_type_tbl = type { i8, ptr }
%struct.myrs_raid_level_name_entry = type { i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.103 = type { i32, ptr }
%struct.raid_function_template = type { ptr, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.myrs_ctlr_info = type { i8, i8, i8, i8, i16, i8, i8, i8, [7 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [3 x i8], [16 x i8], [16 x i8], [3 x i8], i8, [16 x i8], i8, [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x i8], [12 x i8], i16, i16, i32, i32, i16, i8, i8, %struct.myrs_mem_type, [16 x i8], i16, i16, [8 x i8], i16, i8, i8, %struct.myrs_mem_type, [16 x i8], [2 x %struct.anon.97], i16, i16, i16, i16, [8 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, [2 x i8], i16, i16, [4 x i8], i16, i16, i16, i16, i16, i16, i16, [2 x i8], i8, i8, i16, i32, i32, [4 x i8], [16 x i8], i8, i8, i8, i8, [4 x i8], i32, i32, i32, i32, i16, i16, i8, [6 x i8], [512 x i8] }
%struct.myrs_mem_type = type { i8, [3 x i8] }
%struct.anon.97 = type { i16, i8, i8, [12 x i8], [16 x i8] }
%struct.myrs_hba = type { ptr, ptr, i32, i32, i32, [28 x i8], [12 x i8], ptr, ptr, i32, i32, i8, i8, ptr, [20 x i8], %struct.delayed_work, i32, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.myrs_cmdblk, %struct.myrs_cmdblk, %struct.mutex, ptr, i32, ptr, %struct.mutex, ptr }
%struct.myrs_cmdblk = type { %union.myrs_cmd_mbox, i8, i8, i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%union.myrs_cmd_mbox = type { %struct.anon.84 }
%struct.anon.84 = type { i16, i8, %struct.myrs_cmd_ctrl, [3 x i8], i8, i64, [3 x i8], %struct.myrs_cmd_tmo, i8, i8, [10 x i8], %union.myrs_sgl }
%struct.myrs_cmd_ctrl = type { i8 }
%struct.myrs_cmd_tmo = type { i8 }
%union.myrs_sgl = type { [2 x %struct.myrs_sge] }
%struct.myrs_sge = type { i64, i64 }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.myrs_stat_mbox = type { i16, i8, i8, i32 }
%struct.anon.95 = type { i16, i8, %struct.myrs_cmd_ctrl, i8, i8, i8, i8, i64, [3 x i8], %struct.myrs_cmd_tmo, i8, i8, i8, i8, i64, i64, i64, i64, i64 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.execute_work = type { %struct.work_struct }
%struct.myrs_ldev_info = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.99, i8, i8, i8, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, [32 x i8], [36 x i8], [12 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [64 x i8] }
%struct.anon.99 = type { i8, [3 x i8] }
%struct.anon.86 = type { i16, i8, %struct.myrs_cmd_ctrl, i32, i64, %struct.myrs_pdev, %struct.myrs_cmd_tmo, i8, i8, [10 x i8], %union.myrs_sgl }
%struct.myrs_pdev = type { i8, i8, i8 }
%struct.anon.87 = type { i16, i8, %struct.myrs_cmd_ctrl, i32, i64, %struct.myrs_pdev, %struct.myrs_cmd_tmo, i8, i8, i16, i64, %union.myrs_sgl }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.raid_data = type { %struct.list_head, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.myrs_pdev_info = type { i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i32, [16 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [32 x i8], [36 x i8], [20 x i8], [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [256 x i8] }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.myrs_fwstat = type { i32, i32, i32, [4 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, [4 x i8], [16 x i8], [64 x i8] }
%struct.myrs_event = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [40 x i8] }

@myrs_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @myrs_id_table, ptr @myrs_probe, ptr @myrs_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@myrs_raid_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_myrs__293_3163_myrs_init_module6 = internal global ptr @myrs_init_module, section ".initcall6.init", align 4
@__exitcall_myrs_cleanup_module = internal global ptr @myrs_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [77 x i8] c"myrs.description=Mylex DAC960/AcceleRAID/eXtremeRAID driver (SCSI Interface)\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [44 x i8] c"myrs.author=Hannes Reinecke <hare@suse.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [28 x i8] c"myrs.file=drivers/scsi/myrs\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [17 x i8] c"myrs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"myrs\00", [27 x i8] zeroinitializer }, align 32
@myrs_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4201, i32 45414, i32 4201, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_GEM_privdata to i32), i32 0 }, %struct.pci_device_id { i32 4201, i32 47702, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_BA_privdata to i32), i32 0 }, %struct.pci_device_id { i32 4201, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_LP_privdata to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@DAC960_GEM_privdata = internal global { %struct.myrs_privdata, [20 x i8] } { %struct.myrs_privdata { ptr @DAC960_GEM_hw_init, ptr @DAC960_GEM_intr_handler, i32 1536 }, [20 x i8] zeroinitializer }, align 32
@DAC960_BA_privdata = internal global { %struct.myrs_privdata, [20 x i8] } { %struct.myrs_privdata { ptr @DAC960_BA_hw_init, ptr @DAC960_BA_intr_handler, i32 128 }, [20 x i8] zeroinitializer }, align 32
@DAC960_LP_privdata = internal global { %struct.myrs_privdata, [20 x i8] } { %struct.myrs_privdata { ptr @DAC960_LP_hw_init, ptr @DAC960_LP_intr_handler, i32 128 }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@DAC960_GEM_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Timeout waiting for Controller Initialisation\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC960_GEM_hw_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/scsi/myrs.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@DAC960_GEM_hw_init._entry_ptr = internal global ptr @DAC960_GEM_hw_init._entry, section ".printk_index", align 4
@DAC960_GEM_hw_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to Enable Memory Mailbox Interface\0A\00", [53 x i8] zeroinitializer }, align 32
@DAC960_GEM_hw_init._entry_ptr.8 = internal global ptr @DAC960_GEM_hw_init._entry.6, section ".printk_index", align 4
@myrs_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 2352, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Physical Device %d:%d Not Responding\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"myrs_err_status\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr = internal global ptr @myrs_err_status._entry, section ".printk_index", align 4
@myrs_err_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 2355, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Spinning Up Drives\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.15 = internal global ptr @myrs_err_status._entry.12, section ".printk_index", align 4
@myrs_err_status._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.3, i32 2358, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Configuration Checksum Error\0A\00", [34 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.18 = internal global ptr @myrs_err_status._entry.16, section ".printk_index", align 4
@myrs_err_status._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.3, i32 2361, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mirror Race Recovery Failed\0A\00", [35 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.21 = internal global ptr @myrs_err_status._entry.19, section ".printk_index", align 4
@myrs_err_status._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 2364, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Mirror Race Recovery In Progress\0A\00", [62 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.24 = internal global ptr @myrs_err_status._entry.22, section ".printk_index", align 4
@myrs_err_status._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.3, i32 2368, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Physical Device %d:%d COD Mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.27 = internal global ptr @myrs_err_status._entry.25, section ".printk_index", align 4
@myrs_err_status._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.3, i32 2371, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Logical Drive Installation Aborted\0A\00", [60 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.30 = internal global ptr @myrs_err_status._entry.28, section ".printk_index", align 4
@myrs_err_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.3, i32 2374, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Mirror Race On A Critical Logical Drive\0A\00", [55 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.33 = internal global ptr @myrs_err_status._entry.31, section ".printk_index", align 4
@myrs_err_status._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.3, i32 2377, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"New Controller Configuration Found\0A\00", [60 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.36 = internal global ptr @myrs_err_status._entry.34, section ".printk_index", align 4
@myrs_err_status._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str.3, i32 2380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fatal Memory Parity Error\0A\00", [37 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.39 = internal global ptr @myrs_err_status._entry.37, section ".printk_index", align 4
@myrs_err_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.10, ptr @.str.3, i32 2384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown Initialization Error %02X\0A\00", [61 x i8] zeroinitializer }, align 32
@myrs_err_status._entry_ptr.42 = internal global ptr @myrs_err_status._entry.40, section ".printk_index", align 4
@myrs_enable_mmio_mbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA mask out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"myrs_enable_mmio_mbox\00", [42 x i8] zeroinitializer }, align 32
@myrs_enable_mmio_mbox._entry_ptr = internal global ptr @myrs_enable_mmio_mbox._entry, section ".printk_index", align 4
@myrs_enable_mmio_mbox._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to map command mailbox\0A\00", [33 x i8] zeroinitializer }, align 32
@myrs_enable_mmio_mbox._entry_ptr.47 = internal global ptr @myrs_enable_mmio_mbox._entry.45, section ".printk_index", align 4
@myrs_enable_mmio_mbox._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map status mailbox\0A\00", [34 x i8] zeroinitializer }, align 32
@myrs_enable_mmio_mbox._entry_ptr.50 = internal global ptr @myrs_enable_mmio_mbox._entry.48, section ".printk_index", align 4
@myrs_enable_mmio_mbox._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to map firmware health buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@myrs_enable_mmio_mbox._entry_ptr.53 = internal global ptr @myrs_enable_mmio_mbox._entry.51, section ".printk_index", align 4
@myrs_enable_mmio_mbox._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable mailbox, status %X\0A\00", [59 x i8] zeroinitializer }, align 32
@myrs_enable_mmio_mbox._entry_ptr.56 = internal global ptr @myrs_enable_mmio_mbox._entry.54, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@DAC960_GEM_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 2603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unhandled command completion %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC960_GEM_intr_handler\00", [40 x i8] zeroinitializer }, align 32
@DAC960_GEM_intr_handler._entry_ptr = internal global ptr @DAC960_GEM_intr_handler._entry, section ".printk_index", align 4
@DAC960_BA_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.59, ptr @.str.3, i32 2775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC960_BA_hw_init\00", [46 x i8] zeroinitializer }, align 32
@DAC960_BA_hw_init._entry_ptr = internal global ptr @DAC960_BA_hw_init._entry, section ".printk_index", align 4
@DAC960_BA_hw_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.59, ptr @.str.3, i32 2780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_BA_hw_init._entry_ptr.61 = internal global ptr @DAC960_BA_hw_init._entry.60, section ".printk_index", align 4
@DAC960_BA_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.62, ptr @.str.3, i32 2822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC960_BA_intr_handler\00", [41 x i8] zeroinitializer }, align 32
@DAC960_BA_intr_handler._entry_ptr = internal global ptr @DAC960_BA_intr_handler._entry, section ".printk_index", align 4
@DAC960_LP_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.63, ptr @.str.3, i32 2993, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC960_LP_hw_init\00", [46 x i8] zeroinitializer }, align 32
@DAC960_LP_hw_init._entry_ptr = internal global ptr @DAC960_LP_hw_init._entry, section ".printk_index", align 4
@DAC960_LP_hw_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.63, ptr @.str.3, i32 2998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_LP_hw_init._entry_ptr.65 = internal global ptr @DAC960_LP_hw_init._entry.64, section ".printk_index", align 4
@DAC960_LP_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.66, ptr @.str.3, i32 3041, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC960_LP_intr_handler\00", [41 x i8] zeroinitializer }, align 32
@DAC960_LP_intr_handler._entry_ptr = internal global ptr @DAC960_LP_intr_handler._entry, section ".printk_index", align 4
@myrs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 3091, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scsi_add_host failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"myrs_probe\00", [21 x i8] zeroinitializer }, align 32
@myrs_probe._entry_ptr = internal global ptr @myrs_probe._entry, section ".printk_index", align 4
@myrs_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 2295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to allocate Controller\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"myrs_detect\00", [20 x i8] zeroinitializer }, align 32
@myrs_detect._entry_ptr = internal global ptr @myrs_detect._entry, section ".printk_index", align 4
@myrs_detect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cs->queue_lock\00", [16 x i8] zeroinitializer }, align 32
@myrs_detect._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.3, i32 2313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to map Controller Register Window\0A\00", [54 x i8] zeroinitializer }, align 32
@myrs_detect._entry_ptr.74 = internal global ptr @myrs_detect._entry.72, section ".printk_index", align 4
@myrs_detect._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.70, ptr @.str.3, i32 2324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to acquire IRQ Channel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@myrs_detect._entry_ptr.77 = internal global ptr @myrs_detect._entry.75, section ".printk_index", align 4
@myrs_detect._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.70, ptr @.str.3, i32 2332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize Controller\0A\00", [63 x i8] zeroinitializer }, align 32
@myrs_detect._entry_ptr.80 = internal global ptr @myrs_detect._entry.78, section ".printk_index", align 4
@myrs_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 104, ptr @myrs_queuecommand, ptr null, ptr null, ptr @.str.84, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @myrs_host_reset, ptr @myrs_slave_alloc, ptr @myrs_slave_configure, ptr @myrs_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr @myrs_shost_groups, ptr @myrs_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@myrs_alloc_host.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cs->dcmd_mutex\00", [16 x i8] zeroinitializer }, align 32
@myrs_alloc_host.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cs->cinfo_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC960\00", [25 x i8] zeroinitializer }, align 32
@myrs_shost_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @myrs_shost_group, ptr null], [24 x i8] zeroinitializer }, align 32
@myrs_sdev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @myrs_sdev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@myrs_slave_alloc.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 1, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"myrs_slave_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Logical device mapping %d:%d:%d -> %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"logical device in state %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@myrs_get_ldev_info.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"myrs_get_ldev_info\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Sending GetLogicalDeviceInfoValid for ldev %d\0A\00", [49 x i8] zeroinitializer }, align 32
@myrs_get_ldev_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 267, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Logical Drive %d is now %s\0A\00", [36 x i8] zeroinitializer }, align 32
@myrs_get_ldev_info._entry_ptr = internal global ptr @myrs_get_ldev_info._entry, section ".printk_index", align 4
@myrs_get_ldev_info._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.90, ptr @.str.3, i32 276, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Logical Drive %d Errors: Soft = %d, Failed = %d, Deferred Write = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@myrs_get_ldev_info._entry_ptr.95 = internal global ptr @myrs_get_ldev_info._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Background Initialization\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Foreground Initialization\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data Migration\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Patrol Operation\00", [47 x i8] zeroinitializer }, align 32
@myrs_get_ldev_info._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.3, i32 298, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Logical Drive %d: Background Initialization %s\0A\00", [48 x i8] zeroinitializer }, align 32
@myrs_get_ldev_info._entry_ptr.102 = internal global ptr @myrs_get_ldev_info._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Completed\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@myrs_report_progress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 152, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Logical Drive %d: %s in Progress: %d%% completed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myrs_report_progress\00", [43 x i8] zeroinitializer }, align 32
@myrs_report_progress._entry_ptr = internal global ptr @myrs_report_progress._entry, section ".printk_index", align 4
@myrs_devstate_name_list = internal constant { [11 x %struct.myrs_devstate_name_entry], [40 x i8] } { [11 x %struct.myrs_devstate_name_entry] [%struct.myrs_devstate_name_entry { i8 0, ptr @.str.110 }, %struct.myrs_devstate_name_entry { i8 1, ptr @.str.111 }, %struct.myrs_devstate_name_entry { i8 3, ptr @.str.112 }, %struct.myrs_devstate_name_entry { i8 4, ptr @.str.113 }, %struct.myrs_devstate_name_entry { i8 5, ptr @.str.114 }, %struct.myrs_devstate_name_entry { i8 8, ptr @.str.115 }, %struct.myrs_devstate_name_entry { i8 9, ptr @.str.116 }, %struct.myrs_devstate_name_entry { i8 12, ptr @.str.117 }, %struct.myrs_devstate_name_entry { i8 16, ptr @.str.118 }, %struct.myrs_devstate_name_entry { i8 33, ptr @.str.119 }, %struct.myrs_devstate_name_entry { i8 -1, ptr @.str.89 }], [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unconfigured\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Online\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rebuild\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Missing\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SuspectedCritical\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Offline\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Critical\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SuspectedDead\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CommandedOffline\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Standby\00", [24 x i8] zeroinitializer }, align 32
@myrs_get_pdev_info.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"myrs_get_pdev_info\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Sending GetPhysicalDeviceInfoValid for pdev %d:%d:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@myrs_shost_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @myrs_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@myrs_shost_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_serial, ptr @dev_attr_ctlr_num, ptr @dev_attr_processor, ptr @dev_attr_model, ptr @dev_attr_ctlr_type, ptr @dev_attr_cache_size, ptr @dev_attr_firmware, ptr @dev_attr_discovery, ptr @dev_attr_flush_cache, ptr @dev_attr_disable_enclosure_messages, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctlr_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctlr_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_processor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @processor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @model_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctlr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctlr_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cache_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cache_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_discovery = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @discovery_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flush_cache = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @flush_cache_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disable_enclosure_messages = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disable_enclosure_messages_show, ptr @disable_enclosure_messages_store }, [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctlr_num\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"processor\00", [22 x i8] zeroinitializer }, align 32
@myrs_cpu_type_names = internal constant { [7 x %struct.myrs_cpu_type_tbl], [40 x i8] } { [7 x %struct.myrs_cpu_type_tbl] [%struct.myrs_cpu_type_tbl { i8 1, ptr @.str.131 }, %struct.myrs_cpu_type_tbl { i8 2, ptr @.str.132 }, %struct.myrs_cpu_type_tbl { i8 3, ptr @.str.133 }, %struct.myrs_cpu_type_tbl { i8 4, ptr @.str.134 }, %struct.myrs_cpu_type_tbl { i8 5, ptr @.str.135 }, %struct.myrs_cpu_type_tbl { i8 6, ptr @.str.136 }, %struct.myrs_cpu_type_tbl { i8 7, ptr @.str.137 }], [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"1: %s (%s, %d cpus)\0A2: %s (%s, %d cpus)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"1: %s (%s, %d cpus)\0A2: absent\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"1: absent\0A2: %s (%s, %d cpus)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"1: absent\0A2: absent\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i960CA\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i960RD\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i960RN\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i960RP\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NorthBay\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"StrongARM\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i960RM\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctlr_type\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_size\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d MB\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d.%02d-%02d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"discovery\00", [22 x i8] zeroinitializer }, align 32
@discovery_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 1452, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Discovery Not Initiated, status %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"discovery_store\00", [16 x i8] zeroinitializer }, align 32
@discovery_store._entry_ptr = internal global ptr @discovery_store._entry, section ".printk_index", align 4
@discovery_store._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 1455, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Discovery Initiated\0A\00", [43 x i8] zeroinitializer }, align 32
@discovery_store._entry_ptr.149 = internal global ptr @discovery_store._entry.147, section ".printk_index", align 4
@discovery_store._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.146, ptr @.str.3, i32 1460, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Discovery Completed\0A\00", [43 x i8] zeroinitializer }, align 32
@discovery_store._entry_ptr.152 = internal global ptr @discovery_store._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flush_cache\00", [20 x i8] zeroinitializer }, align 32
@flush_cache_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 1476, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cache Flush Completed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flush_cache_store\00", [46 x i8] zeroinitializer }, align 32
@flush_cache_store._entry_ptr = internal global ptr @flush_cache_store._entry, section ".printk_index", align 4
@flush_cache_store._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.3, i32 1480, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cache Flush failed, status 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@flush_cache_store._entry_ptr.158 = internal global ptr @flush_cache_store._entry.156, section ".printk_index", align 4
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disable_enclosure_messages\00", [37 x i8] zeroinitializer }, align 32
@myrs_sdev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @myrs_sdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@myrs_sdev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_consistency_check, ptr @dev_attr_rebuild, ptr @dev_attr_raid_state, ptr @dev_attr_raid_level, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_consistency_check = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @consistency_check_show, ptr @consistency_check_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rebuild = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rebuild_show, ptr @rebuild_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_raid_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_state_show, ptr @raid_state_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_raid_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"consistency_check\00", [46 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"physical device - not checking\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"checking block %zu of %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not checking\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to get device information, status 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Consistency Check Not Initiated; already in progress\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Consistency Check Not Cancelled; check not in progress\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Consistency Check Not %s, status 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Initiated\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Cancelled\00", [22 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Consistency Check %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rebuild\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"physical device - not rebuilding\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rebuilding block %zu of %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"not rebuilding\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Rebuild Not Initiated; already in progress\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Rebuild Not Cancelled; no rebuild in progress\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Rebuild Not %s, status 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rebuild %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid_state\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid (%02X)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device already in %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set device state to %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to set device state to %s, status 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid_level\00", [21 x i8] zeroinitializer }, align 32
@myrs_raid_level_name_list = internal constant { [13 x %struct.myrs_raid_level_name_entry], [56 x i8] } { [13 x %struct.myrs_raid_level_name_entry] [%struct.myrs_raid_level_name_entry { i8 0, ptr @.str.190 }, %struct.myrs_raid_level_name_entry { i8 1, ptr @.str.191 }, %struct.myrs_raid_level_name_entry { i8 3, ptr @.str.192 }, %struct.myrs_raid_level_name_entry { i8 5, ptr @.str.193 }, %struct.myrs_raid_level_name_entry { i8 6, ptr @.str.194 }, %struct.myrs_raid_level_name_entry { i8 7, ptr @.str.195 }, %struct.myrs_raid_level_name_entry { i8 8, ptr @.str.196 }, %struct.myrs_raid_level_name_entry { i8 9, ptr @.str.197 }, %struct.myrs_raid_level_name_entry { i8 11, ptr @.str.198 }, %struct.myrs_raid_level_name_entry { i8 12, ptr @.str.199 }, %struct.myrs_raid_level_name_entry { i8 13, ptr @.str.200 }, %struct.myrs_raid_level_name_entry { i8 14, ptr @.str.201 }, %struct.myrs_raid_level_name_entry { i8 15, ptr @.str.202 }], [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID0\00", [26 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID1\00", [26 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RAID3 right asymmetric parity\00", [34 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RAID5 right asymmetric parity\00", [34 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID6\00", [26 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JBOD\00", [27 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"New Mylex SPAN\00", [17 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RAID3 fixed parity\00", [45 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RAID3 left symmetric parity\00", [36 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mylex SPAN\00", [21 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RAID5 left symmetric parity\00", [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RAIDE (concatenation)\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Physical device\00", [16 x i8] zeroinitializer }, align 32
@myrs_get_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get controller information\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"myrs_get_config\00", [16 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr = internal global ptr @myrs_get_config._entry, section ".printk_index", align 4
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d.%02d-%02d\00", [19 x i8] zeroinitializer }, align 32
@myrs_get_config._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.204, ptr @.str.3, i32 621, ptr @.str.209, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"FIRMWARE VERSION %s DOES NOT PROVIDE THE CONTROLLER\0ASTATUS MONITORING FUNCTIONALITY NEEDED BY THIS DRIVER.\0APLEASE UPGRADE TO VERSION 6.00-01 OR ABOVE.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.210 = internal global ptr @myrs_get_config._entry.207, section ".printk_index", align 4
@myrs_get_config._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.204, ptr @.str.3, i32 651, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Configuring %s PCI RAID Controller\0A\00", [60 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.213 = internal global ptr @myrs_get_config._entry.211, section ".printk_index", align 4
@myrs_get_config._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.204, ptr @.str.3, i32 654, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"  Firmware Version: %s, Channels: %d, Memory Size: %dMB\0A\00", [39 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.216 = internal global ptr @myrs_get_config._entry.214, section ".printk_index", align 4
@myrs_get_config._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.204, ptr @.str.3, i32 658, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"  Controller Queue Depth: %d, Maximum Blocks per Command: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.219 = internal global ptr @myrs_get_config._entry.217, section ".printk_index", align 4
@myrs_get_config._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.204, ptr @.str.3, i32 662, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"  Driver Queue Depth: %d, Scatter/Gather Limit: %d of %d Segments\0A\00", [61 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.222 = internal global ptr @myrs_get_config._entry.220, section ".printk_index", align 4
@myrs_get_config._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.204, ptr @.str.3, i32 668, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  Device Channel %d: max %d devices\0A\00", [59 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.225 = internal global ptr @myrs_get_config._entry.223, section ".printk_index", align 4
@myrs_get_config._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.204, ptr @.str.3, i32 673, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"  Physical: %d/%d channels, %d disks, %d devices\0A\00", [46 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.228 = internal global ptr @myrs_get_config._entry.226, section ".printk_index", align 4
@myrs_get_config._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.204, ptr @.str.3, i32 678, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  Logical: %d/%d channels, %d disks\0A\00", [59 x i8] zeroinitializer }, align 32
@myrs_get_config._entry_ptr.231 = internal global ptr @myrs_get_config._entry.229, section ".printk_index", align 4
@myrs_get_ctlr_info.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.232, ptr @.str.3, ptr @.str.233, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"myrs_get_ctlr_info\00", [45 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sending GetControllerInfo\0A\00", [37 x i8] zeroinitializer }, align 32
@myrs_get_ctlr_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.232, ptr @.str.3, i32 210, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Logical drive count changes (%d/%d/%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@myrs_get_ctlr_info._entry_ptr = internal global ptr @myrs_get_ctlr_info._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.235 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"myrs_sg\00", [24 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.3, i32 2182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate SG pool\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myrs_create_mempools\00", [43 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry_ptr = internal global ptr @myrs_create_mempools._entry, section ".printk_index", align 4
@.str.238 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"myrs_sense\00", [21 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.237, ptr @.str.3, i32 2192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate sense data pool\0A\00", [60 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry_ptr.241 = internal global ptr @myrs_create_mempools._entry.239, section ".printk_index", align 4
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"myrs_dcdb\00", [22 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.237, ptr @.str.3, i32 2205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate DCDB pool\0A\00", [34 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry_ptr.245 = internal global ptr @myrs_create_mempools._entry.243, section ".printk_index", align 4
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"myrs_wq_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.237, ptr @.str.3, i32 2220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create workqueue\0A\00", [36 x i8] zeroinitializer }, align 32
@myrs_create_mempools._entry_ptr.250 = internal global ptr @myrs_create_mempools._entry.248, section ".printk_index", align 4
@myrs_create_mempools.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.251 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&cs->monitor_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@myrs_create_mempools.__key.252 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.253 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&cs->monitor_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@myrs_monitor.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.254, ptr @.str.3, ptr @.str.255, i8 2, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"myrs_monitor\00", [19 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"monitor tick\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@myrs_get_fwstatus.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.256, ptr @.str.3, ptr @.str.257, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"myrs_get_fwstatus\00", [46 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sending GetHealthStatus\0A\00", [39 x i8] zeroinitializer }, align 32
@myrs_ev_list = internal constant { [115 x %struct.anon.103], [232 x i8] } { [115 x %struct.anon.103] [%struct.anon.103 { i32 1, ptr @.str.284 }, %struct.anon.103 { i32 2, ptr @.str.285 }, %struct.anon.103 { i32 5, ptr @.str.286 }, %struct.anon.103 { i32 6, ptr @.str.287 }, %struct.anon.103 { i32 7, ptr @.str.288 }, %struct.anon.103 { i32 8, ptr @.str.289 }, %struct.anon.103 { i32 9, ptr @.str.290 }, %struct.anon.103 { i32 10, ptr @.str.291 }, %struct.anon.103 { i32 11, ptr @.str.292 }, %struct.anon.103 { i32 12, ptr @.str.293 }, %struct.anon.103 { i32 13, ptr @.str.294 }, %struct.anon.103 { i32 14, ptr @.str.295 }, %struct.anon.103 { i32 15, ptr @.str.296 }, %struct.anon.103 { i32 16, ptr @.str.297 }, %struct.anon.103 { i32 17, ptr @.str.298 }, %struct.anon.103 { i32 18, ptr @.str.299 }, %struct.anon.103 { i32 19, ptr @.str.300 }, %struct.anon.103 { i32 20, ptr @.str.301 }, %struct.anon.103 { i32 21, ptr @.str.302 }, %struct.anon.103 { i32 22, ptr @.str.303 }, %struct.anon.103 { i32 23, ptr @.str.304 }, %struct.anon.103 { i32 24, ptr @.str.305 }, %struct.anon.103 { i32 25, ptr @.str.306 }, %struct.anon.103 { i32 26, ptr @.str.307 }, %struct.anon.103 { i32 27, ptr @.str.308 }, %struct.anon.103 { i32 28, ptr @.str.309 }, %struct.anon.103 { i32 29, ptr @.str.310 }, %struct.anon.103 { i32 30, ptr @.str.311 }, %struct.anon.103 { i32 31, ptr @.str.312 }, %struct.anon.103 { i32 32, ptr @.str.313 }, %struct.anon.103 { i32 33, ptr @.str.314 }, %struct.anon.103 { i32 34, ptr @.str.315 }, %struct.anon.103 { i32 35, ptr @.str.316 }, %struct.anon.103 { i32 36, ptr @.str.317 }, %struct.anon.103 { i32 37, ptr @.str.318 }, %struct.anon.103 { i32 38, ptr @.str.319 }, %struct.anon.103 { i32 39, ptr @.str.320 }, %struct.anon.103 { i32 40, ptr @.str.321 }, %struct.anon.103 { i32 41, ptr @.str.322 }, %struct.anon.103 { i32 42, ptr @.str.323 }, %struct.anon.103 { i32 43, ptr @.str.324 }, %struct.anon.103 { i32 44, ptr @.str.325 }, %struct.anon.103 { i32 45, ptr @.str.326 }, %struct.anon.103 { i32 46, ptr @.str.327 }, %struct.anon.103 { i32 47, ptr @.str.328 }, %struct.anon.103 { i32 48, ptr @.str.329 }, %struct.anon.103 { i32 49, ptr @.str.330 }, %struct.anon.103 { i32 57, ptr @.str.331 }, %struct.anon.103 { i32 58, ptr @.str.332 }, %struct.anon.103 { i32 60, ptr @.str.333 }, %struct.anon.103 { i32 61, ptr @.str.334 }, %struct.anon.103 { i32 128, ptr @.str.335 }, %struct.anon.103 { i32 129, ptr @.str.336 }, %struct.anon.103 { i32 130, ptr @.str.337 }, %struct.anon.103 { i32 131, ptr @.str.338 }, %struct.anon.103 { i32 132, ptr @.str.339 }, %struct.anon.103 { i32 133, ptr @.str.340 }, %struct.anon.103 { i32 134, ptr @.str.341 }, %struct.anon.103 { i32 135, ptr @.str.342 }, %struct.anon.103 { i32 136, ptr @.str.343 }, %struct.anon.103 { i32 137, ptr @.str.344 }, %struct.anon.103 { i32 138, ptr @.str.345 }, %struct.anon.103 { i32 139, ptr @.str.346 }, %struct.anon.103 { i32 140, ptr @.str.347 }, %struct.anon.103 { i32 141, ptr @.str.348 }, %struct.anon.103 { i32 142, ptr @.str.349 }, %struct.anon.103 { i32 143, ptr @.str.350 }, %struct.anon.103 { i32 144, ptr @.str.351 }, %struct.anon.103 { i32 145, ptr @.str.352 }, %struct.anon.103 { i32 146, ptr @.str.353 }, %struct.anon.103 { i32 147, ptr @.str.354 }, %struct.anon.103 { i32 148, ptr @.str.355 }, %struct.anon.103 { i32 149, ptr @.str.356 }, %struct.anon.103 { i32 150, ptr @.str.357 }, %struct.anon.103 { i32 151, ptr @.str.358 }, %struct.anon.103 { i32 152, ptr @.str.359 }, %struct.anon.103 { i32 153, ptr @.str.360 }, %struct.anon.103 { i32 154, ptr @.str.361 }, %struct.anon.103 { i32 155, ptr @.str.362 }, %struct.anon.103 { i32 156, ptr @.str.363 }, %struct.anon.103 { i32 158, ptr @.str.364 }, %struct.anon.103 { i32 159, ptr @.str.365 }, %struct.anon.103 { i32 160, ptr @.str.366 }, %struct.anon.103 { i32 161, ptr @.str.367 }, %struct.anon.103 { i32 162, ptr @.str.368 }, %struct.anon.103 { i32 320, ptr @.str.369 }, %struct.anon.103 { i32 321, ptr @.str.370 }, %struct.anon.103 { i32 322, ptr @.str.371 }, %struct.anon.103 { i32 323, ptr @.str.372 }, %struct.anon.103 { i32 324, ptr @.str.373 }, %struct.anon.103 { i32 325, ptr @.str.374 }, %struct.anon.103 { i32 326, ptr @.str.375 }, %struct.anon.103 { i32 327, ptr @.str.376 }, %struct.anon.103 { i32 328, ptr @.str.377 }, %struct.anon.103 { i32 329, ptr @.str.378 }, %struct.anon.103 { i32 330, ptr @.str.379 }, %struct.anon.103 { i32 331, ptr @.str.380 }, %struct.anon.103 { i32 332, ptr @.str.381 }, %struct.anon.103 { i32 385, ptr @.str.382 }, %struct.anon.103 { i32 392, ptr @.str.383 }, %struct.anon.103 { i32 393, ptr @.str.384 }, %struct.anon.103 { i32 394, ptr @.str.385 }, %struct.anon.103 { i32 403, ptr @.str.386 }, %struct.anon.103 { i32 405, ptr @.str.387 }, %struct.anon.103 { i32 406, ptr @.str.388 }, %struct.anon.103 { i32 414, ptr @.str.389 }, %struct.anon.103 { i32 415, ptr @.str.390 }, %struct.anon.103 { i32 418, ptr @.str.391 }, %struct.anon.103 { i32 427, ptr @.str.392 }, %struct.anon.103 { i32 428, ptr @.str.393 }, %struct.anon.103 { i32 896, ptr @.str.394 }, %struct.anon.103 { i32 897, ptr @.str.395 }, %struct.anon.103 { i32 912, ptr @.str.396 }, %struct.anon.103 { i32 928, ptr @.str.397 }, %struct.anon.103 { i32 0, ptr @.str.398 }], [232 x i8] zeroinitializer }, align 32
@myrs_log_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.259, ptr @.str.3, i32 846, ptr @.str.209, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown Controller Event Code %04X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"myrs_log_event\00", [17 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr = internal global ptr @myrs_log_event._entry, section ".printk_index", align 4
@.str.260 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"event %d: Physical Device %s\0A\00", [34 x i8] zeroinitializer }, align 32
@myrs_log_event._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.259, ptr @.str.3, i32 882, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"event %d: Logical Drive %d %s\0A\00", [33 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.263 = internal global ptr @myrs_log_event._entry.261, section ".printk_index", align 4
@myrs_log_event._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.259, ptr @.str.3, i32 888, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.265 = internal global ptr @myrs_log_event._entry.264, section ".printk_index", align 4
@myrs_log_event._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.259, ptr @.str.3, i32 899, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"event %d: Physical Device %d:%d %s\0A\00", [60 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.268 = internal global ptr @myrs_log_event._entry.266, section ".printk_index", align 4
@myrs_log_event._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.259, ptr @.str.3, i32 903, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Physical Device %d:%d Sense Key = %X, ASC = %02X, ASCQ = %02X\0A\00", [33 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.271 = internal global ptr @myrs_log_event._entry.269, section ".printk_index", align 4
@myrs_log_event._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.259, ptr @.str.3, i32 910, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Physical Device %d:%d Sense Information = %02X%02X%02X%02X %02X%02X%02X%02X\0A\00", [51 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.274 = internal global ptr @myrs_log_event._entry.272, section ".printk_index", align 4
@myrs_log_event._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.259, ptr @.str.3, i32 917, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event %d: Enclosure %d %s\0A\00", [37 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.277 = internal global ptr @myrs_log_event._entry.275, section ".printk_index", align 4
@myrs_log_event._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.259, ptr @.str.3, i32 921, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event %d: Controller %s\0A\00", [39 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.280 = internal global ptr @myrs_log_event._entry.278, section ".printk_index", align 4
@myrs_log_event._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.259, ptr @.str.3, i32 926, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"event %d: Unknown Event Code %04X\0A\00", [61 x i8] zeroinitializer }, align 32
@myrs_log_event._entry_ptr.283 = internal global ptr @myrs_log_event._entry.281, section ".printk_index", align 4
@.str.284 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"P Online\00", [23 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"P Standby\00", [22 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"P Automatic Rebuild Started\00", [36 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"P Manual Rebuild Started\00", [39 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"P Rebuild Completed\00", [44 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"P Rebuild Cancelled\00", [44 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"P Rebuild Failed for Unknown Reasons\00", [59 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"P Rebuild Failed due to New Physical Device\00", [52 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"P Rebuild Failed due to Logical Drive Failure\00", [50 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S Offline\00", [22 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"P Found\00", [24 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"P Removed\00", [22 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P Unconfigured\00", [17 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"P Expand Capacity Started\00", [38 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"P Expand Capacity Completed\00", [36 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"P Expand Capacity Failed\00", [39 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"P Command Timed Out\00", [44 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P Command Aborted\00", [46 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P Command Retried\00", [46 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P Parity Error\00", [17 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"P Soft Error\00", [19 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"P Miscellaneous Error\00", [42 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"P Reset\00", [24 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"P Active Spare Found\00", [43 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"P Warm Spare Found\00", [45 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"S Sense Data Received\00", [42 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"P Initialization Started\00", [39 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"P Initialization Completed\00", [37 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"P Initialization Failed\00", [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"P Initialization Cancelled\00", [37 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"P Failed because Write Recovery Failed\00", [57 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"P Failed because SCSI Bus Reset Failed\00", [57 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"P Failed because of Double Check Condition\00", [53 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"P Failed because Device Cannot Be Accessed\00", [53 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"P Failed because of Gross Error on SCSI Processor\00", [46 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"P Failed because of Bad Tag from Device\00", [56 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"P Failed because of Command Timeout\00", [60 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"P Failed because of System Reset\00", [63 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"P Failed because of Busy Status or Parity Error\00", [48 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"P Failed because Host Set Device to Failed State\00", [47 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"P Failed because of Selection Timeout\00", [58 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"P Failed because of SCSI Bus Phase Error\00", [55 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"P Failed because Device Returned Unknown Status\00", [48 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"P Failed because Device Not Ready\00", [62 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"P Failed because Device Not Found at Startup\00", [51 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"P Failed because COD Write Operation Failed\00", [52 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"P Failed because BDT Write Operation Failed\00", [52 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"P Missing at Startup\00", [43 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"P Start Rebuild Failed due to Physical Drive Too Small\00", [41 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"P Temporarily Offline Device Automatically Made Online\00", [41 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"P Standby Rebuild Started\00", [38 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"M Consistency Check Started\00", [36 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"M Consistency Check Completed\00", [34 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"M Consistency Check Cancelled\00", [34 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"M Consistency Check Completed With Errors\00", [54 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"M Consistency Check Failed due to Logical Drive Failure\00", [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"M Consistency Check Failed due to Physical Device Failure\00", [38 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L Offline\00", [22 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"L Critical\00", [21 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"L Online\00", [23 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"M Automatic Rebuild Started\00", [36 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"M Manual Rebuild Started\00", [39 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"M Rebuild Completed\00", [44 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"M Rebuild Cancelled\00", [44 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"M Rebuild Failed for Unknown Reasons\00", [59 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"M Rebuild Failed due to New Physical Device\00", [52 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"M Rebuild Failed due to Logical Drive Failure\00", [50 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"M Initialization Started\00", [39 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"M Initialization Completed\00", [37 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"M Initialization Cancelled\00", [37 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"M Initialization Failed\00", [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L Found\00", [24 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L Deleted\00", [22 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"M Expand Capacity Started\00", [38 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"M Expand Capacity Completed\00", [36 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"M Expand Capacity Failed\00", [39 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"L Bad Block Found\00", [46 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"L Size Changed\00", [17 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"L Type Changed\00", [17 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"L Bad Data Block Found\00", [41 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"L Read of Data Block in BDT\00", [36 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"L Write Back Data for Disk Block Lost\00", [58 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"L Temporarily Offline RAID-5/3 Drive Made Online\00", [47 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"L Temporarily Offline RAID-6/1/0/7 Drive Made Online\00", [43 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"L Standby Rebuild Started\00", [38 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"E Fan %d Failed\00", [16 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"E Fan %d OK\00", [20 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"E Fan %d Not Present\00", [43 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"E Power Supply %d Failed\00", [39 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"E Power Supply %d OK\00", [43 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"E Power Supply %d Not Present\00", [34 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"E Temperature Sensor %d Temperature Exceeds Safe Limit\00", [41 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E Temperature Sensor %d Temperature Exceeds Working Limit\00", [38 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"E Temperature Sensor %d Temperature Normal\00", [53 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"E Temperature Sensor %d Not Present\00", [60 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"E Enclosure Management Unit %d Access Critical\00", [49 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"E Enclosure Management Unit %d Access OK\00", [55 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"E Enclosure Management Unit %d Access Offline\00", [50 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"C Cache Write Back Error\00", [39 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"C Battery Backup Unit Found\00", [36 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"C Battery Backup Unit Charge Level Low\00", [57 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"C Battery Backup Unit Charge Level OK\00", [58 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"C Installation Aborted\00", [41 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"C Battery Backup Unit Physically Removed\00", [55 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"C Memory Error During Warm Boot\00", [32 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"C Memory Soft ECC Error Corrected\00", [62 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"C Memory Hard ECC Error Corrected\00", [62 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"C Battery Backup Unit Failed\00", [35 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"C Mirror Race Recovery Failed\00", [34 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"C Mirror Race on Critical Drive\00", [32 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"C Internal Controller Hung\00", [37 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"C Internal Controller Firmware Breakpoint\00", [54 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"C Internal Controller i960 Processor Specific Error\00", [44 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"C Internal Controller StrongARM Processor Specific Error\00", [39 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@myrs_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.400, ptr @.str.3, i32 3110, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flushing Cache...\00", [46 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"myrs_remove\00", [20 x i8] zeroinitializer }, align 32
@myrs_remove._entry_ptr = internal global ptr @myrs_remove._entry, section ".printk_index", align 4
@myrs_raid_functions = internal global { %struct.raid_function_template, [16 x i8] } { %struct.raid_function_template { ptr @myrs_template, ptr @myrs_is_raid, ptr @myrs_get_resync, ptr @myrs_get_state }, [16 x i8] zeroinitializer }, align 32
@switch.table.myrs_slave_alloc = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 3, i32 0, i32 6, i32 0, i32 8, i32 10, i32 11, i32 1, i32 6, i32 0, i32 6, i32 1, i32 8, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.raid_level_show = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 8, i32 9, i32 10, i32 11, i32 12], [32 x i8] zeroinitializer }, align 32
@switch.table.myrs_get_state = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 1, i32 4, i32 3, i32 4, i32 2, i32 4, i32 4, i32 4, i32 2], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.401 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.402 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 8, i64 48, i64 96, i64 112, i64 144, i64 160, i64 176, i64 208, i64 240]
@__sancov_gen_cov_switch_values.403 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.404 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.405 = internal global [4 x i64] [i64 2, i64 8, i64 26, i64 160]
@__sancov_gen_cov_switch_values.406 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 63]
@__sancov_gen_cov_switch_values.407 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 8, i64 9, i64 12, i64 16, i64 33, i64 255]
@__sancov_gen_cov_switch_values.408 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 8, i64 9, i64 12, i64 16, i64 33, i64 255]
@__sancov_gen_cov_switch_values.409 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 8, i64 9, i64 12, i64 16, i64 33, i64 255]
@__sancov_gen_cov_switch_values.410 = internal global [6 x i64] [i64 4, i64 6, i64 1, i64 8, i64 9, i64 33]
@__sancov_gen_cov_switch_values.411 = internal global [6 x i64] [i64 4, i64 6, i64 1, i64 8, i64 9, i64 33]
@__sancov_gen_cov_switch_values.412 = internal global [6 x i64] [i64 4, i64 6, i64 1, i64 8, i64 9, i64 33]
@__sancov_gen_cov_switch_values.413 = internal global [6 x i64] [i64 4, i64 6, i64 1, i64 8, i64 9, i64 33]
@__sancov_gen_cov_switch_values.414 = internal global [8 x i64] [i64 6, i64 8, i64 67, i64 69, i64 76, i64 77, i64 80, i64 83]
@__sancov_gen_cov_switch_values.415 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 7, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.416 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.417 = private unnamed_addr constant [16 x i8] c"myrs_pci_driver\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3135, i32 26 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"myrs_raid_template\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 28, i32 30 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3136, i32 11 }
@___asan_gen_.426 = private unnamed_addr constant [14 x i8] c"myrs_id_table\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3117, i32 35 }
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c"DAC960_GEM_privdata\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2621, i32 29 }
@___asan_gen_.432 = private unnamed_addr constant [19 x i8] c"DAC960_BA_privdata\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2840, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant [19 x i8] c"DAC960_LP_privdata\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3059, i32 29 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2555, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2560, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2350, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2355, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2358, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2361, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2364, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2367, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2371, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2374, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2377, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2380, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2383, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 494, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 509, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 524, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 537, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 572, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2602, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2774, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2779, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2821, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2992, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2997, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3040, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3091, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2295, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2306, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2312, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2323, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2331, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [14 x i8] c"myrs_template\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1918, i32 34 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1946, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1947, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1920, i32 12 }
@___asan_gen_.669 = private unnamed_addr constant [18 x i8] c"myrs_shost_groups\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [17 x i8] c"myrs_sdev_groups\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1817, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1860, i32 5 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 248, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 265, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 272, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 279, i32 11 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 283, i32 11 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 287, i32 11 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 291, i32 11 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 294, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 326, i32 6 }
@___asan_gen_.742 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 87, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 149, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [24 x i8] c"myrs_devstate_name_list\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 33, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 34, i32 30 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 35, i32 24 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 36, i32 25 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 37, i32 25 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 38, i32 36 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 39, i32 25 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 40, i32 26 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 41, i32 32 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 42, i32 35 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 43, i32 25 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 336, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [17 x i8] c"myrs_shost_group\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1527, i32 1 }
@___asan_gen_.795 = private unnamed_addr constant [17 x i8] c"myrs_shost_attrs\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1513, i32 26 }
@___asan_gen_.798 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [18 x i8] c"dev_attr_ctlr_num\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [19 x i8] c"dev_attr_processor\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [15 x i8] c"dev_attr_model\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [19 x i8] c"dev_attr_ctlr_type\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [20 x i8] c"dev_attr_cache_size\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [18 x i8] c"dev_attr_firmware\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [19 x i8] c"dev_attr_discovery\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [21 x i8] c"dev_attr_flush_cache\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [36 x i8] c"dev_attr_disable_enclosure_messages\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1308, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1306, i32 27 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1318, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1316, i32 27 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1383, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant [20 x i8] c"myrs_cpu_type_names\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1323, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1364, i32 27 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1371, i32 27 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1375, i32 27 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1379, i32 27 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1324, i32 25 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1325, i32 25 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1326, i32 25 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1327, i32 25 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1328, i32 27 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1329, i32 28 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1330, i32 25 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1393, i32 8 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1403, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1413, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1411, i32 26 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1426, i32 8 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1421, i32 27 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1464, i32 8 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1450, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1455, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1460, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1483, i32 8 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1476, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1479, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1511, i32 8 }
@___asan_gen_.942 = private unnamed_addr constant [16 x i8] c"myrs_sdev_group\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1295, i32 1 }
@___asan_gen_.945 = private unnamed_addr constant [16 x i8] c"myrs_sdev_attrs\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1287, i32 26 }
@___asan_gen_.948 = private unnamed_addr constant [27 x i8] c"dev_attr_consistency_check\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [17 x i8] c"dev_attr_rebuild\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [20 x i8] c"dev_attr_raid_state\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [20 x i8] c"dev_attr_raid_level\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1285, i32 8 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1193, i32 28 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1201, i32 28 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1205, i32 28 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1234, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1240, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1246, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1273, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1278, i32 3 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1182, i32 8 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1089, i32 28 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1101, i32 28 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1105, i32 28 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1141, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1146, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1170, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1175, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1051, i32 8 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 942, i32 28 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 952, i32 28 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 980, i32 20 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 981, i32 20 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 983, i32 25 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 985, i32 25 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 996, i32 4 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1041, i32 3 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1046, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 1077, i32 8 }
@___asan_gen_.1050 = private unnamed_addr constant [26 x i8] c"myrs_raid_level_name_list\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 62, i32 3 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 63, i32 22 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 64, i32 22 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 65, i32 22 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 66, i32 22 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 67, i32 22 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 68, i32 20 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 69, i32 23 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 70, i32 23 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 71, i32 23 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 72, i32 20 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 73, i32 23 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 74, i32 22 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 75, i32 24 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 594, i32 3 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 611, i32 22 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 617, i32 3 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 650, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 652, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 656, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 660, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 666, i32 3 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 670, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 675, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 189, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 206, i32 4 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2178, i32 32 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2181, i32 3 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2186, i32 35 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2191, i32 3 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2196, i32 34 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2204, i32 3 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2210, i32 4 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2211, i32 15 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2219, i32 3 }
@___asan_gen_.1215 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2225, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2112, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 471, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant [13 x i8] c"myrs_ev_list\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 688, i32 3 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 844, i32 3 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 853, i32 3 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 880, i32 3 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 886, i32 3 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 897, i32 3 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 900, i32 3 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 904, i32 3 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 916, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 920, i32 3 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 924, i32 3 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 690, i32 12 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 691, i32 12 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 692, i32 12 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 693, i32 12 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 694, i32 12 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 695, i32 12 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 696, i32 12 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 697, i32 12 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 698, i32 12 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 699, i32 12 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 700, i32 12 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 701, i32 12 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 702, i32 12 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 703, i32 12 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 704, i32 12 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 705, i32 12 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 706, i32 12 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 707, i32 12 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 708, i32 12 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 709, i32 12 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 710, i32 12 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 711, i32 12 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 712, i32 12 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 713, i32 12 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 714, i32 12 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 715, i32 12 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 716, i32 12 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 717, i32 12 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 718, i32 12 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 719, i32 12 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 720, i32 12 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 721, i32 12 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 722, i32 12 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 723, i32 12 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 724, i32 12 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 725, i32 12 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 726, i32 12 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 727, i32 12 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 728, i32 12 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 729, i32 12 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 730, i32 12 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 731, i32 12 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 732, i32 12 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 733, i32 12 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 734, i32 12 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 735, i32 12 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 736, i32 12 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 737, i32 12 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 738, i32 12 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 739, i32 12 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 740, i32 12 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 742, i32 12 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 743, i32 12 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 744, i32 12 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 745, i32 12 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 746, i32 12 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 747, i32 12 }
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 748, i32 12 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 749, i32 12 }
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 750, i32 12 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 751, i32 12 }
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 752, i32 12 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 753, i32 12 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 754, i32 12 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 755, i32 12 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 756, i32 12 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 757, i32 12 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 758, i32 12 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 759, i32 12 }
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 760, i32 12 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 761, i32 12 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 762, i32 12 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 763, i32 12 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 764, i32 12 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 765, i32 12 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 766, i32 12 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 767, i32 12 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 768, i32 12 }
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 769, i32 12 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 770, i32 12 }
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 771, i32 12 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 772, i32 12 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 773, i32 12 }
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 774, i32 12 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 775, i32 12 }
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 777, i32 12 }
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 778, i32 12 }
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 779, i32 12 }
@___asan_gen_.1559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 780, i32 12 }
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 781, i32 12 }
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 782, i32 12 }
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 783, i32 12 }
@___asan_gen_.1571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 784, i32 12 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 785, i32 12 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 786, i32 12 }
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 787, i32 12 }
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 788, i32 12 }
@___asan_gen_.1586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 789, i32 12 }
@___asan_gen_.1589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 791, i32 12 }
@___asan_gen_.1592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 792, i32 12 }
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 793, i32 12 }
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 794, i32 12 }
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 795, i32 12 }
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 796, i32 12 }
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 797, i32 12 }
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 798, i32 12 }
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 799, i32 12 }
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 800, i32 12 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 801, i32 12 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 802, i32 12 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 804, i32 12 }
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 805, i32 12 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 806, i32 12 }
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 807, i32 12 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 808, i32 7 }
@___asan_gen_.1638 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1644 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 3110, i32 2 }
@___asan_gen_.1647 = private unnamed_addr constant [20 x i8] c"myrs_raid_functions\00", align 1
@___asan_gen_.1648 = private constant [23 x i8] c"../drivers/scsi/myrs.c\00", align 1
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1648, i32 2031, i32 38 }
@___asan_gen_.1650 = private unnamed_addr constant [30 x i8] c"switch.table.myrs_slave_alloc\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant [29 x i8] c"switch.table.raid_level_show\00", align 1
@___asan_gen_.1652 = private unnamed_addr constant [28 x i8] c"switch.table.myrs_get_state\00", align 1
@llvm.compiler.used = appending global [484 x ptr] [ptr @DAC960_BA_hw_init._entry, ptr @DAC960_BA_hw_init._entry.60, ptr @DAC960_BA_hw_init._entry_ptr, ptr @DAC960_BA_hw_init._entry_ptr.61, ptr @DAC960_BA_intr_handler._entry, ptr @DAC960_BA_intr_handler._entry_ptr, ptr @DAC960_GEM_hw_init._entry, ptr @DAC960_GEM_hw_init._entry.6, ptr @DAC960_GEM_hw_init._entry_ptr, ptr @DAC960_GEM_hw_init._entry_ptr.8, ptr @DAC960_GEM_intr_handler._entry, ptr @DAC960_GEM_intr_handler._entry_ptr, ptr @DAC960_LP_hw_init._entry, ptr @DAC960_LP_hw_init._entry.64, ptr @DAC960_LP_hw_init._entry_ptr, ptr @DAC960_LP_hw_init._entry_ptr.65, ptr @DAC960_LP_intr_handler._entry, ptr @DAC960_LP_intr_handler._entry_ptr, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_myrs_cleanup_module, ptr @__initcall__kmod_myrs__293_3163_myrs_init_module6, ptr @discovery_store._entry, ptr @discovery_store._entry.147, ptr @discovery_store._entry.150, ptr @discovery_store._entry_ptr, ptr @discovery_store._entry_ptr.149, ptr @discovery_store._entry_ptr.152, ptr @flush_cache_store._entry, ptr @flush_cache_store._entry.156, ptr @flush_cache_store._entry_ptr, ptr @flush_cache_store._entry_ptr.158, ptr @myrs_cleanup_module, ptr @myrs_create_mempools._entry, ptr @myrs_create_mempools._entry.239, ptr @myrs_create_mempools._entry.243, ptr @myrs_create_mempools._entry.248, ptr @myrs_create_mempools._entry_ptr, ptr @myrs_create_mempools._entry_ptr.241, ptr @myrs_create_mempools._entry_ptr.245, ptr @myrs_create_mempools._entry_ptr.250, ptr @myrs_detect._entry, ptr @myrs_detect._entry.72, ptr @myrs_detect._entry.75, ptr @myrs_detect._entry.78, ptr @myrs_detect._entry_ptr, ptr @myrs_detect._entry_ptr.74, ptr @myrs_detect._entry_ptr.77, ptr @myrs_detect._entry_ptr.80, ptr @myrs_enable_mmio_mbox._entry, ptr @myrs_enable_mmio_mbox._entry.45, ptr @myrs_enable_mmio_mbox._entry.48, ptr @myrs_enable_mmio_mbox._entry.51, ptr @myrs_enable_mmio_mbox._entry.54, ptr @myrs_enable_mmio_mbox._entry_ptr, ptr @myrs_enable_mmio_mbox._entry_ptr.47, ptr @myrs_enable_mmio_mbox._entry_ptr.50, ptr @myrs_enable_mmio_mbox._entry_ptr.53, ptr @myrs_enable_mmio_mbox._entry_ptr.56, ptr @myrs_err_status._entry, ptr @myrs_err_status._entry.12, ptr @myrs_err_status._entry.16, ptr @myrs_err_status._entry.19, ptr @myrs_err_status._entry.22, ptr @myrs_err_status._entry.25, ptr @myrs_err_status._entry.28, ptr @myrs_err_status._entry.31, ptr @myrs_err_status._entry.34, ptr @myrs_err_status._entry.37, ptr @myrs_err_status._entry.40, ptr @myrs_err_status._entry_ptr, ptr @myrs_err_status._entry_ptr.15, ptr @myrs_err_status._entry_ptr.18, ptr @myrs_err_status._entry_ptr.21, ptr @myrs_err_status._entry_ptr.24, ptr @myrs_err_status._entry_ptr.27, ptr @myrs_err_status._entry_ptr.30, ptr @myrs_err_status._entry_ptr.33, ptr @myrs_err_status._entry_ptr.36, ptr @myrs_err_status._entry_ptr.39, ptr @myrs_err_status._entry_ptr.42, ptr @myrs_get_config._entry, ptr @myrs_get_config._entry.207, ptr @myrs_get_config._entry.211, ptr @myrs_get_config._entry.214, ptr @myrs_get_config._entry.217, ptr @myrs_get_config._entry.220, ptr @myrs_get_config._entry.223, ptr @myrs_get_config._entry.226, ptr @myrs_get_config._entry.229, ptr @myrs_get_config._entry_ptr, ptr @myrs_get_config._entry_ptr.210, ptr @myrs_get_config._entry_ptr.213, ptr @myrs_get_config._entry_ptr.216, ptr @myrs_get_config._entry_ptr.219, ptr @myrs_get_config._entry_ptr.222, ptr @myrs_get_config._entry_ptr.225, ptr @myrs_get_config._entry_ptr.228, ptr @myrs_get_config._entry_ptr.231, ptr @myrs_get_ctlr_info._entry, ptr @myrs_get_ctlr_info._entry_ptr, ptr @myrs_get_ldev_info._entry, ptr @myrs_get_ldev_info._entry.100, ptr @myrs_get_ldev_info._entry.93, ptr @myrs_get_ldev_info._entry_ptr, ptr @myrs_get_ldev_info._entry_ptr.102, ptr @myrs_get_ldev_info._entry_ptr.95, ptr @myrs_log_event._entry, ptr @myrs_log_event._entry.261, ptr @myrs_log_event._entry.264, ptr @myrs_log_event._entry.266, ptr @myrs_log_event._entry.269, ptr @myrs_log_event._entry.272, ptr @myrs_log_event._entry.275, ptr @myrs_log_event._entry.278, ptr @myrs_log_event._entry.281, ptr @myrs_log_event._entry_ptr, ptr @myrs_log_event._entry_ptr.263, ptr @myrs_log_event._entry_ptr.265, ptr @myrs_log_event._entry_ptr.268, ptr @myrs_log_event._entry_ptr.271, ptr @myrs_log_event._entry_ptr.274, ptr @myrs_log_event._entry_ptr.277, ptr @myrs_log_event._entry_ptr.280, ptr @myrs_log_event._entry_ptr.283, ptr @myrs_probe._entry, ptr @myrs_probe._entry_ptr, ptr @myrs_remove._entry, ptr @myrs_remove._entry_ptr, ptr @myrs_report_progress._entry, ptr @myrs_report_progress._entry_ptr, ptr @myrs_pci_driver, ptr @myrs_raid_template, ptr @.str, ptr @myrs_id_table, ptr @DAC960_GEM_privdata, ptr @DAC960_BA_privdata, ptr @DAC960_LP_privdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @myrs_detect.__key, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @myrs_template, ptr @myrs_alloc_host.__key, ptr @.str.81, ptr @myrs_alloc_host.__key.82, ptr @.str.83, ptr @.str.84, ptr @myrs_shost_groups, ptr @myrs_sdev_groups, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @init_completion.__key, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @myrs_devstate_name_list, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @myrs_shost_group, ptr @myrs_shost_attrs, ptr @dev_attr_serial, ptr @dev_attr_ctlr_num, ptr @dev_attr_processor, ptr @dev_attr_model, ptr @dev_attr_ctlr_type, ptr @dev_attr_cache_size, ptr @dev_attr_firmware, ptr @dev_attr_discovery, ptr @dev_attr_flush_cache, ptr @dev_attr_disable_enclosure_messages, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @myrs_cpu_type_names, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @myrs_sdev_group, ptr @myrs_sdev_attrs, ptr @dev_attr_consistency_check, ptr @dev_attr_rebuild, ptr @dev_attr_raid_state, ptr @dev_attr_raid_level, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @myrs_raid_level_name_list, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.208, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.246, ptr @.str.247, ptr @.str.249, ptr @myrs_create_mempools.__key, ptr @.str.251, ptr @myrs_create_mempools.__key.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @myrs_ev_list, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.262, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @myrs_raid_functions, ptr @switch.table.myrs_slave_alloc, ptr @switch.table.raid_level_show, ptr @switch.table.myrs_get_state], section "llvm.metadata"
@0 = internal global [414 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_raid_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_GEM_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_BA_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LP_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_GEM_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_GEM_hw_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_err_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_enable_mmio_mbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_enable_mmio_mbox._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_enable_mmio_mbox._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_enable_mmio_mbox._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_enable_mmio_mbox._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_GEM_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_BA_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_BA_hw_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_BA_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LP_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LP_hw_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LP_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_detect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_detect._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_detect._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_detect._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_alloc_host.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_alloc_host.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_sdev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_ldev_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_ldev_info._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_ldev_info._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_report_progress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_devstate_name_list to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_shost_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_shost_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctlr_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_processor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctlr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cache_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_discovery to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flush_cache to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable_enclosure_messages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_cpu_type_names to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discovery_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discovery_store._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discovery_store._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_cache_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_cache_store._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_sdev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_sdev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_consistency_check to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rebuild to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raid_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raid_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_raid_level_name_list to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_config._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_get_ctlr_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_create_mempools._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_create_mempools._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_create_mempools._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_create_mempools._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_create_mempools.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_create_mempools.__key.252 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_ev_list to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_log_event._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrs_raid_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.myrs_slave_alloc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.raid_level_show to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.myrs_get_state to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @myrs_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @myrs_pci_driver) #15
  %0 = load ptr, ptr @myrs_raid_template, align 4
  tail call void @raid_class_release(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid_class_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @myrs_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @raid_class_attach(ptr noundef nonnull @myrs_raid_functions) #15
  store ptr %call, ptr @myrs_raid_template, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @myrs_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %0 = load ptr, ptr @myrs_raid_template, align 4
  tail call void @raid_class_release(ptr noundef %0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrs_probe(ptr noundef %dev, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %model.i = alloca [20 x i8], align 1
  %fw_version.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %entry1, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %irq_handler2.i = getelementptr inbounds %struct.myrs_privdata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %irq_handler2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_handler2.i, align 4
  %mmio_size3.i = getelementptr inbounds %struct.myrs_privdata, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %mmio_size3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmio_size3.i, align 4
  %call.i.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull @myrs_template, i32 noundef 744) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i, label %myrs_alloc_host.exit.i

myrs_alloc_host.exit.i:                           ; preds = %entry
  %max_cmd_len.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 24
  %7 = ptrtoint ptr %max_cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %max_cmd_len.i.i, align 4
  %max_lun.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 22
  %8 = ptrtoint ptr %max_lun.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 256, ptr %max_lun.i.i, align 8
  %hostdata.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 0, i32 53
  %dcmd_mutex.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 38
  tail call void @__mutex_init(ptr noundef %dcmd_mutex.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @myrs_alloc_host.__key) #15
  %cinfo_mutex.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 3
  tail call void @__mutex_init(ptr noundef %cinfo_mutex.i.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @myrs_alloc_host.__key.82) #15
  %host.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %host.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %host.i.i, align 4
  %pdev4.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %10 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %pdev4.i, align 8
  %call5.i = tail call i32 @pci_enable_device(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %myrs_alloc_host.exit.i.do.end46.i_crit_edge

myrs_alloc_host.exit.i.do.end46.i_crit_edge:      ; preds = %myrs_alloc_host.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end46.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.69) #18
  br label %cleanup

if.end8.i:                                        ; preds = %myrs_alloc_host.exit.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %11 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource.i, align 8
  %pci_addr.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %pci_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pci_addr.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hostdata.i.i.i, ptr %driver_data.i.i.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @myrs_detect.__key, i16 noundef signext 3) #15
  %15 = tail call i32 @llvm.umax.i32(i32 %6, i32 4096) #15
  %16 = ptrtoint ptr %pci_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pci_addr.i, align 4
  %and.i = and i32 %17, -4096
  %call16.i = tail call ptr @ioremap(i32 noundef %and.i, i32 noundef %15) #15
  %mmio_base.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16.i, ptr %mmio_base.i, align 4
  %cmp18.i = icmp eq ptr %call16.i, null
  br i1 %cmp18.i, label %do.end22.i, label %if.end24.i

do.end22.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.73) #18
  br label %do.end46.i

if.end24.i:                                       ; preds = %if.end8.i
  %19 = ptrtoint ptr %pci_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pci_addr.i, align 4
  %and27.i = and i32 %20, 4095
  %add.ptr.i = getelementptr i8, ptr %call16.i, i32 %and27.i
  %21 = ptrtoint ptr %hostdata.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %hostdata.i.i.i, align 8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %call29.i = tail call i32 %23(ptr noundef %dev, ptr noundef nonnull %hostdata.i.i.i, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end24.i.do.end46.i_crit_edge

if.end24.i.do.end46.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end46.i

if.end32.i:                                       ; preds = %if.end24.i
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  %call.i83.i = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef %4, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %hostdata.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %cmp34.i = icmp slt i32 %call.i83.i, 0
  br i1 %cmp34.i, label %do.end38.i, label %myrs_detect.exit

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.76, i32 noundef %27) #18
  br label %do.end46.i

do.end46.i:                                       ; preds = %do.end38.i, %if.end24.i.do.end46.i_crit_edge, %do.end22.i, %myrs_alloc_host.exit.i.do.end46.i_crit_edge
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.79) #18
  tail call fastcc void @myrs_cleanup(ptr noundef nonnull %hostdata.i.i.i) #15
  br label %cleanup

myrs_detect.exit:                                 ; preds = %if.end32.i
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  %irq43.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 2
  %30 = ptrtoint ptr %irq43.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %irq43.i, align 8
  %tobool.not = icmp eq ptr %hostdata.i.i.i, null
  br i1 %tobool.not, label %myrs_detect.exit.cleanup_crit_edge, label %if.end

myrs_detect.exit.cleanup_crit_edge:               ; preds = %myrs_detect.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %myrs_detect.exit
  %ctlr_info.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %ctlr_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctlr_info.i, align 4
  %33 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %model.i) #15
  %35 = getelementptr inbounds i8, ptr %model.i, i32 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 -1, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fw_version.i) #15
  %37 = call ptr @memset(ptr %fw_version.i, i32 255, i32 12)
  tail call void @mutex_lock_nested(ptr noundef %cinfo_mutex.i.i, i32 noundef 0) #15
  %call.i = tail call fastcc zeroext i8 @myrs_get_ctlr_info(ptr noundef nonnull %hostdata.i.i.i) #15
  tail call void @mutex_unlock(ptr noundef %cinfo_mutex.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp.not.i = icmp eq i8 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i30

do.end.i30:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.203) #18
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %ctlr_name.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 10
  %38 = call ptr @memcpy(ptr %model.i, ptr %ctlr_name.i, i32 16)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end.i
  %model_len.0.i = phi i32 [ 15, %if.end.i ], [ %dec15.i, %while.body.i ]
  %arrayidx.i = getelementptr [20 x i8], ptr %model.i, i32 0, i32 %model_len.0.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i8 %40, label %while.end.i [
    i8 32, label %while.cond.i.while.body.i_crit_edge
    i8 0, label %while.cond.i.while.body.i_crit_edge53
  ]

while.cond.i.while.body.i_crit_edge53:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge53
  %dec15.i = add i32 %model_len.0.i, -1
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %inc.i = add i32 %model_len.0.i, 1
  %arrayidx16.i = getelementptr [20 x i8], ptr %model.i, i32 0, i32 %inc.i
  %42 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx16.i, align 1
  %model_name.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 2, i32 1
  %43 = ptrtoint ptr %model_name.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 4918286181066612736, ptr %model_name.i, align 1
  %call22.i = call ptr @strcat(ptr noundef %model_name.i, ptr noundef nonnull %model.i) #15
  %fw_major_version.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 12
  %44 = ptrtoint ptr %fw_major_version.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fw_major_version.i, align 4
  %conv24.i = zext i8 %45 to i32
  %fw_minor_version.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 13
  %46 = ptrtoint ptr %fw_minor_version.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fw_minor_version.i, align 1
  %conv25.i = zext i8 %47 to i32
  %fw_turn_number.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 14
  %48 = ptrtoint ptr %fw_turn_number.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fw_turn_number.i, align 2
  %conv26.i = zext i8 %49 to i32
  %call27.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_version.i, ptr noundef nonnull @.str.206, i32 noundef %conv24.i, i32 noundef %conv25.i, i32 noundef %conv26.i) #15
  %50 = ptrtoint ptr %fw_major_version.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fw_major_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %51)
  %cmp30.i = icmp eq i8 %51, 6
  br i1 %cmp30.i, label %land.lhs.true.i, label %while.end.i.if.end47.i_crit_edge

while.end.i.if.end47.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %52 = ptrtoint ptr %fw_minor_version.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fw_minor_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp34.i31 = icmp eq i8 %53, 0
  br i1 %cmp34.i31, label %land.lhs.true36.i, label %land.lhs.true.i.if.end47.i_crit_edge

land.lhs.true.i.if.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %fw_turn_number.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fw_turn_number.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp39.i = icmp eq i8 %55, 0
  br i1 %cmp39.i, label %do.end44.i, label %land.lhs.true36.i.if.end47.i_crit_edge

land.lhs.true36.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

do.end44.i:                                       ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev45.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.209, ptr noundef %shost_gendev45.i, ptr noundef nonnull @.str.208, ptr noundef nonnull %fw_version.i) #18
  br label %if.then3

if.end47.i:                                       ; preds = %land.lhs.true36.i.if.end47.i_crit_edge, %land.lhs.true.i.if.end47.i_crit_edge, %while.end.i.if.end47.i_crit_edge
  %physchan_present.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 60
  %56 = ptrtoint ptr %physchan_present.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %physchan_present.i, align 4
  %conv48.i = zext i8 %57 to i32
  %virtchan_present.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 61
  %58 = ptrtoint ptr %virtchan_present.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %virtchan_present.i, align 1
  %conv49.i = zext i8 %59 to i32
  %add.i = add nuw nsw i32 %conv49.i, %conv48.i
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 20
  %60 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i, ptr %max_channel.i, align 8
  %max_targets.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 64
  %61 = ptrtoint ptr %max_targets.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_targets.i, align 4
  %conv51.i = zext i8 %62 to i32
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 21
  %63 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv51.i, ptr %max_id.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end47.i
  %i.0229.i = phi i32 [ 1, %if.end47.i ], [ %inc70.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx55.i = getelementptr %struct.myrs_ctlr_info, ptr %32, i32 0, i32 64, i32 %i.0229.i
  %64 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end57.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end57.i:                                       ; preds = %for.body.i
  %66 = ptrtoint ptr %max_id.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_id.i, align 4
  %conv61.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv61.i)
  %cmp62.i = icmp ult i32 %67, %conv61.i
  br i1 %cmp62.i, label %if.then64.i, label %if.end57.i.for.inc.i_crit_edge

if.end57.i.for.inc.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then64.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv61.i, ptr %max_id.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then64.i, %if.end57.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc70.i = add nuw nsw i32 %i.0229.i, 1
  %exitcond.not.i = icmp eq i32 %inc70.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %max_tcq.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 59
  %69 = ptrtoint ptr %max_tcq.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %max_tcq.i, align 2
  %conv71.i = zext i16 %70 to i32
  %sub.i = add nsw i32 %conv71.i, -3
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp73.i = icmp ugt i16 %70, 512
  %spec.select.i = select i1 %cmp73.i, i32 509, i32 %sub.i
  %71 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select.i, ptr %can_queue.i, align 4
  %max_transfer_size.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 50
  %72 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %max_transfer_size.i, align 4
  %conv78.i = zext i16 %73 to i32
  %max_sectors.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 30
  %74 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv78.i, ptr %max_sectors.i, align 8
  %max_sge.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 51
  %75 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %max_sge.i, align 2
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 28
  %77 = tail call i16 @llvm.umin.i16(i16 %76, i16 128) #15
  %78 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %sg_tablesize.i, align 2
  %shost_gendev89.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.212, ptr noundef nonnull %model.i) #18
  %79 = ptrtoint ptr %physchan_present.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %physchan_present.i, align 4
  %conv97.i = zext i8 %80 to i32
  %mem_size_mb.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 66
  %81 = ptrtoint ptr %mem_size_mb.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mem_size_mb.i, align 4
  %conv98.i = zext i16 %82 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.215, ptr noundef nonnull %fw_version.i, i32 noundef %conv97.i, i32 noundef %conv98.i) #18
  %83 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %can_queue.i, align 4
  %85 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_sectors.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.218, i32 noundef %84, i32 noundef %86) #18
  %87 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %can_queue.i, align 4
  %89 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %sg_tablesize.i, align 2
  %conv111.i = zext i16 %90 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.221, i32 noundef %88, i32 noundef %conv111.i, i32 noundef 128) #18
  %physchan_max.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 62
  %91 = ptrtoint ptr %physchan_max.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %physchan_max.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp114231.not.i = icmp eq i8 %92, 0
  br i1 %cmp114231.not.i, label %for.end.i.if.end4_crit_edge, label %for.end.i.for.body116.i_crit_edge

for.end.i.for.body116.i_crit_edge:                ; preds = %for.end.i
  br label %for.body116.i

for.end.i.if.end4_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.body116.i:                                    ; preds = %for.inc129.i.for.body116.i_crit_edge, %for.end.i.for.body116.i_crit_edge
  %i.1232.i = phi i32 [ %inc130.i, %for.inc129.i.for.body116.i_crit_edge ], [ 0, %for.end.i.for.body116.i_crit_edge ]
  %arrayidx118.i = getelementptr %struct.myrs_ctlr_info, ptr %32, i32 0, i32 64, i32 %i.1232.i
  %93 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx118.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool119.not.i = icmp eq i8 %94, 0
  br i1 %tobool119.not.i, label %for.body116.i.for.inc129.i_crit_edge, label %do.end124.i

for.body116.i.for.inc129.i_crit_edge:             ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc129.i

do.end124.i:                                      ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv128.i = zext i8 %94 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.224, i32 noundef %i.1232.i, i32 noundef %conv128.i) #18
  br label %for.inc129.i

for.inc129.i:                                     ; preds = %do.end124.i, %for.body116.i.for.inc129.i_crit_edge
  %inc130.i = add nuw nsw i32 %i.1232.i, 1
  %95 = ptrtoint ptr %physchan_max.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %physchan_max.i, align 2
  %conv113.i = zext i8 %96 to i32
  %cmp114.i = icmp ult i32 %inc130.i, %conv113.i
  br i1 %cmp114.i, label %for.inc129.i.for.body116.i_crit_edge, label %if.end4.loopexit

for.inc129.i.for.body116.i_crit_edge:             ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body116.i

if.then3:                                         ; preds = %do.end44.i, %do.end.i30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fw_version.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %model.i) #15
  call fastcc void @myrs_cleanup(ptr noundef nonnull %hostdata.i.i.i)
  br label %cleanup

if.end4.loopexit:                                 ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv113.i.le = zext i8 %96 to i32
  br label %if.end4

if.end4:                                          ; preds = %if.end4.loopexit, %for.end.i.if.end4_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.end.i.if.end4_crit_edge ], [ %conv113.i.le, %if.end4.loopexit ]
  %97 = ptrtoint ptr %physchan_present.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %physchan_present.i, align 4
  %conv137.i = zext i8 %98 to i32
  %pdisk_present.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 56
  %99 = ptrtoint ptr %pdisk_present.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %pdisk_present.i, align 4
  %conv140.i = zext i16 %100 to i32
  %pdev_present.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 55
  %101 = ptrtoint ptr %pdev_present.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pdev_present.i, align 2
  %conv141.i = zext i16 %102 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.227, i32 noundef %conv137.i, i32 noundef %.lcssa.i, i32 noundef %conv140.i, i32 noundef %conv141.i) #18
  %103 = ptrtoint ptr %virtchan_present.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %virtchan_present.i, align 1
  %conv147.i = zext i8 %104 to i32
  %virtchan_max.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 63
  %105 = ptrtoint ptr %virtchan_max.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %virtchan_max.i, align 1
  %conv148.i = zext i8 %106 to i32
  %ldev_present.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %32, i32 0, i32 52
  %107 = ptrtoint ptr %ldev_present.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %ldev_present.i, align 4
  %conv149.i = zext i16 %108 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev89.i, ptr noundef nonnull @.str.230, i32 noundef %conv147.i, i32 noundef %conv148.i, i32 noundef %conv149.i) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fw_version.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %model.i) #15
  %109 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %host.i.i, align 4
  %sg_tablesize.i34 = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 28
  %111 = ptrtoint ptr %sg_tablesize.i34 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %sg_tablesize.i34, align 2
  %conv.i = zext i16 %112 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %dev.i35 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i36 = call ptr @dma_pool_create(ptr noundef nonnull @.str.235, ptr noundef %dev.i35, i32 noundef %mul.i, i32 noundef 16, i32 noundef 0) #15
  %sg_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 13, i32 0, i32 0, i32 2
  %113 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i36, ptr %sg_pool.i, align 8
  %cmp.i = icmp eq ptr %call.i36, null
  br i1 %cmp.i, label %do.end.i38, label %if.end.i39

do.end.i38:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev.i37 = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev.i37, ptr noundef nonnull @.str.236) #18
  br label %failed

if.end.i39:                                       ; preds = %if.end4
  %call4.i = call ptr @dma_pool_create(ptr noundef nonnull @.str.238, ptr noundef %dev.i35, i32 noundef 14, i32 noundef 4, i32 noundef 0) #15
  %sense_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 13, i32 0, i32 1
  %114 = ptrtoint ptr %sense_pool.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call4.i, ptr %sense_pool.i, align 4
  %cmp6.i = icmp eq ptr %call4.i, null
  br i1 %cmp6.i, label %if.then8.i, label %if.end15.i

if.then8.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sg_pool.i, align 8
  call void @dma_pool_destroy(ptr noundef %116) #15
  %117 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %sg_pool.i, align 8
  %shost_gendev14.i = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev14.i, ptr noundef nonnull @.str.240) #18
  br label %failed

if.end15.i:                                       ; preds = %if.end.i39
  %call17.i = call ptr @dma_pool_create(ptr noundef nonnull @.str.242, ptr noundef %dev.i35, i32 noundef 16, i32 noundef 1, i32 noundef 0) #15
  %dcdb_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 13, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call17.i, ptr %dcdb_pool.i, align 8
  %tobool.not.i40 = icmp eq ptr %call17.i, null
  br i1 %tobool.not.i40, label %if.then19.i, label %if.end28.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %119 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sg_pool.i, align 8
  call void @dma_pool_destroy(ptr noundef %120) #15
  %121 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %sg_pool.i, align 8
  %122 = ptrtoint ptr %sense_pool.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sense_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %123) #15
  %124 = ptrtoint ptr %sense_pool.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %sense_pool.i, align 4
  %shost_gendev27.i = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev27.i, ptr noundef nonnull @.str.244) #18
  br label %failed

if.end28.i:                                       ; preds = %if.end15.i
  %work_q_name.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 1, i32 2
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 17
  %125 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %host_no.i, align 4
  %call29.i41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %work_q_name.i, i32 noundef 20, ptr noundef nonnull @.str.246, i32 noundef %126) #15
  %call32.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.247, i32 noundef 917514, i32 noundef 1, ptr noundef %work_q_name.i) #15
  %work_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 1, i32 1
  %127 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call32.i, ptr %work_q.i, align 8
  %tobool34.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end7

if.then35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dcdb_pool.i, align 8
  call void @dma_pool_destroy(ptr noundef %129) #15
  %130 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %dcdb_pool.i, align 8
  %131 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sg_pool.i, align 8
  call void @dma_pool_destroy(ptr noundef %132) #15
  %133 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %sg_pool.i, align 8
  %134 = ptrtoint ptr %sense_pool.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sense_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %135) #15
  %136 = ptrtoint ptr %sense_pool.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %sense_pool.i, align 4
  %shost_gendev45.i42 = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev45.i42, ptr noundef nonnull @.str.249) #18
  br label %failed

if.end7:                                          ; preds = %if.end28.i
  %monitor_work.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 1, i32 4, i32 2
  call void @__init_work(ptr noundef %monitor_work.i, i32 noundef 0) #15
  %137 = ptrtoint ptr %monitor_work.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -64, ptr %monitor_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 2
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.251, ptr noundef nonnull @myrs_create_mempools.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry55.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 1, i32 4, i32 3
  %138 = ptrtoint ptr %entry55.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %entry55.i, ptr %entry55.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 1, i32 4, i32 6
  %139 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %entry55.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 1, i32 4, i32 7
  %140 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @myrs_monitor, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i.i, i32 1, i32 5, i32 5, i32 2
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.253, ptr noundef nonnull @myrs_create_mempools.__key.252) #15
  %141 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %work_q.i, align 8
  %call.i.i43 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %142, ptr noundef %monitor_work.i, i32 noundef 1) #15
  %143 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %host.i.i, align 4
  %call.i45 = call i32 @scsi_add_host_with_dma(ptr noundef %144, ptr noundef %dev.i35, ptr noundef %dev.i35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool10.not = icmp eq i32 %call.i45, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i35, ptr noundef nonnull @.str.67, i32 noundef %call.i45) #18
  call fastcc void @myrs_destroy_mempools(ptr noundef nonnull %hostdata.i.i.i)
  br label %failed

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %145 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %host.i.i, align 4
  call void @scsi_scan_host(ptr noundef %146) #15
  br label %cleanup

failed:                                           ; preds = %do.end, %if.then35.i, %if.then19.i, %if.then8.i, %do.end.i38
  %ret.0 = phi i32 [ %call.i45, %do.end ], [ -12, %do.end.i38 ], [ -12, %if.then8.i ], [ -12, %if.then35.i ], [ -12, %if.then19.i ]
  call fastcc void @myrs_cleanup(ptr noundef nonnull %hostdata.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end13, %if.then3, %myrs_detect.exit.cleanup_crit_edge, %do.end46.i, %do.end.i
  %retval.0 = phi i32 [ -19, %if.then3 ], [ %ret.0, %failed ], [ 0, %if.end13 ], [ -19, %myrs_detect.exit.cleanup_crit_edge ], [ -19, %do.end46.i ], [ -19, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrs_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %host = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev, ptr noundef nonnull @.str.399) #18
  %dcmd_blk.i.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 38
  %dcmd_mutex.i.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i.i, i32 noundef 0) #15
  %4 = call ptr @memset(ptr %dcmd_blk.i.i, i32 0, i32 65)
  %opcode2.i.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 38, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %opcode2.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %opcode2.i.i, align 2
  %6 = ptrtoint ptr %dcmd_blk.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %dcmd_blk.i.i, align 8
  %control.i.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 38, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %control.i.i, align 1
  %ioctl_opcode.i.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 38, i32 0, i32 0, i32 9
  %8 = ptrtoint ptr %ioctl_opcode.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -111, ptr %ioctl_opcode.i.i, align 1
  %opdev7.i.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 38, i32 0, i32 0, i32 10
  %9 = ptrtoint ptr %opdev7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %opdev7.i.i, align 2
  tail call fastcc void @myrs_exec_cmd(ptr noundef nonnull %1, ptr noundef %dcmd_blk.i.i) #15
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex.i.i) #15
  %monitor_work.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 15
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work.i) #15
  %work_q.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %work_q.i, align 8
  tail call void @destroy_workqueue(ptr noundef %11) #15
  %sg_pool.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_pool.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %13) #15
  %dcdb_pool.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcdb_pool.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %15) #15
  %sense_pool.i = getelementptr inbounds %struct.myrs_hba, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %sense_pool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sense_pool.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %17) #15
  tail call fastcc void @myrs_cleanup(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_GEM_hw_init(ptr noundef %pdev, ptr noundef %cs, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !799
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %base, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !801
  tail call void @arm_heavy_mb() #15
  %add.ptr.i29 = getelementptr i8, ptr %base, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 33554432) #15, !srcloc !800
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #15
  %add.ptr.i30 = getelementptr i8, ptr %base, i32 532
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !803
  %2 = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i45.not = icmp eq i32 %2, 0
  br i1 %tobool.i45.not, label %entry.if.end5_crit_edge, label %while.body.lr.ph

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i31 = getelementptr i8, ptr %base, i32 548
  %add.ptr5.i = getelementptr i8, ptr %base, i32 1296
  %add.ptr13.i = getelementptr i8, ptr %base, i32 1297
  %add.ptr17.i = getelementptr i8, ptr %base, i32 552
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %timeout.046 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !804
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = lshr i32 %3, 24
  %conv.i = trunc i32 %5 to i8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !806
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !807
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !808
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 3) #15, !srcloc !800
  %call2 = tail call fastcc zeroext i1 @myrs_err_status(ptr noundef %cs, i8 noundef zeroext %conv.i, i8 noundef zeroext %6, i8 noundef zeroext %7)
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #15
  %inc = add nuw nsw i32 %timeout.046, 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !803
  %10 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.046)
  %cmp = icmp ult i32 %timeout.046, 999999
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end5:                                          ; preds = %while.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc zeroext i1 @myrs_enable_mmio_mbox(ptr noundef %cs, ptr noundef nonnull @DAC960_GEM_mbox_init)
  br i1 %call6, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.7) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !809
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 134217728) #15, !srcloc !800
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !810
  tail call void @arm_heavy_mb() #15
  %add.ptr.i33 = getelementptr i8, ptr %base, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 50331648) #15, !srcloc !800
  %write_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 22
  %11 = ptrtoint ptr %write_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @DAC960_GEM_write_cmd_mbox, ptr %write_cmd_mbox, align 4
  %get_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 23
  %12 = ptrtoint ptr %get_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @DAC960_GEM_mem_mbox_new_cmd, ptr %get_cmd_mbox, align 8
  %disable_intr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 24
  %13 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @DAC960_GEM_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 25
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @DAC960_GEM_reset_ctrl, ptr %reset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end12 ], [ -11, %do.end10 ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_GEM_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %queue_lock = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !811
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %1, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #15, !srcloc !800
  %next_stat_mbox5 = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 37
  %2 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_stat_mbox5, align 8
  %mcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 39
  %dcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 38
  %host = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 7
  %pdev = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 8
  %last_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 36
  %first_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 35
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %next_stat_mbox.0 = phi ptr [ %3, %entry ], [ %next_stat_mbox.1, %while.cond.backedge ]
  %4 = ptrtoint ptr %next_stat_mbox.0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_stat_mbox.0, align 4
  %conv6 = zext i16 %5 to i32
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.401)
  switch i16 %5, label %if.else18 [
    i16 0, label %while.end
    i16 1, label %while.cond.if.end24_crit_edge
    i16 2, label %if.then17
  ]

while.cond.if.end24_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then17:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.else18:                                        ; preds = %while.cond
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i, label %if.else18.do.end33_crit_edge, label %if.then3.i

if.else18.do.end33_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then3.i:                                       ; preds = %if.else18
  %sub = add nuw nsw i32 %conv6, 65533
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tags.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %conv6.i = and i32 %sub, 65535
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %16, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end33_crit_edge

if.then3.i.do.end33_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %conv6.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %20) #15, !srcloc !812
  %21 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %22, i32 %conv6.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end8.i.do.end33_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end33_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i21.not.i = icmp eq i32 %26, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %24, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i21.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end33_crit_edge, label %if.then21

lor.lhs.false.i.do.end33_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then21:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i82 = getelementptr %struct.request, ptr %24, i32 2, i32 19
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then17, %while.cond.if.end24_crit_edge
  %scmd.0 = phi ptr [ null, %if.then17 ], [ %add.ptr.i.i, %if.then21 ], [ null, %while.cond.if.end24_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then17 ], [ %add.ptr.i82, %if.then21 ], [ %dcmd_blk, %while.cond.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool25.not, label %if.end24.do.end33_crit_edge, label %if.then26

if.end24.do.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %status = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 1
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status, align 2
  %status27 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %29 = ptrtoint ptr %status27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %status27, align 8
  %sense_len = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 2
  %30 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sense_len, align 1
  %sense_len28 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 2
  %32 = ptrtoint ptr %sense_len28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sense_len28, align 1
  %residual = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 3
  %33 = ptrtoint ptr %residual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %residual, align 4
  %residual29 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 3
  %35 = ptrtoint ptr %residual29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %residual29, align 4
  br label %if.end35

do.end33:                                         ; preds = %if.end24.do.end33_crit_edge, %lor.lhs.false.i.do.end33_crit_edge, %if.end8.i.do.end33_crit_edge, %if.then3.i.do.end33_crit_edge, %if.else18.do.end33_crit_edge
  %scmd.090 = phi ptr [ %scmd.0, %if.end24.do.end33_crit_edge ], [ null, %if.end8.i.do.end33_crit_edge ], [ null, %if.else18.do.end33_crit_edge ], [ null, %if.then3.i.do.end33_crit_edge ], [ null, %lor.lhs.false.i.do.end33_crit_edge ]
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv6) #18
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.then26
  %tobool25.not93 = phi i1 [ true, %do.end33 ], [ false, %if.then26 ]
  %cmd_blk.091 = phi ptr [ null, %do.end33 ], [ %cmd_blk.0, %if.then26 ]
  %scmd.089 = phi ptr [ %scmd.090, %do.end33 ], [ %scmd.0, %if.then26 ]
  %38 = ptrtoint ptr %next_stat_mbox.0 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %next_stat_mbox.0, align 4
  %incdec.ptr = getelementptr %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 1
  %39 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %last_stat_mbox, align 4
  %cmp36 = icmp ugt ptr %incdec.ptr, %40
  br i1 %cmp36, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %first_stat_mbox, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %next_stat_mbox.1 = phi ptr [ %42, %if.then38 ], [ %incdec.ptr, %if.end35.if.end39_crit_edge ]
  br i1 %tobool25.not93, label %if.end39.while.cond.backedge_crit_edge, label %if.then41

if.end39.while.cond.backedge_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp43 = icmp ult i16 %5, 3
  br i1 %cmp43, label %if.end.i, label %if.else46

if.end.i:                                         ; preds = %if.then41
  %complete.i = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.091, i32 0, i32 4
  %43 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %complete.i, align 8
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %if.end.i.while.cond.backedge_crit_edge, label %if.then2.i

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @complete(ptr noundef nonnull %44) #15
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %complete.i, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else46, %if.then2.i, %if.end.i.while.cond.backedge_crit_edge, %if.end39.while.cond.backedge_crit_edge
  br label %while.cond

if.else46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @myrs_handle_scsi(ptr noundef %arg, ptr noundef nonnull %cmd_blk.091, ptr noundef %scmd.089)
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %next_stat_mbox.0, ptr %next_stat_mbox5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #15
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_GEM_disable_intr(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !799
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !800
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @myrs_err_status(ptr nocapture noundef readonly %cs, i8 noundef zeroext %status, i8 noundef zeroext %parm0, i8 noundef zeroext %parm1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 8
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %2 = zext i8 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.402)
  switch i8 %status, label %do.end53 [
    i8 0, label %do.end
    i8 8, label %do.end7
    i8 48, label %do.end12
    i8 96, label %do.end17
    i8 112, label %do.end22
    i8 -112, label %do.end27
    i8 -96, label %do.end34
    i8 -80, label %do.end39
    i8 -48, label %do.end44
    i8 -16, label %do.end49
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv2 = zext i8 %parm1 to i32
  %conv3 = zext i8 %parm0 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv2, i32 noundef %conv3) #18
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev8, ptr noundef nonnull @.str.13) #18
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev13, ptr noundef nonnull @.str.17) #18
  br label %cleanup

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev18, ptr noundef nonnull @.str.20) #18
  br label %cleanup

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev23, ptr noundef nonnull @.str.23) #18
  br label %cleanup

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv29 = zext i8 %parm1 to i32
  %conv30 = zext i8 %parm0 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev28, ptr noundef nonnull @.str.26, i32 noundef %conv29, i32 noundef %conv30) #18
  br label %cleanup

do.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev35, ptr noundef nonnull @.str.29) #18
  br label %cleanup

do.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev40, ptr noundef nonnull @.str.32) #18
  br label %cleanup

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev45, ptr noundef nonnull @.str.35) #18
  br label %cleanup

do.end49:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.38) #18
  br label %cleanup

do.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %status to i32
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.41, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.end49, %do.end44, %do.end39, %do.end34, %do.end27, %do.end22, %do.end17, %do.end12, %do.end7, %do.end
  %retval.0 = phi i1 [ true, %do.end53 ], [ true, %do.end49 ], [ false, %do.end44 ], [ false, %do.end39 ], [ false, %do.end34 ], [ false, %do.end27 ], [ false, %do.end22 ], [ false, %do.end17 ], [ false, %do.end12 ], [ false, %do.end7 ], [ false, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @myrs_enable_mmio_mbox(ptr noundef %cs, ptr nocapture noundef readonly %enable_mbox_fn) unnamed_addr #2 align 64 {
entry:
  %mbox_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs, align 8
  %pdev1 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 8
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbox_addr) #15
  %4 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mbox_addr, align 4, !annotation !813
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #18
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %mbox_addr, i32 noundef 3264, i32 noundef 0) #15
  %5 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox_addr, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not = icmp eq i32 %6, -1
  br i1 %cmp.i.not, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %cmd_mbox_size = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 27
  %7 = ptrtoint ptr %cmd_mbox_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32768, ptr %cmd_mbox_size, align 8
  %cmd_mbox_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 26
  %call.i162 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 32768, ptr noundef %cmd_mbox_addr, i32 noundef 3264, i32 noundef 0) #15
  %8 = ptrtoint ptr %cmd_mbox_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_mbox_addr, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i163.not = icmp eq i32 %9, -1
  br i1 %cmp.i163.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #18
  br label %out_free.thread

if.end27:                                         ; preds = %if.end14
  %first_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 28
  %10 = ptrtoint ptr %first_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i162, ptr %first_cmd_mbox, align 4
  %add.ptr = getelementptr %union.myrs_cmd_mbox, ptr %call.i162, i32 511
  %last_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 29
  %11 = ptrtoint ptr %last_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %last_cmd_mbox, align 8
  %next_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 30
  %12 = ptrtoint ptr %next_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i162, ptr %next_cmd_mbox, align 4
  %prev_cmd_mbox1 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 31
  %13 = ptrtoint ptr %prev_cmd_mbox1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %prev_cmd_mbox1, align 8
  %add.ptr31 = getelementptr %union.myrs_cmd_mbox, ptr %call.i162, i32 510
  %prev_cmd_mbox2 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 32
  %14 = ptrtoint ptr %prev_cmd_mbox2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr31, ptr %prev_cmd_mbox2, align 4
  %stat_mbox_size = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 34
  %15 = ptrtoint ptr %stat_mbox_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %stat_mbox_size, align 4
  %stat_mbox_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 33
  %call.i165 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %stat_mbox_addr, i32 noundef 3264, i32 noundef 0) #15
  %16 = ptrtoint ptr %stat_mbox_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat_mbox_addr, align 8
  call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i166.not = icmp eq i32 %17, -1
  br i1 %cmp.i166.not, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #18
  br label %out_free.thread

if.end44:                                         ; preds = %if.end27
  %first_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 35
  %18 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i165, ptr %first_stat_mbox, align 8
  %add.ptr45 = getelementptr %struct.myrs_stat_mbox, ptr %call.i165, i32 511
  %last_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 36
  %19 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr45, ptr %last_stat_mbox, align 4
  %next_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 37
  %20 = ptrtoint ptr %next_stat_mbox to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i165, ptr %next_stat_mbox, align 8
  %fwstat_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 42
  %call.i168 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 128, ptr noundef %fwstat_addr, i32 noundef 3264, i32 noundef 0) #15
  %fwstat_buf = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 41
  %21 = ptrtoint ptr %fwstat_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i168, ptr %fwstat_buf, align 4
  %22 = ptrtoint ptr %fwstat_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fwstat_addr, align 8
  call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i169.not = icmp eq i32 %23, -1
  br i1 %cmp.i169.not, label %do.end56, label %if.end59

do.end56:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #18
  %24 = ptrtoint ptr %fwstat_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fwstat_buf, align 4
  br label %out_free.thread

if.end59:                                         ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 1004) #19
  %ctlr_info = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 43
  %26 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %ctlr_info, align 4
  %tobool62.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool62.not, label %if.end59.out_free.thread_crit_edge, label %if.end64

if.end59.out_free.thread_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.thread

if.end64:                                         ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i171 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 64) #19
  %event_buf = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 45
  %28 = ptrtoint ptr %event_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i171, ptr %event_buf, align 4
  %tobool67.not = icmp eq ptr %call7.i.i171, null
  br i1 %tobool67.not, label %if.end64.out_free.thread_crit_edge, label %out_free

if.end64.out_free.thread_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free.thread

out_free.thread:                                  ; preds = %if.end64.out_free.thread_crit_edge, %if.end59.out_free.thread_crit_edge, %do.end56, %do.end42, %do.end25
  %29 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mbox_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef %call.i, i32 noundef %30, i32 noundef 0) #15
  br label %do.end82

out_free:                                         ; preds = %if.end64
  %31 = getelementptr inbounds i8, ptr %call.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 56)
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %call.i, align 8
  %opcode = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 32, ptr %opcode, align 2
  %control = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %control, align 1
  %first_cmd_mbox_size_kb = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %first_cmd_mbox_size_kb to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 32, ptr %first_cmd_mbox_size_kb, align 4
  %first_stat_mbox_size_kb = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %first_stat_mbox_size_kb to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %first_stat_mbox_size_kb, align 1
  %second_cmd_mbox_size_kb = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %second_cmd_mbox_size_kb to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %second_cmd_mbox_size_kb, align 2
  %second_stat_mbox_size_kb = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %second_stat_mbox_size_kb to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %second_stat_mbox_size_kb, align 1
  %ioctl_opcode = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 11
  %40 = ptrtoint ptr %ioctl_opcode to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -114, ptr %ioctl_opcode, align 1
  %fwstat_buf_size_kb = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 12
  %41 = ptrtoint ptr %fwstat_buf_size_kb to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %fwstat_buf_size_kb, align 2
  %42 = ptrtoint ptr %fwstat_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fwstat_addr, align 8
  %conv = zext i32 %43 to i64
  %fwstat_buf_addr = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 14
  %44 = ptrtoint ptr %fwstat_buf_addr to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv, ptr %fwstat_buf_addr, align 8
  %45 = ptrtoint ptr %cmd_mbox_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd_mbox_addr, align 4
  %conv72 = zext i32 %46 to i64
  %first_cmd_mbox_addr = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 15
  %47 = ptrtoint ptr %first_cmd_mbox_addr to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv72, ptr %first_cmd_mbox_addr, align 8
  %48 = ptrtoint ptr %stat_mbox_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stat_mbox_addr, align 8
  %conv74 = zext i32 %49 to i64
  %first_stat_mbox_addr = getelementptr inbounds %struct.anon.95, ptr %call.i, i32 0, i32 16
  %50 = ptrtoint ptr %first_stat_mbox_addr to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv74, ptr %first_stat_mbox_addr, align 8
  %51 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mbox_addr, align 4
  %call75 = call zeroext i8 %enable_mbox_fn(ptr noundef %1, i32 noundef %52) #15, !callees !814
  %phi.cast = zext i8 %call75 to i32
  %53 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mbox_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef %call.i, i32 noundef %54, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call75)
  %cmp.not = icmp eq i8 %call75, 0
  br i1 %cmp.not, label %out_free.cleanup_crit_edge, label %out_free.do.end82_crit_edge

out_free.do.end82_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end82:                                         ; preds = %out_free.do.end82_crit_edge, %out_free.thread
  %status.0174 = phi i32 [ 2, %out_free.thread ], [ %phi.cast, %out_free.do.end82_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %status.0174) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %out_free.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %if.end7.cleanup_crit_edge ], [ false, %do.end82 ], [ true, %out_free.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbox_addr) #15
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @DAC960_GEM_mbox_init(ptr noundef %base, i32 noundef %mbox_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %base, i32 532
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !815
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not18 = icmp eq i32 %1, 0
  br i1 %tobool.i.not18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #15
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !815
  %4 = and i32 %3, 16777216
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr.i12 = getelementptr i8, ptr %base, i32 1296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !816
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !817
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %mbox_addr) #15
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !818
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #15, !srcloc !800
  %add.ptr.i14 = getelementptr i8, ptr %base, i32 548
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !819
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i15.not19 = icmp eq i32 %7, 0
  br i1 %tobool.i15.not19, label %while.end.while.body3_crit_edge, label %while.end.while.end4_crit_edge

while.end.while.end4_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end4

while.end.while.body3_crit_edge:                  ; preds = %while.end
  br label %while.body3

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.end.while.body3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #15
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #15, !srcloc !802
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !819
  %10 = and i32 %9, 16777216
  %tobool.i15.not = icmp eq i32 %10, 0
  br i1 %tobool.i15.not, label %while.body3.while.body3_crit_edge, label %while.body3.while.end4_crit_edge

while.body3.while.end4_crit_edge:                 ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end4

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body3

while.end4:                                       ; preds = %while.body3.while.end4_crit_edge, %while.end.while.end4_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %base, i32 1306
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #15, !srcloc !820
  %12 = lshr i16 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !821
  %conv.i = trunc i16 %12 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !822
  tail call void @arm_heavy_mb() #15
  %add.ptr.i16 = getelementptr i8, ptr %base, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 16777216) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !801
  tail call void @arm_heavy_mb() #15
  %add.ptr.i17 = getelementptr i8, ptr %base, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 33554432) #15, !srcloc !800
  ret i8 %conv.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_GEM_reset_ctrl(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !809
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #15, !srcloc !800
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_GEM_write_cmd_mbox(ptr nocapture noundef writeonly %mem_mbox, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [16 x i32], ptr %mem_mbox, i32 0, i32 1
  %arrayidx1 = getelementptr [16 x i32], ptr %mbox, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx1, i32 60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !823
  tail call void @arm_heavy_mb() #15
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox, align 8
  %3 = ptrtoint ptr %mem_mbox to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mem_mbox, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !824
  tail call void @arm_heavy_mb() #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_GEM_mem_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !825
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #15, !srcloc !800
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrs_handle_scsi(ptr nocapture noundef readonly %cs, ptr noundef %cmd_blk, ptr noundef %scmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd_blk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @scsi_dma_unmap(ptr noundef %scmd) #15
  %status1 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 1
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status1, align 8
  %sense = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 9
  %2 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sense, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end22_crit_edge, label %if.then3

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.then3.if.end18_crit_edge

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then3
  %sense_len = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 2
  %4 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sense_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end18_crit_edge, label %if.then7

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %6 = tail call i8 @llvm.umin.i8(i8 %5, i8 96)
  %spec.select = zext i8 %6 to i32
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %7 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sense_buffer, align 4
  %9 = call ptr @memcpy(ptr %8, ptr %3, i32 %spec.select)
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %land.lhs.true.if.end18_crit_edge, %if.then3.if.end18_crit_edge
  %sense_pool = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 20
  %10 = ptrtoint ptr %sense_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sense_pool, align 4
  %12 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sense, align 4
  %sense_addr = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 10
  %14 = ptrtoint ptr %sense_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sense_addr, align 8
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef %13, i32 noundef %15) #15
  %16 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sense, align 4
  %17 = ptrtoint ptr %sense_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sense_addr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.end.if.end22_crit_edge
  %dcdb = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 7
  %18 = ptrtoint ptr %dcdb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dcdb, align 4
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %if.end22.if.end28_crit_edge, label %if.then24

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %dcdb_pool = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 21
  %20 = ptrtoint ptr %dcdb_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dcdb_pool, align 8
  %dcdb_dma = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 8
  %22 = ptrtoint ptr %dcdb_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dcdb_dma, align 8
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef nonnull %19, i32 noundef %23) #15
  %24 = ptrtoint ptr %dcdb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dcdb, align 4
  %25 = ptrtoint ptr %dcdb_dma to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dcdb_dma, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22.if.end28_crit_edge
  %sgl = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 5
  %26 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sgl, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %sg_pool = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 19
  %28 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg_pool, align 8
  %sgl_addr = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 6
  %30 = ptrtoint ptr %sgl_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sgl_addr, align 8
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef nonnull %27, i32 noundef %31) #15
  %32 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sgl, align 4
  %33 = ptrtoint ptr %sgl_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sgl_addr, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28.if.end34_crit_edge
  %residual = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 3
  %34 = ptrtoint ptr %residual to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %residual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not = icmp eq i32 %35, 0
  br i1 %tobool35.not, label %if.end34.if.end38_crit_edge, label %if.then36

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %scmd, i32 0, i32 5
  %36 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %resid_len.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  %37 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %37)
  %switch = icmp eq i8 %37, 14
  %conv39 = zext i8 %1 to i32
  %spec.select84 = select i1 %switch, i32 262144, i32 %conv39
  %38 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select84, ptr %38, align 4
  tail call void @scsi_done(ptr noundef %scmd) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_BA_hw_init(ptr noundef %pdev, ptr noundef %cs, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !826
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -1) #15, !srcloc !827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !828
  tail call void @arm_heavy_mb() #15
  %add.ptr.i29 = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 2) #15, !srcloc !827
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #15
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !829
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i45 = icmp eq i8 %2, 0
  br i1 %tobool.not.i45, label %while.body.lr.ph, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i31 = getelementptr i8, ptr %base, i32 99
  %add.ptr7.i = getelementptr i8, ptr %base, i32 80
  %add.ptr15.i = getelementptr i8, ptr %base, i32 81
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %timeout.046 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i31) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !830
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i32 = icmp eq i8 %4, 0
  br i1 %tobool.not.i32, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %and3.i = and i8 %3, -5
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !831
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !833
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 -1) #15, !srcloc !827
  %call2 = tail call fastcc zeroext i1 @myrs_err_status(ptr noundef %cs, i8 noundef zeroext %and3.i, i8 noundef zeroext %5, i8 noundef zeroext %6)
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #15
  %inc = add nuw nsw i32 %timeout.046, 1
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !829
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.046)
  %cmp = icmp ult i32 %timeout.046, 999999
  %or.cond = select i1 %tobool.not.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end5:                                          ; preds = %while.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc zeroext i1 @myrs_enable_mmio_mbox(ptr noundef %cs, ptr noundef nonnull @DAC960_BA_mbox_init)
  br i1 %call6, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.7) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !834
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 8) #15, !srcloc !827
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !835
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -5) #15, !srcloc !827
  %write_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 22
  %10 = ptrtoint ptr %write_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @DAC960_BA_write_cmd_mbox, ptr %write_cmd_mbox, align 4
  %get_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 23
  %11 = ptrtoint ptr %get_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @DAC960_BA_mem_mbox_new_cmd, ptr %get_cmd_mbox, align 8
  %disable_intr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 24
  %12 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @DAC960_BA_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 25
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @DAC960_BA_reset_ctrl, ptr %reset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end12 ], [ -11, %do.end10 ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_BA_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %queue_lock = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !836
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %1, i32 97
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 3) #15, !srcloc !827
  %next_stat_mbox5 = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 37
  %2 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_stat_mbox5, align 8
  %mcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 39
  %dcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 38
  %host = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 7
  %pdev = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 8
  %last_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 36
  %first_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 35
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %next_stat_mbox.0 = phi ptr [ %3, %entry ], [ %next_stat_mbox.1, %while.cond.backedge ]
  %4 = ptrtoint ptr %next_stat_mbox.0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_stat_mbox.0, align 4
  %conv6 = zext i16 %5 to i32
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.403)
  switch i16 %5, label %if.else18 [
    i16 0, label %while.end
    i16 1, label %while.cond.if.end24_crit_edge
    i16 2, label %if.then17
  ]

while.cond.if.end24_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then17:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.else18:                                        ; preds = %while.cond
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i, label %if.else18.do.end33_crit_edge, label %if.then3.i

if.else18.do.end33_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then3.i:                                       ; preds = %if.else18
  %sub = add nuw nsw i32 %conv6, 65533
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tags.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %conv6.i = and i32 %sub, 65535
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %16, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end33_crit_edge

if.then3.i.do.end33_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %conv6.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %20) #15, !srcloc !812
  %21 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %22, i32 %conv6.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end8.i.do.end33_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end33_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i21.not.i = icmp eq i32 %26, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %24, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i21.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end33_crit_edge, label %if.then21

lor.lhs.false.i.do.end33_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then21:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i82 = getelementptr %struct.request, ptr %24, i32 2, i32 19
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then17, %while.cond.if.end24_crit_edge
  %scmd.0 = phi ptr [ null, %if.then17 ], [ %add.ptr.i.i, %if.then21 ], [ null, %while.cond.if.end24_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then17 ], [ %add.ptr.i82, %if.then21 ], [ %dcmd_blk, %while.cond.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool25.not, label %if.end24.do.end33_crit_edge, label %if.then26

if.end24.do.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %status = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 1
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status, align 2
  %status27 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %29 = ptrtoint ptr %status27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %status27, align 8
  %sense_len = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 2
  %30 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sense_len, align 1
  %sense_len28 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 2
  %32 = ptrtoint ptr %sense_len28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sense_len28, align 1
  %residual = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 3
  %33 = ptrtoint ptr %residual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %residual, align 4
  %residual29 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 3
  %35 = ptrtoint ptr %residual29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %residual29, align 4
  br label %if.end35

do.end33:                                         ; preds = %if.end24.do.end33_crit_edge, %lor.lhs.false.i.do.end33_crit_edge, %if.end8.i.do.end33_crit_edge, %if.then3.i.do.end33_crit_edge, %if.else18.do.end33_crit_edge
  %scmd.090 = phi ptr [ %scmd.0, %if.end24.do.end33_crit_edge ], [ null, %if.end8.i.do.end33_crit_edge ], [ null, %if.else18.do.end33_crit_edge ], [ null, %if.then3.i.do.end33_crit_edge ], [ null, %lor.lhs.false.i.do.end33_crit_edge ]
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv6) #18
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.then26
  %tobool25.not93 = phi i1 [ true, %do.end33 ], [ false, %if.then26 ]
  %cmd_blk.091 = phi ptr [ null, %do.end33 ], [ %cmd_blk.0, %if.then26 ]
  %scmd.089 = phi ptr [ %scmd.090, %do.end33 ], [ %scmd.0, %if.then26 ]
  %38 = ptrtoint ptr %next_stat_mbox.0 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %next_stat_mbox.0, align 4
  %incdec.ptr = getelementptr %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 1
  %39 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %last_stat_mbox, align 4
  %cmp36 = icmp ugt ptr %incdec.ptr, %40
  br i1 %cmp36, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %first_stat_mbox, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %next_stat_mbox.1 = phi ptr [ %42, %if.then38 ], [ %incdec.ptr, %if.end35.if.end39_crit_edge ]
  br i1 %tobool25.not93, label %if.end39.while.cond.backedge_crit_edge, label %if.then41

if.end39.while.cond.backedge_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp43 = icmp ult i16 %5, 3
  br i1 %cmp43, label %if.end.i, label %if.else46

if.end.i:                                         ; preds = %if.then41
  %complete.i = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.091, i32 0, i32 4
  %43 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %complete.i, align 8
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %if.end.i.while.cond.backedge_crit_edge, label %if.then2.i

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @complete(ptr noundef nonnull %44) #15
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %complete.i, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else46, %if.then2.i, %if.end.i.while.cond.backedge_crit_edge, %if.end39.while.cond.backedge_crit_edge
  br label %while.cond

if.else46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @myrs_handle_scsi(ptr noundef %arg, ptr noundef nonnull %cmd_blk.091, ptr noundef %scmd.089)
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %next_stat_mbox.0, ptr %next_stat_mbox5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #15
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_BA_disable_intr(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !826
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #15, !srcloc !827
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @DAC960_BA_mbox_init(ptr noundef %base, i32 noundef %mbox_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %base, i32 96
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !837
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i17 = icmp eq i8 %1, 0
  br i1 %tobool.not.i17, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #15
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !837
  %4 = and i8 %3, 1
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr.i12 = getelementptr i8, ptr %base, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !816
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !817
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %mbox_addr) #15
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !838
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #15, !srcloc !827
  %add.ptr.i14 = getelementptr i8, ptr %base, i32 97
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !839
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not18 = icmp eq i8 %7, 0
  br i1 %tobool.i.not18, label %while.end.while.body3_crit_edge, label %while.end.while.end4_crit_edge

while.end.while.end4_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end4

while.end.while.body3_crit_edge:                  ; preds = %while.end
  br label %while.body3

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.end.while.body3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #15
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !839
  %10 = and i8 %9, 1
  %tobool.i.not = icmp eq i8 %10, 0
  br i1 %tobool.i.not, label %while.body3.while.body3_crit_edge, label %while.body3.while.end4_crit_edge

while.body3.while.end4_crit_edge:                 ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end4

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body3

while.end4:                                       ; preds = %while.body3.while.end4_crit_edge, %while.end.while.end4_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %base, i32 90
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #15, !srcloc !820
  %12 = lshr i16 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !840
  %conv.i = trunc i16 %12 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !841
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 1) #15, !srcloc !827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !828
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #15, !srcloc !827
  ret i8 %conv.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_BA_reset_ctrl(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !834
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #15, !srcloc !827
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_BA_write_cmd_mbox(ptr nocapture noundef writeonly %mem_mbox, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [16 x i32], ptr %mem_mbox, i32 0, i32 1
  %arrayidx1 = getelementptr [16 x i32], ptr %mbox, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx1, i32 60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !842
  tail call void @arm_heavy_mb() #15
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox, align 8
  %3 = ptrtoint ptr %mem_mbox to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mem_mbox, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !843
  tail call void @arm_heavy_mb() #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_BA_mem_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !844
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 16) #15, !srcloc !827
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_LP_hw_init(ptr noundef %pdev, ptr noundef %cs, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !845
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -1) #15, !srcloc !827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !846
  tail call void @arm_heavy_mb() #15
  %add.ptr.i29 = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 2) #15, !srcloc !827
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #15
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !847
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i44.not = icmp eq i8 %2, 0
  br i1 %tobool.i44.not, label %entry.if.end5_crit_edge, label %while.body.lr.ph

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i31 = getelementptr i8, ptr %base, i32 46
  %add.ptr7.i = getelementptr i8, ptr %base, i32 16
  %add.ptr15.i = getelementptr i8, ptr %base, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %timeout.045 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i31) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !848
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %and3.i = and i8 %3, -5
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !849
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !850
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !851
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 -1) #15, !srcloc !827
  %call2 = tail call fastcc zeroext i1 @myrs_err_status(ptr noundef %cs, i8 noundef zeroext %and3.i, i8 noundef zeroext %5, i8 noundef zeroext %6)
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #15
  %inc = add nuw nsw i32 %timeout.045, 1
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !847
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.045)
  %cmp = icmp ult i32 %timeout.045, 999999
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end5:                                          ; preds = %while.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc zeroext i1 @myrs_enable_mmio_mbox(ptr noundef %cs, ptr noundef nonnull @DAC960_LP_mbox_init)
  br i1 %call6, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.7) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !852
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 8) #15, !srcloc !827
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !853
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -5) #15, !srcloc !827
  %write_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 22
  %10 = ptrtoint ptr %write_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @DAC960_LP_write_cmd_mbox, ptr %write_cmd_mbox, align 4
  %get_cmd_mbox = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 23
  %11 = ptrtoint ptr %get_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @DAC960_LP_mem_mbox_new_cmd, ptr %get_cmd_mbox, align 8
  %disable_intr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 24
  %12 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @DAC960_LP_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 25
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @DAC960_LP_reset_ctrl, ptr %reset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end12 ], [ -19, %do.end10 ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_LP_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %queue_lock = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !854
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 3) #15, !srcloc !827
  %next_stat_mbox5 = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 37
  %2 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_stat_mbox5, align 8
  %mcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 39
  %dcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 38
  %host = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 7
  %pdev = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 8
  %last_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 36
  %first_stat_mbox = getelementptr inbounds %struct.myrs_hba, ptr %arg, i32 0, i32 35
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %next_stat_mbox.0 = phi ptr [ %3, %entry ], [ %next_stat_mbox.1, %while.cond.backedge ]
  %4 = ptrtoint ptr %next_stat_mbox.0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_stat_mbox.0, align 4
  %conv6 = zext i16 %5 to i32
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.404)
  switch i16 %5, label %if.else18 [
    i16 0, label %while.end
    i16 1, label %while.cond.if.end24_crit_edge
    i16 2, label %if.then17
  ]

while.cond.if.end24_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then17:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.else18:                                        ; preds = %while.cond
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i, label %if.else18.do.end33_crit_edge, label %if.then3.i

if.else18.do.end33_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then3.i:                                       ; preds = %if.else18
  %sub = add nuw nsw i32 %conv6, 65533
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tags.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %conv6.i = and i32 %sub, 65535
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %16, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end33_crit_edge

if.then3.i.do.end33_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %conv6.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %20) #15, !srcloc !812
  %21 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %22, i32 %conv6.i
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end8.i.do.end33_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end33_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i21.not.i = icmp eq i32 %26, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %24, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i21.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end33_crit_edge, label %if.then21

lor.lhs.false.i.do.end33_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then21:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i82 = getelementptr %struct.request, ptr %24, i32 2, i32 19
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then17, %while.cond.if.end24_crit_edge
  %scmd.0 = phi ptr [ null, %if.then17 ], [ %add.ptr.i.i, %if.then21 ], [ null, %while.cond.if.end24_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then17 ], [ %add.ptr.i82, %if.then21 ], [ %dcmd_blk, %while.cond.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool25.not, label %if.end24.do.end33_crit_edge, label %if.then26

if.end24.do.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %status = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 1
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status, align 2
  %status27 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %29 = ptrtoint ptr %status27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %status27, align 8
  %sense_len = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 2
  %30 = ptrtoint ptr %sense_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sense_len, align 1
  %sense_len28 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 2
  %32 = ptrtoint ptr %sense_len28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sense_len28, align 1
  %residual = getelementptr inbounds %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 0, i32 3
  %33 = ptrtoint ptr %residual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %residual, align 4
  %residual29 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.0, i32 0, i32 3
  %35 = ptrtoint ptr %residual29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %residual29, align 4
  br label %if.end35

do.end33:                                         ; preds = %if.end24.do.end33_crit_edge, %lor.lhs.false.i.do.end33_crit_edge, %if.end8.i.do.end33_crit_edge, %if.then3.i.do.end33_crit_edge, %if.else18.do.end33_crit_edge
  %scmd.090 = phi ptr [ %scmd.0, %if.end24.do.end33_crit_edge ], [ null, %if.end8.i.do.end33_crit_edge ], [ null, %if.else18.do.end33_crit_edge ], [ null, %if.then3.i.do.end33_crit_edge ], [ null, %lor.lhs.false.i.do.end33_crit_edge ]
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv6) #18
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.then26
  %tobool25.not93 = phi i1 [ true, %do.end33 ], [ false, %if.then26 ]
  %cmd_blk.091 = phi ptr [ null, %do.end33 ], [ %cmd_blk.0, %if.then26 ]
  %scmd.089 = phi ptr [ %scmd.090, %do.end33 ], [ %scmd.0, %if.then26 ]
  %38 = ptrtoint ptr %next_stat_mbox.0 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %next_stat_mbox.0, align 4
  %incdec.ptr = getelementptr %struct.myrs_stat_mbox, ptr %next_stat_mbox.0, i32 1
  %39 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %last_stat_mbox, align 4
  %cmp36 = icmp ugt ptr %incdec.ptr, %40
  br i1 %cmp36, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %first_stat_mbox, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %next_stat_mbox.1 = phi ptr [ %42, %if.then38 ], [ %incdec.ptr, %if.end35.if.end39_crit_edge ]
  br i1 %tobool25.not93, label %if.end39.while.cond.backedge_crit_edge, label %if.then41

if.end39.while.cond.backedge_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp43 = icmp ult i16 %5, 3
  br i1 %cmp43, label %if.end.i, label %if.else46

if.end.i:                                         ; preds = %if.then41
  %complete.i = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk.091, i32 0, i32 4
  %43 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %complete.i, align 8
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %if.end.i.while.cond.backedge_crit_edge, label %if.then2.i

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @complete(ptr noundef nonnull %44) #15
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %complete.i, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else46, %if.then2.i, %if.end.i.while.cond.backedge_crit_edge, %if.end39.while.cond.backedge_crit_edge
  br label %while.cond

if.else46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @myrs_handle_scsi(ptr noundef %arg, ptr noundef nonnull %cmd_blk.091, ptr noundef %scmd.089)
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %next_stat_mbox.0, ptr %next_stat_mbox5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #15
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LP_disable_intr(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !845
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #15, !srcloc !827
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @DAC960_LP_mbox_init(ptr noundef %base, i32 noundef %mbox_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %base, i32 32
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !855
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not18 = icmp eq i8 %1, 0
  br i1 %tobool.i.not18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #15
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !855
  %4 = and i8 %3, 1
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr.i12 = getelementptr i8, ptr %base, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !816
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !817
  tail call void @arm_heavy_mb() #15
  %5 = tail call i32 @llvm.bswap.i32(i32 %mbox_addr) #15
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #15, !srcloc !800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !856
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #15, !srcloc !827
  %add.ptr.i14 = getelementptr i8, ptr %base, i32 44
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !857
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i15.not19 = icmp eq i8 %7, 0
  br i1 %tobool.i15.not19, label %while.end.while.body3_crit_edge, label %while.end.while.end4_crit_edge

while.end.while.end4_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end4

while.end.while.body3_crit_edge:                  ; preds = %while.end
  br label %while.body3

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.end.while.body3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #15
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #15, !srcloc !805
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !857
  %10 = and i8 %9, 1
  %tobool.i15.not = icmp eq i8 %10, 0
  br i1 %tobool.i15.not, label %while.body3.while.body3_crit_edge, label %while.body3.while.end4_crit_edge

while.body3.while.end4_crit_edge:                 ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end4

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body3

while.end4:                                       ; preds = %while.body3.while.end4_crit_edge, %while.end.while.end4_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %base, i32 26
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #15, !srcloc !820
  %12 = lshr i16 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !858
  %conv.i = trunc i16 %12 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !859
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 1) #15, !srcloc !827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !846
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #15, !srcloc !827
  ret i8 %conv.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LP_reset_ctrl(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !852
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #15, !srcloc !827
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LP_write_cmd_mbox(ptr nocapture noundef writeonly %mem_mbox, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [16 x i32], ptr %mem_mbox, i32 0, i32 1
  %arrayidx1 = getelementptr [16 x i32], ptr %mbox, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx1, i32 60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !860
  tail call void @arm_heavy_mb() #15
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbox, align 8
  %3 = ptrtoint ptr %mem_mbox to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mem_mbox, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !861
  tail call void @arm_heavy_mb() #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LP_mem_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !862
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 16) #15, !srcloc !827
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrs_cleanup(ptr noundef %cs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 8
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %event_buf.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 45
  %2 = ptrtoint ptr %event_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_buf.i, align 4
  tail call void @kfree(ptr noundef %3) #15
  %ctlr_info.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 43
  %4 = ptrtoint ptr %ctlr_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr_info.i, align 4
  tail call void @kfree(ptr noundef %5) #15
  %fwstat_buf.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 41
  %6 = ptrtoint ptr %fwstat_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwstat_buf.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %fwstat_addr.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 42
  %10 = ptrtoint ptr %fwstat_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fwstat_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 128, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #15
  %12 = ptrtoint ptr %fwstat_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fwstat_buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %first_stat_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 35
  %13 = ptrtoint ptr %first_stat_mbox.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %first_stat_mbox.i, align 8
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then4.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev1, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %stat_mbox_size.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 34
  %17 = ptrtoint ptr %stat_mbox_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stat_mbox_size.i, align 4
  %stat_mbox_addr.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 33
  %19 = ptrtoint ptr %stat_mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_mbox_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef %18, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #15
  %21 = ptrtoint ptr %first_stat_mbox.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %first_stat_mbox.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i.if.end9.i_crit_edge
  %first_cmd_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 28
  %22 = ptrtoint ptr %first_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %first_cmd_mbox.i, align 4
  %tobool10.not.i = icmp eq ptr %23, null
  br i1 %tobool10.not.i, label %if.end9.i.myrs_unmap.exit_crit_edge, label %if.then11.i

if.end9.i.myrs_unmap.exit_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_unmap.exit

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev1, align 8
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %cmd_mbox_size.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 27
  %26 = ptrtoint ptr %cmd_mbox_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_mbox_size.i, align 8
  %cmd_mbox_addr.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 26
  %28 = ptrtoint ptr %cmd_mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd_mbox_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef %27, ptr noundef nonnull %23, i32 noundef %29, i32 noundef 0) #15
  %30 = ptrtoint ptr %first_cmd_mbox.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %first_cmd_mbox.i, align 4
  br label %myrs_unmap.exit

myrs_unmap.exit:                                  ; preds = %if.then11.i, %if.end9.i.myrs_unmap.exit_crit_edge
  %mmio_base = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 1
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %myrs_unmap.exit.if.end7_crit_edge, label %if.then

myrs_unmap.exit.if.end7_crit_edge:                ; preds = %myrs_unmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %myrs_unmap.exit
  %disable_intr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 24
  %33 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disable_intr, align 4
  %tobool2.not = icmp eq ptr %34, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %34(ptr noundef %cs) #15
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %35 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base, align 4
  tail call void @iounmap(ptr noundef %36) #15
  %37 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %mmio_base, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %myrs_unmap.exit.if.end7_crit_edge
  %irq = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 4
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not = icmp eq i32 %39, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call ptr @free_irq(i32 noundef %39, ptr noundef %cs) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %io_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 2
  %40 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.not = icmp eq i32 %41, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %41, i32 noundef 128) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %1) #15
  %host = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %44) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrs_destroy_mempools(ptr noundef %cs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %monitor_work = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work) #15
  %work_q = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 13
  %0 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_q, align 8
  tail call void @destroy_workqueue(ptr noundef %1) #15
  %sg_pool = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 19
  %2 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %3) #15
  %dcdb_pool = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 21
  %4 = ptrtoint ptr %dcdb_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcdb_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %5) #15
  %sense_pool = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 20
  %6 = ptrtoint ptr %sense_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sense_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrs_queuecommand(ptr noundef %shost, ptr noundef %scmd) #2 align 64 {
entry:
  %modes.i = alloca [32 x i8], align 1
  %sense_addr = alloca i32, align 4
  %dcdb_dma = alloca i32, align 4
  %hw_sgl_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sense_addr) #15
  %2 = ptrtoint ptr %sense_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sense_addr, align 4, !annotation !813
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %scmd) #15
  br label %cleanup407

if.end:                                           ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.405)
  switch i8 %9, label %if.end.sw.epilog_crit_edge [
    i8 -96, label %sw.bb
    i8 26, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #15
  tail call void @scsi_done(ptr noundef %scmd) #15
  br label %cleanup407

sw.bb5:                                           ; preds = %if.end
  %channel = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %14, i32 0, i32 60
  %15 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %physchan_present, align 4
  %conv7 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv7)
  %cmp.not = icmp ult i32 %12, %conv7
  br i1 %cmp.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then9

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb5
  %arrayidx12 = getelementptr i8, ptr %7, i32 2
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %trunc = trunc i8 %18 to i6
  %19 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.406)
  switch i6 %trunc, label %if.then22 [
    i6 -1, label %if.then9.if.else_crit_edge
    i6 8, label %if.then9.if.else_crit_edge595
  ]

if.then9.if.else_crit_edge595:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then9.if.else_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #15
  br label %if.end24

if.else:                                          ; preds = %if.then9.if.else_crit_edge, %if.then9.if.else_crit_edge595
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %modes.i) #15
  %20 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 2
  %21 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 4
  %22 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 5
  %23 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 6
  %24 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 12
  %25 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 14
  %26 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 18
  %27 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 26
  %arrayidx.i = getelementptr i8, ptr %7, i32 1
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.not.i = icmp eq i8 %30, 0
  %..i = select i1 %cmp.not.i, i32 32, i32 24
  %.1.i = select i1 %cmp.not.i, ptr %24, ptr %21
  %31 = getelementptr inbounds i8, ptr %modes.i, i32 1
  %32 = call ptr @memset(ptr %31, i32 0, i32 31)
  %33 = trunc i32 %..i to i8
  %conv4.i = add nsw i8 %33, -1
  %34 = ptrtoint ptr %modes.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i, ptr %modes.i, align 1
  %ldev_control.i = getelementptr inbounds %struct.myrs_ldev_info, ptr %4, i32 0, i32 8
  %35 = ptrtoint ptr %ldev_control.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %ldev_control.i, align 8
  %36 = and i8 %bf.load.i, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp8.i = icmp eq i8 %36, 4
  %spec.store.select.i = select i1 %cmp8.i, i8 -112, i8 16
  %37 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.store.select.i, ptr %20, align 1
  br i1 %cmp.not.i, label %if.then16.i, label %if.else.if.end22.i_crit_edge

if.else.if.end22.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %38 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 13
  %39 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 9
  %40 = getelementptr inbounds [32 x i8], ptr %modes.i, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %40, align 1
  %cfg_devsize.i = getelementptr inbounds %struct.myrs_ldev_info, ptr %4, i32 0, i32 24
  %42 = ptrtoint ptr %cfg_devsize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cfg_devsize.i, align 4
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %21, align 1
  %devsize_bytes.i = getelementptr inbounds %struct.myrs_ldev_info, ptr %4, i32 0, i32 22
  %45 = ptrtoint ptr %devsize_bytes.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %devsize_bytes.i, align 2
  %conv20.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %conv20.i, ptr %39, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i, %if.else.if.end22.i_crit_edge
  %.1.sroa.sel14.i = phi ptr [ %38, %if.then16.i ], [ %22, %if.else.if.end22.i_crit_edge ]
  %48 = ptrtoint ptr %.1.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %.1.i, align 1
  %49 = ptrtoint ptr %.1.sroa.sel14.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 18, ptr %.1.sroa.sel14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %cmp29.i = icmp ult i8 %bf.load.i, 32
  br i1 %cmp29.i, label %if.then31.i, label %if.end22.i.if.end36.i_crit_edge

if.end22.i.if.end36.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %.1.sroa.sel11.i = select i1 %cmp.not.i, ptr %25, ptr %23
  %50 = ptrtoint ptr %.1.sroa.sel11.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %.1.sroa.sel11.i, align 1
  %52 = or i8 %51, 1
  store i8 %52, ptr %.1.sroa.sel11.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %if.end22.i.if.end36.i_crit_edge
  %53 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %53)
  %switch.i = icmp eq i8 %53, 8
  br i1 %switch.i, label %if.then51.i, label %if.end36.i.if.end56.i_crit_edge

if.end36.i.if.end56.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56.i

if.then51.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  %.1.sroa.sel8.i = select i1 %cmp.not.i, ptr %25, ptr %23
  %54 = ptrtoint ptr %.1.sroa.sel8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %.1.sroa.sel8.i, align 1
  %56 = or i8 %55, 4
  store i8 %56, ptr %.1.sroa.sel8.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then51.i, %if.end36.i.if.end56.i_crit_edge
  %cacheline_size.i = getelementptr inbounds %struct.myrs_ldev_info, ptr %4, i32 0, i32 7
  %57 = ptrtoint ptr %cacheline_size.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cacheline_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool57.not.i = icmp eq i8 %58, 0
  br i1 %tobool57.not.i, label %if.end56.i.myrs_mode_sense.exit_crit_edge, label %if.then58.i

if.end56.i.myrs_mode_sense.exit_crit_edge:        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_mode_sense.exit

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  %.1.sroa.sel5.i = select i1 %cmp.not.i, ptr %25, ptr %23
  %59 = ptrtoint ptr %.1.sroa.sel5.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %.1.sroa.sel5.i, align 1
  %61 = or i8 %60, 8
  store i8 %61, ptr %.1.sroa.sel5.i, align 1
  %conv64.i = zext i8 %58 to i32
  %shl.i = shl nuw i32 1, %conv64.i
  %conv65.i = trunc i32 %shl.i to i16
  %.1.sroa.sel.i = select i1 %cmp.not.i, ptr %27, ptr %26
  %62 = ptrtoint ptr %.1.sroa.sel.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %conv65.i, ptr %.1.sroa.sel.i, align 1
  br label %myrs_mode_sense.exit

myrs_mode_sense.exit:                             ; preds = %if.then58.i, %if.end56.i.myrs_mode_sense.exit_crit_edge
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %63 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdb.i.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %65 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nents.i.i.i, align 4
  %call2.i.i = call i32 @sg_copy_from_buffer(ptr noundef %64, i32 noundef %66, ptr noundef nonnull %modes.i, i32 noundef %..i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %modes.i) #15
  %result23 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %67 = ptrtoint ptr %result23 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %result23, align 4
  br label %if.end24

if.end24:                                         ; preds = %myrs_mode_sense.exit, %if.then22
  call void @scsi_done(ptr noundef %scmd) #15
  br label %cleanup407

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %68 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 65)
  %sense_pool = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 1
  %69 = ptrtoint ptr %sense_pool to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sense_pool, align 4
  %call26 = call ptr @dma_pool_alloc(ptr noundef %70, i32 noundef 2592, ptr noundef nonnull %sense_addr) #15
  %sense = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 6
  %71 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call26, ptr %sense, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %sw.epilog.cleanup407_crit_edge, label %if.end30

sw.epilog.cleanup407_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup407

if.end30:                                         ; preds = %sw.epilog
  %72 = ptrtoint ptr %sense_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sense_addr, align 4
  %sense_addr31 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 7
  %74 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %sense_addr31, align 8
  %timeout32 = getelementptr i8, ptr %scmd, i32 -164
  %75 = ptrtoint ptr %timeout32 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %timeout32, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 14
  %77 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %78)
  %cmp34 = icmp ult i16 %78, 11
  br i1 %cmp34, label %if.then36, label %if.else130

if.then36:                                        ; preds = %if.end30
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device, align 4
  %channel38 = getelementptr inbounds %struct.scsi_device, ptr %80, i32 0, i32 17
  %81 = ptrtoint ptr %channel38 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %channel38, align 4
  %ctlr_info39 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %83 = ptrtoint ptr %ctlr_info39 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctlr_info39, align 4
  %physchan_present40 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %84, i32 0, i32 60
  %85 = ptrtoint ptr %physchan_present40 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %physchan_present40, align 4
  %conv41 = zext i8 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv41)
  %cmp42.not = icmp ult i32 %82, %conv41
  br i1 %cmp42.not, label %if.else57, label %if.then44

if.then44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hostdata, align 8
  %opcode = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %89 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %opcode, align 2
  %lun = getelementptr inbounds %struct.myrs_ldev_info, ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %lun, align 1
  %pdev = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %pdev to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %pdev, align 8
  %target = getelementptr inbounds %struct.myrs_ldev_info, ptr %88, i32 0, i32 2
  %93 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %target, align 2
  %target49 = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %target49 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %target49, align 1
  %channel50 = getelementptr inbounds %struct.myrs_ldev_info, ptr %88, i32 0, i32 1
  %96 = ptrtoint ptr %channel50 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %channel50, align 1
  %channel52 = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 5, i32 2
  %bf.shl = shl i8 %97, 5
  %98 = ptrtoint ptr %channel52 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %bf.shl, ptr %channel52, align 2
  br label %if.end75

if.else57:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %opcode58 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %99 = ptrtoint ptr %opcode58 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %opcode58, align 2
  %lun59 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %100 = ptrtoint ptr %lun59 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %lun59, align 8
  %conv60 = trunc i64 %101 to i8
  %pdev61 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %pdev61 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv60, ptr %pdev61, align 8
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %103 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id, align 8
  %conv63 = trunc i32 %104 to i8
  %target65 = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 5, i32 1
  %105 = ptrtoint ptr %target65 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv63, ptr %target65, align 1
  %channel66 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %106 = ptrtoint ptr %channel66 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %channel66, align 4
  %conv67 = trunc i32 %107 to i8
  %channel69 = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 5, i32 2
  %108 = ptrtoint ptr %channel69 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load70 = load i8, ptr %channel69, align 2
  %bf.shl72 = shl i8 %conv67, 5
  %bf.clear73 = and i8 %bf.load70, 31
  %bf.set74 = or i8 %bf.clear73, %bf.shl72
  store i8 %bf.set74, ptr %channel69, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.else57, %if.then44
  %tag = getelementptr i8, ptr %scmd, i32 -172
  %109 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tag, align 4
  %111 = trunc i32 %110 to i16
  %conv76 = add i16 %111, 3
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv76, ptr %add.ptr.i, align 8
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %113 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp78 = icmp eq i32 %114, 2
  %control = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 3
  %115 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load81 = load i8, ptr %control, align 1
  %bf.shl83 = select i1 %cmp78, i8 8, i8 0
  %bf.clear84 = and i8 %bf.load81, -9
  %bf.set85 = or i8 %bf.clear84, %bf.shl83
  store i8 %bf.set85, ptr %control, align 1
  %cmd_flags = getelementptr i8, ptr %scmd, i32 -180
  %116 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cmd_flags, align 4
  %118 = and i32 %117, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool88.not = icmp eq i32 %118, 0
  br i1 %tobool88.not, label %if.end75.if.end94_crit_edge, label %if.then89

if.end75.if.end94_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then89:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set93 = or i8 %bf.set85, -128
  %119 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %bf.set93, ptr %control, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.end75.if.end94_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %120 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %length.i, align 4
  %dma_size = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 4
  %122 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %dma_size, align 4
  %123 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sense_addr31, align 8
  %conv97 = zext i32 %124 to i64
  %sense_addr98 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %125 = ptrtoint ptr %sense_addr98 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv97, ptr %sense_addr98, align 8
  %sense_len = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 2
  %126 = ptrtoint ptr %sense_len to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 14, ptr %sense_len, align 4
  %conv100 = trunc i16 %78 to i8
  %cdb_len = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 8
  %127 = ptrtoint ptr %cdb_len to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv100, ptr %cdb_len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %76)
  %cmp101 = icmp ugt i32 %76, 60
  %div = udiv i32 %76, 60
  %conv107 = trunc i32 %div to i8
  %bf.shl111 = shl i8 %conv107, 2
  %bf.set113 = or i8 %bf.shl111, 1
  %conv119 = trunc i32 %76 to i8
  %bf.shl123 = shl nuw i8 %conv119, 2
  %bf.shl123.sink = select i1 %cmp101, i8 %bf.set113, i8 %bf.shl123
  %128 = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 6
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %bf.shl123.sink, ptr %128, align 1
  %cdb = getelementptr inbounds %struct.anon.86, ptr %add.ptr.i, i32 0, i32 9
  %130 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cmnd, align 4
  %conv129 = zext i16 %78 to i32
  %132 = call ptr @memcpy(ptr %cdb, ptr %131, i32 %conv129)
  %dcdb = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %dcdb to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %dcdb, align 4
  br label %if.end261

if.else130:                                       ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcdb_dma) #15
  %134 = ptrtoint ptr %dcdb_dma to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %dcdb_dma, align 4, !annotation !813
  %dcdb_pool = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 1, i32 1
  %135 = ptrtoint ptr %dcdb_pool to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dcdb_pool, align 8
  %call131 = call ptr @dma_pool_alloc(ptr noundef %136, i32 noundef 2592, ptr noundef nonnull %dcdb_dma) #15
  %dcdb132 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 2
  %137 = ptrtoint ptr %dcdb132 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call131, ptr %dcdb132, align 4
  %tobool134.not = icmp eq ptr %call131, null
  br i1 %tobool134.not, label %cleanup.thread, label %if.end141

cleanup.thread:                                   ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %sense_pool to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sense_pool, align 4
  %140 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sense, align 4
  %142 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sense_addr31, align 8
  call void @dma_pool_free(ptr noundef %139, ptr noundef %141, i32 noundef %143) #15
  %144 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %sense, align 4
  %145 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %sense_addr31, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcdb_dma) #15
  br label %cleanup407

if.end141:                                        ; preds = %if.else130
  %146 = ptrtoint ptr %dcdb_dma to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dcdb_dma, align 4
  %dcdb_dma142 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 3
  %148 = ptrtoint ptr %dcdb_dma142 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %dcdb_dma142, align 8
  %149 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device, align 4
  %channel144 = getelementptr inbounds %struct.scsi_device, ptr %150, i32 0, i32 17
  %151 = ptrtoint ptr %channel144 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %channel144, align 4
  %ctlr_info145 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %153 = ptrtoint ptr %ctlr_info145 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ctlr_info145, align 4
  %physchan_present146 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %154, i32 0, i32 60
  %155 = ptrtoint ptr %physchan_present146 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %physchan_present146, align 4
  %conv147 = zext i8 %156 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %conv147)
  %cmp148.not = icmp ult i32 %152, %conv147
  br i1 %cmp148.not, label %if.else173, label %if.then150

if.then150:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  %157 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hostdata, align 8
  %opcode153 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %159 = ptrtoint ptr %opcode153 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 5, ptr %opcode153, align 2
  %lun154 = getelementptr inbounds %struct.myrs_ldev_info, ptr %158, i32 0, i32 3
  %160 = ptrtoint ptr %lun154 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %lun154, align 1
  %pdev155 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %pdev155 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %pdev155, align 8
  %target157 = getelementptr inbounds %struct.myrs_ldev_info, ptr %158, i32 0, i32 2
  %163 = ptrtoint ptr %target157 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %target157, align 2
  %target159 = getelementptr inbounds %struct.anon.87, ptr %add.ptr.i, i32 0, i32 5, i32 1
  %165 = ptrtoint ptr %target159 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %target159, align 1
  %channel160 = getelementptr inbounds %struct.myrs_ldev_info, ptr %158, i32 0, i32 1
  %166 = ptrtoint ptr %channel160 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %channel160, align 1
  %channel162 = getelementptr inbounds %struct.anon.87, ptr %add.ptr.i, i32 0, i32 5, i32 2
  %bf.shl165 = shl i8 %167, 5
  %168 = ptrtoint ptr %channel162 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %bf.shl165, ptr %channel162, align 2
  br label %if.end192

if.else173:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #17
  %opcode174 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %169 = ptrtoint ptr %opcode174 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 3, ptr %opcode174, align 2
  %lun175 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %170 = ptrtoint ptr %lun175 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %lun175, align 8
  %conv176 = trunc i64 %171 to i8
  %pdev177 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 1
  %172 = ptrtoint ptr %pdev177 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv176, ptr %pdev177, align 8
  %id179 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %173 = ptrtoint ptr %id179 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %id179, align 8
  %conv180 = trunc i32 %174 to i8
  %target182 = getelementptr inbounds %struct.anon.87, ptr %add.ptr.i, i32 0, i32 5, i32 1
  %175 = ptrtoint ptr %target182 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv180, ptr %target182, align 1
  %channel183 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %176 = ptrtoint ptr %channel183 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %channel183, align 4
  %conv184 = trunc i32 %177 to i8
  %channel186 = getelementptr inbounds %struct.anon.87, ptr %add.ptr.i, i32 0, i32 5, i32 2
  %178 = ptrtoint ptr %channel186 to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load187 = load i8, ptr %channel186, align 2
  %bf.shl189 = shl i8 %conv184, 5
  %bf.clear190 = and i8 %bf.load187, 31
  %bf.set191 = or i8 %bf.clear190, %bf.shl189
  store i8 %bf.set191, ptr %channel186, align 2
  br label %if.end192

if.end192:                                        ; preds = %if.else173, %if.then150
  %tag193 = getelementptr i8, ptr %scmd, i32 -172
  %179 = ptrtoint ptr %tag193 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tag193, align 4
  %181 = trunc i32 %180 to i16
  %conv195 = add i16 %181, 3
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv195, ptr %add.ptr.i, align 8
  %sc_data_direction197 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %183 = ptrtoint ptr %sc_data_direction197 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sc_data_direction197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp198 = icmp eq i32 %184, 2
  %control201 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 3
  %185 = ptrtoint ptr %control201 to i32
  call void @__asan_load1_noabort(i32 %185)
  %bf.load202 = load i8, ptr %control201, align 1
  %bf.shl204 = select i1 %cmp198, i8 8, i8 0
  %bf.clear205 = and i8 %bf.load202, -9
  %bf.set206 = or i8 %bf.clear205, %bf.shl204
  store i8 %bf.set206, ptr %control201, align 1
  %cmd_flags207 = getelementptr i8, ptr %scmd, i32 -180
  %186 = ptrtoint ptr %cmd_flags207 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cmd_flags207, align 4
  %188 = and i32 %187, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool210.not = icmp eq i32 %188, 0
  br i1 %tobool210.not, label %if.end192.if.end216_crit_edge, label %if.then211

if.end192.if.end216_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end216

if.then211:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set215 = or i8 %bf.set206, -128
  %189 = ptrtoint ptr %control201 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %bf.set215, ptr %control201, align 1
  br label %if.end216

if.end216:                                        ; preds = %if.then211, %if.end192.if.end216_crit_edge
  %length.i583 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %190 = ptrtoint ptr %length.i583 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %length.i583, align 4
  %dma_size218 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 4
  %192 = ptrtoint ptr %dma_size218 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %dma_size218, align 4
  %193 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %sense_addr31, align 8
  %conv220 = zext i32 %194 to i64
  %sense_addr221 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %195 = ptrtoint ptr %sense_addr221 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv220, ptr %sense_addr221, align 8
  %sense_len222 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 2
  %196 = ptrtoint ptr %sense_len222 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 14, ptr %sense_len222, align 4
  %197 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %cmd_len, align 4
  %conv224 = trunc i16 %198 to i8
  %cdb_len225 = getelementptr inbounds %struct.anon.87, ptr %add.ptr.i, i32 0, i32 8
  %199 = ptrtoint ptr %cdb_len225 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv224, ptr %cdb_len225, align 1
  %200 = ptrtoint ptr %dcdb_dma142 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dcdb_dma142, align 8
  %conv227 = zext i32 %201 to i64
  %cdb_addr = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 3
  %202 = ptrtoint ptr %cdb_addr to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %conv227, ptr %cdb_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %76)
  %cmp228 = icmp ugt i32 %76, 60
  %div235 = udiv i32 %76, 60
  %conv236 = trunc i32 %div235 to i8
  %bf.shl240 = shl i8 %conv236, 2
  %bf.set242 = or i8 %bf.shl240, 1
  %conv248 = trunc i32 %76 to i8
  %bf.shl252 = shl nuw i8 %conv248, 2
  %bf.shl252.sink = select i1 %cmp228, i8 %bf.set242, i8 %bf.shl252
  %203 = getelementptr inbounds %struct.anon.87, ptr %add.ptr.i, i32 0, i32 6
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %bf.shl252.sink, ptr %203, align 1
  %205 = ptrtoint ptr %dcdb132 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dcdb132, align 4
  %207 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cmnd, align 4
  %conv259 = zext i16 %198 to i32
  %209 = call ptr @memcpy(ptr %206, ptr %208, i32 %conv259)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcdb_dma) #15
  br label %if.end261

if.end261:                                        ; preds = %if.end216, %if.end94
  %hw_sge.1 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 5
  %sc_data_direction262 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %210 = ptrtoint ptr %sc_data_direction262 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sc_data_direction262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %211)
  %cmp263 = icmp eq i32 %211, 3
  br i1 %cmp263, label %if.end261.do.body396_crit_edge, label %if.end266

if.end261.do.body396_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body396

if.end266:                                        ; preds = %if.end261
  %call267 = call i32 @scsi_dma_map(ptr noundef %scmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call267)
  %cmp268 = icmp eq i32 %call267, 1
  br i1 %cmp268, label %if.then270, label %if.else276

if.then270:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #17
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %212 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sdb.i, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %dma_address, align 4
  %conv272 = zext i32 %215 to i64
  %216 = ptrtoint ptr %hw_sge.1 to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %conv272, ptr %hw_sge.1, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %213, i32 0, i32 4
  %217 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %dma_length, align 4
  %conv274 = zext i32 %218 to i64
  %sge_count = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 7
  %219 = ptrtoint ptr %sge_count to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 %conv274, ptr %sge_count, align 8
  br label %do.body396

if.else276:                                       ; preds = %if.end266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_sgl_addr) #15
  %220 = ptrtoint ptr %hw_sgl_addr to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %hw_sgl_addr, align 4, !annotation !813
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call267)
  %cmp277 = icmp sgt i32 %call267, 2
  br i1 %cmp277, label %if.then279, label %if.end341

if.then279:                                       ; preds = %if.else276
  %sg_pool = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 0, i32 2
  %221 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %sg_pool, align 8
  %call280 = call ptr @dma_pool_alloc(ptr noundef %222, i32 noundef 2592, ptr noundef nonnull %hw_sgl_addr) #15
  %tobool281.not = icmp eq ptr %call280, null
  br i1 %tobool281.not, label %do.end, label %if.end320, !prof !863

do.end:                                           ; preds = %if.then279
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1731, i32 noundef 9, ptr noundef null) #15
  %dcdb306 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 2
  %223 = ptrtoint ptr %dcdb306 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dcdb306, align 4
  %tobool307.not = icmp eq ptr %224, null
  br i1 %tobool307.not, label %do.end.if.end314_crit_edge, label %if.then308

do.end.if.end314_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314

if.then308:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %dcdb_pool309 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 1, i32 1
  %225 = ptrtoint ptr %dcdb_pool309 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dcdb_pool309, align 8
  %dcdb_dma311 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 3
  %227 = ptrtoint ptr %dcdb_dma311 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %dcdb_dma311, align 8
  call void @dma_pool_free(ptr noundef %226, ptr noundef nonnull %224, i32 noundef %228) #15
  %229 = ptrtoint ptr %dcdb306 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %dcdb306, align 4
  %230 = ptrtoint ptr %dcdb_dma311 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %dcdb_dma311, align 8
  br label %if.end314

if.end314:                                        ; preds = %if.then308, %do.end.if.end314_crit_edge
  %231 = ptrtoint ptr %sense_pool to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %sense_pool, align 4
  %233 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %sense, align 4
  %235 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %sense_addr31, align 8
  call void @dma_pool_free(ptr noundef %232, ptr noundef %234, i32 noundef %236) #15
  %237 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %sense, align 4
  %238 = ptrtoint ptr %sense_addr31 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %sense_addr31, align 8
  br label %cleanup389.thread

if.end320:                                        ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #17
  %sgl321 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 1
  %239 = ptrtoint ptr %sgl321 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call280, ptr %sgl321, align 4
  %240 = ptrtoint ptr %hw_sgl_addr to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %hw_sgl_addr, align 4
  %sgl_addr = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 3, i32 0, i32 3, i32 1, i32 1
  %242 = ptrtoint ptr %sgl_addr to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %sgl_addr, align 8
  %control327 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 3
  %243 = ptrtoint ptr %control327 to i32
  call void @__asan_load1_noabort(i32 %243)
  %bf.load328 = load i8, ptr %control327, align 1
  %bf.set330 = or i8 %bf.load328, 16
  store i8 %bf.set330, ptr %control327, align 1
  %conv337 = trunc i32 %call267 to i16
  %244 = ptrtoint ptr %hw_sge.1 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %conv337, ptr %hw_sge.1, align 8
  %245 = load i32, ptr %sgl_addr, align 8
  %conv339 = zext i32 %245 to i64
  %sge0_addr = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 7
  %246 = ptrtoint ptr %sge0_addr to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %conv339, ptr %sge0_addr, align 8
  br label %for.body.preheader

if.end341:                                        ; preds = %if.else276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %cmp343588 = icmp sgt i32 %call267, 0
  br i1 %cmp343588, label %if.end341.for.body.preheader_crit_edge, label %if.end341.cleanup389_crit_edge

if.end341.cleanup389_crit_edge:                   ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup389

if.end341.for.body.preheader_crit_edge:           ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end341.for.body.preheader_crit_edge, %if.end320
  %hw_sgl.0594 = phi ptr [ %call280, %if.end320 ], [ %hw_sge.1, %if.end341.for.body.preheader_crit_edge ]
  %sdb.i584 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %247 = ptrtoint ptr %sdb.i584 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %sdb.i584, align 4
  br label %for.body

for.body:                                         ; preds = %if.end381.for.body_crit_edge, %for.body.preheader
  %i.0591 = phi i32 [ %inc, %if.end381.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %hw_sgl.1590 = phi ptr [ %incdec.ptr, %if.end381.for.body_crit_edge ], [ %hw_sgl.0594, %for.body.preheader ]
  %sgl.0589 = phi ptr [ %call388, %if.end381.for.body_crit_edge ], [ %248, %for.body.preheader ]
  %tobool346.not = icmp eq ptr %hw_sgl.1590, null
  br i1 %tobool346.not, label %do.end364, label %if.end381, !prof !863

do.end364:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1758, i32 noundef 9, ptr noundef null) #15
  call void @scsi_dma_unmap(ptr noundef %scmd) #15
  %result380 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %249 = ptrtoint ptr %result380 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 458752, ptr %result380, align 4
  call void @scsi_done(ptr noundef %scmd) #15
  br label %cleanup389.thread

if.end381:                                        ; preds = %for.body
  %dma_address382 = getelementptr inbounds %struct.scatterlist, ptr %sgl.0589, i32 0, i32 3
  %250 = ptrtoint ptr %dma_address382 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dma_address382, align 4
  %conv383 = zext i32 %251 to i64
  %252 = ptrtoint ptr %hw_sgl.1590 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %conv383, ptr %hw_sgl.1590, align 8
  %dma_length385 = getelementptr inbounds %struct.scatterlist, ptr %sgl.0589, i32 0, i32 4
  %253 = ptrtoint ptr %dma_length385 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %dma_length385, align 4
  %conv386 = zext i32 %254 to i64
  %sge_count387 = getelementptr inbounds %struct.myrs_sge, ptr %hw_sgl.1590, i32 0, i32 1
  %255 = ptrtoint ptr %sge_count387 to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %conv386, ptr %sge_count387, align 8
  %incdec.ptr = getelementptr %struct.myrs_sge, ptr %hw_sgl.1590, i32 1
  %inc = add nuw nsw i32 %i.0591, 1
  %call388 = call ptr @sg_next(ptr noundef %sgl.0589) #15
  %exitcond.not = icmp eq i32 %inc, %call267
  br i1 %exitcond.not, label %if.end381.cleanup389_crit_edge, label %if.end381.for.body_crit_edge

if.end381.for.body_crit_edge:                     ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end381.cleanup389_crit_edge:                   ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup389

cleanup389.thread:                                ; preds = %do.end364, %if.end314
  %retval.2.ph = phi i32 [ 4181, %if.end314 ], [ 0, %do.end364 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_sgl_addr) #15
  br label %cleanup407

cleanup389:                                       ; preds = %if.end381.cleanup389_crit_edge, %if.end341.cleanup389_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_sgl_addr) #15
  br label %do.body396

do.body396:                                       ; preds = %cleanup389, %if.then270, %if.end261.do.body396_crit_edge
  %queue_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %call401 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #15
  %256 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %hostdata.i, align 8
  %next_cmd_mbox.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 5
  %258 = ptrtoint ptr %next_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %next_cmd_mbox.i, align 4
  %write_cmd_mbox.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 1, i32 2
  %260 = ptrtoint ptr %write_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write_cmd_mbox.i, align 4
  call void %261(ptr noundef %259, ptr noundef %add.ptr.i) #15
  %prev_cmd_mbox1.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %262 = ptrtoint ptr %prev_cmd_mbox1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %prev_cmd_mbox1.i, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp.i = icmp eq i32 %265, 0
  br i1 %cmp.i, label %do.body396.if.then.i_crit_edge, label %lor.lhs.false.i

do.body396.if.then.i_crit_edge:                   ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.body396
  %prev_cmd_mbox2.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 7
  %266 = ptrtoint ptr %prev_cmd_mbox2.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %prev_cmd_mbox2.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %cmp3.i = icmp eq i32 %269, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.body396.if.then.i_crit_edge
  %get_cmd_mbox.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 0, i32 2
  %270 = ptrtoint ptr %get_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %get_cmd_mbox.i, align 8
  call void %271(ptr noundef %257) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %272 = ptrtoint ptr %prev_cmd_mbox1.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %prev_cmd_mbox1.i, align 8
  %prev_cmd_mbox25.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 7
  %274 = ptrtoint ptr %prev_cmd_mbox25.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %273, ptr %prev_cmd_mbox25.i, align 4
  store ptr %259, ptr %prev_cmd_mbox1.i, align 8
  %incdec.ptr.i = getelementptr %union.myrs_cmd_mbox, ptr %259, i32 1
  %last_cmd_mbox.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 4
  %275 = ptrtoint ptr %last_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %last_cmd_mbox.i, align 8
  %cmp7.i = icmp ugt ptr %incdec.ptr.i, %276
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.myrs_qcmd.exit_crit_edge

if.end.i.myrs_qcmd.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_qcmd.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %first_cmd_mbox.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 3
  %277 = ptrtoint ptr %first_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %first_cmd_mbox.i, align 4
  br label %myrs_qcmd.exit

myrs_qcmd.exit:                                   ; preds = %if.then8.i, %if.end.i.myrs_qcmd.exit_crit_edge
  %next_mbox.0.i = phi ptr [ %278, %if.then8.i ], [ %incdec.ptr.i, %if.end.i.myrs_qcmd.exit_crit_edge ]
  %279 = ptrtoint ptr %next_cmd_mbox.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %next_mbox.0.i, ptr %next_cmd_mbox.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call401) #15
  br label %cleanup407

cleanup407:                                       ; preds = %myrs_qcmd.exit, %cleanup389.thread, %cleanup.thread, %sw.epilog.cleanup407_crit_edge, %if.end24, %sw.bb, %if.then
  %retval.3 = phi i32 [ 0, %myrs_qcmd.exit ], [ 0, %if.end24 ], [ 0, %sw.bb ], [ 0, %if.then ], [ 4181, %sw.epilog.cleanup407_crit_edge ], [ 4181, %cleanup.thread ], [ %retval.2.ph, %cleanup389.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sense_addr) #15
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrs_host_reset(ptr nocapture noundef readonly %scmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %reset = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 8
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 8
  tail call void %5(ptr noundef %7) #15
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrs_slave_alloc(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end:                                           ; preds = %entry
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3.not = icmp ult i32 %3, %conv
  br i1 %cmp3.not, label %if.else51, label %if.then5

if.then5:                                         ; preds = %if.end
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp6.not = icmp eq i64 %11, 0
  br i1 %cmp6.not, label %if.end9, label %if.then5.cleanup73_crit_edge

if.then5.cleanup73_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end9:                                          ; preds = %if.then5
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %max_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_id.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 264) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end9.cleanup73_crit_edge, label %if.end13

if.end9.cleanup73_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end13:                                         ; preds = %if.end9
  %sub.i = sub i32 %3, %conv
  %mul.i = mul i32 %15, %sub.i
  %add.i = add i32 %mul.i, %13
  %conv1.i = trunc i32 %add.i to i16
  %call14 = tail call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %hostdata.i, i16 noundef zeroext %conv1.i, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %cmp16.not = icmp eq i8 %call14, 0
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup73

if.else:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrs_slave_alloc.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrs_slave_alloc, %if.then23)) #15
          to label %do.end [label %if.then23], !srcloc !864

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %channel24 = getelementptr inbounds %struct.myrs_ldev_info, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %channel24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %channel24, align 1
  %conv25 = zext i8 %19 to i32
  %target = getelementptr inbounds %struct.myrs_ldev_info, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %target, align 2
  %conv26 = zext i8 %21 to i32
  %lun27 = getelementptr inbounds %struct.myrs_ldev_info, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %lun27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lun27, align 1
  %conv28 = zext i8 %23 to i32
  %ldev_num29 = getelementptr inbounds %struct.myrs_ldev_info, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %ldev_num29 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ldev_num29, align 8
  %conv30 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrs_slave_alloc.__UNIQUE_ID_ddebug291, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.86, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30) #15
  br label %do.end

do.end:                                           ; preds = %if.then23, %if.else
  %hostdata32 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %26 = ptrtoint ptr %hostdata32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %hostdata32, align 8
  %raid_level = getelementptr inbounds %struct.myrs_ldev_info, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %raid_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %raid_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %29 = icmp ult i8 %28, 15
  br i1 %29, label %switch.lookup, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %30 = sext i8 %28 to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.myrs_slave_alloc, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end.sw.epilog_crit_edge
  %level.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %do.end.sw.epilog_crit_edge ]
  %32 = load ptr, ptr @myrs_raid_template, align 4
  %sdev_gendev40 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %call.i = tail call ptr @attribute_container_find_class_device(ptr noundef %32, ptr noundef %sdev_gendev40) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %raid_set_level.exit, !prof !863

do.body4.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/raid_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #15, !srcloc !865
  unreachable

raid_set_level.exit:                              ; preds = %sw.epilog
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  %level.i = getelementptr inbounds %struct.raid_data, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %level.0, ptr %level.i, align 4
  %dev_state = getelementptr inbounds %struct.myrs_ldev_info, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %dev_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp42.not = icmp eq i8 %37, 1
  br i1 %cmp42.not, label %raid_set_level.exit.cleanup73_crit_edge, label %if.then44

raid_set_level.exit.cleanup73_crit_edge:          ; preds = %raid_set_level.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.then44:                                        ; preds = %raid_set_level.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call46 = tail call fastcc ptr @myrs_devstate_name(i8 noundef zeroext %37)
  %tobool47.not = icmp eq ptr %call46, null
  %spec.select = select i1 %tobool47.not, ptr @.str.89, ptr %call46
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.87, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull %spec.select) #15
  br label %cleanup73

if.else51:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i111 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 512) #19
  %tobool53.not = icmp eq ptr %call7.i.i111, null
  br i1 %tobool53.not, label %if.else51.cleanup73_crit_edge, label %if.end55

if.else51.cleanup73_crit_edge:                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup73

if.end55:                                         ; preds = %if.else51
  %39 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel, align 4
  %conv57 = trunc i32 %40 to i8
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 8
  %conv58 = trunc i32 %42 to i8
  %lun59 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %43 = ptrtoint ptr %lun59 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %lun59, align 8
  %conv60 = trunc i64 %44 to i8
  %call61 = tail call fastcc zeroext i8 @myrs_get_pdev_info(ptr noundef %hostdata.i, i8 noundef zeroext %conv57, i8 noundef zeroext %conv58, i8 noundef zeroext %conv60, ptr noundef nonnull %call7.i.i111)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call61)
  %cmp63.not = icmp eq i8 %call61, 0
  %hostdata68 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  br i1 %cmp63.not, label %cleanup69, label %if.then65

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %hostdata68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %hostdata68, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i111) #15
  br label %cleanup73

cleanup69:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %hostdata68 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i111, ptr %hostdata68, align 8
  br label %cleanup73

cleanup73:                                        ; preds = %cleanup69, %if.then65, %if.else51.cleanup73_crit_edge, %if.then44, %raid_set_level.exit.cleanup73_crit_edge, %if.then18, %if.end9.cleanup73_crit_edge, %if.then5.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup73_crit_edge ], [ -6, %if.then5.cleanup73_crit_edge ], [ -12, %if.end9.cleanup73_crit_edge ], [ 0, %cleanup69 ], [ 0, %raid_set_level.exit.cleanup73_crit_edge ], [ 0, %if.then44 ], [ 0, %if.then18 ], [ -12, %if.else51.cleanup73_crit_edge ], [ -6, %if.then65 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @myrs_slave_configure(ptr nocapture noundef %sdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3 = icmp ult i32 %3, %conv
  br i1 %cmp3, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %11)
  %cmp7 = icmp eq i8 %11, 12
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %12 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp12.not = icmp eq i64 %13, 0
  br i1 %cmp12.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %14 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %ldev_control = getelementptr inbounds %struct.myrs_ldev_info, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ldev_control to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load18 = load i8, ptr %ldev_control, align 8
  %17 = and i8 %bf.load18, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %switch = icmp eq i8 %17, 8
  br i1 %switch, label %if.then30, label %if.end17.cleanup.sink.split_crit_edge

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %wce_default_on = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %18 = ptrtoint ptr %wce_default_on to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load31 = load i64, ptr %wce_default_on, align 4
  %bf.set33 = or i64 %bf.load31, 4194304
  store i64 %bf.set33, ptr %wce_default_on, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then30, %if.end17.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ 8589934592, %if.then5.cleanup.sink.split_crit_edge ], [ 4503599627370496, %if.end17.cleanup.sink.split_crit_edge ], [ 4503599627370496, %if.then30 ]
  %no_uld_attach = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %19 = ptrtoint ptr %no_uld_attach to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load35 = load i64, ptr %no_uld_attach, align 4
  %bf.set37 = or i64 %bf.load35, %.sink
  store i64 %bf.set37, ptr %no_uld_attach, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -6, %if.then5.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ], [ -6, %if.end15.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrs_slave_destroy(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %cs, i16 noundef zeroext %ldev_num, ptr noundef %ldev_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38
  %ldev_info_orig.sroa.4.0.ldev_info.sroa_idx = getelementptr inbounds i8, ptr %ldev_info, i32 4
  %0 = ptrtoint ptr %ldev_info_orig.sroa.4.0.ldev_info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %ldev_info_orig.sroa.4.0.copyload = load i8, ptr %ldev_info_orig.sroa.4.0.ldev_info.sroa_idx, align 4
  %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx = getelementptr inbounds i8, ptr %ldev_info, i32 12
  %1 = ptrtoint ptr %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %ldev_info_orig.sroa.5200.0.copyload = load i8, ptr %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx, align 4
  %ldev_info_orig.sroa.6201.0.ldev_info.sroa_idx = getelementptr inbounds i8, ptr %ldev_info, i32 20
  %2 = ptrtoint ptr %ldev_info_orig.sroa.6201.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %ldev_info_orig.sroa.6201.0.copyload = load i16, ptr %ldev_info_orig.sroa.6201.0.ldev_info.sroa_idx, align 4
  %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx = getelementptr inbounds i8, ptr %ldev_info, i32 22
  %3 = ptrtoint ptr %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %ldev_info_orig.sroa.7.0.copyload = load i16, ptr %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx, align 2
  %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx = getelementptr inbounds i8, ptr %ldev_info, i32 26
  %4 = ptrtoint ptr %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %ldev_info_orig.sroa.8202.0.copyload = load i16, ptr %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx, align 2
  %pdev = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 8
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ldev_info) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !866

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ldev_info, i32 noundef 264) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %ldev_info to i32
  %sub.i = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %11, i32 %shr.i
  %and.i = and i32 %12, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 264, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i203 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %retval.0.i203) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i203)
  %cmp.i = icmp eq i32 %retval.0.i203, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %dcmd_mutex = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %15 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %16 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %dcmd_blk, align 8
  %opcode = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %opcode, align 2
  %control = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %control, align 1
  %dma_size = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %dma_size to i32
  call void @__asan_storeN_noabort(i32 %19, i32 3)
  store i24 264, ptr %dma_size, align 4
  %ldev = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 6
  %20 = ptrtoint ptr %ldev to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %ldev_num, ptr %ldev, align 8
  %ioctl_opcode = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 9
  %21 = ptrtoint ptr %ioctl_opcode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %ioctl_opcode, align 1
  %dma_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 11
  %conv = zext i32 %retval.0.i203 to i64
  %22 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %dma_addr, align 8
  %sge_count = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 11, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %sge_count to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 264, ptr %sge_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrs_get_ldev_info.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrs_get_ldev_info, %if.then18)) #15
          to label %do.end [label %if.then18], !srcloc !864

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %host = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 49
  %conv19 = zext i16 %ldev_num to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrs_get_ldev_info.__UNIQUE_ID_ddebug288, ptr noundef %shost_gendev, ptr noundef nonnull @.str.91, i32 noundef %conv19) #15
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end
  tail call fastcc void @myrs_exec_cmd(ptr noundef %cs, ptr noundef %dcmd_blk)
  %status21 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 1
  %26 = ptrtoint ptr %status21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %status21, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev24, i32 noundef %retval.0.i203, i32 noundef 264, i32 noundef 2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp = icmp eq i8 %27, 0
  br i1 %cmp, label %if.then27, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27:                                        ; preds = %do.end
  %ldev_num29 = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 12
  %30 = ptrtoint ptr %ldev_num29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ldev_num29, align 8
  %cfg_devsize = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 24
  %32 = ptrtoint ptr %cfg_devsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfg_devsize, align 4
  %34 = ptrtoint ptr %ldev_info_orig.sroa.4.0.ldev_info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ldev_info_orig.sroa.4.0.ldev_info.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %ldev_info_orig.sroa.4.0.copyload)
  %cmp33.not = icmp eq i8 %35, %ldev_info_orig.sroa.4.0.copyload
  br i1 %cmp33.not, label %if.then27.if.end45_crit_edge, label %if.then35

if.then27.if.end45_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %call37 = tail call fastcc ptr @myrs_devstate_name(i8 noundef zeroext %35)
  %host41 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %36 = ptrtoint ptr %host41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host41, align 4
  %shost_gendev42 = getelementptr inbounds %struct.Scsi_Host, ptr %37, i32 0, i32 49
  %conv43 = zext i16 %31 to i32
  %tobool44.not = icmp eq ptr %call37, null
  %spec.select = select i1 %tobool44.not, ptr @.str.89, ptr %call37
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev42, ptr noundef nonnull @.str.92, i32 noundef %conv43, ptr noundef nonnull %spec.select) #18
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %if.then27.if.end45_crit_edge
  %38 = ptrtoint ptr %ldev_info_orig.sroa.6201.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ldev_info_orig.sroa.6201.0.ldev_info.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %ldev_info_orig.sroa.6201.0.copyload)
  %cmp49.not = icmp eq i16 %39, %ldev_info_orig.sroa.6201.0.copyload
  br i1 %cmp49.not, label %lor.lhs.false, label %if.end45.do.end65_crit_edge

if.end45.do.end65_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

lor.lhs.false:                                    ; preds = %if.end45
  %40 = ptrtoint ptr %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %ldev_info_orig.sroa.7.0.copyload)
  %cmp54.not = icmp eq i16 %41, %ldev_info_orig.sroa.7.0.copyload
  br i1 %cmp54.not, label %lor.lhs.false56, label %lor.lhs.false.do.end65_crit_edge

lor.lhs.false.do.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

lor.lhs.false56:                                  ; preds = %lor.lhs.false
  %42 = ptrtoint ptr %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %ldev_info_orig.sroa.8202.0.copyload)
  %cmp60.not = icmp eq i16 %43, %ldev_info_orig.sroa.8202.0.copyload
  br i1 %cmp60.not, label %lor.lhs.false56.if.end75_crit_edge, label %lor.lhs.false56.do.end65_crit_edge

lor.lhs.false56.do.end65_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

lor.lhs.false56.if.end75_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

do.end65:                                         ; preds = %lor.lhs.false56.do.end65_crit_edge, %lor.lhs.false.do.end65_crit_edge, %if.end45.do.end65_crit_edge
  %host66 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %44 = ptrtoint ptr %host66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host66, align 4
  %shost_gendev67 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 49
  %conv68 = zext i16 %31 to i32
  %conv70 = zext i16 %39 to i32
  %46 = ptrtoint ptr %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ldev_info_orig.sroa.7.0.ldev_info.sroa_idx, align 2
  %conv72 = zext i16 %47 to i32
  %48 = ptrtoint ptr %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ldev_info_orig.sroa.8202.0.ldev_info.sroa_idx, align 2
  %conv74 = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev67, ptr noundef nonnull @.str.94, i32 noundef %conv68, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %conv74) #18
  br label %if.end75

if.end75:                                         ; preds = %do.end65, %lor.lhs.false56.if.end75_crit_edge
  %50 = ptrtoint ptr %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load76 = load i8, ptr %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx, align 4
  %51 = and i8 %bf.load76, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool78.not = icmp eq i8 %51, 0
  br i1 %tobool78.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %bg_init_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 33
  br label %if.end104.sink.split

if.else:                                          ; preds = %if.end75
  %52 = and i8 %bf.load76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool84.not = icmp eq i8 %52, 0
  br i1 %tobool84.not, label %if.else87, label %if.then85

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %fg_init_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 34
  br label %if.end104.sink.split

if.else87:                                        ; preds = %if.else
  %53 = and i8 %bf.load76, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool91.not = icmp eq i8 %53, 0
  br i1 %tobool91.not, label %if.else94, label %if.then92

if.then92:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #17
  %migration_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 35
  br label %if.end104.sink.split

if.else94:                                        ; preds = %if.else87
  %54 = and i8 %bf.load76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool98.not = icmp eq i8 %54, 0
  br i1 %tobool98.not, label %if.else94.if.end104_crit_edge, label %if.then99

if.else94.if.end104_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then99:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #17
  %patrol_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 36
  br label %if.end104.sink.split

if.end104.sink.split:                             ; preds = %if.then99, %if.then92, %if.then85, %if.then79
  %fg_init_lba.sink = phi ptr [ %fg_init_lba, %if.then85 ], [ %patrol_lba, %if.then99 ], [ %migration_lba, %if.then92 ], [ %bg_init_lba, %if.then79 ]
  %.str.97.sink = phi ptr [ @.str.97, %if.then85 ], [ @.str.99, %if.then99 ], [ @.str.98, %if.then92 ], [ @.str.96, %if.then79 ]
  %55 = ptrtoint ptr %fg_init_lba.sink to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %fg_init_lba.sink, align 8
  %conv86 = trunc i64 %56 to i32
  %host.i205 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %57 = ptrtoint ptr %host.i205 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host.i205, align 4
  %shost_gendev.i206 = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 49
  %conv.i207 = zext i16 %31 to i32
  %shr.i208 = lshr i32 %conv86, 7
  %mul.i209 = mul nuw i32 %shr.i208, 100
  %shr1.i210 = lshr i32 %33, 7
  %div.i211 = sdiv i32 %mul.i209, %shr1.i210
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i206, ptr noundef nonnull @.str.108, i32 noundef %conv.i207, ptr noundef nonnull %.str.97.sink, i32 noundef %div.i211) #18
  br label %if.end104

if.end104:                                        ; preds = %if.end104.sink.split, %if.else94.if.end104_crit_edge
  %59 = and i8 %ldev_info_orig.sroa.5200.0.copyload, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool110.not = icmp eq i8 %59, 0
  br i1 %tobool110.not, label %if.end104.cleanup_crit_edge, label %land.lhs.true

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end104
  %60 = ptrtoint ptr %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load112 = load i8, ptr %ldev_info_orig.sroa.5200.0.ldev_info.sroa_idx, align 4
  %61 = and i8 %bf.load112, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool115.not = icmp eq i8 %61, 0
  br i1 %tobool115.not, label %do.end119, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end119:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %host120 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %62 = ptrtoint ptr %host120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host120, align 4
  %shost_gendev121 = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 49
  %conv122 = zext i16 %31 to i32
  %ldev_control = getelementptr inbounds %struct.myrs_ldev_info, ptr %ldev_info, i32 0, i32 8
  %64 = ptrtoint ptr %ldev_control to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load123 = load i8, ptr %ldev_control, align 8
  %bf.clear124 = and i8 %bf.load123, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear124)
  %tobool126.not = icmp eq i8 %bf.clear124, 0
  %cond127 = select i1 %tobool126.not, ptr @.str.104, ptr @.str.103
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev121, ptr noundef nonnull @.str.101, i32 noundef %conv122, ptr noundef nonnull %cond127) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %land.lhs.true.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %do.end.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end104.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end119 ], [ %27, %do.end.cleanup_crit_edge ], [ 2, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @myrs_devstate_name(i8 noundef zeroext %state) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.407)
  switch i8 %state, label %entry.cleanup_crit_edge [
    i8 0, label %entry.if.then_crit_edge
    i8 1, label %if.then.fold.split
    i8 3, label %if.then.fold.split15
    i8 4, label %if.then.fold.split16
    i8 5, label %if.then.fold.split17
    i8 8, label %if.then.fold.split18
    i8 9, label %if.then.fold.split19
    i8 12, label %if.then.fold.split20
    i8 16, label %if.then.fold.split21
    i8 33, label %if.then.fold.split22
    i8 -1, label %if.then.fold.split23
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split, %entry.if.then_crit_edge
  %i.013.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split15 ], [ 3, %if.then.fold.split16 ], [ 4, %if.then.fold.split17 ], [ 5, %if.then.fold.split18 ], [ 6, %if.then.fold.split19 ], [ 7, %if.then.fold.split20 ], [ 8, %if.then.fold.split21 ], [ 9, %if.then.fold.split22 ], [ 10, %if.then.fold.split23 ]
  %name = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @myrs_get_pdev_info(ptr noundef %cs, i8 noundef zeroext %channel, i8 noundef zeroext %target, i8 noundef zeroext %lun, ptr noundef %pdev_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38
  %pdev = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 8
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %pdev_info) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !866

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %pdev_info, i32 noundef 512) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %pdev_info to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %and.i = and i32 %7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 512, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i65 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %retval.0.i65) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i65)
  %cmp.i = icmp eq i32 %retval.0.i65, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %dcmd_mutex = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %10 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %opcode = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %opcode, align 2
  %12 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %dcmd_blk, align 8
  %control = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %control, align 1
  %dma_size = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %dma_size to i32
  call void @__asan_storeN_noabort(i32 %14, i32 3)
  store i24 512, ptr %dma_size, align 4
  %pdev9 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 6
  %15 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %lun, ptr %pdev9, align 8
  %target12 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %target12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %target, ptr %target12, align 1
  %channel14 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 6, i32 2
  %bf.shl = shl i8 %channel, 5
  %17 = ptrtoint ptr %channel14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.shl, ptr %channel14, align 2
  %ioctl_opcode = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 9
  %18 = ptrtoint ptr %ioctl_opcode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %ioctl_opcode, align 1
  %dma_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 11
  %conv = zext i32 %retval.0.i65 to i64
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %dma_addr, align 8
  %sge_count = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 11, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %sge_count to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 512, ptr %sge_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrs_get_pdev_info.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrs_get_pdev_info, %if.then26)) #15
          to label %do.end [label %if.then26], !srcloc !864

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %host = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 49
  %conv27 = zext i8 %channel to i32
  %conv28 = zext i8 %target to i32
  %conv29 = zext i8 %lun to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrs_get_pdev_info.__UNIQUE_ID_ddebug289, ptr noundef %shost_gendev, ptr noundef nonnull @.str.121, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29) #15
  br label %do.end

do.end:                                           ; preds = %if.then26, %if.end
  tail call fastcc void @myrs_exec_cmd(ptr noundef %cs, ptr noundef %dcmd_blk)
  %status31 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 1
  %23 = ptrtoint ptr %status31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status31, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev34, i32 noundef %retval.0.i65, i32 noundef 512, i32 noundef 2, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ %24, %do.end ], [ 2, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrs_exec_cmd(ptr noundef %cs, ptr noundef %cmd_blk) unnamed_addr #2 align 64 {
entry:
  %complete = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %complete) #15
  %0 = getelementptr inbounds i8, ptr %complete, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %complete, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @init_completion.__key) #15
  %complete1 = getelementptr inbounds %struct.myrs_cmdblk, ptr %cmd_blk, i32 0, i32 4
  %3 = ptrtoint ptr %complete1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %complete, ptr %complete1, align 8
  %queue_lock = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 18
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #15
  %4 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs, align 8
  %next_cmd_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 30
  %6 = ptrtoint ptr %next_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_cmd_mbox.i, align 4
  %write_cmd_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 22
  %8 = ptrtoint ptr %write_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_cmd_mbox.i, align 4
  call void %9(ptr noundef %7, ptr noundef %cmd_blk) #15
  %prev_cmd_mbox1.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 31
  %10 = ptrtoint ptr %prev_cmd_mbox1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev_cmd_mbox1.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %prev_cmd_mbox2.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 32
  %14 = ptrtoint ptr %prev_cmd_mbox2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev_cmd_mbox2.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i = icmp eq i32 %17, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %get_cmd_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 23
  %18 = ptrtoint ptr %get_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_cmd_mbox.i, align 8
  call void %19(ptr noundef %5) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %20 = ptrtoint ptr %prev_cmd_mbox1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev_cmd_mbox1.i, align 8
  %prev_cmd_mbox25.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 32
  %22 = ptrtoint ptr %prev_cmd_mbox25.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %prev_cmd_mbox25.i, align 4
  store ptr %7, ptr %prev_cmd_mbox1.i, align 8
  %incdec.ptr.i = getelementptr %union.myrs_cmd_mbox, ptr %7, i32 1
  %last_cmd_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 29
  %23 = ptrtoint ptr %last_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %last_cmd_mbox.i, align 8
  %cmp7.i = icmp ugt ptr %incdec.ptr.i, %24
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.myrs_qcmd.exit_crit_edge

if.end.i.myrs_qcmd.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_qcmd.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %first_cmd_mbox.i = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 28
  %25 = ptrtoint ptr %first_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %first_cmd_mbox.i, align 4
  br label %myrs_qcmd.exit

myrs_qcmd.exit:                                   ; preds = %if.then8.i, %if.end.i.myrs_qcmd.exit_crit_edge
  %next_mbox.0.i = phi ptr [ %26, %if.then8.i ], [ %incdec.ptr.i, %if.end.i.myrs_qcmd.exit_crit_edge ]
  %27 = ptrtoint ptr %next_cmd_mbox.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %next_mbox.0.i, ptr %next_cmd_mbox.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call4) #15
  call void @wait_for_completion(ptr noundef nonnull %complete) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %complete) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @attribute_container_find_class_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  %serial = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %serial) #15
  %0 = getelementptr inbounds [17 x i8], ptr %serial, i32 0, i32 16
  %ctlr_info = getelementptr i8, ptr %dev, i32 1580
  %1 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctlr_info, align 4
  %serial_number = getelementptr inbounds %struct.myrs_ctlr_info, ptr %2, i32 0, i32 39
  %3 = call ptr @memcpy(ptr %serial, ptr %serial_number, i32 16)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 1
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.123, ptr noundef nonnull %serial)
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %serial) #15
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctlr_num_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr i8, ptr %dev, i32 996
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.125, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @processor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr_info = getelementptr i8, ptr %dev, i32 1580
  %0 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr_info, align 4
  %cpu_count = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cpu_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %for.cond.preheader

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

for.cond.preheader:                               ; preds = %entry
  %cpu_type = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 0, i32 1
  %4 = ptrtoint ptr %cpu_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cpu_type, align 2
  %switch.tableidx = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 7
  br i1 %6, label %switch.lookup, label %for.cond.preheader.if.end9_crit_edge

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

switch.lookup:                                    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %name = getelementptr %struct.myrs_cpu_type_tbl, ptr @myrs_cpu_type_names, i32 %switch.idx.cast, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %for.cond.preheader.if.end9_crit_edge, %entry.if.end9_crit_edge
  %first_processor.0 = phi ptr [ %8, %switch.lookup ], [ null, %entry.if.end9_crit_edge ], [ null, %for.cond.preheader.if.end9_crit_edge ]
  %cpu_count12 = getelementptr %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 1, i32 2
  %9 = ptrtoint ptr %cpu_count12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cpu_count12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end9.if.end35.thread_crit_edge, label %for.cond15.preheader

if.end9.if.end35.thread_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.thread

for.cond15.preheader:                             ; preds = %if.end9
  %cpu_type24 = getelementptr %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 1, i32 1
  %11 = ptrtoint ptr %cpu_type24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cpu_type24, align 2
  %switch.tableidx145 = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx145)
  %13 = icmp ult i8 %switch.tableidx145, 7
  br i1 %13, label %switch.lookup144, label %for.cond15.preheader.if.end35.thread_crit_edge

for.cond15.preheader.if.end35.thread_crit_edge:   ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %for.cond15.preheader.if.end35.thread_crit_edge, %if.end9.if.end35.thread_crit_edge
  %tobool36.not122 = icmp eq ptr %first_processor.0, null
  br label %if.else

switch.lookup144:                                 ; preds = %for.cond15.preheader
  %switch.idx.cast146 = zext i8 %switch.tableidx145 to i32
  %name30 = getelementptr %struct.myrs_cpu_type_tbl, ptr @myrs_cpu_type_names, i32 %switch.idx.cast146, i32 1
  %14 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name30, align 4
  %tobool36.not = icmp eq ptr %first_processor.0, null
  %tobool37.not = icmp eq ptr %15, null
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool37.not
  br i1 %or.cond, label %switch.lookup144.if.else_crit_edge, label %if.then38

switch.lookup144.if.else_crit_edge:               ; preds = %switch.lookup144
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then38:                                        ; preds = %switch.lookup144
  call void @__sanitizer_cov_trace_pc() #17
  %cpu_name = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 0, i32 4
  %conv44 = zext i8 %3 to i32
  %cpu_name47 = getelementptr %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 1, i32 4
  %conv52 = zext i8 %10 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 64, ptr noundef nonnull @.str.127, ptr noundef %cpu_name, ptr noundef nonnull %first_processor.0, i32 noundef %conv44, ptr noundef %cpu_name47, ptr noundef nonnull %15, i32 noundef %conv52)
  br label %if.end85

if.else:                                          ; preds = %switch.lookup144.if.else_crit_edge, %if.end35.thread
  %tobool37.not127 = phi i1 [ true, %if.end35.thread ], [ %tobool37.not, %switch.lookup144.if.else_crit_edge ]
  %tobool36.not126 = phi i1 [ %tobool36.not122, %if.end35.thread ], [ %tobool36.not, %switch.lookup144.if.else_crit_edge ]
  %second_processor.0125 = phi ptr [ null, %if.end35.thread ], [ %15, %switch.lookup144.if.else_crit_edge ]
  %tobool36.not.not = xor i1 %tobool36.not126, true
  %or.cond118 = select i1 %tobool36.not.not, i1 %tobool37.not127, i1 false
  br i1 %or.cond118, label %if.then57, label %if.else67

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %cpu_name60 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 0, i32 4
  %conv65 = zext i8 %3 to i32
  %call66 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 64, ptr noundef nonnull @.str.128, ptr noundef %cpu_name60, ptr noundef nonnull %first_processor.0, i32 noundef %conv65)
  br label %if.end85

if.else67:                                        ; preds = %if.else
  %or.cond120 = select i1 %tobool36.not.not, i1 true, i1 %tobool37.not127
  br i1 %or.cond120, label %if.else81, label %if.then71

if.then71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #17
  %cpu_name74 = getelementptr %struct.myrs_ctlr_info, ptr %1, i32 0, i32 83, i32 1, i32 4
  %conv79 = zext i8 %10 to i32
  %call80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 64, ptr noundef nonnull @.str.129, ptr noundef %cpu_name74, ptr noundef nonnull %second_processor.0125, i32 noundef %conv79)
  br label %if.end85

if.else81:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #17
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.130, i32 21)
  br label %if.end85

if.end85:                                         ; preds = %if.else81, %if.then71, %if.then57, %if.then38
  %ret.0 = phi i32 [ %call53, %if.then38 ], [ 20, %if.else81 ], [ %call80, %if.then71 ], [ %call66, %if.then57 ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @model_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %model_name = getelementptr i8, ptr %dev, i32 956
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 28, ptr noundef nonnull @.str.123, ptr noundef %model_name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctlr_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr_info = getelementptr i8, ptr %dev, i32 1580
  %0 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr_info, align 4
  %ctlr_type = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctlr_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctlr_type, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr_info = getelementptr i8, ptr %dev, i32 1580
  %0 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr_info, align 4
  %cache_size_mb = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %cache_size_mb to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cache_size_mb, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 8, ptr noundef nonnull @.str.141, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr_info = getelementptr i8, ptr %dev, i32 1580
  %0 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr_info, align 4
  %fw_major_version = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fw_major_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_major_version, align 4
  %conv = zext i8 %3 to i32
  %fw_minor_version = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %fw_minor_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_minor_version, align 1
  %conv2 = zext i8 %5 to i32
  %fw_turn_number = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %fw_turn_number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_turn_number, align 2
  %conv4 = zext i8 %7 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.143, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @discovery_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %dcmd_mutex = getelementptr i8, ptr %dev, i32 1480
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %dcmd_blk = getelementptr i8, ptr %dev, i32 1272
  %0 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %opcode = getelementptr i8, ptr %dev, i32 1274
  %1 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %opcode, align 2
  %2 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %dcmd_blk, align 8
  %control = getelementptr i8, ptr %dev, i32 1275
  %3 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %control, align 1
  %ioctl_opcode = getelementptr i8, ptr %dev, i32 1293
  %4 = ptrtoint ptr %ioctl_opcode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %ioctl_opcode, align 1
  tail call fastcc void @myrs_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk)
  %status6 = getelementptr i8, ptr %dev, i32 1336
  %5 = ptrtoint ptr %status6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status6, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %do.end12, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %6 to i32
  %shost_gendev = getelementptr i8, ptr %dev, i32 -928
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev, ptr noundef nonnull @.str.145, i32 noundef %conv) #18
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev13 = getelementptr i8, ptr %dev, i32 -928
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev13, ptr noundef nonnull @.str.148) #18
  %next_evseq = getelementptr i8, ptr %dev, i32 1008
  %7 = ptrtoint ptr %next_evseq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %next_evseq, align 8
  %needs_update = getelementptr i8, ptr %dev, i32 1012
  %8 = ptrtoint ptr %needs_update to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %needs_update, align 4
  %work_q = getelementptr i8, ptr %dev, i32 1016
  %9 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %work_q, align 8
  %monitor_work = getelementptr i8, ptr %dev, i32 1040
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %monitor_work, i32 noundef 1) #15
  %call16 = tail call zeroext i1 @flush_delayed_work(ptr noundef %monitor_work) #15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev13, ptr noundef nonnull @.str.151) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flush_cache_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %dcmd_blk.i = getelementptr i8, ptr %dev, i32 1272
  %dcmd_mutex.i = getelementptr i8, ptr %dev, i32 1480
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #15
  %0 = call ptr @memset(ptr %dcmd_blk.i, i32 0, i32 65)
  %opcode2.i = getelementptr i8, ptr %dev, i32 1274
  %1 = ptrtoint ptr %opcode2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %opcode2.i, align 2
  %2 = ptrtoint ptr %dcmd_blk.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %dcmd_blk.i, align 8
  %control.i = getelementptr i8, ptr %dev, i32 1275
  %3 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %control.i, align 1
  %ioctl_opcode.i = getelementptr i8, ptr %dev, i32 1293
  %4 = ptrtoint ptr %ioctl_opcode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -111, ptr %ioctl_opcode.i, align 1
  %opdev7.i = getelementptr i8, ptr %dev, i32 1294
  %5 = ptrtoint ptr %opdev7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %opdev7.i, align 2
  tail call fastcc void @myrs_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk.i) #15
  %status8.i = getelementptr i8, ptr %dev, i32 1336
  %6 = ptrtoint ptr %status8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status8.i, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %do.end, label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev = getelementptr i8, ptr %dev, i32 -928
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev, ptr noundef nonnull @.str.154) #18
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %7 to i32
  %shost_gendev6 = getelementptr i8, ptr %dev, i32 -928
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev6, ptr noundef nonnull @.str.157, i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %do.end
  %retval.0 = phi i32 [ %count, %do.end ], [ -5, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_enclosure_messages_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_enc_msg = getelementptr i8, ptr %dev, i32 1013
  %0 = ptrtoint ptr %disable_enc_msg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_enc_msg, align 1, !range !867
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 3, ptr noundef nonnull @.str.125, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_enclosure_messages_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #15
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !813
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp sgt i32 %4, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4 = icmp ne i32 %4, 0
  %disable_enc_msg = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 12
  %frombool = zext i1 %tobool4 to i8
  %5 = ptrtoint ptr %disable_enc_msg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %disable_enc_msg, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @consistency_check_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %channel = getelementptr i8, ptr %dev, i32 -276
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.161, i32 32)
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ldev_num5 = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %ldev_num5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ldev_num5, align 8
  %call6 = tail call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %hostdata.i, i16 noundef zeroext %12, ptr noundef nonnull %10)
  %cc_active = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %cc_active to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %cc_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %cc_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 31
  %14 = ptrtoint ptr %cc_lba to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cc_lba, align 8
  %conv9 = trunc i64 %15 to i32
  %cfg_devsize = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 24
  %16 = ptrtoint ptr %cfg_devsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_devsize, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.162, i32 noundef %conv9, i32 noundef %17)
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %18 = call ptr @memcpy(ptr %buf, ptr @.str.163, i32 14)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 31, %if.then ], [ %call10, %if.then8 ], [ 13, %if.else ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @consistency_check_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %check = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %check) #15
  %2 = ptrtoint ptr %check to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %check, align 4, !annotation !813
  %channel = getelementptr i8, ptr %dev, i32 -276
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %6, i32 0, i32 60
  %7 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ult i32 %4, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ldev_num4 = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %ldev_num4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ldev_num4, align 8
  %call5 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %check) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %hostdata.i, i16 noundef zeroext %12, ptr noundef nonnull %10)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp11.not = icmp eq i8 %call9, 0
  br i1 %cmp11.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %conv10 = zext i8 %call9 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef %conv10) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  %cc_active23 = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 9
  %15 = ptrtoint ptr %cc_active23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load24 = load i8, ptr %cc_active23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %tobool26.not = icmp sgt i8 %bf.load24, -1
  br i1 %tobool16.not, label %land.lhs.true22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  br i1 %tobool26.not, label %land.lhs.true.if.end28_crit_edge, label %if.then19

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.165) #15
  br label %cleanup

land.lhs.true22:                                  ; preds = %if.end15
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true22.if.end28_crit_edge

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.166) #15
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true22.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %dcmd_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 38
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %dcmd_blk = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1
  %16 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %opcode = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %opcode, align 2
  %18 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %dcmd_blk, align 8
  %control = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %control, align 1
  %20 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  br i1 %tobool35.not, label %if.end28.if.end47_crit_edge, label %if.then36

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %restore_consistency = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 10
  %22 = ptrtoint ptr %restore_consistency to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load38 = load i8, ptr %restore_consistency, align 2
  %bf.set40 = and i8 %bf.load38, 63
  %bf.clear42 = or i8 %bf.set40, -128
  store i8 %bf.clear42, ptr %restore_consistency, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %if.end28.if.end47_crit_edge
  %.sink = phi i8 [ -116, %if.then36 ], [ -115, %if.end28.if.end47_crit_edge ]
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %12, ptr %23, align 8
  %25 = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 9
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %25, align 1
  call fastcc void @myrs_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk)
  %status48 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 5, i32 1
  %27 = ptrtoint ptr %status48 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status48, align 8
  call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp51.not = icmp eq i8 %28, 0
  br i1 %cmp51.not, label %if.else56, label %if.then53

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %conv50 = zext i8 %28 to i32
  %29 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool54.not = icmp eq i32 %30, 0
  %cond = select i1 %tobool54.not, ptr @.str.169, ptr @.str.168
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull %cond, i32 noundef %conv50) #15
  br label %cleanup

if.else56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool57.not = icmp eq i32 %32, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.169, ptr @.str.168
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull %cond58) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else56, %if.then53, %if.then27, %if.then19, %if.then13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then13 ], [ -114, %if.then19 ], [ %count, %if.then27 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ -5, %if.then53 ], [ %count, %if.else56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %check) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rebuild_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %channel = getelementptr i8, ptr %dev, i32 -276
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.172)
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata, align 8
  %ldev_num3 = getelementptr inbounds %struct.myrs_ldev_info, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %ldev_num3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ldev_num3, align 8
  %call4 = tail call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %hostdata.i, i16 noundef zeroext %11, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %cmp6.not = icmp eq i8 %call4, 0
  br i1 %cmp6.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv5 = zext i8 %call4 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef %conv5) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %rbld_active = getelementptr inbounds %struct.myrs_ldev_info, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %rbld_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %rbld_active, align 4
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %rbld_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %9, i32 0, i32 32
  %14 = ptrtoint ptr %rbld_lba to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rbld_lba, align 8
  %conv12 = trunc i64 %15 to i32
  %cfg_devsize = getelementptr inbounds %struct.myrs_ldev_info, ptr %9, i32 0, i32 24
  %16 = ptrtoint ptr %cfg_devsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_devsize, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.173, i32 noundef %conv12, i32 noundef %17)
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %18 = call ptr @memcpy(ptr %buf, ptr @.str.174, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then8, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -5, %if.then8 ], [ %call13, %if.then11 ], [ 15, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rebuild_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rebuild = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rebuild) #15
  %2 = ptrtoint ptr %rebuild to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rebuild, align 4, !annotation !813
  %channel = getelementptr i8, ptr %dev, i32 -276
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %6, i32 0, i32 60
  %7 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp ult i32 %4, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ldev_num4 = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %ldev_num4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ldev_num4, align 8
  %call5 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %rebuild) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %hostdata.i, i16 noundef zeroext %12, ptr noundef nonnull %10)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp11.not = icmp eq i8 %call9, 0
  br i1 %cmp11.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %conv10 = zext i8 %call9 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef %conv10) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %rebuild to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rebuild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  %rbld_active23 = getelementptr inbounds %struct.myrs_ldev_info, ptr %10, i32 0, i32 9
  %15 = ptrtoint ptr %rbld_active23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load24 = load i8, ptr %rbld_active23, align 4
  %16 = and i8 %bf.load24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %land.lhs.true22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  br i1 %tobool27.not, label %land.lhs.true.if.end29_crit_edge, label %if.then19

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.175) #15
  br label %cleanup

land.lhs.true22:                                  ; preds = %if.end15
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true22.if.end29_crit_edge

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.176) #15
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true22.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge
  %dcmd_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 38
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %dcmd_blk = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1
  %17 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %opcode = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %opcode, align 2
  %19 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %dcmd_blk, align 8
  %control = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %control, align 1
  %21 = ptrtoint ptr %rebuild to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rebuild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool37.not, i8 -119, i8 -120
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %12, ptr %23, align 8
  %25 = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 9
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select, ptr %25, align 1
  call fastcc void @myrs_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk)
  %status44 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 5, i32 1
  %27 = ptrtoint ptr %status44 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status44, align 8
  call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool46.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %rebuild to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rebuild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool51.not = icmp eq i32 %30, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.169, ptr @.str.168
  br i1 %tobool46.not, label %if.else50, label %if.then47

if.then47:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %conv49 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull %cond52, i32 noundef %conv49) #15
  br label %cleanup

if.else50:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull %cond52) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then47, %if.then28, %if.then19, %if.then13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then13 ], [ -114, %if.then19 ], [ %count, %if.then28 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ -5, %if.then47 ], [ %count, %if.else50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rebuild) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.180, i32 9)
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %channel = getelementptr i8, ptr %dev, i32 -276
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %8, i32 0, i32 60
  %9 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp ult i32 %6, %conv
  br i1 %cmp.not, label %if.else13, label %if.then3

if.then3:                                         ; preds = %if.end
  %dev_state = getelementptr inbounds %struct.myrs_ldev_info, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dev_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dev_state, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.408)
  switch i8 %12, label %if.then3.if.else_crit_edge [
    i8 0, label %if.then3.myrs_devstate_name.exit_crit_edge
    i8 1, label %if.then.fold.split.i
    i8 3, label %if.then.fold.split15.i
    i8 4, label %if.then.fold.split16.i
    i8 5, label %if.then.fold.split17.i
    i8 8, label %if.then.fold.split18.i
    i8 9, label %if.then.fold.split19.i
    i8 12, label %if.then.fold.split20.i
    i8 16, label %if.then.fold.split21.i
    i8 33, label %if.then.fold.split22.i
    i8 -1, label %if.then.fold.split23.i
  ]

if.then3.myrs_devstate_name.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then3.if.else_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then.fold.split.i:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split15.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split16.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split17.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split18.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split19.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split20.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split21.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split22.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split23.i:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

myrs_devstate_name.exit:                          ; preds = %if.then.fold.split23.i, %if.then.fold.split22.i, %if.then.fold.split21.i, %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split.i, %if.then3.myrs_devstate_name.exit_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %if.then3.myrs_devstate_name.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split15.i ], [ 3, %if.then.fold.split16.i ], [ 4, %if.then.fold.split17.i ], [ 5, %if.then.fold.split18.i ], [ 6, %if.then.fold.split19.i ], [ 7, %if.then.fold.split20.i ], [ 8, %if.then.fold.split21.i ], [ 9, %if.then.fold.split22.i ], [ 10, %if.then.fold.split23.i ]
  %name.i = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa.i, i32 1
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %myrs_devstate_name.exit.if.else_crit_edge, label %if.then7

myrs_devstate_name.exit.if.else_crit_edge:        ; preds = %myrs_devstate_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then7:                                         ; preds = %myrs_devstate_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef nonnull %15)
  br label %cleanup

if.else:                                          ; preds = %myrs_devstate_name.exit.if.else_crit_edge, %if.then3.if.else_crit_edge
  %conv10 = zext i8 %12 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.181, i32 noundef %conv10)
  br label %cleanup

if.else13:                                        ; preds = %if.end
  %dev_state16 = getelementptr inbounds %struct.myrs_pdev_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dev_state16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dev_state16, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.409)
  switch i8 %17, label %if.else13.if.else21_crit_edge [
    i8 0, label %if.else13.myrs_devstate_name.exit55_crit_edge
    i8 1, label %if.then.fold.split.i41
    i8 3, label %if.then.fold.split15.i42
    i8 4, label %if.then.fold.split16.i43
    i8 5, label %if.then.fold.split17.i44
    i8 8, label %if.then.fold.split18.i45
    i8 9, label %if.then.fold.split19.i46
    i8 12, label %if.then.fold.split20.i47
    i8 16, label %if.then.fold.split21.i48
    i8 33, label %if.then.fold.split22.i49
    i8 -1, label %if.then.fold.split23.i50
  ]

if.else13.myrs_devstate_name.exit55_crit_edge:    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else21

if.then.fold.split.i41:                           ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split15.i42:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split16.i43:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split17.i44:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split18.i45:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split19.i46:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split20.i47:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split21.i48:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split22.i49:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

if.then.fold.split23.i50:                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit55

myrs_devstate_name.exit55:                        ; preds = %if.then.fold.split23.i50, %if.then.fold.split22.i49, %if.then.fold.split21.i48, %if.then.fold.split20.i47, %if.then.fold.split19.i46, %if.then.fold.split18.i45, %if.then.fold.split17.i44, %if.then.fold.split16.i43, %if.then.fold.split15.i42, %if.then.fold.split.i41, %if.else13.myrs_devstate_name.exit55_crit_edge
  %i.013.lcssa.i51 = phi i32 [ 0, %if.else13.myrs_devstate_name.exit55_crit_edge ], [ 1, %if.then.fold.split.i41 ], [ 2, %if.then.fold.split15.i42 ], [ 3, %if.then.fold.split16.i43 ], [ 4, %if.then.fold.split17.i44 ], [ 5, %if.then.fold.split18.i45 ], [ 6, %if.then.fold.split19.i46 ], [ 7, %if.then.fold.split20.i47 ], [ 8, %if.then.fold.split21.i48 ], [ 9, %if.then.fold.split22.i49 ], [ 10, %if.then.fold.split23.i50 ]
  %name.i52 = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa.i51, i32 1
  %19 = ptrtoint ptr %name.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i52, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %myrs_devstate_name.exit55.if.else21_crit_edge, label %if.then19

myrs_devstate_name.exit55.if.else21_crit_edge:    ; preds = %myrs_devstate_name.exit55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else21

if.then19:                                        ; preds = %myrs_devstate_name.exit55
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef nonnull %20)
  br label %cleanup

if.else21:                                        ; preds = %myrs_devstate_name.exit55.if.else21_crit_edge, %if.else13.if.else21_crit_edge
  %conv23 = zext i8 %17 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.181, i32 noundef %conv23)
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.then19, %if.else, %if.then7, %if.then
  %retval.0 = phi i32 [ 8, %if.then ], [ %call8, %if.then7 ], [ %call11, %if.else ], [ %call20, %if.then19 ], [ %call24, %if.else21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.182, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %lor.lhs.false

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.183, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end13_crit_edge, label %if.else

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.184, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.if.end13_crit_edge, label %if.else7

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.185, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else7.if.end13_crit_edge, label %if.else7.cleanup82_crit_edge

if.else7.cleanup82_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup82

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %if.else7.if.end13_crit_edge, %if.else.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge, %entry.if.end13_crit_edge
  %new_state.0 = phi i8 [ 8, %lor.lhs.false.if.end13_crit_edge ], [ 8, %entry.if.end13_crit_edge ], [ 1, %if.else.if.end13_crit_edge ], [ 33, %if.else7.if.end13_crit_edge ]
  %channel = getelementptr i8, ptr %dev, i32 -276
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata, align 8
  br i1 %cmp, label %if.then15, label %if.else35

if.then15:                                        ; preds = %if.end13
  %rsvd13 = getelementptr inbounds %struct.myrs_pdev_info, ptr %9, i32 0, i32 43
  %dev_state = getelementptr inbounds %struct.myrs_pdev_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_state, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %new_state.0)
  %cmp18 = icmp eq i8 %11, %new_state.0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then15
  %trunc191 = trunc i8 %new_state.0 to i6
  %12 = zext i6 %trunc191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.410)
  switch i6 %trunc191, label %if.then20.myrs_devstate_name.exit_crit_edge [
    i6 -31, label %if.then.fold.split22.i
    i6 1, label %if.then20.if.then.i_crit_edge
    i6 9, label %if.then.fold.split19.i
    i6 8, label %if.then.fold.split18.i
  ]

if.then20.if.then.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then20.myrs_devstate_name.exit_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit

if.then.fold.split18.i:                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split22.i:                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split22.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then20.if.then.i_crit_edge
  %i.013.lcssa.i = phi i32 [ 5, %if.then.fold.split18.i ], [ 6, %if.then.fold.split19.i ], [ 9, %if.then.fold.split22.i ], [ 1, %if.then20.if.then.i_crit_edge ]
  %name.i = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa.i, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  br label %myrs_devstate_name.exit

myrs_devstate_name.exit:                          ; preds = %if.then.i, %if.then20.myrs_devstate_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.then.i ], [ null, %if.then20.myrs_devstate_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef %retval.0.i) #15
  br label %cleanup82

if.end22:                                         ; preds = %if.then15
  %conv24 = trunc i32 %3 to i8
  %id = getelementptr i8, ptr %dev, i32 -280
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %conv25 = trunc i32 %16 to i8
  %lun = getelementptr i8, ptr %dev, i32 -272
  %17 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lun, align 8
  %conv26 = trunc i64 %18 to i8
  %pdev1.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %19 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev1.i, align 8
  %21 = ptrtoint ptr %rsvd13 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %rsvd13, align 2
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %rsvd13) #15
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end22
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !866

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #15
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %25, %if.end.i.i.i ], [ %23, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #15
  br label %cleanup82

dma_map_single_attrs.exit.i:                      ; preds = %if.end22
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %rsvd13, i32 noundef 8) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %rsvd13 to i32
  %sub.i.i = add i32 %27, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %26, i32 %shr.i.i
  %and.i.i = and i32 %27, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 8, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.cleanup82_crit_edge, label %myrs_translate_pdev.exit

dma_map_single_attrs.exit.i.cleanup82_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup82

myrs_translate_pdev.exit:                         ; preds = %dma_map_single_attrs.exit.i
  %dcmd_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 38
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #15
  %dcmd_blk.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1
  %opcode.i = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %opcode.i, align 2
  %control.i = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %control.i, align 1
  %bf.set8.i = or i8 %bf.load.i, 10
  store i8 %bf.set8.i, ptr %control.i, align 1
  %dma_size.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 1
  %30 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 3)
  store i24 8, ptr %dma_size.i, align 4
  %pdev9.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %target10.i = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %target10.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv25, ptr %target10.i, align 1
  %channel12.i = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %channel12.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load13.i = load i8, ptr %channel12.i, align 2
  %bf.shl.i = shl i8 %conv24, 5
  %bf.clear14.i = and i8 %bf.load13.i, 31
  %bf.set15.i = or i8 %bf.clear14.i, %bf.shl.i
  store i8 %bf.set15.i, ptr %channel12.i, align 2
  %33 = ptrtoint ptr %pdev9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv26, ptr %pdev9.i, align 8
  %ioctl_opcode.i = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 9
  %34 = ptrtoint ptr %ioctl_opcode.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -59, ptr %ioctl_opcode.i, align 1
  %dma_addr.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %conv.i = zext i32 %call41.i.i to i64
  %35 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.i, ptr %dma_addr.i, align 8
  %sge_count.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 7
  %36 = ptrtoint ptr %sge_count.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 8, ptr %sge_count.i, align 8
  tail call fastcc void @myrs_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk.i) #15
  %status22.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 5, i32 1
  %37 = ptrtoint ptr %status22.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status22.i, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #15
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %call41.i.i, i32 noundef 8, i32 noundef 2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp29.not = icmp eq i8 %38, 0
  br i1 %cmp29.not, label %myrs_translate_pdev.exit.if.end49_crit_edge, label %myrs_translate_pdev.exit.cleanup82_crit_edge

myrs_translate_pdev.exit.cleanup82_crit_edge:     ; preds = %myrs_translate_pdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup82

myrs_translate_pdev.exit.if.end49_crit_edge:      ; preds = %myrs_translate_pdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.else35:                                        ; preds = %if.end13
  %dev_state37 = getelementptr inbounds %struct.myrs_ldev_info, ptr %9, i32 0, i32 4
  %39 = ptrtoint ptr %dev_state37 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dev_state37, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %new_state.0)
  %cmp40 = icmp eq i8 %40, %new_state.0
  br i1 %cmp40, label %if.then42, label %cleanup46

if.then42:                                        ; preds = %if.else35
  %trunc190 = trunc i8 %new_state.0 to i6
  %41 = zext i6 %trunc190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.411)
  switch i6 %trunc190, label %if.then42.cleanup46.thread_crit_edge [
    i6 -31, label %if.then.fold.split22.i146
    i6 1, label %if.then42.if.then.i150_crit_edge
    i6 9, label %if.then.fold.split19.i143
    i6 8, label %if.then.fold.split18.i142
  ]

if.then42.if.then.i150_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i150

if.then42.cleanup46.thread_crit_edge:             ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup46.thread

if.then.fold.split18.i142:                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i150

if.then.fold.split19.i143:                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i150

if.then.fold.split22.i146:                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i150

if.then.i150:                                     ; preds = %if.then.fold.split22.i146, %if.then.fold.split19.i143, %if.then.fold.split18.i142, %if.then42.if.then.i150_crit_edge
  %i.013.lcssa.i148 = phi i32 [ 5, %if.then.fold.split18.i142 ], [ 6, %if.then.fold.split19.i143 ], [ 9, %if.then.fold.split22.i146 ], [ 1, %if.then42.if.then.i150_crit_edge ]
  %name.i149 = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa.i148, i32 1
  %42 = ptrtoint ptr %name.i149 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i149, align 4
  br label %cleanup46.thread

cleanup46.thread:                                 ; preds = %if.then.i150, %if.then42.cleanup46.thread_crit_edge
  %retval.0.i151 = phi ptr [ %43, %if.then.i150 ], [ null, %if.then42.cleanup46.thread_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef %retval.0.i151) #15
  br label %cleanup82

cleanup46:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #17
  %ldev_num45 = getelementptr inbounds %struct.myrs_ldev_info, ptr %9, i32 0, i32 12
  br label %if.end49

if.end49:                                         ; preds = %cleanup46, %myrs_translate_pdev.exit.if.end49_crit_edge
  %ldev_num.2.in = phi ptr [ %ldev_num45, %cleanup46 ], [ %rsvd13, %myrs_translate_pdev.exit.if.end49_crit_edge ]
  %44 = ptrtoint ptr %ldev_num.2.in to i32
  call void @__asan_load2_noabort(i32 %44)
  %ldev_num.2 = load i16, ptr %ldev_num.2.in, align 2
  %dcmd_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 38
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %dcmd_blk = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1
  %45 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %opcode = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %opcode, align 2
  %47 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %dcmd_blk, align 8
  %control = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %control, align 1
  %ioctl_opcode = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 9
  %49 = ptrtoint ptr %ioctl_opcode to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -126, ptr %ioctl_opcode, align 1
  %state = getelementptr inbounds %struct.myrs_hba, ptr %hostdata.i, i32 0, i32 38, i32 0, i32 0, i32 10
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %new_state.0, ptr %state, align 2
  %51 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %ldev_num.2, ptr %51, align 8
  tail call fastcc void @myrs_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk)
  %status57 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 5, i32 1
  %53 = ptrtoint ptr %status57 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %status57, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp60 = icmp eq i8 %54, 0
  br i1 %cmp60, label %if.then62, label %if.end79

if.then62:                                        ; preds = %if.end49
  %55 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel, align 4
  %57 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctlr_info, align 4
  %physchan_present65 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %58, i32 0, i32 60
  %59 = ptrtoint ptr %physchan_present65 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %physchan_present65, align 4
  %conv66 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv66)
  %cmp67 = icmp ult i32 %56, %conv66
  %hostdata71 = getelementptr i8, ptr %dev, i32 -256
  %61 = ptrtoint ptr %hostdata71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hostdata71, align 8
  br i1 %cmp67, label %if.then69, label %if.else73

if.then69:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  %dev_state72 = getelementptr inbounds %struct.myrs_pdev_info, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %dev_state72 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %new_state.0, ptr %dev_state72, align 2
  br label %if.end77

if.else73:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  %dev_state76 = getelementptr inbounds %struct.myrs_ldev_info, ptr %62, i32 0, i32 4
  %64 = ptrtoint ptr %dev_state76 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %new_state.0, ptr %dev_state76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else73, %if.then69
  %trunc189 = trunc i8 %new_state.0 to i6
  %65 = zext i6 %trunc189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.412)
  switch i6 %trunc189, label %if.end77.myrs_devstate_name.exit167_crit_edge [
    i6 -31, label %if.then.fold.split22.i161
    i6 1, label %if.end77.if.then.i165_crit_edge
    i6 9, label %if.then.fold.split19.i158
    i6 8, label %if.then.fold.split18.i157
  ]

if.end77.if.then.i165_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i165

if.end77.myrs_devstate_name.exit167_crit_edge:    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit167

if.then.fold.split18.i157:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i165

if.then.fold.split19.i158:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i165

if.then.fold.split22.i161:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i165

if.then.i165:                                     ; preds = %if.then.fold.split22.i161, %if.then.fold.split19.i158, %if.then.fold.split18.i157, %if.end77.if.then.i165_crit_edge
  %i.013.lcssa.i163 = phi i32 [ 5, %if.then.fold.split18.i157 ], [ 6, %if.then.fold.split19.i158 ], [ 9, %if.then.fold.split22.i161 ], [ 1, %if.end77.if.then.i165_crit_edge ]
  %name.i164 = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa.i163, i32 1
  %66 = ptrtoint ptr %name.i164 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name.i164, align 4
  br label %myrs_devstate_name.exit167

myrs_devstate_name.exit167:                       ; preds = %if.then.i165, %if.end77.myrs_devstate_name.exit167_crit_edge
  %retval.0.i166 = phi ptr [ %67, %if.then.i165 ], [ null, %if.end77.myrs_devstate_name.exit167_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef %retval.0.i166) #15
  br label %cleanup82

if.end79:                                         ; preds = %if.end49
  %conv59 = zext i8 %54 to i32
  %trunc = trunc i8 %new_state.0 to i6
  %68 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.413)
  switch i6 %trunc, label %if.end79.myrs_devstate_name.exit182_crit_edge [
    i6 -31, label %if.then.fold.split22.i176
    i6 1, label %if.end79.if.then.i180_crit_edge
    i6 9, label %if.then.fold.split19.i173
    i6 8, label %if.then.fold.split18.i172
  ]

if.end79.if.then.i180_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i180

if.end79.myrs_devstate_name.exit182_crit_edge:    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_devstate_name.exit182

if.then.fold.split18.i172:                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i180

if.then.fold.split19.i173:                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i180

if.then.fold.split22.i176:                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i180

if.then.i180:                                     ; preds = %if.then.fold.split22.i176, %if.then.fold.split19.i173, %if.then.fold.split18.i172, %if.end79.if.then.i180_crit_edge
  %i.013.lcssa.i178 = phi i32 [ 5, %if.then.fold.split18.i172 ], [ 6, %if.then.fold.split19.i173 ], [ 9, %if.then.fold.split22.i176 ], [ 1, %if.end79.if.then.i180_crit_edge ]
  %name.i179 = getelementptr %struct.myrs_devstate_name_entry, ptr @myrs_devstate_name_list, i32 %i.013.lcssa.i178, i32 1
  %69 = ptrtoint ptr %name.i179 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name.i179, align 4
  br label %myrs_devstate_name.exit182

myrs_devstate_name.exit182:                       ; preds = %if.then.i180, %if.end79.myrs_devstate_name.exit182_crit_edge
  %retval.0.i181 = phi ptr [ %70, %if.then.i180 ], [ null, %if.end79.myrs_devstate_name.exit182_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef %retval.0.i181, i32 noundef %conv59) #15
  br label %cleanup82

cleanup82:                                        ; preds = %myrs_devstate_name.exit182, %myrs_devstate_name.exit167, %cleanup46.thread, %myrs_translate_pdev.exit.cleanup82_crit_edge, %dma_map_single_attrs.exit.i.cleanup82_crit_edge, %dma_map_single_attrs.exit.thread.i, %myrs_devstate_name.exit, %if.else7.cleanup82_crit_edge
  %retval.2 = phi i32 [ %count, %myrs_devstate_name.exit167 ], [ -22, %myrs_devstate_name.exit182 ], [ -22, %if.else7.cleanup82_crit_edge ], [ %count, %cleanup46.thread ], [ -6, %myrs_translate_pdev.exit.cleanup82_crit_edge ], [ %count, %myrs_devstate_name.exit ], [ -6, %dma_map_single_attrs.exit.i.cleanup82_crit_edge ], [ -6, %dma_map_single_attrs.exit.thread.i ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.180, i32 9)
  br label %cleanup14

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %channel = getelementptr i8, ptr %dev, i32 -276
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %8, i32 0, i32 60
  %9 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp ult i32 %6, %conv
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %raid_level = getelementptr inbounds %struct.myrs_ldev_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %raid_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %raid_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %13 = icmp ult i8 %12, 16
  br i1 %13, label %switch.hole_check, label %if.then3.cleanup.thread_crit_edge

if.then3.cleanup.thread_crit_edge:                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

switch.hole_check:                                ; preds = %if.then3
  %switch.maskindex = zext i8 %12 to i16
  %switch.shifted = lshr i16 -1045, %switch.maskindex
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup.thread_crit_edge, label %switch.lookup

switch.hole_check.cleanup.thread_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %15 = sext i8 %12 to i32
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.raid_level_show, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name.i = getelementptr %struct.myrs_raid_level_name_entry, ptr @myrs_raid_level_name_list, i32 %switch.load, i32 1
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %switch.lookup.cleanup.thread_crit_edge, label %switch.lookup.if.end12_crit_edge

switch.lookup.if.end12_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

switch.lookup.cleanup.thread_crit_edge:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %switch.lookup.cleanup.thread_crit_edge, %switch.hole_check.cleanup.thread_crit_edge, %if.then3.cleanup.thread_crit_edge
  %dev_state = getelementptr inbounds %struct.myrs_ldev_info, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %dev_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dev_state, align 4
  %conv8 = zext i8 %20 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.181, i32 noundef %conv8)
  br label %cleanup14

if.end12:                                         ; preds = %switch.lookup.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %name.0 = phi ptr [ %18, %switch.lookup.if.end12_crit_edge ], [ @.str.202, %if.end.if.end12_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef nonnull %name.0)
  br label %cleanup14

cleanup14:                                        ; preds = %if.end12, %cleanup.thread, %if.then
  %retval.1 = phi i32 [ %call13, %if.end12 ], [ 8, %if.then ], [ %call9, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @myrs_get_ctlr_info(ptr noundef %cs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dcmd_blk = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38
  %ctlr_info = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 43
  %0 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr_info, align 4
  %ldev_present2 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %ldev_present2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ldev_present2, align 4
  %ldev_critical4 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %ldev_critical4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ldev_critical4, align 2
  %ldev_offline6 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %ldev_offline6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ldev_offline6, align 4
  %pdev = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !866

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %1, i32 noundef 1004) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %1 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1004, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i135 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev9, i32 noundef %retval.0.i135) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i135)
  %cmp.i = icmp eq i32 %retval.0.i135, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %dcmd_mutex = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #15
  %18 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 65)
  %19 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %dcmd_blk, align 8
  %opcode = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 32, ptr %opcode, align 2
  %control = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 10, ptr %control, align 1
  %dma_size = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %dma_size to i32
  call void @__asan_storeN_noabort(i32 %22, i32 3)
  store i24 1004, ptr %dma_size, align 4
  %ioctl_opcode = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 9
  %23 = ptrtoint ptr %ioctl_opcode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ioctl_opcode, align 1
  %dma_addr = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 11
  %conv = zext i32 %retval.0.i135 to i64
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %dma_addr, align 8
  %sge_count = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 0, i32 0, i32 11, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %sge_count to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1004, ptr %sge_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrs_get_ctlr_info.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrs_get_ctlr_info, %if.then23)) #15
          to label %do.end [label %if.then23], !srcloc !864

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %host = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrs_get_ctlr_info.__UNIQUE_ID_ddebug287, ptr noundef %shost_gendev, ptr noundef nonnull @.str.233) #15
  br label %do.end

do.end:                                           ; preds = %if.then23, %if.end
  tail call fastcc void @myrs_exec_cmd(ptr noundef %cs, ptr noundef %dcmd_blk)
  %status25 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 38, i32 1
  %28 = ptrtoint ptr %status25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status25, align 8
  tail call void @mutex_unlock(ptr noundef %dcmd_mutex) #15
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28, i32 noundef %retval.0.i135, i32 noundef 1004, i32 noundef 2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp eq i8 %29, 0
  br i1 %cmp, label %if.then31, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31:                                        ; preds = %do.end
  %32 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctlr_info, align 4
  %bg_init_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 110
  %34 = ptrtoint ptr %bg_init_active to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bg_init_active, align 4
  %conv33 = zext i16 %35 to i32
  %ldev_init_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 111
  %36 = ptrtoint ptr %ldev_init_active to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ldev_init_active, align 2
  %conv35 = zext i16 %37 to i32
  %add = add nuw nsw i32 %conv35, %conv33
  %pdev_init_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 112
  %38 = ptrtoint ptr %pdev_init_active to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pdev_init_active, align 4
  %conv37 = zext i16 %39 to i32
  %add38 = add nuw nsw i32 %add, %conv37
  %cc_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 113
  %40 = ptrtoint ptr %cc_active to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cc_active, align 2
  %conv40 = zext i16 %41 to i32
  %add41 = add nuw nsw i32 %add38, %conv40
  %rbld_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 114
  %42 = ptrtoint ptr %rbld_active to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rbld_active, align 4
  %conv43 = zext i16 %43 to i32
  %add44 = add nuw nsw i32 %add41, %conv43
  %exp_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 115
  %44 = ptrtoint ptr %exp_active to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %exp_active, align 2
  %conv46 = zext i16 %45 to i32
  %add47 = sub nsw i32 0, %conv46
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %add47)
  %cmp48.not = icmp eq i32 %add44, %add47
  br i1 %cmp48.not, label %if.then31.if.end51_crit_edge, label %if.then50

if.then31.if.end51_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then50:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %needs_update = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 11
  %46 = ptrtoint ptr %needs_update to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %needs_update, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then31.if.end51_crit_edge
  %ldev_present53 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 52
  %47 = ptrtoint ptr %ldev_present53 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ldev_present53, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %3)
  %cmp56.not = icmp eq i16 %48, %3
  br i1 %cmp56.not, label %lor.lhs.false, label %if.end51.do.end74_crit_edge

if.end51.do.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end74

lor.lhs.false:                                    ; preds = %if.end51
  %ldev_critical59 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 53
  %49 = ptrtoint ptr %ldev_critical59 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ldev_critical59, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %5)
  %cmp62.not = icmp eq i16 %50, %5
  br i1 %cmp62.not, label %lor.lhs.false64, label %lor.lhs.false.do.end74_crit_edge

lor.lhs.false.do.end74_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end74

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %ldev_offline66 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 54
  %51 = ptrtoint ptr %ldev_offline66 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ldev_offline66, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %7)
  %cmp69.not = icmp eq i16 %52, %7
  br i1 %cmp69.not, label %lor.lhs.false64.cleanup_crit_edge, label %lor.lhs.false64.do.end74_crit_edge

lor.lhs.false64.do.end74_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end74

lor.lhs.false64.cleanup_crit_edge:                ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end74:                                         ; preds = %lor.lhs.false64.do.end74_crit_edge, %lor.lhs.false.do.end74_crit_edge, %if.end51.do.end74_crit_edge
  %host75 = getelementptr inbounds %struct.myrs_hba, ptr %cs, i32 0, i32 7
  %53 = ptrtoint ptr %host75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host75, align 4
  %shost_gendev76 = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 49
  %ldev_critical78 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 53
  %55 = ptrtoint ptr %ldev_critical78 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ldev_critical78, align 2
  %conv79 = zext i16 %56 to i32
  %ldev_offline81 = getelementptr inbounds %struct.myrs_ctlr_info, ptr %33, i32 0, i32 54
  %57 = ptrtoint ptr %ldev_offline81 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ldev_offline81, align 4
  %conv82 = zext i16 %58 to i32
  %conv85 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev76, ptr noundef nonnull @.str.234, i32 noundef %conv79, i32 noundef %conv82, i32 noundef %conv85) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %lor.lhs.false64.cleanup_crit_edge, %do.end.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %lor.lhs.false64.cleanup_crit_edge ], [ 0, %do.end74 ], [ %29, %do.end.cleanup_crit_edge ], [ 2, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrs_monitor(ptr noundef %work) #2 align 64 {
entry:
  %msg_buf.i = alloca [128 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %host = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %ctlr_info = getelementptr i8, ptr %work, i32 540
  %2 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr_info, align 4
  %fwstat_buf = getelementptr i8, ptr %work, i32 532
  %4 = ptrtoint ptr %fwstat_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwstat_buf, align 4
  %epoch1 = getelementptr inbounds %struct.myrs_fwstat, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %epoch1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %epoch1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrs_monitor.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrs_monitor, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !864

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrs_monitor.__UNIQUE_ID_ddebug292, ptr noundef %shost_gendev, ptr noundef nonnull @.str.255) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mcmd_blk.i = getelementptr i8, ptr %work, i32 336
  %8 = call ptr @memset(ptr %mcmd_blk.i, i32 0, i32 65)
  %opcode.i = getelementptr i8, ptr %work, i32 338
  %9 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %opcode.i, align 2
  %10 = ptrtoint ptr %mcmd_blk.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %mcmd_blk.i, align 8
  %control.i = getelementptr i8, ptr %work, i32 339
  %11 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %control.i, align 1
  %dma_size.i = getelementptr i8, ptr %work, i32 340
  %12 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 3)
  store i24 128, ptr %dma_size.i, align 4
  %ioctl_opcode.i = getelementptr i8, ptr %work, i32 357
  %13 = ptrtoint ptr %ioctl_opcode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 17, ptr %ioctl_opcode.i, align 1
  %dma_addr.i = getelementptr i8, ptr %work, i32 368
  %fwstat_addr.i = getelementptr i8, ptr %work, i32 536
  %14 = ptrtoint ptr %fwstat_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fwstat_addr.i, align 8
  %conv.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %dma_addr.i, align 8
  %sge_count.i = getelementptr i8, ptr %work, i32 376
  %17 = ptrtoint ptr %sge_count.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 128, ptr %sge_count.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrs_get_fwstatus.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrs_monitor, %if.then.i)) #15
          to label %myrs_get_fwstatus.exit [label %if.then.i], !srcloc !864

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrs_get_fwstatus.__UNIQUE_ID_ddebug290, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.257) #15
  br label %myrs_get_fwstatus.exit

myrs_get_fwstatus.exit:                           ; preds = %if.then.i, %do.end
  tail call fastcc void @myrs_exec_cmd(ptr noundef %add.ptr, ptr noundef %mcmd_blk.i) #15
  %needs_update = getelementptr i8, ptr %work, i32 -28
  %20 = ptrtoint ptr %needs_update to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needs_update, align 4, !range !867
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %myrs_get_fwstatus.exit.if.end11_crit_edge, label %if.then7

myrs_get_fwstatus.exit.if.end11_crit_edge:        ; preds = %myrs_get_fwstatus.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then7:                                         ; preds = %myrs_get_fwstatus.exit
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %needs_update to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %needs_update, align 4
  %cinfo_mutex = getelementptr i8, ptr %work, i32 544
  tail call void @mutex_lock_nested(ptr noundef %cinfo_mutex, i32 noundef 0) #15
  %call9 = tail call fastcc zeroext i8 @myrs_get_ctlr_info(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %cinfo_mutex) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %myrs_get_fwstatus.exit.if.end11_crit_edge
  %23 = ptrtoint ptr %fwstat_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fwstat_buf, align 4
  %next_evseq = getelementptr inbounds %struct.myrs_fwstat, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %next_evseq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_evseq, align 4
  %next_evseq13 = getelementptr i8, ptr %work, i32 -32
  %27 = ptrtoint ptr %next_evseq13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_evseq13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not = icmp eq i32 %26, %28
  br i1 %cmp.not, label %if.end11.if.end23_crit_edge, label %if.then14

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  %event_buf = getelementptr i8, ptr %work, i32 636
  %29 = ptrtoint ptr %event_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %event_buf, align 4
  %pdev1.i = getelementptr i8, ptr %work, i32 -40
  %31 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev1.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #15
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then14
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !866

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #15
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #15
  br label %if.end23

dma_map_single_attrs.exit.i:                      ; preds = %if.then14
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %30, i32 noundef 64) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %30 to i32
  %sub.i.i = add i32 %38, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i
  %and.i.i = and i32 %38, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.end23_crit_edge, label %myrs_get_event.exit

dma_map_single_attrs.exit.i.if.end23_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

myrs_get_event.exit:                              ; preds = %dma_map_single_attrs.exit.i
  %39 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 32, ptr %opcode.i, align 2
  %40 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 3)
  store i24 64, ptr %dma_size.i, align 4
  %shr.i = lshr i32 %28, 16
  %conv.i133 = trunc i32 %shr.i to i16
  %evnum_upper.i = getelementptr i8, ptr %work, i32 352
  %41 = ptrtoint ptr %evnum_upper.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i133, ptr %evnum_upper.i, align 8
  %ctlr_num.i = getelementptr i8, ptr %work, i32 354
  %42 = ptrtoint ptr %ctlr_num.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ctlr_num.i, align 2
  %43 = ptrtoint ptr %ioctl_opcode.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 21, ptr %ioctl_opcode.i, align 1
  %conv5.i = trunc i32 %28 to i16
  %evnum_lower.i = getelementptr i8, ptr %work, i32 358
  %44 = ptrtoint ptr %evnum_lower.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i, ptr %evnum_lower.i, align 2
  %conv6.i = zext i32 %call41.i.i to i64
  %45 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv6.i, ptr %dma_addr.i, align 8
  %46 = ptrtoint ptr %sge_count.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 64, ptr %sge_count.i, align 8
  tail call fastcc void @myrs_exec_cmd(ptr noundef %add.ptr, ptr noundef %mcmd_blk.i) #15
  %status10.i = getelementptr i8, ptr %work, i32 400
  %47 = ptrtoint ptr %status10.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %status10.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %call41.i.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp17 = icmp eq i8 %48, 0
  br i1 %cmp17, label %if.then19, label %myrs_get_event.exit.if.end23_crit_edge

myrs_get_event.exit.if.end23_crit_edge:           ; preds = %myrs_get_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then19:                                        ; preds = %myrs_get_event.exit
  %49 = ptrtoint ptr %event_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %event_buf, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg_buf.i) #15
  %51 = call ptr @memset(ptr %msg_buf.i, i32 255, i32 128)
  %52 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #15
  %54 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %sshdr.i, align 8
  %ev_code1.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %ev_code1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ev_code1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %56)
  %cmp.i = icmp eq i32 %56, 28
  br i1 %cmp.i, label %if.then.i139, label %if.then19.if.end10.i_crit_edge

if.then19.if.end10.i_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then.i139:                                     ; preds = %if.then19
  %sense_data.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 9
  %call.i = call zeroext i1 @scsi_normalize_sense(ptr noundef %sense_data.i, i32 noundef 40, ptr noundef nonnull %sshdr.i) #15
  br i1 %call.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %sshdr.i, align 8
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 3
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %sense_info.sroa.0.0.copyload.i = load i8, ptr %arrayidx.i, align 1
  %sense_info.sroa.6.0.arrayidx.sroa_idx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 4
  %59 = ptrtoint ptr %sense_info.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %sense_info.sroa.6.0.copyload.i = load i8, ptr %sense_info.sroa.6.0.arrayidx.sroa_idx.i, align 1
  %sense_info.sroa.8.0.arrayidx.sroa_idx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 5
  %60 = ptrtoint ptr %sense_info.sroa.8.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %sense_info.sroa.8.0.copyload.i = load i8, ptr %sense_info.sroa.8.0.arrayidx.sroa_idx.i, align 1
  %sense_info.sroa.10.0.arrayidx.sroa_idx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 6
  %61 = ptrtoint ptr %sense_info.sroa.10.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %sense_info.sroa.10.0.copyload.i = load i8, ptr %sense_info.sroa.10.0.arrayidx.sroa_idx.i, align 1
  %arrayidx9.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 7
  %62 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %cmd_specific.sroa.0.0.copyload.i = load i8, ptr %arrayidx9.i, align 1
  %cmd_specific.sroa.6.0.arrayidx9.sroa_idx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 8
  %63 = ptrtoint ptr %cmd_specific.sroa.6.0.arrayidx9.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %cmd_specific.sroa.6.0.copyload.i = load i8, ptr %cmd_specific.sroa.6.0.arrayidx9.sroa_idx.i, align 1
  %cmd_specific.sroa.8.0.arrayidx9.sroa_idx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 9
  %64 = ptrtoint ptr %cmd_specific.sroa.8.0.arrayidx9.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %cmd_specific.sroa.8.0.copyload.i = load i8, ptr %cmd_specific.sroa.8.0.arrayidx9.sroa_idx.i, align 1
  %cmd_specific.sroa.10.0.arrayidx9.sroa_idx.i = getelementptr %struct.myrs_event, ptr %50, i32 0, i32 9, i32 10
  %65 = ptrtoint ptr %cmd_specific.sroa.10.0.arrayidx9.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %cmd_specific.sroa.10.0.copyload.i = load i8, ptr %cmd_specific.sroa.10.0.arrayidx9.sroa_idx.i, align 1
  %phi.cast.i = zext i8 %sense_info.sroa.0.0.copyload.i to i32
  %phi.cast258.i = zext i8 %sense_info.sroa.6.0.copyload.i to i32
  %phi.cast259.i = zext i8 %sense_info.sroa.8.0.copyload.i to i32
  %phi.cast260.i = zext i8 %sense_info.sroa.10.0.copyload.i to i32
  %phi.cast261.i = zext i8 %cmd_specific.sroa.0.0.copyload.i to i32
  %phi.cast262.i = zext i8 %cmd_specific.sroa.6.0.copyload.i to i32
  %phi.cast263.i = zext i8 %cmd_specific.sroa.8.0.copyload.i to i32
  %phi.cast264.i = zext i8 %cmd_specific.sroa.10.0.copyload.i to i32
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then2.i, %if.then19.if.end10.i_crit_edge
  %sense_info.sroa.0.0.i = phi i32 [ %phi.cast.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %sense_info.sroa.6.0.i = phi i32 [ %phi.cast258.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %sense_info.sroa.8.0.i = phi i32 [ %phi.cast259.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %sense_info.sroa.10.0.i = phi i32 [ %phi.cast260.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %cmd_specific.sroa.0.0.i = phi i32 [ %phi.cast261.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %cmd_specific.sroa.6.0.i = phi i32 [ %phi.cast262.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %cmd_specific.sroa.8.0.i = phi i32 [ %phi.cast263.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %cmd_specific.sroa.10.0.i = phi i32 [ %phi.cast264.i, %if.else.i ], [ 0, %if.then2.i ], [ 255, %if.then19.if.end10.i_crit_edge ]
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %66 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sense_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %67)
  %cmp11.i = icmp eq i8 %67, 9
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end10.i.if.end25.i_crit_edge

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %68 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %asc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %69)
  %switch.i = icmp slt i8 %69, -126
  br i1 %switch.i, label %if.then20.i, label %land.lhs.true.i.if.end25.i_crit_edge

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv22.i = zext i8 %69 to i32
  %sub.i = shl nuw nsw i32 %conv22.i, 8
  %shl.i = add nsw i32 %sub.i, -32768
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %70 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ascq.i, align 1
  %conv23.i = zext i8 %71 to i32
  %or.i = or i32 %shl.i, %conv23.i
  %72 = ptrtoint ptr %ev_code1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i, ptr %ev_code1.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %land.lhs.true.i.if.end25.i_crit_edge, %if.end10.i.if.end25.i_crit_edge
  %73 = ptrtoint ptr %ev_code1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ev_code1.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end25.i
  %ev_idx.0.i = phi i32 [ 0, %if.end25.i ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx26.i = getelementptr [115 x %struct.anon.103], ptr @myrs_ev_list, i32 0, i32 %ev_idx.0.i
  %75 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %74)
  %cmp29.i = icmp eq i32 %76, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp32.i = icmp eq i32 %76, 0
  %or.cond.i = or i1 %cmp32.i, %cmp29.i
  %inc.i = add i32 %ev_idx.0.i, 1
  br i1 %or.cond.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %ev_msg37.i = getelementptr [115 x %struct.anon.103], ptr @myrs_ev_list, i32 0, i32 %ev_idx.0.i, i32 1
  %77 = ptrtoint ptr %ev_msg37.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ev_msg37.i, align 4
  %arrayidx41.i = getelementptr i8, ptr %78, i32 2
  br i1 %cmp32.i, label %do.end.i, label %if.end46.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev.i140 = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.209, ptr noundef %shost_gendev.i140, ptr noundef nonnull @.str.258, i32 noundef %74) #18
  br label %myrs_log_event.exit

if.end46.i:                                       ; preds = %while.end.i
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.414)
  switch i8 %80, label %do.end185.i [
    i8 80, label %sw.bb.i
    i8 76, label %do.end74.i
    i8 77, label %do.end81.i
    i8 83, label %sw.bb87.i
    i8 69, label %sw.bb161.i
    i8 67, label %do.end180.i
  ]

sw.bb.i:                                          ; preds = %if.end46.i
  %channel.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 4
  %82 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %channel.i, align 1
  %conv48.i = zext i8 %83 to i32
  %target.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 5
  %84 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %target.i, align 2
  %conv49.i = zext i8 %85 to i32
  %call50.i = call ptr @scsi_device_lookup(ptr noundef %53, i32 noundef %conv48.i, i32 noundef %conv49.i, i64 noundef 0) #15
  %86 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %50, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %call50.i, ptr noundef null, ptr noundef nonnull @.str.260, i32 noundef %87, ptr noundef %arrayidx41.i) #15
  %tobool.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool.not.i, label %sw.bb.i.myrs_log_event.exit_crit_edge, label %land.lhs.true51.i

sw.bb.i.myrs_log_event.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

land.lhs.true51.i:                                ; preds = %sw.bb.i
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %call50.i, i32 0, i32 21
  %88 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hostdata.i, align 8
  %tobool52.not.i = icmp eq ptr %89, null
  br i1 %tobool52.not.i, label %land.lhs.true51.i.myrs_log_event.exit_crit_edge, label %land.lhs.true53.i

land.lhs.true51.i.myrs_log_event.exit_crit_edge:  ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

land.lhs.true53.i:                                ; preds = %land.lhs.true51.i
  %channel54.i = getelementptr inbounds %struct.scsi_device, ptr %call50.i, i32 0, i32 17
  %90 = ptrtoint ptr %channel54.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %channel54.i, align 4
  %92 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctlr_info, align 4
  %physchan_present.i = getelementptr inbounds %struct.myrs_ctlr_info, ptr %93, i32 0, i32 60
  %94 = ptrtoint ptr %physchan_present.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %physchan_present.i, align 4
  %conv55.i = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv55.i)
  %cmp56.i = icmp ult i32 %91, %conv55.i
  br i1 %cmp56.i, label %if.then58.i, label %land.lhs.true53.i.myrs_log_event.exit_crit_edge

land.lhs.true53.i.myrs_log_event.exit_crit_edge:  ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

if.then58.i:                                      ; preds = %land.lhs.true53.i
  %96 = ptrtoint ptr %ev_code1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ev_code1.i, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.415)
  switch i32 %97, label %if.then58.i.myrs_log_event.exit_crit_edge [
    i32 1, label %if.then58.i.sw.bb61.i_crit_edge
    i32 7, label %if.then58.i.sw.bb61.i_crit_edge152
    i32 2, label %sw.bb62.i
    i32 12, label %sw.bb64.i
    i32 14, label %sw.bb66.i
    i32 15, label %sw.bb68.i
  ]

if.then58.i.sw.bb61.i_crit_edge152:               ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb61.i

if.then58.i.sw.bb61.i_crit_edge:                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb61.i

if.then58.i.myrs_log_event.exit_crit_edge:        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

sw.bb61.i:                                        ; preds = %if.then58.i.sw.bb61.i_crit_edge, %if.then58.i.sw.bb61.i_crit_edge152
  %dev_state.i = getelementptr inbounds %struct.myrs_pdev_info, ptr %89, i32 0, i32 5
  %99 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %dev_state.i, align 2
  br label %myrs_log_event.exit

sw.bb62.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev_state63.i = getelementptr inbounds %struct.myrs_pdev_info, ptr %89, i32 0, i32 5
  %100 = ptrtoint ptr %dev_state63.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 33, ptr %dev_state63.i, align 2
  br label %myrs_log_event.exit

sw.bb64.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev_state65.i = getelementptr inbounds %struct.myrs_pdev_info, ptr %89, i32 0, i32 5
  %101 = ptrtoint ptr %dev_state65.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 8, ptr %dev_state65.i, align 2
  br label %myrs_log_event.exit

sw.bb66.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev_state67.i = getelementptr inbounds %struct.myrs_pdev_info, ptr %89, i32 0, i32 5
  %102 = ptrtoint ptr %dev_state67.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 4, ptr %dev_state67.i, align 2
  br label %myrs_log_event.exit

sw.bb68.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev_state69.i = getelementptr inbounds %struct.myrs_pdev_info, ptr %89, i32 0, i32 5
  %103 = ptrtoint ptr %dev_state69.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %dev_state69.i, align 2
  br label %myrs_log_event.exit

do.end74.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev75.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %104 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %50, align 4
  %lun.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 6
  %106 = ptrtoint ptr %lun.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %lun.i, align 1
  %conv77.i = zext i8 %107 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev75.i, ptr noundef nonnull @.str.262, i32 noundef %105, i32 noundef %conv77.i, ptr noundef %arrayidx41.i) #18
  %108 = ptrtoint ptr %needs_update to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %needs_update, align 4
  br label %myrs_log_event.exit

do.end81.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev82.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %109 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %50, align 4
  %lun84.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 6
  %111 = ptrtoint ptr %lun84.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %lun84.i, align 1
  %conv85.i = zext i8 %112 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev82.i, ptr noundef nonnull @.str.262, i32 noundef %110, i32 noundef %conv85.i, ptr noundef %arrayidx41.i) #18
  %113 = ptrtoint ptr %needs_update to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %needs_update, align 4
  br label %myrs_log_event.exit

sw.bb87.i:                                        ; preds = %if.end46.i
  %114 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.416)
  switch i8 %67, label %sw.bb87.i.do.end116.i_crit_edge [
    i8 0, label %sw.bb87.i.myrs_log_event.exit_crit_edge
    i8 2, label %land.lhs.true97.i
  ]

sw.bb87.i.myrs_log_event.exit_crit_edge:          ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

sw.bb87.i.do.end116.i_crit_edge:                  ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end116.i

land.lhs.true97.i:                                ; preds = %sw.bb87.i
  %asc98.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %115 = ptrtoint ptr %asc98.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %asc98.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %116)
  %cmp100.i = icmp eq i8 %116, 4
  br i1 %cmp100.i, label %land.lhs.true102.i, label %land.lhs.true97.i.do.end116.i_crit_edge

land.lhs.true97.i.do.end116.i_crit_edge:          ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end116.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %ascq103.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %117 = ptrtoint ptr %ascq103.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ascq103.i, align 1
  %.off265.i = add i8 %118, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off265.i)
  %switch266.i = icmp ult i8 %.off265.i, 2
  br i1 %switch266.i, label %land.lhs.true102.i.myrs_log_event.exit_crit_edge, label %land.lhs.true102.i.do.end116.i_crit_edge

land.lhs.true102.i.do.end116.i_crit_edge:         ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end116.i

land.lhs.true102.i.myrs_log_event.exit_crit_edge: ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

do.end116.i:                                      ; preds = %land.lhs.true102.i.do.end116.i_crit_edge, %land.lhs.true97.i.do.end116.i_crit_edge, %sw.bb87.i.do.end116.i_crit_edge
  %shost_gendev117.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %119 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %50, align 4
  %channel119.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 4
  %121 = ptrtoint ptr %channel119.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %channel119.i, align 1
  %conv120.i = zext i8 %122 to i32
  %target121.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 5
  %123 = ptrtoint ptr %target121.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %target121.i, align 2
  %conv122.i = zext i8 %124 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev117.i, ptr noundef nonnull @.str.267, i32 noundef %120, i32 noundef %conv120.i, i32 noundef %conv122.i, ptr noundef %arrayidx41.i) #18
  %125 = ptrtoint ptr %channel119.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %channel119.i, align 1
  %conv128.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %target121.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %target121.i, align 2
  %conv130.i = zext i8 %128 to i32
  %129 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %sense_key.i, align 1
  %conv132.i = zext i8 %130 to i32
  %asc133.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %131 = ptrtoint ptr %asc133.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %asc133.i, align 2
  %conv134.i = zext i8 %132 to i32
  %ascq135.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %133 = ptrtoint ptr %ascq135.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ascq135.i, align 1
  %conv136.i = zext i8 %134 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev117.i, ptr noundef nonnull @.str.270, i32 noundef %conv128.i, i32 noundef %conv130.i, i32 noundef %conv132.i, i32 noundef %conv134.i, i32 noundef %conv136.i) #18
  %135 = ptrtoint ptr %channel119.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %channel119.i, align 1
  %conv142.i = zext i8 %136 to i32
  %137 = ptrtoint ptr %target121.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %target121.i, align 2
  %conv144.i = zext i8 %138 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev117.i, ptr noundef nonnull @.str.273, i32 noundef %conv142.i, i32 noundef %conv144.i, i32 noundef %sense_info.sroa.0.0.i, i32 noundef %sense_info.sroa.6.0.i, i32 noundef %sense_info.sroa.8.0.i, i32 noundef %sense_info.sroa.10.0.i, i32 noundef %cmd_specific.sroa.0.0.i, i32 noundef %cmd_specific.sroa.6.0.i, i32 noundef %cmd_specific.sroa.8.0.i, i32 noundef %cmd_specific.sroa.10.0.i) #18
  br label %myrs_log_event.exit

sw.bb161.i:                                       ; preds = %if.end46.i
  %disable_enc_msg.i = getelementptr i8, ptr %work, i32 -27
  %139 = ptrtoint ptr %disable_enc_msg.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %disable_enc_msg.i, align 1, !range !867
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool162.not.i = icmp eq i8 %140, 0
  br i1 %tobool162.not.i, label %if.end164.i, label %sw.bb161.i.myrs_log_event.exit_crit_edge

sw.bb161.i.myrs_log_event.exit_crit_edge:         ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %myrs_log_event.exit

if.end164.i:                                      ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #17
  %lun166.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 6
  %141 = ptrtoint ptr %lun166.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %lun166.i, align 1
  %conv167.i = zext i8 %142 to i32
  %call168.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %msg_buf.i, ptr noundef %arrayidx41.i, i32 noundef %conv167.i) #15
  %shost_gendev172.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %143 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %50, align 4
  %target174.i = getelementptr inbounds %struct.myrs_event, ptr %50, i32 0, i32 5
  %145 = ptrtoint ptr %target174.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %target174.i, align 2
  %conv175.i = zext i8 %146 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev172.i, ptr noundef nonnull @.str.276, i32 noundef %144, i32 noundef %conv175.i, ptr noundef nonnull %msg_buf.i) #18
  br label %myrs_log_event.exit

do.end180.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev181.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %147 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %50, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev181.i, ptr noundef nonnull @.str.279, i32 noundef %148, ptr noundef %arrayidx41.i) #18
  br label %myrs_log_event.exit

do.end185.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %shost_gendev186.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %149 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %50, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev186.i, ptr noundef nonnull @.str.282, i32 noundef %150, i32 noundef %74) #18
  br label %myrs_log_event.exit

myrs_log_event.exit:                              ; preds = %do.end185.i, %do.end180.i, %if.end164.i, %sw.bb161.i.myrs_log_event.exit_crit_edge, %do.end116.i, %land.lhs.true102.i.myrs_log_event.exit_crit_edge, %sw.bb87.i.myrs_log_event.exit_crit_edge, %do.end81.i, %do.end74.i, %sw.bb68.i, %sw.bb66.i, %sw.bb64.i, %sw.bb62.i, %sw.bb61.i, %if.then58.i.myrs_log_event.exit_crit_edge, %land.lhs.true53.i.myrs_log_event.exit_crit_edge, %land.lhs.true51.i.myrs_log_event.exit_crit_edge, %sw.bb.i.myrs_log_event.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg_buf.i) #15
  %151 = ptrtoint ptr %next_evseq13 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %next_evseq13, align 8
  %inc = add i32 %152, 1
  store i32 %inc, ptr %next_evseq13, align 8
  br label %if.end23

if.end23:                                         ; preds = %myrs_log_event.exit, %myrs_get_event.exit.if.end23_crit_edge, %dma_map_single_attrs.exit.i.if.end23_crit_edge, %dma_map_single_attrs.exit.thread.i, %if.end11.if.end23_crit_edge
  %cmp82 = phi i1 [ true, %dma_map_single_attrs.exit.thread.i ], [ true, %dma_map_single_attrs.exit.i.if.end23_crit_edge ], [ true, %myrs_get_event.exit.if.end23_crit_edge ], [ false, %myrs_log_event.exit ], [ true, %if.end11.if.end23_crit_edge ]
  %interval.0 = phi i32 [ 1000, %dma_map_single_attrs.exit.thread.i ], [ 1000, %dma_map_single_attrs.exit.i.if.end23_crit_edge ], [ 1000, %myrs_get_event.exit.if.end23_crit_edge ], [ 1, %myrs_log_event.exit ], [ 1000, %if.end11.if.end23_crit_edge ]
  %secondary_monitor_time = getelementptr i8, ptr %work, i32 104
  %153 = ptrtoint ptr %secondary_monitor_time to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %secondary_monitor_time, align 8
  %add = add i32 %154, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %155 = load volatile i32, ptr @jiffies, align 128
  %sub24 = sub i32 %add, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp25 = icmp slt i32 %sub24, 0
  br i1 %cmp25, label %if.then27, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %156 = load volatile i32, ptr @jiffies, align 128
  %157 = ptrtoint ptr %secondary_monitor_time to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %secondary_monitor_time, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23.if.end29_crit_edge
  %bg_init_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 110
  %158 = ptrtoint ptr %bg_init_active to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %bg_init_active, align 4
  %conv30 = zext i16 %159 to i32
  %ldev_init_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 111
  %160 = ptrtoint ptr %ldev_init_active to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %ldev_init_active, align 2
  %conv31 = zext i16 %161 to i32
  %add32 = add nuw nsw i32 %conv31, %conv30
  %pdev_init_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 112
  %162 = ptrtoint ptr %pdev_init_active to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %pdev_init_active, align 4
  %conv33 = zext i16 %163 to i32
  %add34 = add nuw nsw i32 %add32, %conv33
  %cc_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 113
  %164 = ptrtoint ptr %cc_active to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %cc_active, align 2
  %conv35 = zext i16 %165 to i32
  %add36 = add nuw nsw i32 %add34, %conv35
  %rbld_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 114
  %166 = ptrtoint ptr %rbld_active to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %rbld_active, align 4
  %conv37 = zext i16 %167 to i32
  %add38 = add nuw nsw i32 %add36, %conv37
  %exp_active = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 115
  %168 = ptrtoint ptr %exp_active to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %exp_active, align 2
  %conv39 = zext i16 %169 to i32
  %add40 = sub nsw i32 0, %conv39
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %add40)
  %cmp41.not = icmp eq i32 %add38, %add40
  br i1 %cmp41.not, label %if.end29.if.end61_crit_edge, label %if.then43

if.end29.if.end61_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then43:                                        ; preds = %if.end29
  %call44 = call ptr @__scsi_iterate_devices(ptr noundef %1, ptr noundef null) #15
  %tobool45.not150 = icmp eq ptr %call44, null
  br i1 %tobool45.not150, label %if.then43.for.end_crit_edge, label %for.body.lr.ph

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then43
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %3, i32 0, i32 60
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sdev.0151 = phi ptr [ %call44, %for.body.lr.ph ], [ %call59, %cleanup.for.body_crit_edge ]
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev.0151, i32 0, i32 17
  %170 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %channel, align 4
  %172 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %physchan_present, align 4
  %conv46 = zext i8 %173 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %conv46)
  %cmp47 = icmp ult i32 %171, %conv46
  br i1 %cmp47, label %for.body.cleanup_crit_edge, label %if.end50

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end50:                                         ; preds = %for.body
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev.0151, i32 0, i32 21
  %174 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hostdata, align 8
  %tobool51.not = icmp eq ptr %175, null
  br i1 %tobool51.not, label %if.end50.cleanup_crit_edge, label %if.end53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end53:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %ldev_num54 = getelementptr inbounds %struct.myrs_ldev_info, ptr %175, i32 0, i32 12
  %176 = ptrtoint ptr %ldev_num54 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %ldev_num54, align 8
  %call57 = call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %add.ptr, i16 noundef zeroext %177, ptr noundef nonnull %175)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end50.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call59 = call ptr @__scsi_iterate_devices(ptr noundef %1, ptr noundef nonnull %sdev.0151) #15
  %tobool45.not = icmp eq ptr %call59, null
  br i1 %tobool45.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then43.for.end_crit_edge
  %178 = ptrtoint ptr %needs_update to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %needs_update, align 4
  br label %if.end61

if.end61:                                         ; preds = %for.end, %if.end29.if.end61_crit_edge
  %epoch62 = getelementptr i8, ptr %work, i32 -36
  %179 = ptrtoint ptr %epoch62 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %epoch62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %180)
  %cmp63 = icmp eq i32 %7, %180
  br i1 %cmp63, label %land.lhs.true, label %if.end61.if.end81_crit_edge

if.end61.if.end81_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end61
  %181 = ptrtoint ptr %fwstat_buf to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fwstat_buf, align 4
  %next_evseq66 = getelementptr inbounds %struct.myrs_fwstat, ptr %182, i32 0, i32 10
  %183 = ptrtoint ptr %next_evseq66 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %next_evseq66, align 4
  %185 = ptrtoint ptr %next_evseq13 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %next_evseq13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %186)
  %cmp68 = icmp eq i32 %184, %186
  br i1 %cmp68, label %land.lhs.true70, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

land.lhs.true70:                                  ; preds = %land.lhs.true
  %187 = ptrtoint ptr %needs_update to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %needs_update, align 4, !range !867
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp74 = icmp eq i8 %188, 0
  br i1 %cmp74, label %land.lhs.true70.if.then84_crit_edge, label %lor.lhs.false

land.lhs.true70.if.then84_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then84

lor.lhs.false:                                    ; preds = %land.lhs.true70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %189 = load volatile i32, ptr @jiffies, align 128
  %primary_monitor_time = getelementptr i8, ptr %work, i32 100
  %190 = ptrtoint ptr %primary_monitor_time to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %primary_monitor_time, align 4
  %add76.neg = add i32 %189, -1000
  %sub77 = sub i32 %add76.neg, %191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub77)
  %cmp78 = icmp slt i32 %sub77, 0
  %brmerge = or i1 %cmp82, %cmp78
  %.mux = select i1 %cmp78, i32 6000, i32 %interval.0
  br i1 %brmerge, label %lor.lhs.false.if.then84_crit_edge, label %lor.lhs.false.if.end86_crit_edge

lor.lhs.false.if.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

lor.lhs.false.if.then84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then84

if.end81:                                         ; preds = %land.lhs.true.if.end81_crit_edge, %if.end61.if.end81_crit_edge
  br i1 %cmp82, label %if.end81.if.then84_crit_edge, label %if.end81.if.end86_crit_edge

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.end81.if.then84_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then84

if.then84:                                        ; preds = %if.end81.if.then84_crit_edge, %lor.lhs.false.if.then84_crit_edge, %land.lhs.true70.if.then84_crit_edge
  %interval.1148 = phi i32 [ %interval.0, %if.end81.if.then84_crit_edge ], [ 6000, %land.lhs.true70.if.then84_crit_edge ], [ %.mux, %lor.lhs.false.if.then84_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %192 = load volatile i32, ptr @jiffies, align 128
  %primary_monitor_time85 = getelementptr i8, ptr %work, i32 100
  %193 = ptrtoint ptr %primary_monitor_time85 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %primary_monitor_time85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81.if.end86_crit_edge, %lor.lhs.false.if.end86_crit_edge
  %interval.1147 = phi i32 [ %interval.1148, %if.then84 ], [ %interval.0, %if.end81.if.end86_crit_edge ], [ %interval.0, %lor.lhs.false.if.end86_crit_edge ]
  %work_q = getelementptr i8, ptr %work, i32 -24
  %194 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %work_q, align 8
  %call.i141 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %195, ptr noundef %work, i32 noundef %interval.1147) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raid_class_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @myrs_is_raid(ptr nocapture noundef readonly %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %channel = getelementptr i8, ptr %dev, i32 -276
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp uge i32 %3, %conv
  %cond = zext i1 %cmp.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrs_get_resync(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %channel = getelementptr i8, ptr %dev, i32 -276
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ult i32 %5, %conv
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rbld_active = getelementptr inbounds %struct.myrs_ldev_info, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %rbld_active to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %rbld_active, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.end.if.end194_crit_edge, label %if.then3

if.end.if.end194_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end194

if.then3:                                         ; preds = %if.end
  %ldev_num4 = getelementptr inbounds %struct.myrs_ldev_info, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %ldev_num4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ldev_num4, align 8
  %call5 = tail call fastcc zeroext i8 @myrs_get_ldev_info(ptr noundef %hostdata.i, i16 noundef zeroext %13, ptr noundef nonnull %3)
  %rbld_lba = getelementptr inbounds %struct.myrs_ldev_info, ptr %3, i32 0, i32 32
  %14 = ptrtoint ptr %rbld_lba to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rbld_lba, align 8
  %mul = mul i64 %15, 100
  %cfg_devsize = getelementptr inbounds %struct.myrs_ldev_info, ptr %3, i32 0, i32 24
  %16 = ptrtoint ptr %cfg_devsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_devsize, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp178 = icmp ult i64 %mul, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !866

if.then182:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %conv183 = trunc i64 %mul to i32
  %div186 = udiv i32 %conv183, %17
  br label %if.end194

if.else188:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %mul) #20, !srcloc !868
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t314 = trunc i64 %asmresult1.i to i32
  br label %if.end194

if.end194:                                        ; preds = %if.else188, %if.then182, %if.end.if.end194_crit_edge
  %percent_complete.0.off0 = phi i32 [ 0, %if.end.if.end194_crit_edge ], [ %div186, %if.then182 ], [ %extract.t314, %if.else188 ]
  %19 = load ptr, ptr @myrs_raid_template, align 4
  %call.i = tail call ptr @attribute_container_find_class_device(ptr noundef %19, ptr noundef %dev) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %raid_set_resync.exit, !prof !863

do.body4.i:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/raid_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #15, !srcloc !869
  unreachable

raid_set_resync.exit:                             ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %resync.i = getelementptr inbounds %struct.raid_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %resync.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %percent_complete.0.off0, ptr %resync.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %raid_set_resync.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrs_get_state(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %channel = getelementptr i8, ptr %dev, i32 -276
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %ctlr_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %ctlr_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr_info, align 4
  %physchan_present = getelementptr inbounds %struct.myrs_ctlr_info, ptr %7, i32 0, i32 60
  %8 = ptrtoint ptr %physchan_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %physchan_present, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ult i32 %5, %conv
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_state = getelementptr inbounds %struct.myrs_ldev_info, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dev_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_state, align 4
  %switch.tableidx = add i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 11
  br i1 %12, label %switch.lookup, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.myrs_get_state, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %state.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ 4, %if.else.if.end_crit_edge ]
  %15 = load ptr, ptr @myrs_raid_template, align 4
  %call.i = tail call ptr @attribute_container_find_class_device(ptr noundef %15, ptr noundef %dev) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %raid_set_state.exit, !prof !863

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/raid_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #15, !srcloc !870
  unreachable

raid_set_state.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.raid_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %state.0, ptr %state.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 414)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 414)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !193, !195, !197, !198, !199, !200, !201, !203, !204, !205, !207, !208, !210, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !238, !239, !241, !242, !244, !246, !247, !249, !251, !252, !254, !256, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !284, !286, !287, !289, !290, !292, !294, !295, !297, !299, !300, !302, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !330, !331, !333, !335, !336, !338, !340, !342, !344, !346, !348, !350, !351, !352, !354, !356, !357, !359, !361, !363, !365, !367, !369, !371, !373, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !426, !427, !428, !430, !432, !434, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !477, !478, !479, !480, !482, !484, !485, !486, !488, !490, !491, !492, !494, !496, !498, !499, !500, !502, !503, !504, !505, !507, !508, !509, !511, !512, !513, !515, !516, !517, !518, !520, !522, !523, !524, !526, !527, !529, !530, !531, !533, !534, !535, !537, !538, !539, !541, !542, !543, !545, !546, !547, !549, !550, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !786, !787, !788}
!llvm.module.flags = !{!790, !791, !792, !793, !794, !795, !796, !797}
!llvm.ident = !{!798}

!0 = !{ptr @__initcall__kmod_myrs__293_3163_myrs_init_module6, !1, !"__initcall__kmod_myrs__293_3163_myrs_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/myrs.c", i32 3163, i32 1}
!2 = !{ptr @__exitcall_myrs_cleanup_module, !3, !"__exitcall_myrs_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/scsi/myrs.c", i32 3164, i32 1}
!4 = !{ptr @__UNIQUE_ID_description294, !5, !"__UNIQUE_ID_description294", i1 false, i1 false}
!5 = !{!"../drivers/scsi/myrs.c", i32 3166, i32 1}
!6 = !{ptr @__UNIQUE_ID_author295, !7, !"__UNIQUE_ID_author295", i1 false, i1 false}
!7 = !{!"../drivers/scsi/myrs.c", i32 3167, i32 1}
!8 = !{ptr @__UNIQUE_ID_file296, !9, !"__UNIQUE_ID_file296", i1 false, i1 false}
!9 = !{!"../drivers/scsi/myrs.c", i32 3168, i32 1}
!10 = !{ptr @__UNIQUE_ID_license297, !9, !"__UNIQUE_ID_license297", i1 false, i1 false}
!11 = !{ptr @myrs_raid_template, !12, !"myrs_raid_template", i1 false, i1 false}
!12 = !{!"../drivers/scsi/myrs.c", i32 28, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/myrs.c", i32 3136, i32 11}
!15 = !{ptr @myrs_pci_driver, !16, !"myrs_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/scsi/myrs.c", i32 3135, i32 26}
!17 = !{ptr @myrs_id_table, !18, !"myrs_id_table", i1 false, i1 false}
!18 = !{!"../drivers/scsi/myrs.c", i32 3117, i32 35}
!19 = !{ptr @DAC960_GEM_privdata, !20, !"DAC960_GEM_privdata", i1 false, i1 false}
!20 = !{!"../drivers/scsi/myrs.c", i32 2621, i32 29}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/myrs.c", i32 2555, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @DAC960_GEM_hw_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @DAC960_GEM_hw_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/myrs.c", i32 2560, i32 3}
!31 = !{ptr @DAC960_GEM_hw_init._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @DAC960_GEM_hw_init._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/myrs.c", i32 2350, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @myrs_err_status._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @myrs_err_status._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/myrs.c", i32 2355, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @myrs_err_status._entry.12, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @myrs_err_status._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/myrs.c", i32 2358, i32 3}
!46 = !{ptr @myrs_err_status._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @myrs_err_status._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/myrs.c", i32 2361, i32 3}
!50 = !{ptr @myrs_err_status._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @myrs_err_status._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/myrs.c", i32 2364, i32 3}
!54 = !{ptr @myrs_err_status._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @myrs_err_status._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/myrs.c", i32 2367, i32 3}
!58 = !{ptr @myrs_err_status._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @myrs_err_status._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/myrs.c", i32 2371, i32 3}
!62 = !{ptr @myrs_err_status._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @myrs_err_status._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/myrs.c", i32 2374, i32 3}
!66 = !{ptr @myrs_err_status._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @myrs_err_status._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/myrs.c", i32 2377, i32 3}
!70 = !{ptr @myrs_err_status._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @myrs_err_status._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/myrs.c", i32 2380, i32 3}
!74 = !{ptr @myrs_err_status._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @myrs_err_status._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/myrs.c", i32 2383, i32 3}
!78 = !{ptr @myrs_err_status._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @myrs_err_status._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/myrs.c", i32 494, i32 4}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @myrs_enable_mmio_mbox._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @myrs_enable_mmio_mbox._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/myrs.c", i32 509, i32 3}
!87 = !{ptr @myrs_enable_mmio_mbox._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @myrs_enable_mmio_mbox._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/myrs.c", i32 524, i32 3}
!91 = !{ptr @myrs_enable_mmio_mbox._entry.48, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @myrs_enable_mmio_mbox._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/myrs.c", i32 537, i32 3}
!95 = !{ptr @myrs_enable_mmio_mbox._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @myrs_enable_mmio_mbox._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/myrs.c", i32 572, i32 3}
!99 = !{ptr @myrs_enable_mmio_mbox._entry.54, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @myrs_enable_mmio_mbox._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/myrs.c", i32 2602, i32 4}
!103 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @DAC960_GEM_intr_handler._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @DAC960_GEM_intr_handler._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @DAC960_BA_privdata, !107, !"DAC960_BA_privdata", i1 false, i1 false}
!107 = !{!"../drivers/scsi/myrs.c", i32 2840, i32 29}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/myrs.c", i32 2774, i32 3}
!110 = !{ptr @DAC960_BA_hw_init._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @DAC960_BA_hw_init._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @DAC960_BA_hw_init._entry.60, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/scsi/myrs.c", i32 2779, i32 3}
!114 = !{ptr @DAC960_BA_hw_init._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/myrs.c", i32 2821, i32 4}
!117 = !{ptr @DAC960_BA_intr_handler._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @DAC960_BA_intr_handler._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @DAC960_LP_privdata, !120, !"DAC960_LP_privdata", i1 false, i1 false}
!120 = !{!"../drivers/scsi/myrs.c", i32 3059, i32 29}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/myrs.c", i32 2992, i32 3}
!123 = !{ptr @DAC960_LP_hw_init._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @DAC960_LP_hw_init._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @DAC960_LP_hw_init._entry.64, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/scsi/myrs.c", i32 2997, i32 3}
!127 = !{ptr @DAC960_LP_hw_init._entry_ptr.65, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/myrs.c", i32 3040, i32 4}
!130 = !{ptr @DAC960_LP_intr_handler._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @DAC960_LP_intr_handler._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/myrs.c", i32 3091, i32 3}
!134 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @myrs_probe._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @myrs_probe._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/myrs.c", i32 2295, i32 3}
!139 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @myrs_detect._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @myrs_detect._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @myrs_detect.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/scsi/myrs.c", i32 2306, i32 2}
!144 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/myrs.c", i32 2312, i32 3}
!147 = !{ptr @myrs_detect._entry.72, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @myrs_detect._entry_ptr.74, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/myrs.c", i32 2323, i32 3}
!151 = !{ptr @myrs_detect._entry.75, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @myrs_detect._entry_ptr.77, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/myrs.c", i32 2331, i32 2}
!155 = !{ptr @myrs_detect._entry.78, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @myrs_detect._entry_ptr.80, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @myrs_alloc_host.__key, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/scsi/myrs.c", i32 1946, i32 2}
!159 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @myrs_alloc_host.__key.82, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/scsi/myrs.c", i32 1947, i32 2}
!162 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/myrs.c", i32 1920, i32 12}
!165 = !{ptr @myrs_template, !166, !"myrs_template", i1 false, i1 false}
!166 = !{!"../drivers/scsi/myrs.c", i32 1918, i32 34}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/myrs.c", i32 1817, i32 4}
!169 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @myrs_slave_alloc.__UNIQUE_ID_ddebug291, !168, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/myrs.c", i32 1860, i32 5}
!173 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/myrs.c", i32 248, i32 2}
!177 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @myrs_get_ldev_info.__UNIQUE_ID_ddebug288, !176, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/myrs.c", i32 265, i32 4}
!181 = !{ptr @myrs_get_ldev_info._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @myrs_get_ldev_info._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/myrs.c", i32 272, i32 4}
!185 = !{ptr @myrs_get_ldev_info._entry.93, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @myrs_get_ldev_info._entry_ptr.95, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/myrs.c", i32 279, i32 11}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/myrs.c", i32 283, i32 11}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/myrs.c", i32 287, i32 11}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/myrs.c", i32 291, i32 11}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/myrs.c", i32 294, i32 4}
!197 = !{ptr @myrs_get_ldev_info._entry.100, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @myrs_get_ldev_info._entry_ptr.102, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!201 = distinct !{null, !202, !"__already_done", i1 false, i1 false}
!202 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!203 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @init_completion.__key, !206, !"__key", i1 false, i1 false}
!206 = !{!"../include/linux/completion.h", i32 87, i32 2}
!207 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/myrs.c", i32 149, i32 2}
!210 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @myrs_report_progress._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @myrs_report_progress._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/myrs.c", i32 34, i32 30}
!215 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/myrs.c", i32 35, i32 24}
!217 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/myrs.c", i32 36, i32 25}
!219 = !{ptr @.str.113, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/myrs.c", i32 37, i32 25}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/myrs.c", i32 38, i32 36}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/myrs.c", i32 39, i32 25}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/myrs.c", i32 40, i32 26}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/myrs.c", i32 41, i32 32}
!229 = !{ptr @.str.118, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/myrs.c", i32 42, i32 35}
!231 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/myrs.c", i32 43, i32 25}
!233 = !{ptr @myrs_devstate_name_list, !234, !"myrs_devstate_name_list", i1 false, i1 false}
!234 = !{!"../drivers/scsi/myrs.c", i32 33, i32 3}
!235 = !{ptr @.str.120, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/myrs.c", i32 336, i32 2}
!237 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @myrs_get_pdev_info.__UNIQUE_ID_ddebug289, !236, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!239 = !{ptr @myrs_shost_groups, !240, !"myrs_shost_groups", i1 false, i1 false}
!240 = !{!"../drivers/scsi/myrs.c", i32 1527, i32 1}
!241 = !{ptr @myrs_shost_group, !240, !"myrs_shost_group", i1 false, i1 false}
!242 = !{ptr @myrs_shost_attrs, !243, !"myrs_shost_attrs", i1 false, i1 false}
!243 = !{!"../drivers/scsi/myrs.c", i32 1513, i32 26}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/myrs.c", i32 1308, i32 8}
!246 = !{ptr @dev_attr_serial, !245, !"dev_attr_serial", i1 false, i1 false}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/myrs.c", i32 1306, i32 27}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/myrs.c", i32 1318, i32 8}
!251 = !{ptr @dev_attr_ctlr_num, !250, !"dev_attr_ctlr_num", i1 false, i1 false}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/myrs.c", i32 1316, i32 27}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/myrs.c", i32 1383, i32 8}
!256 = !{ptr @dev_attr_processor, !255, !"dev_attr_processor", i1 false, i1 false}
!257 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/myrs.c", i32 1364, i32 27}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/myrs.c", i32 1371, i32 27}
!261 = !{ptr @.str.129, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/myrs.c", i32 1375, i32 27}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/myrs.c", i32 1379, i32 27}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/myrs.c", i32 1324, i32 25}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/myrs.c", i32 1325, i32 25}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/myrs.c", i32 1326, i32 25}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/myrs.c", i32 1327, i32 25}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/myrs.c", i32 1328, i32 27}
!275 = !{ptr @.str.136, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/myrs.c", i32 1329, i32 28}
!277 = !{ptr @.str.137, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/myrs.c", i32 1330, i32 25}
!279 = !{ptr @myrs_cpu_type_names, !280, !"myrs_cpu_type_names", i1 false, i1 false}
!280 = !{!"../drivers/scsi/myrs.c", i32 1323, i32 3}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/myrs.c", i32 1393, i32 8}
!283 = !{ptr @dev_attr_model, !282, !"dev_attr_model", i1 false, i1 false}
!284 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/myrs.c", i32 1403, i32 8}
!286 = !{ptr @dev_attr_ctlr_type, !285, !"dev_attr_ctlr_type", i1 false, i1 false}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/myrs.c", i32 1413, i32 8}
!289 = !{ptr @dev_attr_cache_size, !288, !"dev_attr_cache_size", i1 false, i1 false}
!290 = !{ptr @.str.141, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/myrs.c", i32 1411, i32 26}
!292 = !{ptr @.str.142, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/myrs.c", i32 1426, i32 8}
!294 = !{ptr @dev_attr_firmware, !293, !"dev_attr_firmware", i1 false, i1 false}
!295 = !{ptr @.str.143, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/myrs.c", i32 1421, i32 27}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/myrs.c", i32 1464, i32 8}
!299 = !{ptr @dev_attr_discovery, !298, !"dev_attr_discovery", i1 false, i1 false}
!300 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/myrs.c", i32 1450, i32 3}
!302 = !{ptr @.str.146, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @discovery_store._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @discovery_store._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.148, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/myrs.c", i32 1455, i32 2}
!307 = !{ptr @discovery_store._entry.147, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @discovery_store._entry_ptr.149, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/myrs.c", i32 1460, i32 2}
!311 = !{ptr @discovery_store._entry.150, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @discovery_store._entry_ptr.152, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/myrs.c", i32 1483, i32 8}
!315 = !{ptr @dev_attr_flush_cache, !314, !"dev_attr_flush_cache", i1 false, i1 false}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/myrs.c", i32 1476, i32 3}
!318 = !{ptr @.str.155, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @flush_cache_store._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @flush_cache_store._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/myrs.c", i32 1479, i32 2}
!323 = !{ptr @flush_cache_store._entry.156, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @flush_cache_store._entry_ptr.158, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/myrs.c", i32 1511, i32 8}
!327 = !{ptr @dev_attr_disable_enclosure_messages, !326, !"dev_attr_disable_enclosure_messages", i1 false, i1 false}
!328 = !{ptr @myrs_sdev_groups, !329, !"myrs_sdev_groups", i1 false, i1 false}
!329 = !{!"../drivers/scsi/myrs.c", i32 1295, i32 1}
!330 = !{ptr @myrs_sdev_group, !329, !"myrs_sdev_group", i1 false, i1 false}
!331 = !{ptr @myrs_sdev_attrs, !332, !"myrs_sdev_attrs", i1 false, i1 false}
!332 = !{!"../drivers/scsi/myrs.c", i32 1287, i32 26}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/myrs.c", i32 1285, i32 8}
!335 = !{ptr @dev_attr_consistency_check, !334, !"dev_attr_consistency_check", i1 false, i1 false}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/myrs.c", i32 1193, i32 28}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/myrs.c", i32 1201, i32 28}
!340 = !{ptr @.str.163, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/myrs.c", i32 1205, i32 28}
!342 = !{ptr @.str.164, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/myrs.c", i32 1234, i32 3}
!344 = !{ptr @.str.165, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/myrs.c", i32 1240, i32 3}
!346 = !{ptr @.str.166, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/myrs.c", i32 1246, i32 3}
!348 = !{ptr @.str.167, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/myrs.c", i32 1273, i32 3}
!350 = !{ptr @.str.168, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.169, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.170, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/myrs.c", i32 1278, i32 3}
!354 = !{ptr @.str.171, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/myrs.c", i32 1182, i32 8}
!356 = !{ptr @dev_attr_rebuild, !355, !"dev_attr_rebuild", i1 false, i1 false}
!357 = !{ptr @.str.172, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/myrs.c", i32 1089, i32 28}
!359 = !{ptr @.str.173, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/myrs.c", i32 1101, i32 28}
!361 = !{ptr @.str.174, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/myrs.c", i32 1105, i32 28}
!363 = !{ptr @.str.175, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/myrs.c", i32 1141, i32 3}
!365 = !{ptr @.str.176, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/myrs.c", i32 1146, i32 3}
!367 = !{ptr @.str.177, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/myrs.c", i32 1170, i32 3}
!369 = !{ptr @.str.178, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/myrs.c", i32 1175, i32 3}
!371 = !{ptr @.str.179, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/myrs.c", i32 1051, i32 8}
!373 = !{ptr @dev_attr_raid_state, !372, !"dev_attr_raid_state", i1 false, i1 false}
!374 = !{ptr @.str.180, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/myrs.c", i32 942, i32 28}
!376 = !{ptr @.str.181, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/myrs.c", i32 952, i32 28}
!378 = !{ptr @.str.182, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/myrs.c", i32 980, i32 20}
!380 = !{ptr @.str.183, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/myrs.c", i32 981, i32 20}
!382 = !{ptr @.str.184, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/myrs.c", i32 983, i32 25}
!384 = !{ptr @.str.185, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/myrs.c", i32 985, i32 25}
!386 = !{ptr @.str.186, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/myrs.c", i32 996, i32 4}
!388 = !{ptr @.str.187, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/myrs.c", i32 1041, i32 3}
!390 = !{ptr @.str.188, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/myrs.c", i32 1046, i32 2}
!392 = !{ptr @.str.189, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/myrs.c", i32 1077, i32 8}
!394 = !{ptr @dev_attr_raid_level, !393, !"dev_attr_raid_level", i1 false, i1 false}
!395 = !{ptr @.str.190, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/myrs.c", i32 63, i32 22}
!397 = !{ptr @.str.191, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/myrs.c", i32 64, i32 22}
!399 = !{ptr @.str.192, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/myrs.c", i32 65, i32 22}
!401 = !{ptr @.str.193, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/myrs.c", i32 66, i32 22}
!403 = !{ptr @.str.194, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/myrs.c", i32 67, i32 22}
!405 = !{ptr @.str.195, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/myrs.c", i32 68, i32 20}
!407 = !{ptr @.str.196, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/myrs.c", i32 69, i32 23}
!409 = !{ptr @.str.197, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/myrs.c", i32 70, i32 23}
!411 = !{ptr @.str.198, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/scsi/myrs.c", i32 71, i32 23}
!413 = !{ptr @.str.199, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/myrs.c", i32 72, i32 20}
!415 = !{ptr @.str.200, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/myrs.c", i32 73, i32 23}
!417 = !{ptr @.str.201, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/myrs.c", i32 74, i32 22}
!419 = !{ptr @.str.202, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/myrs.c", i32 75, i32 24}
!421 = !{ptr @myrs_raid_level_name_list, !422, !"myrs_raid_level_name_list", i1 false, i1 false}
!422 = !{!"../drivers/scsi/myrs.c", i32 62, i32 3}
!423 = !{ptr @.str.203, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/myrs.c", i32 594, i32 3}
!425 = !{ptr @.str.204, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @myrs_get_config._entry, !424, !"_entry", i1 false, i1 false}
!427 = !{ptr @myrs_get_config._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!428 = distinct !{null, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/myrs.c", i32 608, i32 25}
!430 = !{ptr @.str.206, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/myrs.c", i32 611, i32 22}
!432 = !{ptr @.str.208, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/myrs.c", i32 617, i32 3}
!434 = !{ptr @.str.209, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @myrs_get_config._entry.207, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @myrs_get_config._entry_ptr.210, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.212, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/myrs.c", i32 650, i32 2}
!439 = !{ptr @myrs_get_config._entry.211, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @myrs_get_config._entry_ptr.213, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.215, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/myrs.c", i32 652, i32 2}
!443 = !{ptr @myrs_get_config._entry.214, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @myrs_get_config._entry_ptr.216, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.218, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/myrs.c", i32 656, i32 2}
!447 = !{ptr @myrs_get_config._entry.217, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @myrs_get_config._entry_ptr.219, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.221, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/myrs.c", i32 660, i32 2}
!451 = !{ptr @myrs_get_config._entry.220, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @myrs_get_config._entry_ptr.222, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.224, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/myrs.c", i32 666, i32 3}
!455 = !{ptr @myrs_get_config._entry.223, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @myrs_get_config._entry_ptr.225, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.227, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/myrs.c", i32 670, i32 2}
!459 = !{ptr @myrs_get_config._entry.226, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @myrs_get_config._entry_ptr.228, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.230, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/myrs.c", i32 675, i32 2}
!463 = !{ptr @myrs_get_config._entry.229, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @myrs_get_config._entry_ptr.231, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.232, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/myrs.c", i32 189, i32 2}
!467 = !{ptr @.str.233, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @myrs_get_ctlr_info.__UNIQUE_ID_ddebug287, !466, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!469 = !{ptr @.str.234, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/myrs.c", i32 206, i32 4}
!471 = !{ptr @myrs_get_ctlr_info._entry, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @myrs_get_ctlr_info._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.235, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/myrs.c", i32 2178, i32 32}
!475 = !{ptr @.str.236, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/scsi/myrs.c", i32 2181, i32 3}
!477 = !{ptr @.str.237, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @myrs_create_mempools._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @myrs_create_mempools._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.238, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/scsi/myrs.c", i32 2186, i32 35}
!482 = !{ptr @.str.240, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/scsi/myrs.c", i32 2191, i32 3}
!484 = !{ptr @myrs_create_mempools._entry.239, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @myrs_create_mempools._entry_ptr.241, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.242, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/scsi/myrs.c", i32 2196, i32 34}
!488 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/scsi/myrs.c", i32 2204, i32 3}
!490 = !{ptr @myrs_create_mempools._entry.243, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @myrs_create_mempools._entry_ptr.245, !489, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.246, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/scsi/myrs.c", i32 2210, i32 4}
!494 = !{ptr @.str.247, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/myrs.c", i32 2211, i32 15}
!496 = !{ptr @.str.249, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/myrs.c", i32 2219, i32 3}
!498 = !{ptr @myrs_create_mempools._entry.248, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @myrs_create_mempools._entry_ptr.250, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @myrs_create_mempools.__key, !501, !"__key", i1 false, i1 false}
!501 = !{!"../drivers/scsi/myrs.c", i32 2225, i32 2}
!502 = !{ptr @.str.251, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @myrs_create_mempools.__key.252, !501, !"__key", i1 false, i1 false}
!504 = !{ptr @.str.253, !501, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @.str.254, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/scsi/myrs.c", i32 2112, i32 2}
!507 = !{ptr @.str.255, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @myrs_monitor.__UNIQUE_ID_ddebug292, !506, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!509 = !{ptr @.str.256, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/scsi/myrs.c", i32 471, i32 2}
!511 = !{ptr @.str.257, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @myrs_get_fwstatus.__UNIQUE_ID_ddebug290, !510, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!513 = !{ptr @.str.258, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/scsi/myrs.c", i32 844, i32 3}
!515 = !{ptr @.str.259, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @myrs_log_event._entry, !514, !"_entry", i1 false, i1 false}
!517 = !{ptr @myrs_log_event._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.260, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/myrs.c", i32 853, i32 3}
!520 = !{ptr @.str.262, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/scsi/myrs.c", i32 880, i32 3}
!522 = !{ptr @myrs_log_event._entry.261, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @myrs_log_event._entry_ptr.263, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @myrs_log_event._entry.264, !525, !"_entry", i1 false, i1 false}
!525 = !{!"../drivers/scsi/myrs.c", i32 886, i32 3}
!526 = !{ptr @myrs_log_event._entry_ptr.265, !525, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.267, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/scsi/myrs.c", i32 897, i32 3}
!529 = !{ptr @myrs_log_event._entry.266, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @myrs_log_event._entry_ptr.268, !528, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.270, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/myrs.c", i32 900, i32 3}
!533 = !{ptr @myrs_log_event._entry.269, !532, !"_entry", i1 false, i1 false}
!534 = !{ptr @myrs_log_event._entry_ptr.271, !532, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @.str.273, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/scsi/myrs.c", i32 904, i32 3}
!537 = !{ptr @myrs_log_event._entry.272, !536, !"_entry", i1 false, i1 false}
!538 = !{ptr @myrs_log_event._entry_ptr.274, !536, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.276, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/myrs.c", i32 916, i32 3}
!541 = !{ptr @myrs_log_event._entry.275, !540, !"_entry", i1 false, i1 false}
!542 = !{ptr @myrs_log_event._entry_ptr.277, !540, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.279, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/myrs.c", i32 920, i32 3}
!545 = !{ptr @myrs_log_event._entry.278, !544, !"_entry", i1 false, i1 false}
!546 = !{ptr @myrs_log_event._entry_ptr.280, !544, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.282, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/myrs.c", i32 924, i32 3}
!549 = !{ptr @myrs_log_event._entry.281, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @myrs_log_event._entry_ptr.283, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.284, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/scsi/myrs.c", i32 690, i32 12}
!553 = !{ptr @.str.285, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/scsi/myrs.c", i32 691, i32 12}
!555 = !{ptr @.str.286, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/scsi/myrs.c", i32 692, i32 12}
!557 = !{ptr @.str.287, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/myrs.c", i32 693, i32 12}
!559 = !{ptr @.str.288, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/scsi/myrs.c", i32 694, i32 12}
!561 = !{ptr @.str.289, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/scsi/myrs.c", i32 695, i32 12}
!563 = !{ptr @.str.290, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/scsi/myrs.c", i32 696, i32 12}
!565 = !{ptr @.str.291, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/myrs.c", i32 697, i32 12}
!567 = !{ptr @.str.292, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/scsi/myrs.c", i32 698, i32 12}
!569 = !{ptr @.str.293, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/scsi/myrs.c", i32 699, i32 12}
!571 = !{ptr @.str.294, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/scsi/myrs.c", i32 700, i32 12}
!573 = !{ptr @.str.295, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/scsi/myrs.c", i32 701, i32 12}
!575 = !{ptr @.str.296, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/scsi/myrs.c", i32 702, i32 12}
!577 = !{ptr @.str.297, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/myrs.c", i32 703, i32 12}
!579 = !{ptr @.str.298, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/scsi/myrs.c", i32 704, i32 12}
!581 = !{ptr @.str.299, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/myrs.c", i32 705, i32 12}
!583 = !{ptr @.str.300, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/scsi/myrs.c", i32 706, i32 12}
!585 = !{ptr @.str.301, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/myrs.c", i32 707, i32 12}
!587 = !{ptr @.str.302, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/scsi/myrs.c", i32 708, i32 12}
!589 = !{ptr @.str.303, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/scsi/myrs.c", i32 709, i32 12}
!591 = !{ptr @.str.304, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/scsi/myrs.c", i32 710, i32 12}
!593 = !{ptr @.str.305, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/scsi/myrs.c", i32 711, i32 12}
!595 = !{ptr @.str.306, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/scsi/myrs.c", i32 712, i32 12}
!597 = !{ptr @.str.307, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/scsi/myrs.c", i32 713, i32 12}
!599 = !{ptr @.str.308, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/scsi/myrs.c", i32 714, i32 12}
!601 = !{ptr @.str.309, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/myrs.c", i32 715, i32 12}
!603 = !{ptr @.str.310, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/scsi/myrs.c", i32 716, i32 12}
!605 = !{ptr @.str.311, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/scsi/myrs.c", i32 717, i32 12}
!607 = !{ptr @.str.312, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/scsi/myrs.c", i32 718, i32 12}
!609 = !{ptr @.str.313, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/scsi/myrs.c", i32 719, i32 12}
!611 = !{ptr @.str.314, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/myrs.c", i32 720, i32 12}
!613 = !{ptr @.str.315, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/scsi/myrs.c", i32 721, i32 12}
!615 = !{ptr @.str.316, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/scsi/myrs.c", i32 722, i32 12}
!617 = !{ptr @.str.317, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/scsi/myrs.c", i32 723, i32 12}
!619 = !{ptr @.str.318, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/scsi/myrs.c", i32 724, i32 12}
!621 = !{ptr @.str.319, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/scsi/myrs.c", i32 725, i32 12}
!623 = !{ptr @.str.320, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/scsi/myrs.c", i32 726, i32 12}
!625 = !{ptr @.str.321, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/scsi/myrs.c", i32 727, i32 12}
!627 = !{ptr @.str.322, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/scsi/myrs.c", i32 728, i32 12}
!629 = !{ptr @.str.323, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/scsi/myrs.c", i32 729, i32 12}
!631 = !{ptr @.str.324, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/scsi/myrs.c", i32 730, i32 12}
!633 = !{ptr @.str.325, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/scsi/myrs.c", i32 731, i32 12}
!635 = !{ptr @.str.326, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/scsi/myrs.c", i32 732, i32 12}
!637 = !{ptr @.str.327, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/scsi/myrs.c", i32 733, i32 12}
!639 = !{ptr @.str.328, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/scsi/myrs.c", i32 734, i32 12}
!641 = !{ptr @.str.329, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/scsi/myrs.c", i32 735, i32 12}
!643 = !{ptr @.str.330, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/scsi/myrs.c", i32 736, i32 12}
!645 = !{ptr @.str.331, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/scsi/myrs.c", i32 737, i32 12}
!647 = !{ptr @.str.332, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/scsi/myrs.c", i32 738, i32 12}
!649 = !{ptr @.str.333, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/scsi/myrs.c", i32 739, i32 12}
!651 = !{ptr @.str.334, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/scsi/myrs.c", i32 740, i32 12}
!653 = !{ptr @.str.335, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/scsi/myrs.c", i32 742, i32 12}
!655 = !{ptr @.str.336, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/scsi/myrs.c", i32 743, i32 12}
!657 = !{ptr @.str.337, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/scsi/myrs.c", i32 744, i32 12}
!659 = !{ptr @.str.338, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/scsi/myrs.c", i32 745, i32 12}
!661 = !{ptr @.str.339, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/scsi/myrs.c", i32 746, i32 12}
!663 = !{ptr @.str.340, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/scsi/myrs.c", i32 747, i32 12}
!665 = !{ptr @.str.341, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/scsi/myrs.c", i32 748, i32 12}
!667 = !{ptr @.str.342, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/scsi/myrs.c", i32 749, i32 12}
!669 = !{ptr @.str.343, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/scsi/myrs.c", i32 750, i32 12}
!671 = !{ptr @.str.344, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/scsi/myrs.c", i32 751, i32 12}
!673 = !{ptr @.str.345, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/scsi/myrs.c", i32 752, i32 12}
!675 = !{ptr @.str.346, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/scsi/myrs.c", i32 753, i32 12}
!677 = !{ptr @.str.347, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/scsi/myrs.c", i32 754, i32 12}
!679 = !{ptr @.str.348, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/scsi/myrs.c", i32 755, i32 12}
!681 = !{ptr @.str.349, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/scsi/myrs.c", i32 756, i32 12}
!683 = !{ptr @.str.350, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/scsi/myrs.c", i32 757, i32 12}
!685 = !{ptr @.str.351, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/scsi/myrs.c", i32 758, i32 12}
!687 = !{ptr @.str.352, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/scsi/myrs.c", i32 759, i32 12}
!689 = !{ptr @.str.353, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/scsi/myrs.c", i32 760, i32 12}
!691 = !{ptr @.str.354, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/scsi/myrs.c", i32 761, i32 12}
!693 = !{ptr @.str.355, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/scsi/myrs.c", i32 762, i32 12}
!695 = !{ptr @.str.356, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/scsi/myrs.c", i32 763, i32 12}
!697 = !{ptr @.str.357, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/scsi/myrs.c", i32 764, i32 12}
!699 = !{ptr @.str.358, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/scsi/myrs.c", i32 765, i32 12}
!701 = !{ptr @.str.359, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/scsi/myrs.c", i32 766, i32 12}
!703 = !{ptr @.str.360, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/scsi/myrs.c", i32 767, i32 12}
!705 = !{ptr @.str.361, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/scsi/myrs.c", i32 768, i32 12}
!707 = !{ptr @.str.362, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/scsi/myrs.c", i32 769, i32 12}
!709 = !{ptr @.str.363, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/scsi/myrs.c", i32 770, i32 12}
!711 = !{ptr @.str.364, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/scsi/myrs.c", i32 771, i32 12}
!713 = !{ptr @.str.365, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/scsi/myrs.c", i32 772, i32 12}
!715 = !{ptr @.str.366, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/scsi/myrs.c", i32 773, i32 12}
!717 = !{ptr @.str.367, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/scsi/myrs.c", i32 774, i32 12}
!719 = !{ptr @.str.368, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/scsi/myrs.c", i32 775, i32 12}
!721 = !{ptr @.str.369, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/scsi/myrs.c", i32 777, i32 12}
!723 = !{ptr @.str.370, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/scsi/myrs.c", i32 778, i32 12}
!725 = !{ptr @.str.371, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../drivers/scsi/myrs.c", i32 779, i32 12}
!727 = !{ptr @.str.372, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/scsi/myrs.c", i32 780, i32 12}
!729 = !{ptr @.str.373, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../drivers/scsi/myrs.c", i32 781, i32 12}
!731 = !{ptr @.str.374, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/scsi/myrs.c", i32 782, i32 12}
!733 = !{ptr @.str.375, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/scsi/myrs.c", i32 783, i32 12}
!735 = !{ptr @.str.376, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/scsi/myrs.c", i32 784, i32 12}
!737 = !{ptr @.str.377, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/scsi/myrs.c", i32 785, i32 12}
!739 = !{ptr @.str.378, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/scsi/myrs.c", i32 786, i32 12}
!741 = !{ptr @.str.379, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/scsi/myrs.c", i32 787, i32 12}
!743 = !{ptr @.str.380, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../drivers/scsi/myrs.c", i32 788, i32 12}
!745 = !{ptr @.str.381, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../drivers/scsi/myrs.c", i32 789, i32 12}
!747 = !{ptr @.str.382, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/scsi/myrs.c", i32 791, i32 12}
!749 = !{ptr @.str.383, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../drivers/scsi/myrs.c", i32 792, i32 12}
!751 = !{ptr @.str.384, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../drivers/scsi/myrs.c", i32 793, i32 12}
!753 = !{ptr @.str.385, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../drivers/scsi/myrs.c", i32 794, i32 12}
!755 = !{ptr @.str.386, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/scsi/myrs.c", i32 795, i32 12}
!757 = !{ptr @.str.387, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/scsi/myrs.c", i32 796, i32 12}
!759 = !{ptr @.str.388, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../drivers/scsi/myrs.c", i32 797, i32 12}
!761 = !{ptr @.str.389, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../drivers/scsi/myrs.c", i32 798, i32 12}
!763 = !{ptr @.str.390, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../drivers/scsi/myrs.c", i32 799, i32 12}
!765 = !{ptr @.str.391, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/scsi/myrs.c", i32 800, i32 12}
!767 = !{ptr @.str.392, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../drivers/scsi/myrs.c", i32 801, i32 12}
!769 = !{ptr @.str.393, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/scsi/myrs.c", i32 802, i32 12}
!771 = !{ptr @.str.394, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../drivers/scsi/myrs.c", i32 804, i32 12}
!773 = !{ptr @.str.395, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../drivers/scsi/myrs.c", i32 805, i32 12}
!775 = !{ptr @.str.396, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../drivers/scsi/myrs.c", i32 806, i32 12}
!777 = !{ptr @.str.397, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../drivers/scsi/myrs.c", i32 807, i32 12}
!779 = !{ptr @.str.398, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../drivers/scsi/myrs.c", i32 808, i32 7}
!781 = !{ptr @myrs_ev_list, !782, !"myrs_ev_list", i1 false, i1 false}
!782 = !{!"../drivers/scsi/myrs.c", i32 688, i32 3}
!783 = !{ptr @.str.399, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../drivers/scsi/myrs.c", i32 3110, i32 2}
!785 = !{ptr @.str.400, !784, !"<string literal>", i1 false, i1 false}
!786 = !{ptr @myrs_remove._entry, !784, !"_entry", i1 false, i1 false}
!787 = !{ptr @myrs_remove._entry_ptr, !784, !"_entry_ptr", i1 false, i1 false}
!788 = !{ptr @myrs_raid_functions, !789, !"myrs_raid_functions", i1 false, i1 false}
!789 = !{!"../drivers/scsi/myrs.c", i32 2031, i32 38}
!790 = !{i32 1, !"wchar_size", i32 2}
!791 = !{i32 1, !"min_enum_size", i32 4}
!792 = !{i32 8, !"branch-target-enforcement", i32 0}
!793 = !{i32 8, !"sign-return-address", i32 0}
!794 = !{i32 8, !"sign-return-address-all", i32 0}
!795 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!796 = !{i32 7, !"uwtable", i32 1}
!797 = !{i32 7, !"frame-pointer", i32 2}
!798 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!799 = !{i64 2155319901}
!800 = !{i64 4712847}
!801 = !{i64 2155313177}
!802 = !{i64 4713265}
!803 = !{i64 2155316343}
!804 = !{i64 2155322183}
!805 = !{i64 4713045}
!806 = !{i64 2155322584}
!807 = !{i64 2155322852}
!808 = !{i64 2155323093}
!809 = !{i64 2155313882}
!810 = !{i64 2155319302}
!811 = !{i64 2155317718}
!812 = !{i64 927505}
!813 = !{!"auto-init"}
!814 = !{ptr @DAC960_BA_mbox_init, ptr @DAC960_GEM_mbox_init, ptr @DAC960_LP_mbox_init}
!815 = !{i64 2155315496}
!816 = !{i64 2155144504}
!817 = !{i64 2155144905}
!818 = !{i64 2155312472}
!819 = !{i64 2155318629}
!820 = !{i64 4712427}
!821 = !{i64 2155321452}
!822 = !{i64 2155316985}
!823 = !{i64 2155320413}
!824 = !{i64 2155320556}
!825 = !{i64 2155314586}
!826 = !{i64 2155340313}
!827 = !{i64 4712650}
!828 = !{i64 2155336227}
!829 = !{i64 2155338064}
!830 = !{i64 2155342160}
!831 = !{i64 2155342436}
!832 = !{i64 2155342702}
!833 = !{i64 2155342930}
!834 = !{i64 2155336690}
!835 = !{i64 2155339845}
!836 = !{i64 2155338943}
!837 = !{i64 2155337638}
!838 = !{i64 2155335764}
!839 = !{i64 2155339435}
!840 = !{i64 2155341733}
!841 = !{i64 2155338468}
!842 = !{i64 2155340698}
!843 = !{i64 2155340841}
!844 = !{i64 2155337153}
!845 = !{i64 2155355939}
!846 = !{i64 2155351853}
!847 = !{i64 2155353690}
!848 = !{i64 2155357786}
!849 = !{i64 2155358062}
!850 = !{i64 2155358328}
!851 = !{i64 2155358556}
!852 = !{i64 2155352316}
!853 = !{i64 2155355471}
!854 = !{i64 2155354569}
!855 = !{i64 2155353264}
!856 = !{i64 2155351390}
!857 = !{i64 2155355061}
!858 = !{i64 2155357359}
!859 = !{i64 2155354094}
!860 = !{i64 2155356324}
!861 = !{i64 2155356467}
!862 = !{i64 2155352779}
!863 = !{!"branch_weights", i32 1, i32 2000}
!864 = !{i64 2149042594, i64 2149042599, i64 2149042612, i64 2149042656, i64 2149042690, i64 2149042711}
!865 = !{i64 2154523198, i64 2154523688, i64 2154523235, i64 2154523291, i64 2154523325, i64 2154523349, i64 2154523390, i64 2154523411, i64 2154523439, i64 2154523473}
!866 = !{!"branch_weights", i32 2000, i32 1}
!867 = !{i8 0, i8 2}
!868 = !{i64 2148275641, i64 2148275921, i64 2148276255, i64 2148276589}
!869 = !{i64 2154527510, i64 2154528000, i64 2154527547, i64 2154527603, i64 2154527637, i64 2154527661, i64 2154527702, i64 2154527723, i64 2154527751, i64 2154527785}
!870 = !{i64 2154535903, i64 2154536393, i64 2154535940, i64 2154535996, i64 2154536030, i64 2154536054, i64 2154536095, i64 2154536116, i64 2154536144, i64 2154536178}
