; ModuleID = '/llk/IR_all_yes/drivers/scsi/myrb.c_pt.bc'
source_filename = "../drivers/scsi/myrb.c"
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
%struct.myrb_privdata = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.myrb_devstate_name_entry = type { i8, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.myrb_raidlevel_name_entry = type { i8, ptr }
%struct.raid_function_template = type { ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.anon.85 = type { i8, i8, [6 x i8], i32, [4 x i8] }
%struct.myrb_enquiry2 = type { %struct.anon.103, %struct.anon.104, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.anon.105, i16, i16, i16, [12 x i8], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, [8 x i8], i8, [11 x i8], i16, i16, i16, i16, i16, %struct.anon.106, [5 x i8], i16, i8, i8, %struct.anon.107, [8 x i8] }
%struct.anon.103 = type { i8, i8, i8, i8 }
%struct.anon.104 = type { i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8 }
%struct.anon.106 = type { i8 }
%struct.anon.107 = type { i32 }
%struct.myrb_enquiry = type { i8, [3 x i8], [32 x i32], i16, %struct.anon.95, i8, i8, i8, i8, i8, i8, i8, i16, i8, [3 x i8], i8, i8, i8, %struct.anon.96, [21 x %struct.anon.97], [62 x i8] }
%struct.anon.95 = type { i8 }
%struct.anon.96 = type { i8 }
%struct.anon.97 = type { i8, i8 }
%struct.myrb_hba = type { i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, [20 x i8], %struct.delayed_work, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], [12 x i8], i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.myrb_cmdblk, %struct.myrb_cmdblk, %struct.mutex, ptr, i32, ptr, i32, i16, ptr, i32, %struct.myrb_bgi_status, %struct.mutex }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox, i16, ptr, ptr, i32, ptr, i32 }
%union.myrb_cmd_mbox = type { [4 x i32] }
%struct.myrb_bgi_status = type { i32, i32, [12 x i8], i32, i8, i8, [6 x i8] }
%struct.myrb_config2 = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x %struct.anon.108], i8, i8, i8, i8, i8, [29 x i8], i8, [9 x i8], i16 }
%struct.anon.108 = type { i8 }
%struct.myrb_stat_mbox = type { i8, i8, i16 }
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
%struct.anon.94 = type { i8, i8, i8, i8, i32, i32, [4 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.myrb_dcdb = type { i16, i16, i32, i8, i8, [12 x i8], [64 x i8], i8, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.execute_work = type { %struct.work_struct }
%struct.anon.92 = type { i8, i8, %struct.anon.93, i32, i32, i8, [3 x i8] }
%struct.anon.93 = type { i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.myrb_ldev_info = type { i32, i8, [3 x i8] }
%struct.myrb_sge = type { i32, i32 }
%struct.raid_data = type { %struct.list_head, i32, i32, i32, i32 }
%struct.myrb_pdev_state = type <{ i16, i8, i8, i32, i8, i32, i16 }>
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.anon.88 = type { i8, i8, i8, i8, i8, [3 x i8], i32, [4 x i8] }
%struct.myrb_rbld_progress = type { i32, i32, i32 }
%struct.anon.90 = type { i8, i8, [2 x i8], i8, [3 x i8], i32, [4 x i8] }
%struct.anon.87 = type { i8, i8, [5 x i8], i8, [8 x i8] }
%struct.anon.86 = type { i8, i8, i8, [5 x i8], i32, [4 x i8] }
%struct.myrb_error_entry = type { i8, i8, i8, i8 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.myrb_log_entry = type { i8, i8, i16, i16, [26 x i8] }

@myrb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @myrb_id_table, ptr @myrb_probe, ptr @myrb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@myrb_raid_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_myrb__307_3552_myrb_init_module6 = internal global ptr @myrb_init_module, section ".initcall6.init", align 4
@__exitcall_myrb_cleanup_module = internal global ptr @myrb_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [78 x i8] c"myrb.description=Mylex DAC960/AcceleRAID/eXtremeRAID driver (Block interface)\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [44 x i8] c"myrb.author=Hannes Reinecke <hare@suse.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [28 x i8] c"myrb.file=drivers/scsi/myrb\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [17 x i8] c"myrb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"myrb\00", [27 x i8] zeroinitializer }, align 32
@myrb_id_table = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4113, i32 4197, i32 4201, i32 32, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_LA_privdata to i32), i32 0 }, %struct.pci_device_id { i32 4201, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_PG_privdata to i32), i32 0 }, %struct.pci_device_id { i32 4201, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_PD_privdata to i32), i32 0 }, %struct.pci_device_id { i32 4201, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @DAC960_P_privdata to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@DAC960_LA_privdata = internal global { %struct.myrb_privdata, [20 x i8] } { %struct.myrb_privdata { ptr @DAC960_LA_hw_init, ptr @DAC960_LA_intr_handler, i32 128 }, [20 x i8] zeroinitializer }, align 32
@DAC960_PG_privdata = internal global { %struct.myrb_privdata, [20 x i8] } { %struct.myrb_privdata { ptr @DAC960_PG_hw_init, ptr @DAC960_PG_intr_handler, i32 8192 }, [20 x i8] zeroinitializer }, align 32
@DAC960_PD_privdata = internal global { %struct.myrb_privdata, [20 x i8] } { %struct.myrb_privdata { ptr @DAC960_PD_hw_init, ptr @DAC960_PD_intr_handler, i32 128 }, [20 x i8] zeroinitializer }, align 32
@DAC960_P_privdata = internal global { %struct.myrb_privdata, [20 x i8] } { %struct.myrb_privdata { ptr @DAC960_P_hw_init, ptr @DAC960_P_intr_handler, i32 128 }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@DAC960_LA_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Timeout waiting for Controller Initialisation\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC960_LA_hw_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/scsi/myrb.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@DAC960_LA_hw_init._entry_ptr = internal global ptr @DAC960_LA_hw_init._entry, section ".printk_index", align 4
@DAC960_LA_hw_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to Enable Memory Mailbox Interface\0A\00", [53 x i8] zeroinitializer }, align 32
@DAC960_LA_hw_init._entry_ptr.8 = internal global ptr @DAC960_LA_hw_init._entry.6, section ".printk_index", align 4
@myrb_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 2470, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Physical Device %d:%d Not Responding\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"myrb_err_status\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr = internal global ptr @myrb_err_status._entry, section ".printk_index", align 4
@myrb_err_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 2473, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Spinning Up Drives\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.15 = internal global ptr @myrb_err_status._entry.12, section ".printk_index", align 4
@myrb_err_status._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.3, i32 2476, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Configuration Checksum Error\0A\00", [34 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.18 = internal global ptr @myrb_err_status._entry.16, section ".printk_index", align 4
@myrb_err_status._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.3, i32 2479, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mirror Race Recovery Failed\0A\00", [35 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.21 = internal global ptr @myrb_err_status._entry.19, section ".printk_index", align 4
@myrb_err_status._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 2482, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Mirror Race Recovery In Progress\0A\00", [62 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.24 = internal global ptr @myrb_err_status._entry.22, section ".printk_index", align 4
@myrb_err_status._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.3, i32 2486, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Physical Device %d:%d COD Mismatch\0A\00", [60 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.27 = internal global ptr @myrb_err_status._entry.25, section ".printk_index", align 4
@myrb_err_status._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.3, i32 2489, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Logical Drive Installation Aborted\0A\00", [60 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.30 = internal global ptr @myrb_err_status._entry.28, section ".printk_index", align 4
@myrb_err_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.3, i32 2492, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Mirror Race On A Critical Logical Drive\0A\00", [55 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.33 = internal global ptr @myrb_err_status._entry.31, section ".printk_index", align 4
@myrb_err_status._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.3, i32 2495, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"New Controller Configuration Found\0A\00", [60 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.36 = internal global ptr @myrb_err_status._entry.34, section ".printk_index", align 4
@myrb_err_status._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str.3, i32 2498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fatal Memory Parity Error\0A\00", [37 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.39 = internal global ptr @myrb_err_status._entry.37, section ".printk_index", align 4
@myrb_err_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.10, ptr @.str.3, i32 2502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown Initialization Error %02X\0A\00", [61 x i8] zeroinitializer }, align 32
@myrb_err_status._entry_ptr.42 = internal global ptr @myrb_err_status._entry.40, section ".printk_index", align 4
@myrb_enable_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA mask out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"myrb_enable_mmio\00", [47 x i8] zeroinitializer }, align 32
@myrb_enable_mmio._entry_ptr = internal global ptr @myrb_enable_mmio._entry, section ".printk_index", align 4
@myrb_enable_mmio._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 896, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable mailbox, statux %02X\0A\00", [57 x i8] zeroinitializer }, align 32
@myrb_enable_mmio._entry_ptr.47 = internal global ptr @myrb_enable_mmio._entry.45, section ".printk_index", align 4
@DAC960_LA_mbox_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 2643, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timeout waiting for empty mailbox\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC960_LA_mbox_init\00", [44 x i8] zeroinitializer }, align 32
@DAC960_LA_mbox_init._entry_ptr = internal global ptr @DAC960_LA_mbox_init._entry, section ".printk_index", align 4
@DAC960_LA_mbox_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 2656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout waiting for mailbox status\0A\00", [60 x i8] zeroinitializer }, align 32
@DAC960_LA_mbox_init._entry_ptr.52 = internal global ptr @DAC960_LA_mbox_init._entry.50, section ".printk_index", align 4
@DAC960_LA_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 2736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unhandled command completion %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC960_LA_intr_handler\00", [41 x i8] zeroinitializer }, align 32
@DAC960_LA_intr_handler._entry_ptr = internal global ptr @DAC960_LA_intr_handler._entry, section ".printk_index", align 4
@myrb_handle_scsi.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 2, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"myrb_handle_scsi\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bad Data Encountered\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Irrecoverable Data Error\0A\00", [38 x i8] zeroinitializer }, align 32
@myrb_handle_scsi.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.58, i8 2, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Logical Drive Nonexistent or Offline\00", [59 x i8] zeroinitializer }, align 32
@myrb_handle_scsi.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.59, i8 2, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Attempt to Access Beyond End of Logical Drive\00", [50 x i8] zeroinitializer }, align 32
@myrb_handle_scsi.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.60, i8 2, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device nonresponsive\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unexpected Error Status %04X\00", [35 x i8] zeroinitializer }, align 32
@DAC960_PG_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.62, ptr @.str.3, i32 2934, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC960_PG_hw_init\00", [46 x i8] zeroinitializer }, align 32
@DAC960_PG_hw_init._entry_ptr = internal global ptr @DAC960_PG_hw_init._entry, section ".printk_index", align 4
@DAC960_PG_hw_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.62, ptr @.str.3, i32 2939, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_PG_hw_init._entry_ptr.64 = internal global ptr @DAC960_PG_hw_init._entry.63, section ".printk_index", align 4
@DAC960_PG_mbox_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.65, ptr @.str.3, i32 2889, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC960_PG_mbox_init\00", [44 x i8] zeroinitializer }, align 32
@DAC960_PG_mbox_init._entry_ptr = internal global ptr @DAC960_PG_mbox_init._entry, section ".printk_index", align 4
@DAC960_PG_mbox_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.65, ptr @.str.3, i32 2904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_PG_mbox_init._entry_ptr.67 = internal global ptr @DAC960_PG_mbox_init._entry.66, section ".printk_index", align 4
@DAC960_PG_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.68, ptr @.str.3, i32 2984, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC960_PG_intr_handler\00", [41 x i8] zeroinitializer }, align 32
@DAC960_PG_intr_handler._entry_ptr = internal global ptr @DAC960_PG_intr_handler._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@DAC960_PD_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 3118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IO port 0x%lx busy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC960_PD_hw_init\00", [46 x i8] zeroinitializer }, align 32
@DAC960_PD_hw_init._entry_ptr = internal global ptr @DAC960_PD_hw_init._entry, section ".printk_index", align 4
@DAC960_PD_hw_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.70, ptr @.str.3, i32 3135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_PD_hw_init._entry_ptr.72 = internal global ptr @DAC960_PD_hw_init._entry.71, section ".printk_index", align 4
@DAC960_PD_hw_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.70, ptr @.str.3, i32 3140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_PD_hw_init._entry_ptr.74 = internal global ptr @DAC960_PD_hw_init._entry.73, section ".printk_index", align 4
@DAC960_PD_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.75, ptr @.str.3, i32 3177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC960_PD_intr_handler\00", [41 x i8] zeroinitializer }, align 32
@DAC960_PD_intr_handler._entry_ptr = internal global ptr @DAC960_PD_intr_handler._entry, section ".printk_index", align 4
@DAC960_P_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.76, ptr @.str.3, i32 3284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC960_P_hw_init\00", [47 x i8] zeroinitializer }, align 32
@DAC960_P_hw_init._entry_ptr = internal global ptr @DAC960_P_hw_init._entry, section ".printk_index", align 4
@DAC960_P_hw_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.76, ptr @.str.3, i32 3301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@DAC960_P_hw_init._entry_ptr.78 = internal global ptr @DAC960_P_hw_init._entry.77, section ".printk_index", align 4
@DAC960_P_hw_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.76, ptr @.str.3, i32 3306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to allocate DMA mapped memory\0A\00", [58 x i8] zeroinitializer }, align 32
@DAC960_P_hw_init._entry_ptr.81 = internal global ptr @DAC960_P_hw_init._entry.79, section ".printk_index", align 4
@DAC960_P_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.82, ptr @.str.3, i32 3346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC960_P_intr_handler\00", [42 x i8] zeroinitializer }, align 32
@DAC960_P_intr_handler._entry_ptr = internal global ptr @DAC960_P_intr_handler._entry, section ".printk_index", align 4
@myrb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 3479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scsi_add_host failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"myrb_probe\00", [21 x i8] zeroinitializer }, align 32
@myrb_probe._entry_ptr = internal global ptr @myrb_probe._entry, section ".printk_index", align 4
@myrb_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 40, ptr @myrb_queuecommand, ptr null, ptr null, ptr @.str.101, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @myrb_host_reset, ptr @myrb_slave_alloc, ptr @myrb_slave_configure, ptr @myrb_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @myrb_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr @myrb_shost_groups, ptr @myrb_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@myrb_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 3407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to allocate Controller\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"myrb_detect\00", [20 x i8] zeroinitializer }, align 32
@myrb_detect._entry_ptr = internal global ptr @myrb_detect._entry, section ".printk_index", align 4
@myrb_detect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cb->dcmd_mutex\00", [16 x i8] zeroinitializer }, align 32
@myrb_detect.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cb->dma_mutex\00", [17 x i8] zeroinitializer }, align 32
@myrb_detect.__key.90 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cb->queue_lock\00", [16 x i8] zeroinitializer }, align 32
@myrb_detect._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.86, ptr @.str.3, i32 3434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to map Controller Register Window\0A\00", [54 x i8] zeroinitializer }, align 32
@myrb_detect._entry_ptr.94 = internal global ptr @myrb_detect._entry.92, section ".printk_index", align 4
@myrb_detect._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.86, ptr @.str.3, i32 3444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to acquire IRQ Channel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@myrb_detect._entry_ptr.97 = internal global ptr @myrb_detect._entry.95, section ".printk_index", align 4
@myrb_detect._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.86, ptr @.str.3, i32 3452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize Controller\0A\00", [63 x i8] zeroinitializer }, align 32
@myrb_detect._entry_ptr.100 = internal global ptr @myrb_detect._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC960\00", [25 x i8] zeroinitializer }, align 32
@myrb_shost_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @myrb_shost_group, ptr null], [24 x i8] zeroinitializer }, align 32
@myrb_sdev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @myrb_sdev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@myrb_ldev_queuecommand.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.3, ptr @.str.103, i8 1, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"myrb_ldev_queuecommand\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ldev %u in state %x, skip\0A\00", [37 x i8] zeroinitializer }, align 32
@__const.myrb_inquiry.inq = private unnamed_addr constant [36 x i8] c"\00\00\03\02 \00\01\00MYLEX                       ", align 1
@myrb_read_capacity.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"myrb_read_capacity\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Capacity %u, blocksize %u\0A\00", [37 x i8] zeroinitializer }, align 32
@myrb_ldev_slave_alloc.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 1, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"myrb_ldev_slave_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"slave alloc ldev %d state %x\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 1, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"myrb_pdev_slave_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get device state, status %x\0A\00", [57 x i8] zeroinitializer }, align 32
@myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.110, i8 1, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"device not present, skip\0A\00", [38 x i8] zeroinitializer }, align 32
@myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.111, i8 1, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"slave alloc pdev %d:%d state %x\0A\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Logical drive is %s\0A\00", [43 x i8] zeroinitializer }, align 32
@myrb_devstate_name_list = internal constant { [6 x %struct.myrb_devstate_name_entry], [48 x i8] } { [6 x %struct.myrb_devstate_name_entry] [%struct.myrb_devstate_name_entry { i8 0, ptr @.str.117 }, %struct.myrb_devstate_name_entry { i8 2, ptr @.str.118 }, %struct.myrb_devstate_name_entry { i8 3, ptr @.str.119 }, %struct.myrb_devstate_name_entry { i8 4, ptr @.str.120 }, %struct.myrb_devstate_name_entry { i8 16, ptr @.str.121 }, %struct.myrb_devstate_name_entry { i8 -1, ptr @.str.122 }], [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dead\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WriteOnly\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Online\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Critical\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Standby\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Offline\00", [24 x i8] zeroinitializer }, align 32
@myrb_shost_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @myrb_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@myrb_shost_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_ctlr_num, ptr @dev_attr_model, ptr @dev_attr_firmware, ptr @dev_attr_flush_cache, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_ctlr_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctlr_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @model_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flush_cache = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @flush_cache_store }, [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctlr_num\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flush_cache\00", [20 x i8] zeroinitializer }, align 32
@flush_cache_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 2176, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cache Flush Completed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flush_cache_store\00", [46 x i8] zeroinitializer }, align 32
@flush_cache_store._entry_ptr = internal global ptr @flush_cache_store._entry, section ".printk_index", align 4
@flush_cache_store._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.3, i32 2180, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cache Flush Failed, status %x\0A\00", [33 x i8] zeroinitializer }, align 32
@flush_cache_store._entry_ptr.133 = internal global ptr @flush_cache_store._entry.131, section ".printk_index", align 4
@myrb_sdev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @myrb_sdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@myrb_sdev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_rebuild, ptr @dev_attr_consistency_check, ptr @dev_attr_raid_state, ptr @dev_attr_raid_level, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_rebuild = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rebuild_show, ptr @rebuild_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_consistency_check = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @consistency_check_show, ptr @consistency_check_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_raid_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_state_show, ptr @raid_state_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_raid_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raid_level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rebuild\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"physical device - not rebuilding\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"not rebuilding\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rebuilding block %u of %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Rebuild Not Initiated; already in progress\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Rebuild Not Cancelled; not in progress\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cancellation of Rebuild Failed - Out of Memory\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rebuild %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Initiated\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Cancelled\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rebuild Not Cancelled, status 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Attempt to Rebuild Online or Unresponsive Drive\00", [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"New Disk Failed During Rebuild\00", [33 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid Device Address\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Already in Progress\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rebuild Failed - %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Rebuild Failed, status 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"consistency_check\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Check Consistency Not Initiated; already in progress\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Check Consistency Not Cancelled; not in progress\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Cancellation of Check Consistency Failed - Out of Memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Check Consistency %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Check Consistency Not Cancelled, status 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dependent Physical Device is DEAD\00", [62 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid or Nonredundant Logical Drive\00", [58 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Check Consistency Failed - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Check Consistency Failed, status 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid_state\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid (%02X)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Removed\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed - no physical device information\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed - device not present\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed - Unable to Start Device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed - No Device at Address\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed - Invalid Channel or Target or Modifier\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed - Channel Busy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed - Unexpected Status %04X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid_level\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Physical Drive\0A\00", [16 x i8] zeroinitializer }, align 32
@myrb_raidlevel_name_list = internal constant { [6 x %struct.myrb_raidlevel_name_entry], [48 x i8] } { [6 x %struct.myrb_raidlevel_name_entry] [%struct.myrb_raidlevel_name_entry { i8 0, ptr @.str.178 }, %struct.myrb_raidlevel_name_entry { i8 1, ptr @.str.179 }, %struct.myrb_raidlevel_name_entry { i8 3, ptr @.str.180 }, %struct.myrb_raidlevel_name_entry { i8 5, ptr @.str.181 }, %struct.myrb_raidlevel_name_entry { i8 6, ptr @.str.182 }, %struct.myrb_raidlevel_name_entry { i8 7, ptr @.str.183 }], [48 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID0\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID1\00", [26 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID3\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID5\00", [26 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID6\00", [26 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JBOD\00", [27 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.3, i32 927, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate V1 enquiry2 memory\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"myrb_get_hba_config\00", [44 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr = internal global ptr @myrb_get_hba_config._entry, section ".printk_index", align 4
@myrb_get_hba_config._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.3, i32 934, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate V1 config2 memory\0A\00", [58 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.188 = internal global ptr @myrb_get_hba_config._entry.186, section ".printk_index", align 4
@myrb_get_hba_config._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.185, ptr @.str.3, i32 944, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed it issue V1 Enquiry\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.192 = internal global ptr @myrb_get_hba_config._entry.189, section ".printk_index", align 4
@myrb_get_hba_config._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.185, ptr @.str.3, i32 951, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to issue V1 Enquiry2\0A\00", [35 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.195 = internal global ptr @myrb_get_hba_config._entry.193, section ".printk_index", align 4
@myrb_get_hba_config._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.185, ptr @.str.3, i32 958, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to issue ReadConfig2\0A\00", [35 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.198 = internal global ptr @myrb_get_hba_config._entry.196, section ".printk_index", align 4
@myrb_get_hba_config._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.185, ptr @.str.3, i32 965, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get logical drive information\0A\00", [55 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.201 = internal global ptr @myrb_get_hba_config._entry.199, section ".printk_index", align 4
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PU\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PD\00", [23 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PL\00", [23 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PG\00", [23 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PJ\00", [23 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PR\00", [23 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC960PT\00", [23 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC960PTL0\00", [21 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC960PRL\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC960PTL1\00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eXtremeRAID 1100\00", [47 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.185, ptr @.str.3, i32 1009, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown Model %X\0A\00", [46 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.215 = internal global ptr @myrb_get_hba_config._entry.213, section ".printk_index", align 4
@.str.216 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%u.%02u-%c-%02u\00", [16 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.73\00", [27 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.185, ptr @.str.3, i32 1066, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Firmware Version '%s' unsupported\0A\00", [61 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.220 = internal global ptr @myrb_get_hba_config._entry.218, section ".printk_index", align 4
@.str.221 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4.08\00", [27 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5.08\00", [27 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.185, ptr @.str.3, i32 1151, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Configuring %s PCI RAID Controller\0A\00", [60 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.225 = internal global ptr @myrb_get_hba_config._entry.223, section ".printk_index", align 4
@myrb_get_hba_config._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.185, ptr @.str.3, i32 1154, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  Firmware Version: %s, Memory Size: %dMB\0A\00", [53 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.228 = internal global ptr @myrb_get_hba_config._entry.226, section ".printk_index", align 4
@myrb_get_hba_config._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.185, ptr @.str.3, i32 1158, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"  I/O Address: n/a, PCI Address: 0x%lX, IRQ Channel: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.231 = internal global ptr @myrb_get_hba_config._entry.229, section ".printk_index", align 4
@myrb_get_hba_config._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.185, ptr @.str.3, i32 1163, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"  I/O Address: 0x%lX, PCI Address: 0x%lX, IRQ Channel: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.234 = internal global ptr @myrb_get_hba_config._entry.232, section ".printk_index", align 4
@myrb_get_hba_config._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.185, ptr @.str.3, i32 1166, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"  Controller Queue Depth: %d, Maximum Blocks per Command: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.237 = internal global ptr @myrb_get_hba_config._entry.235, section ".printk_index", align 4
@myrb_get_hba_config._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.185, ptr @.str.3, i32 1170, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"  Driver Queue Depth: %d, Scatter/Gather Limit: %d of %d Segments\0A\00", [61 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.240 = internal global ptr @myrb_get_hba_config._entry.238, section ".printk_index", align 4
@myrb_get_hba_config._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.185, ptr @.str.3, i32 1176, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"  Stripe Size: %dKB, Segment Size: %dKB, BIOS Geometry: %d/%d%s\0A\00", [63 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.243 = internal global ptr @myrb_get_hba_config._entry.241, section ".printk_index", align 4
@.str.244 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"  SAF-TE Enclosure Management Enabled\00", [58 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@myrb_get_hba_config._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.185, ptr @.str.3, i32 1180, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  Physical: %d/%d channels %d/%d/%d devices\0A\00", [51 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.248 = internal global ptr @myrb_get_hba_config._entry.246, section ".printk_index", align 4
@myrb_get_hba_config._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.185, ptr @.str.3, i32 1184, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"  Logical: 1/1 channels, %d/%d disks\0A\00", [58 x i8] zeroinitializer }, align 32
@myrb_get_hba_config._entry_ptr.251 = internal global ptr @myrb_get_hba_config._entry.249, section ".printk_index", align 4
@myrb_hba_enquiry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.3, i32 687, ptr @.str.254, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Logical Drive %d Now Exists\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"myrb_hba_enquiry\00", [47 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr = internal global ptr @myrb_hba_enquiry._entry, section ".printk_index", align 4
@myrb_hba_enquiry._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.253, ptr @.str.3, i32 695, ptr @.str.254, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Logical Drive %d No Longer Exists\0A\00", [61 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.257 = internal global ptr @myrb_hba_enquiry._entry.255, section ".printk_index", align 4
@myrb_hba_enquiry._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.253, ptr @.str.3, i32 700, ptr @.str.254, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Deferred Write Error Flag is now %s\0A\00", [59 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.260 = internal global ptr @myrb_hba_enquiry._entry.258, section ".printk_index", align 4
@.str.261 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRUE\00", [27 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FALSE\00", [26 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.253, ptr @.str.3, i32 707, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Event log %d/%d (%d/%d) available\0A\00", [61 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.265 = internal global ptr @myrb_hba_enquiry._entry.263, section ".printk_index", align 4
@myrb_hba_enquiry._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.253, ptr @.str.3, i32 718, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Logical drive count changed (%d/%d/%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.268 = internal global ptr @myrb_hba_enquiry._entry.266, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@myrb_hba_enquiry._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.253, ptr @.str.3, i32 739, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Consistency Check Completed Successfully\0A\00", [54 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.271 = internal global ptr @myrb_hba_enquiry._entry.269, section ".printk_index", align 4
@myrb_hba_enquiry._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.253, ptr @.str.3, i32 749, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Consistency Check Completed with Error\0A\00", [56 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.274 = internal global ptr @myrb_hba_enquiry._entry.272, section ".printk_index", align 4
@myrb_hba_enquiry._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.253, ptr @.str.3, i32 753, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Consistency Check Failed - Physical Device Failed\0A\00", [45 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.277 = internal global ptr @myrb_hba_enquiry._entry.275, section ".printk_index", align 4
@myrb_hba_enquiry._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.253, ptr @.str.3, i32 757, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Consistency Check Failed - Logical Drive Failed\0A\00", [47 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.280 = internal global ptr @myrb_hba_enquiry._entry.278, section ".printk_index", align 4
@myrb_hba_enquiry._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.253, ptr @.str.3, i32 761, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Consistency Check Failed - Other Causes\0A\00", [55 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.283 = internal global ptr @myrb_hba_enquiry._entry.281, section ".printk_index", align 4
@myrb_hba_enquiry._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.253, ptr @.str.3, i32 765, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Consistency Check Successfully Terminated\0A\00", [53 x i8] zeroinitializer }, align 32
@myrb_hba_enquiry._entry_ptr.286 = internal global ptr @myrb_hba_enquiry._entry.284, section ".printk_index", align 4
@myrb_get_ldev_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.3, i32 410, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adding Logical Drive %d in state %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"myrb_get_ldev_info\00", [45 x i8] zeroinitializer }, align 32
@myrb_get_ldev_info._entry_ptr = internal global ptr @myrb_get_ldev_info._entry, section ".printk_index", align 4
@myrb_get_ldev_info._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.288, ptr @.str.3, i32 419, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Logical Drive %d is now %s\0A\00", [36 x i8] zeroinitializer }, align 32
@myrb_get_ldev_info._entry_ptr.291 = internal global ptr @myrb_get_ldev_info._entry.289, section ".printk_index", align 4
@.str.292 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Logical Drive is now WRITE %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BACK\00", [27 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"THRU\00", [27 x i8] zeroinitializer }, align 32
@myrb_bgi_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.296, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate bgi memory\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"myrb_bgi_control\00", [47 x i8] zeroinitializer }, align 32
@myrb_bgi_control._entry_ptr = internal global ptr @myrb_bgi_control._entry, section ".printk_index", align 4
@.str.297 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Background Initialization Started\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Background Initialization in Progress: %d%% completed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Background Initialization Suspended\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Background Initialization Cancelled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Background Initialization Completed Successfully\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Background Initialization Aborted\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"myrb_sg\00", [24 x i8] zeroinitializer }, align 32
@myrb_create_mempools._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.305, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate SG pool\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"myrb_create_mempools\00", [43 x i8] zeroinitializer }, align 32
@myrb_create_mempools._entry_ptr = internal global ptr @myrb_create_mempools._entry, section ".printk_index", align 4
@.str.306 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"myrb_dcdb\00", [22 x i8] zeroinitializer }, align 32
@myrb_create_mempools._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.305, ptr @.str.3, i32 111, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate DCDB pool\0A\00", [34 x i8] zeroinitializer }, align 32
@myrb_create_mempools._entry_ptr.309 = internal global ptr @myrb_create_mempools._entry.307, section ".printk_index", align 4
@.str.310 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"myrb_wq_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@myrb_create_mempools._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.305, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create workqueue\0A\00", [36 x i8] zeroinitializer }, align 32
@myrb_create_mempools._entry_ptr.314 = internal global ptr @myrb_create_mempools._entry.312, section ".printk_index", align 4
@myrb_create_mempools.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.315 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&cb->monitor_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@myrb_create_mempools.__key.316 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.317 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&cb->monitor_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.319, i8 2, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.318 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"myrb_monitor\00", [19 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"monitor tick\0A\00", [18 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.320, i8 2, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.320 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get event log no %d/%d\0A\00", [40 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.321, i8 2, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.321 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get error table\0A\00", [47 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.322, i8 2, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.322 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get rebuild progress\0A\00", [42 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.323, i8 2, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.323 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get logical drive info\0A\00", [40 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.322, i8 2, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@myrb_monitor.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.324, i8 2, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get consistency check progress\0A\00", [32 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.325, i8 2, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.325 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get background init status\0A\00", [36 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.326, i8 2, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.326 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"new enquiry\0A\00", [19 x i8] zeroinitializer }, align 32
@myrb_monitor.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.318, ptr @.str.3, ptr @.str.327, i8 2, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.327 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reschedule monitor\0A\00", [44 x i8] zeroinitializer }, align 32
@myrb_get_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.3, i32 309, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get event log %d, status %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"myrb_get_event\00", [17 x i8] zeroinitializer }, align 32
@myrb_get_event._entry_ptr = internal global ptr @myrb_get_event._entry, section ".printk_index", align 4
@myrb_get_event._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.329, ptr @.str.3, i32 323, ptr @.str.254, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Physical drive %d:%d: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@myrb_get_event._entry_ptr.332 = internal global ptr @myrb_get_event._entry.330, section ".printk_index", align 4
@myrb_event_msg = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348], [44 x i8] zeroinitializer }, align 32
@myrb_get_event._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.329, ptr @.str.3, i32 328, ptr @.str.254, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Physical drive %d:%d: Sense: %X/%02X/%02X\0A\00", [53 x i8] zeroinitializer }, align 32
@myrb_get_event._entry_ptr.335 = internal global ptr @myrb_get_event._entry.333, section ".printk_index", align 4
@.str.336 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"killed because write recovery failed\00", [59 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"killed because of SCSI bus reset failure\00", [55 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"killed because of double check condition\00", [55 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"killed because it was removed\00", [34 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"killed because of gross error on SCSI chip\00", [53 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"killed because of bad tag returned from drive\00", [50 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"killed because of timeout on SCSI command\00", [54 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"killed because of reset SCSI command issued from system\00", [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"killed because busy or parity error count exceeded limit\00", [39 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"killed because of 'kill drive' command from system\00", [45 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"killed because of selection timeout\00", [60 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"killed due to SCSI phase sequence error\00", [56 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"killed due to unknown status\00", [35 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Errors: Parity = %d, Soft = %d, Hard = %d, Misc = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Rebuild Failed due to Logical Drive Failure\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Rebuild Failed due to Bad Blocks on Other Drives\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Rebuild Failed due to Failure of Drive Being Rebuilt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Rebuild Completed Successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rebuild Successfully Terminated\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Consistency Check in Progress: %d%% completed\0A\00", [49 x i8] zeroinitializer }, align 32
@myrb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.358, ptr @.str.3, i32 3495, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flushing Cache...\00", [46 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"myrb_remove\00", [20 x i8] zeroinitializer }, align 32
@myrb_remove._entry_ptr = internal global ptr @myrb_remove._entry, section ".printk_index", align 4
@myrb_raid_functions = internal global { %struct.raid_function_template, [16 x i8] } { %struct.raid_function_template { ptr @myrb_template, ptr @myrb_is_raid, ptr @myrb_get_resync, ptr @myrb_get_state }, [16 x i8] zeroinitializer }, align 32
@switch.table.myrb_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 3, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.myrb_ldev_slave_alloc = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 3, i32 0, i32 6, i32 0, i32 8, i32 10, i32 11], [32 x i8] zeroinitializer }, align 32
@switch.table.raid_level_show = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 3, i32 4, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.myrb_get_state = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 32]
@__sancov_gen_cov_switch_values.359 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.360 = internal global [4 x i64] [i64 2, i64 8, i64 52, i64 53]
@__sancov_gen_cov_switch_values.361 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.362 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 8, i64 48, i64 96, i64 112, i64 144, i64 160, i64 176, i64 208, i64 240]
@__sancov_gen_cov_switch_values.363 = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1, i64 2, i64 8, i64 14, i64 261, i64 268]
@__sancov_gen_cov_switch_values.364 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.365 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.366 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.367 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 5, i64 130, i64 131]
@__sancov_gen_cov_switch_values.368 = internal global [8 x i64] [i64 6, i64 8, i64 54, i64 55, i64 80, i64 83, i64 182, i64 183]
@__sancov_gen_cov_switch_values.369 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.370 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 16, i64 255]
@__sancov_gen_cov_switch_values.371 = internal global [19 x i64] [i64 17, i64 8, i64 0, i64 3, i64 8, i64 10, i64 18, i64 26, i64 29, i64 37, i64 40, i64 42, i64 46, i64 47, i64 53, i64 168, i64 170, i64 174, i64 175]
@__sancov_gen_cov_switch_values.372 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 63]
@__sancov_gen_cov_switch_values.373 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 261, i64 262]
@__sancov_gen_cov_switch_values.374 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 261, i64 262]
@__sancov_gen_cov_switch_values.375 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 16, i64 255]
@__sancov_gen_cov_switch_values.376 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 16, i64 255]
@__sancov_gen_cov_switch_values.377 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 2, i64 258, i64 261, i64 262]
@__sancov_gen_cov_switch_values.378 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.379 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 3, i64 240, i64 241, i64 242, i64 243, i64 255]
@__sancov_gen_cov_switch_values.380 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 16, i64 255]
@__sancov_gen_cov_switch_values.381 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 16, i64 255]
@__sancov_gen_cov_switch_values.382 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 5, i64 256, i64 261]
@__sancov_gen_cov_switch_values.383 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.384 = internal global [7 x i64] [i64 5, i64 16, i64 2, i64 3, i64 4, i64 256, i64 263]
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"myrb_pci_driver\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3524, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant [19 x i8] c"myrb_raid_template\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 27, i32 30 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3525, i32 11 }
@___asan_gen_.394 = private unnamed_addr constant [14 x i8] c"myrb_id_table\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3502, i32 35 }
@___asan_gen_.397 = private unnamed_addr constant [19 x i8] c"DAC960_LA_privdata\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2754, i32 29 }
@___asan_gen_.400 = private unnamed_addr constant [19 x i8] c"DAC960_PG_privdata\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3000, i32 29 }
@___asan_gen_.403 = private unnamed_addr constant [19 x i8] c"DAC960_PD_privdata\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3191, i32 29 }
@___asan_gen_.406 = private unnamed_addr constant [18 x i8] c"DAC960_P_privdata\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3389, i32 29 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2685, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2690, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2468, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2473, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2476, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2479, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2482, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2485, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2489, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2492, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2495, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2498, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2501, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 820, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 894, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2642, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2656, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2735, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2329, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2339, i32 31 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2348, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2353, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2359, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2364, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2933, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2938, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2888, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2903, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2983, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3117, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3134, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3139, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3176, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3283, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3300, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3305, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3345, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3479, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant [14 x i8] c"myrb_template\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2205, i32 34 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3407, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3413, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3414, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3428, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3433, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3443, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3451, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2207, i32 12 }
@___asan_gen_.694 = private unnamed_addr constant [18 x i8] c"myrb_shost_groups\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [17 x i8] c"myrb_sdev_groups\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1436, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1411, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1636, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1684, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1691, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1696, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 326, i32 6 }
@___asan_gen_.740 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 87, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1736, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant [24 x i8] c"myrb_devstate_name_list\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 40, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 58, i32 9 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 41, i32 22 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 42, i32 20 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 43, i32 24 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 44, i32 26 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 45, i32 25 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 46, i32 25 }
@___asan_gen_.769 = private unnamed_addr constant [17 x i8] c"myrb_shost_group\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2203, i32 1 }
@___asan_gen_.772 = private unnamed_addr constant [17 x i8] c"myrb_shost_attrs\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2195, i32 26 }
@___asan_gen_.775 = private unnamed_addr constant [18 x i8] c"dev_attr_ctlr_num\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [15 x i8] c"dev_attr_model\00", align 1
@___asan_gen_.781 = private unnamed_addr constant [18 x i8] c"dev_attr_firmware\00", align 1
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c"dev_attr_flush_cache\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2144, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2142, i32 27 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2164, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2162, i32 27 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2154, i32 8 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2183, i32 8 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2175, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2179, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [16 x i8] c"myrb_sdev_group\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2193, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant [16 x i8] c"myrb_sdev_attrs\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2185, i32 26 }
@___asan_gen_.826 = private unnamed_addr constant [17 x i8] c"dev_attr_rebuild\00", align 1
@___asan_gen_.829 = private unnamed_addr constant [27 x i8] c"dev_attr_consistency_check\00", align 1
@___asan_gen_.832 = private unnamed_addr constant [20 x i8] c"dev_attr_raid_state\00", align 1
@___asan_gen_.835 = private unnamed_addr constant [20 x i8] c"dev_attr_raid_level\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2021, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1905, i32 28 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1911, i32 28 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1913, i32 27 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1939, i32 4 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1959, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1967, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1984, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1989, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1997, i32 9 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2000, i32 9 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2003, i32 9 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2006, i32 9 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2013, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2016, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2134, i32 8 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2046, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2067, i32 4 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2074, i32 4 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2091, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2096, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2104, i32 9 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2110, i32 9 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2120, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2123, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1872, i32 8 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1769, i32 28 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1779, i32 28 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1794, i32 11 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1815, i32 20 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1816, i32 20 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1818, i32 25 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1820, i32 25 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1827, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1832, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1845, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1850, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1855, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1860, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1865, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1894, i32 8 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1892, i32 27 }
@___asan_gen_.970 = private unnamed_addr constant [25 x i8] c"myrb_raidlevel_name_list\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 64, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 65, i32 22 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 66, i32 22 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 67, i32 22 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 68, i32 22 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 69, i32 22 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 70, i32 20 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 926, i32 3 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 933, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 943, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 950, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 957, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 964, i32 3 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 975, i32 27 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 977, i32 27 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 980, i32 26 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 983, i32 26 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 986, i32 26 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 989, i32 26 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 992, i32 26 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 995, i32 26 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 998, i32 26 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1001, i32 26 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1004, i32 26 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1007, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1051, i32 3 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1063, i32 32 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1064, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1140, i32 30 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1142, i32 30 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1150, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1152, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1156, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1160, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1164, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1167, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1171, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1177, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 1182, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 685, i32 4 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 693, i32 4 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 698, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 704, i32 3 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 714, i32 3 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 738, i32 4 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 748, i32 4 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 752, i32 4 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 756, i32 4 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 760, i32 4 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 764, i32 4 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 408, i32 4 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 417, i32 4 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 421, i32 4 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 590, i32 3 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 612, i32 4 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 621, i32 4 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 629, i32 4 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 635, i32 4 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 643, i32 4 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 649, i32 4 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 96, i32 32 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 99, i32 3 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 104, i32 34 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 110, i32 3 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 116, i32 4 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 117, i32 15 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 123, i32 3 }
@___asan_gen_.1318 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 131, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2389, i32 2 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2394, i32 3 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2402, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2407, i32 3 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2413, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2425, i32 3 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2431, i32 3 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2435, i32 3 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2443, i32 4 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 307, i32 3 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 320, i32 4 }
@___asan_gen_.1369 = private unnamed_addr constant [15 x i8] c"myrb_event_msg\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 261, i32 14 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 325, i32 4 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 262, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 263, i32 2 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 264, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 265, i32 2 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 266, i32 2 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 267, i32 2 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 268, i32 2 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 269, i32 2 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 270, i32 2 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 271, i32 2 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 272, i32 2 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 273, i32 2 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 274, i32 2 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 372, i32 4 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 498, i32 4 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 502, i32 4 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 506, i32 4 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 510, i32 4 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 514, i32 4 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 562, i32 4 }
@___asan_gen_.1438 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1444 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 3495, i32 2 }
@___asan_gen_.1447 = private unnamed_addr constant [20 x i8] c"myrb_raid_functions\00", align 1
@___asan_gen_.1448 = private constant [23 x i8] c"../drivers/scsi/myrb.c\00", align 1
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1448, i32 2294, i32 38 }
@___asan_gen_.1450 = private unnamed_addr constant [24 x i8] c"switch.table.myrb_probe\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant [35 x i8] c"switch.table.myrb_ldev_slave_alloc\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant [29 x i8] c"switch.table.raid_level_show\00", align 1
@___asan_gen_.1453 = private unnamed_addr constant [28 x i8] c"switch.table.myrb_get_state\00", align 1
@llvm.compiler.used = appending global [442 x ptr] [ptr @DAC960_LA_hw_init._entry, ptr @DAC960_LA_hw_init._entry.6, ptr @DAC960_LA_hw_init._entry_ptr, ptr @DAC960_LA_hw_init._entry_ptr.8, ptr @DAC960_LA_intr_handler._entry, ptr @DAC960_LA_intr_handler._entry_ptr, ptr @DAC960_LA_mbox_init._entry, ptr @DAC960_LA_mbox_init._entry.50, ptr @DAC960_LA_mbox_init._entry_ptr, ptr @DAC960_LA_mbox_init._entry_ptr.52, ptr @DAC960_PD_hw_init._entry, ptr @DAC960_PD_hw_init._entry.71, ptr @DAC960_PD_hw_init._entry.73, ptr @DAC960_PD_hw_init._entry_ptr, ptr @DAC960_PD_hw_init._entry_ptr.72, ptr @DAC960_PD_hw_init._entry_ptr.74, ptr @DAC960_PD_intr_handler._entry, ptr @DAC960_PD_intr_handler._entry_ptr, ptr @DAC960_PG_hw_init._entry, ptr @DAC960_PG_hw_init._entry.63, ptr @DAC960_PG_hw_init._entry_ptr, ptr @DAC960_PG_hw_init._entry_ptr.64, ptr @DAC960_PG_intr_handler._entry, ptr @DAC960_PG_intr_handler._entry_ptr, ptr @DAC960_PG_mbox_init._entry, ptr @DAC960_PG_mbox_init._entry.66, ptr @DAC960_PG_mbox_init._entry_ptr, ptr @DAC960_PG_mbox_init._entry_ptr.67, ptr @DAC960_P_hw_init._entry, ptr @DAC960_P_hw_init._entry.77, ptr @DAC960_P_hw_init._entry.79, ptr @DAC960_P_hw_init._entry_ptr, ptr @DAC960_P_hw_init._entry_ptr.78, ptr @DAC960_P_hw_init._entry_ptr.81, ptr @DAC960_P_intr_handler._entry, ptr @DAC960_P_intr_handler._entry_ptr, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_myrb_cleanup_module, ptr @__initcall__kmod_myrb__307_3552_myrb_init_module6, ptr @flush_cache_store._entry, ptr @flush_cache_store._entry.131, ptr @flush_cache_store._entry_ptr, ptr @flush_cache_store._entry_ptr.133, ptr @myrb_bgi_control._entry, ptr @myrb_bgi_control._entry_ptr, ptr @myrb_cleanup_module, ptr @myrb_create_mempools._entry, ptr @myrb_create_mempools._entry.307, ptr @myrb_create_mempools._entry.312, ptr @myrb_create_mempools._entry_ptr, ptr @myrb_create_mempools._entry_ptr.309, ptr @myrb_create_mempools._entry_ptr.314, ptr @myrb_detect._entry, ptr @myrb_detect._entry.92, ptr @myrb_detect._entry.95, ptr @myrb_detect._entry.98, ptr @myrb_detect._entry_ptr, ptr @myrb_detect._entry_ptr.100, ptr @myrb_detect._entry_ptr.94, ptr @myrb_detect._entry_ptr.97, ptr @myrb_enable_mmio._entry, ptr @myrb_enable_mmio._entry.45, ptr @myrb_enable_mmio._entry_ptr, ptr @myrb_enable_mmio._entry_ptr.47, ptr @myrb_err_status._entry, ptr @myrb_err_status._entry.12, ptr @myrb_err_status._entry.16, ptr @myrb_err_status._entry.19, ptr @myrb_err_status._entry.22, ptr @myrb_err_status._entry.25, ptr @myrb_err_status._entry.28, ptr @myrb_err_status._entry.31, ptr @myrb_err_status._entry.34, ptr @myrb_err_status._entry.37, ptr @myrb_err_status._entry.40, ptr @myrb_err_status._entry_ptr, ptr @myrb_err_status._entry_ptr.15, ptr @myrb_err_status._entry_ptr.18, ptr @myrb_err_status._entry_ptr.21, ptr @myrb_err_status._entry_ptr.24, ptr @myrb_err_status._entry_ptr.27, ptr @myrb_err_status._entry_ptr.30, ptr @myrb_err_status._entry_ptr.33, ptr @myrb_err_status._entry_ptr.36, ptr @myrb_err_status._entry_ptr.39, ptr @myrb_err_status._entry_ptr.42, ptr @myrb_get_event._entry, ptr @myrb_get_event._entry.330, ptr @myrb_get_event._entry.333, ptr @myrb_get_event._entry_ptr, ptr @myrb_get_event._entry_ptr.332, ptr @myrb_get_event._entry_ptr.335, ptr @myrb_get_hba_config._entry, ptr @myrb_get_hba_config._entry.186, ptr @myrb_get_hba_config._entry.189, ptr @myrb_get_hba_config._entry.193, ptr @myrb_get_hba_config._entry.196, ptr @myrb_get_hba_config._entry.199, ptr @myrb_get_hba_config._entry.213, ptr @myrb_get_hba_config._entry.218, ptr @myrb_get_hba_config._entry.223, ptr @myrb_get_hba_config._entry.226, ptr @myrb_get_hba_config._entry.229, ptr @myrb_get_hba_config._entry.232, ptr @myrb_get_hba_config._entry.235, ptr @myrb_get_hba_config._entry.238, ptr @myrb_get_hba_config._entry.241, ptr @myrb_get_hba_config._entry.246, ptr @myrb_get_hba_config._entry.249, ptr @myrb_get_hba_config._entry_ptr, ptr @myrb_get_hba_config._entry_ptr.188, ptr @myrb_get_hba_config._entry_ptr.192, ptr @myrb_get_hba_config._entry_ptr.195, ptr @myrb_get_hba_config._entry_ptr.198, ptr @myrb_get_hba_config._entry_ptr.201, ptr @myrb_get_hba_config._entry_ptr.215, ptr @myrb_get_hba_config._entry_ptr.220, ptr @myrb_get_hba_config._entry_ptr.225, ptr @myrb_get_hba_config._entry_ptr.228, ptr @myrb_get_hba_config._entry_ptr.231, ptr @myrb_get_hba_config._entry_ptr.234, ptr @myrb_get_hba_config._entry_ptr.237, ptr @myrb_get_hba_config._entry_ptr.240, ptr @myrb_get_hba_config._entry_ptr.243, ptr @myrb_get_hba_config._entry_ptr.248, ptr @myrb_get_hba_config._entry_ptr.251, ptr @myrb_get_ldev_info._entry, ptr @myrb_get_ldev_info._entry.289, ptr @myrb_get_ldev_info._entry_ptr, ptr @myrb_get_ldev_info._entry_ptr.291, ptr @myrb_hba_enquiry._entry, ptr @myrb_hba_enquiry._entry.255, ptr @myrb_hba_enquiry._entry.258, ptr @myrb_hba_enquiry._entry.263, ptr @myrb_hba_enquiry._entry.266, ptr @myrb_hba_enquiry._entry.269, ptr @myrb_hba_enquiry._entry.272, ptr @myrb_hba_enquiry._entry.275, ptr @myrb_hba_enquiry._entry.278, ptr @myrb_hba_enquiry._entry.281, ptr @myrb_hba_enquiry._entry.284, ptr @myrb_hba_enquiry._entry_ptr, ptr @myrb_hba_enquiry._entry_ptr.257, ptr @myrb_hba_enquiry._entry_ptr.260, ptr @myrb_hba_enquiry._entry_ptr.265, ptr @myrb_hba_enquiry._entry_ptr.268, ptr @myrb_hba_enquiry._entry_ptr.271, ptr @myrb_hba_enquiry._entry_ptr.274, ptr @myrb_hba_enquiry._entry_ptr.277, ptr @myrb_hba_enquiry._entry_ptr.280, ptr @myrb_hba_enquiry._entry_ptr.283, ptr @myrb_hba_enquiry._entry_ptr.286, ptr @myrb_probe._entry, ptr @myrb_probe._entry_ptr, ptr @myrb_remove._entry, ptr @myrb_remove._entry_ptr, ptr @myrb_pci_driver, ptr @myrb_raid_template, ptr @.str, ptr @myrb_id_table, ptr @DAC960_LA_privdata, ptr @DAC960_PG_privdata, ptr @DAC960_PD_privdata, ptr @DAC960_P_privdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.75, ptr @.str.76, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @myrb_template, ptr @.str.85, ptr @.str.86, ptr @myrb_detect.__key, ptr @.str.87, ptr @myrb_detect.__key.88, ptr @.str.89, ptr @myrb_detect.__key.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @myrb_shost_groups, ptr @myrb_sdev_groups, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @init_completion.__key, ptr @.str.114, ptr @.str.115, ptr @myrb_devstate_name_list, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @myrb_shost_group, ptr @myrb_shost_attrs, ptr @dev_attr_ctlr_num, ptr @dev_attr_model, ptr @dev_attr_firmware, ptr @dev_attr_flush_cache, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @myrb_sdev_group, ptr @myrb_sdev_attrs, ptr @dev_attr_rebuild, ptr @dev_attr_consistency_check, ptr @dev_attr_raid_state, ptr @dev_attr_raid_level, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @myrb_raidlevel_name_list, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.190, ptr @.str.191, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @.str.247, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.256, ptr @.str.259, ptr @.str.261, ptr @.str.262, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.287, ptr @.str.288, ptr @.str.290, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.308, ptr @.str.310, ptr @.str.311, ptr @.str.313, ptr @myrb_create_mempools.__key, ptr @.str.315, ptr @myrb_create_mempools.__key.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.331, ptr @myrb_event_msg, ptr @.str.334, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @myrb_raid_functions, ptr @switch.table.myrb_probe, ptr @switch.table.myrb_ldev_slave_alloc, ptr @switch.table.raid_level_show, ptr @switch.table.myrb_get_state], section "llvm.metadata"
@0 = internal global [359 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_raid_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_id_table to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LA_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PG_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PD_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_P_privdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LA_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LA_hw_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_err_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_enable_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_enable_mmio._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LA_mbox_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LA_mbox_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_LA_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PG_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PG_hw_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PG_mbox_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PG_mbox_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PG_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PD_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PD_hw_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PD_hw_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_PD_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_P_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_P_hw_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_P_hw_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DAC960_P_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect.__key.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_detect._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_sdev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_devstate_name_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_shost_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_shost_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctlr_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flush_cache to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_cache_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_cache_store._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_sdev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_sdev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rebuild to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_consistency_check to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raid_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raid_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_raidlevel_name_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_hba_config._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_hba_enquiry._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_ldev_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_ldev_info._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_bgi_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_create_mempools._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_create_mempools._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_create_mempools._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_create_mempools.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_create_mempools.__key.316 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_event._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_event_msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_get_event._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrb_raid_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.myrb_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.myrb_ldev_slave_alloc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.raid_level_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.myrb_get_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @myrb_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @myrb_pci_driver) #12
  %0 = load ptr, ptr @myrb_raid_template, align 4
  tail call void @raid_class_release(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid_class_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @raid_class_attach(ptr noundef nonnull @myrb_raid_functions) #12
  store ptr %call, ptr @myrb_raid_template, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @myrb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @myrb_raid_template, align 4
  tail call void @raid_class_release(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_probe(ptr noundef %dev, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %cmpl.i.i531.i = alloca %struct.completion, align 4
  %cmpl.i.i.i = alloca %struct.completion, align 4
  %enquiry2_addr.i = alloca i32, align 4
  %config2_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %entry1, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %irq_handler2.i = getelementptr inbounds %struct.myrb_privdata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %irq_handler2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_handler2.i, align 4
  %mmio_size3.i = getelementptr inbounds %struct.myrb_privdata, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %mmio_size3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmio_size3.i, align 4
  %call.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull @myrb_template, i32 noundef 668) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.85) #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 24
  %7 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 12, ptr %max_cmd_len.i, align 4
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 22
  %8 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 256, ptr %max_lun.i, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %dcmd_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 14
  tail call void @__mutex_init(ptr noundef %dcmd_mutex.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @myrb_detect.__key) #12
  %dma_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 47
  tail call void @__mutex_init(ptr noundef %dma_mutex.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @myrb_detect.__key.88) #12
  %pdev11.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %pdev11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %pdev11.i, align 4
  %call12.i = tail call i32 @pci_enable_device(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end.i.do.end66.i_crit_edge

if.end.i.do.end66.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end66.i

if.end15.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %cmp.i = icmp eq ptr %11, @DAC960_PD_hw_init
  %cmp17.i = icmp eq ptr %11, @DAC960_P_hw_init
  %or.cond.i = or i1 %cmp.i, %cmp17.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  br i1 %or.cond.i, label %if.then18.i, label %if.end15.i.if.end26.i_crit_edge

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 8
  %io_addr.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %io_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %io_addr.i, align 4
  %arrayidx20.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end26.i_crit_edge
  %.sink.in.i = phi ptr [ %arrayidx20.i, %if.then18.i ], [ %resource.i, %if.end15.i.if.end26.i_crit_edge ]
  %15 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink.i = load i32, ptr %.sink.in.i, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hostdata.i.i, ptr %driver_data.i.i.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @myrb_detect.__key.90, i16 noundef signext 3) #12
  %19 = tail call i32 @llvm.umax.i32(i32 %6, i32 4096) #12
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  %and.i = and i32 %21, -4096
  %call35.i = tail call ptr @ioremap(i32 noundef %and.i, i32 noundef %19) #12
  %mmio_base.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 3
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call35.i, ptr %mmio_base.i, align 4
  %cmp37.i = icmp eq ptr %call35.i, null
  br i1 %cmp37.i, label %do.end41.i, label %if.end43.i

do.end41.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev42.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i, ptr noundef nonnull @.str.93) #15
  br label %do.end66.i

if.end43.i:                                       ; preds = %if.end26.i
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 4
  %and46.i = and i32 %24, 4095
  %add.ptr.i = getelementptr i8, ptr %call35.i, i32 %and46.i
  %io_base.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 2
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %io_base.i, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %call49.i = tail call i32 %27(ptr noundef %dev, ptr noundef %hostdata.i.i, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end43.i.do.end66.i_crit_edge

if.end43.i.do.end66.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end66.i

if.end52.i:                                       ; preds = %if.end43.i
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef %4, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %hostdata.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp54.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp54.i, label %do.end58.i, label %myrb_detect.exit

do.end58.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev59.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %30 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59.i, ptr noundef nonnull @.str.96, i32 noundef %31) #15
  br label %do.end66.i

do.end66.i:                                       ; preds = %do.end58.i, %if.end43.i.do.end66.i_crit_edge, %do.end41.i, %if.end.i.do.end66.i_crit_edge
  %dev67.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67.i, ptr noundef nonnull @.str.99) #15
  tail call fastcc void @myrb_cleanup(ptr noundef %hostdata.i.i) #12
  br label %cleanup

myrb_detect.exit:                                 ; preds = %if.end52.i
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq.i, align 4
  %irq63.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %irq63.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %irq63.i, align 4
  %tobool.not = icmp eq ptr %hostdata.i.i, null
  br i1 %tobool.not, label %myrb_detect.exit.cleanup_crit_edge, label %if.end

myrb_detect.exit.cleanup_crit_edge:               ; preds = %myrb_detect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %myrb_detect.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enquiry2_addr.i) #12
  %35 = ptrtoint ptr %enquiry2_addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %enquiry2_addr.i, align 4, !annotation !704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config2_addr.i) #12
  %36 = ptrtoint ptr %config2_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %config2_addr.i, align 4, !annotation !704
  %host.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host.i, align 4
  %39 = ptrtoint ptr %pdev11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev11.i, align 4
  %dev.i30 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %call.i.i31 = call ptr @dma_alloc_attrs(ptr noundef %dev.i30, i32 noundef 128, ptr noundef nonnull %enquiry2_addr.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not.i32 = icmp eq ptr %call.i.i31, null
  br i1 %tobool.not.i32, label %do.end.i33, label %if.end.i34

do.end.i33:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.184) #15
  br label %myrb_get_hba_config.exit.thread

if.end.i34:                                       ; preds = %if.end
  %call.i530.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i30, i32 noundef 64, ptr noundef nonnull %config2_addr.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool5.not.i = icmp eq ptr %call.i530.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end13.i

do.end9.i:                                        ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host.i, align 4
  %shost_gendev11.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev11.i, ptr noundef nonnull @.str.187) #15
  %45 = ptrtoint ptr %enquiry2_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %enquiry2_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i30, i32 noundef 128, ptr noundef nonnull %call.i.i31, i32 noundef %46, i32 noundef 0) #12
  br label %myrb_get_hba_config.exit.thread

if.end13.i:                                       ; preds = %if.end.i34
  call void @mutex_lock_nested(ptr noundef %dma_mutex.i, i32 noundef 0) #12
  %call14.i = call fastcc zeroext i16 @myrb_hba_enquiry(ptr noundef nonnull %hostdata.i.i) #12
  call void @mutex_unlock(ptr noundef %dma_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call14.i)
  %cmp.not.i = icmp eq i16 %call14.i, 0
  br i1 %cmp.not.i, label %if.end23.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host.i, align 4
  %shost_gendev22.i = getelementptr inbounds %struct.Scsi_Host, ptr %48, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.191, ptr noundef %shost_gendev22.i, ptr noundef nonnull @.str.190) #15
  br label %myrb_get_hba_config.exit

if.end23.i:                                       ; preds = %if.end13.i
  %49 = ptrtoint ptr %enquiry2_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enquiry2_addr.i, align 4
  %dcmd_blk.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 13, i32 1, i32 2
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %51 = call ptr @memset(ptr %dcmd_blk.i.i, i32 0, i32 18)
  %id.i.i = getelementptr inbounds %struct.anon.85, ptr %dcmd_blk.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %id.i.i, align 1
  %53 = ptrtoint ptr %dcmd_blk.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 28, ptr %dcmd_blk.i.i, align 4
  %addr2.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 13, i32 1, i32 4
  %54 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %50, ptr %addr2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i.i) #12
  %55 = getelementptr inbounds i8, ptr %cmpl.i.i.i, i32 4
  %56 = call ptr @memset(ptr %55, i32 255, i32 52)
  %57 = ptrtoint ptr %cmpl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cmpl.i.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %55, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %58 = ptrtoint ptr %completion.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cmpl.i.i.i, ptr %completion.i.i.i, align 4
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %qcmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qcmd.i.i.i, align 4
  call void %60(ptr noundef nonnull %hostdata.i.i, ptr noundef %dcmd_blk.i.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i.i) #12
  %status.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %61 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %status.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp26.not.i = icmp eq i16 %62, 0
  br i1 %cmp26.not.i, label %if.end34.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host.i, align 4
  %shost_gendev33.i = getelementptr inbounds %struct.Scsi_Host, ptr %64, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.191, ptr noundef %shost_gendev33.i, ptr noundef nonnull @.str.194) #15
  br label %myrb_get_hba_config.exit

if.end34.i:                                       ; preds = %if.end23.i
  %65 = ptrtoint ptr %config2_addr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %config2_addr.i, align 4
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %67 = call ptr @memset(ptr %dcmd_blk.i.i, i32 0, i32 18)
  %68 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %id.i.i, align 1
  %69 = ptrtoint ptr %dcmd_blk.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 61, ptr %dcmd_blk.i.i, align 4
  %70 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %66, ptr %addr2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i531.i) #12
  %71 = getelementptr inbounds i8, ptr %cmpl.i.i531.i, i32 4
  %72 = call ptr @memset(ptr %71, i32 255, i32 52)
  %73 = ptrtoint ptr %cmpl.i.i531.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %cmpl.i.i531.i, align 4
  call void @__init_swait_queue_head(ptr noundef %71, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %74 = ptrtoint ptr %completion.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %cmpl.i.i531.i, ptr %completion.i.i.i, align 4
  %call3.i.i538.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %75 = ptrtoint ptr %qcmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qcmd.i.i.i, align 4
  call void %76(ptr noundef nonnull %hostdata.i.i, ptr noundef %dcmd_blk.i.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i.i538.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i531.i) #12
  %77 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %status.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i531.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp37.not.i = icmp eq i16 %78, 0
  br i1 %cmp37.not.i, label %if.end45.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %host.i, align 4
  %shost_gendev44.i = getelementptr inbounds %struct.Scsi_Host, ptr %80, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.191, ptr noundef %shost_gendev44.i, ptr noundef nonnull @.str.197) #15
  br label %myrb_get_hba_config.exit

if.end45.i:                                       ; preds = %if.end34.i
  %call46.i = call fastcc zeroext i16 @myrb_get_ldev_info(ptr noundef nonnull %hostdata.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call46.i)
  %cmp48.not.i = icmp eq i16 %call46.i, 0
  br i1 %cmp48.not.i, label %if.end56.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host.i, align 4
  %shost_gendev55.i = getelementptr inbounds %struct.Scsi_Host, ptr %82, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.191, ptr noundef %shost_gendev55.i, ptr noundef nonnull @.str.200) #15
  br label %myrb_get_hba_config.exit

if.end56.i:                                       ; preds = %if.end45.i
  %83 = ptrtoint ptr %call.i.i31 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %call.i.i31, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i8 %84, label %do.end105.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb67.i
    i8 16, label %sw.bb71.i
    i8 17, label %sw.bb75.i
    i8 18, label %sw.bb79.i
    i8 19, label %sw.bb83.i
    i8 20, label %sw.bb87.i
    i8 21, label %sw.bb91.i
    i8 22, label %sw.bb95.i
    i8 32, label %sw.bb99.i
  ]

sw.bb.i:                                          ; preds = %if.end56.i
  %scsi_cap.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 39
  %86 = ptrtoint ptr %scsi_cap.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i = load i8, ptr %scsi_cap.i, align 1
  %87 = and i8 %bf.load.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %87)
  %cmp59.i = icmp eq i8 %87, 16
  %model_name.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  br i1 %cmp59.i, label %if.then61.i, label %if.else.i

if.then61.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = call ptr @memcpy(ptr %model_name.i, ptr @.str.202, i32 9)
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = call ptr @memcpy(ptr %model_name.i, ptr @.str.203, i32 9)
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name68.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %90 = call ptr @memcpy(ptr %model_name68.i, ptr @.str.204, i32 9)
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name72.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %91 = call ptr @memcpy(ptr %model_name72.i, ptr @.str.205, i32 9)
  br label %sw.epilog.i

sw.bb75.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name76.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %92 = call ptr @memcpy(ptr %model_name76.i, ptr @.str.206, i32 9)
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name80.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %93 = call ptr @memcpy(ptr %model_name80.i, ptr @.str.207, i32 9)
  br label %sw.epilog.i

sw.bb83.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name84.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %94 = call ptr @memcpy(ptr %model_name84.i, ptr @.str.208, i32 9)
  br label %sw.epilog.i

sw.bb87.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name88.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %95 = call ptr @memcpy(ptr %model_name88.i, ptr @.str.209, i32 11)
  br label %sw.epilog.i

sw.bb91.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name92.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %96 = call ptr @memcpy(ptr %model_name92.i, ptr @.str.210, i32 10)
  br label %sw.epilog.i

sw.bb95.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name96.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %97 = call ptr @memcpy(ptr %model_name96.i, ptr @.str.211, i32 11)
  br label %sw.epilog.i

sw.bb99.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name100.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  %98 = call ptr @memcpy(ptr %model_name100.i, ptr @.str.212, i32 17)
  br label %sw.epilog.i

do.end105.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv57.i = zext i8 %84 to i32
  %99 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %host.i, align 4
  %shost_gendev107.i = getelementptr inbounds %struct.Scsi_Host, ptr %100, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.191, ptr noundef %shost_gendev107.i, ptr noundef nonnull @.str.214, i32 noundef %conv57.i) #15
  br label %do.end299.i

sw.epilog.i:                                      ; preds = %sw.bb99.i, %sw.bb95.i, %sw.bb91.i, %sw.bb87.i, %sw.bb83.i, %sw.bb79.i, %sw.bb75.i, %sw.bb71.i, %sw.bb67.i, %if.else.i, %if.then61.i
  %fw.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1
  %101 = ptrtoint ptr %fw.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp112.i = icmp eq i8 %102, 0
  br i1 %cmp112.i, label %if.then114.i, label %sw.epilog.i.if.end121.i_crit_edge

sw.epilog.i.if.end121.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121.i

if.then114.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %enquiry.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 35
  %103 = ptrtoint ptr %enquiry.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %enquiry.i, align 4
  %fw_major_version.i = getelementptr inbounds %struct.myrb_enquiry, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %fw_major_version.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fw_major_version.i, align 1
  %107 = ptrtoint ptr %fw.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %fw.i, align 1
  %108 = load ptr, ptr %enquiry.i, align 4
  %fw_minor_version.i = getelementptr inbounds %struct.myrb_enquiry, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %fw_minor_version.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fw_minor_version.i, align 1
  %minor_version.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %minor_version.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %minor_version.i, align 1
  %firmware_type.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1, i32 3
  %112 = ptrtoint ptr %firmware_type.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 48, ptr %firmware_type.i, align 1
  %turn_id.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1, i32 2
  %113 = ptrtoint ptr %turn_id.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %turn_id.i, align 1
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then114.i, %sw.epilog.i.if.end121.i_crit_edge
  %fw_version.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %fw.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fw.i, align 1
  %conv125.i = zext i8 %115 to i32
  %minor_version127.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %minor_version127.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %minor_version127.i, align 1
  %conv128.i = zext i8 %117 to i32
  %firmware_type130.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %firmware_type130.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %firmware_type130.i, align 1
  %conv131.i = zext i8 %119 to i32
  %turn_id133.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 1, i32 2
  %120 = ptrtoint ptr %turn_id133.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %turn_id133.i, align 1
  %conv134.i = zext i8 %121 to i32
  %call135.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 12, ptr noundef nonnull @.str.216, i32 noundef %conv125.i, i32 noundef %conv128.i, i32 noundef %conv131.i, i32 noundef %conv134.i) #12
  %122 = ptrtoint ptr %fw.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %fw.i, align 1
  %124 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.359)
  switch i8 %123, label %if.end121.i.do.end184.i_crit_edge [
    i8 5, label %land.lhs.true.i
    i8 4, label %land.lhs.true151.i
    i8 3, label %land.lhs.true163.i
    i8 2, label %land.lhs.true175.i
  ]

if.end121.i.do.end184.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end184.i

land.lhs.true.i:                                  ; preds = %if.end121.i
  %125 = ptrtoint ptr %minor_version127.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %minor_version127.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %126)
  %cmp144.i = icmp ugt i8 %126, 5
  br i1 %cmp144.i, label %land.lhs.true.i.if.end189.i_crit_edge, label %land.lhs.true.i.do.end184.i_crit_edge

land.lhs.true.i.do.end184.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end184.i

land.lhs.true.i.if.end189.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i

land.lhs.true151.i:                               ; preds = %if.end121.i
  %127 = ptrtoint ptr %minor_version127.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %minor_version127.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %128)
  %cmp155.i = icmp ugt i8 %128, 5
  br i1 %cmp155.i, label %land.lhs.true151.i.if.end189.i_crit_edge, label %land.lhs.true151.i.do.end184.i_crit_edge

land.lhs.true151.i.do.end184.i_crit_edge:         ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end184.i

land.lhs.true151.i.if.end189.i_crit_edge:         ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i

land.lhs.true163.i:                               ; preds = %if.end121.i
  %129 = ptrtoint ptr %minor_version127.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %minor_version127.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %130)
  %cmp167.i = icmp ugt i8 %130, 50
  br i1 %cmp167.i, label %land.lhs.true163.i.if.end189.i_crit_edge, label %land.lhs.true163.i.do.end184.i_crit_edge

land.lhs.true163.i.do.end184.i_crit_edge:         ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end184.i

land.lhs.true163.i.if.end189.i_crit_edge:         ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i

land.lhs.true175.i:                               ; preds = %if.end121.i
  %call178.i = call i32 @strcmp(ptr noundef %fw_version.i, ptr noundef nonnull dereferenceable(5) @.str.217) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call178.i)
  %cmp179.i = icmp sgt i32 %call178.i, -1
  br i1 %cmp179.i, label %land.lhs.true175.i.if.end189.i_crit_edge, label %land.lhs.true175.i.do.end184.i_crit_edge

land.lhs.true175.i.do.end184.i_crit_edge:         ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end184.i

land.lhs.true175.i.if.end189.i_crit_edge:         ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i

do.end184.i:                                      ; preds = %land.lhs.true175.i.do.end184.i_crit_edge, %land.lhs.true163.i.do.end184.i_crit_edge, %land.lhs.true151.i.do.end184.i_crit_edge, %land.lhs.true.i.do.end184.i_crit_edge, %if.end121.i.do.end184.i_crit_edge
  %131 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %host.i, align 4
  %shost_gendev186.i = getelementptr inbounds %struct.Scsi_Host, ptr %132, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.191, ptr noundef %shost_gendev186.i, ptr noundef nonnull @.str.219, ptr noundef %fw_version.i) #15
  br label %do.end299.i

if.end189.i:                                      ; preds = %land.lhs.true175.i.if.end189.i_crit_edge, %land.lhs.true163.i.if.end189.i_crit_edge, %land.lhs.true151.i.if.end189.i_crit_edge, %land.lhs.true.i.if.end189.i_crit_edge
  %model.i = getelementptr inbounds %struct.anon.103, ptr %call.i.i31, i32 0, i32 2
  %133 = ptrtoint ptr %model.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %model.i, align 1
  %switch.tableidx = add i8 %134, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %135 = icmp ult i8 %switch.tableidx, 4
  br i1 %135, label %switch.lookup, label %sw.default195.i

sw.default195.i:                                  ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #14
  %cfg_chan.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 3
  %136 = ptrtoint ptr %cfg_chan.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cfg_chan.i, align 1
  %conv196.i = zext i8 %137 to i32
  br label %sw.epilog197.i

switch.lookup:                                    ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.myrb_probe, i32 0, i32 %138
  %139 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %139)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog197.i

sw.epilog197.i:                                   ; preds = %switch.lookup, %sw.default195.i
  %pchan_max.0.i = phi i32 [ %conv196.i, %sw.default195.i ], [ %switch.load, %switch.lookup ]
  %cur_chan.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 4
  %140 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %cur_chan.i, align 1
  %conv198.i = zext i8 %141 to i32
  %scsi_cap199.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 39
  %142 = ptrtoint ptr %scsi_cap199.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load200.i = load i8, ptr %scsi_cap199.i, align 1
  %bf.lshr201.i = lshr i8 %bf.load200.i, 6
  %trunc.i = trunc i8 %bf.lshr201.i to i2
  %143 = sext i2 %trunc.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %143)
  %switch.selectcmp.i = icmp eq i2 %trunc.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 16, i8 8
  %144 = sext i2 %trunc.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %144)
  %switch.selectcmp547.i = icmp eq i2 %trunc.i, -2
  %switch.select548.i = select i1 %switch.selectcmp547.i, i8 32, i8 %switch.select.i
  %bus_width214.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 3
  %145 = ptrtoint ptr %bus_width214.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %switch.select548.i, ptr %bus_width214.i, align 2
  %ldev_block_size.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 35
  %146 = ptrtoint ptr %ldev_block_size.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %ldev_block_size.i, align 1
  %conv219.i = zext i16 %147 to i32
  %148 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv219.i, ptr %hostdata.i.i, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 20
  %149 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv198.i, ptr %max_channel.i, align 8
  %max_targets.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 5
  %150 = ptrtoint ptr %max_targets.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %max_targets.i, align 1
  %conv221.i = zext i8 %151 to i32
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 21
  %152 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv221.i, ptr %max_id.i, align 4
  %mem_size.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 12
  %153 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %mem_size.i, align 1
  %shr.i = lshr i32 %154, 20
  %fault_mgmt.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 42
  %155 = ptrtoint ptr %fault_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %fault_mgmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %156)
  %cmp223.i = icmp eq i8 %156, 32
  %safte_enabled.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 10
  %frombool.i = zext i1 %cmp223.i to i8
  %157 = ptrtoint ptr %safte_enabled.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %frombool.i, ptr %safte_enabled.i, align 2
  %enquiry225.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 35
  %158 = ptrtoint ptr %enquiry225.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %enquiry225.i, align 4
  %max_tcq.i = getelementptr inbounds %struct.myrb_enquiry, ptr %159, i32 0, i32 9
  %160 = ptrtoint ptr %max_tcq.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %max_tcq.i, align 1
  %conv226.i = zext i8 %161 to i32
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 26
  %162 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv226.i, ptr %can_queue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %161)
  %cmp228.i = icmp ult i8 %161, 3
  br i1 %cmp228.i, label %if.then230.i, label %sw.epilog197.i.if.end233.i_crit_edge

sw.epilog197.i.if.end233.i_crit_edge:             ; preds = %sw.epilog197.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233.i

if.then230.i:                                     ; preds = %sw.epilog197.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_cmds.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 21
  %163 = ptrtoint ptr %max_cmds.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %max_cmds.i, align 1
  %conv231.i = zext i16 %164 to i32
  %165 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv231.i, ptr %can_queue.i, align 4
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.then230.i, %sw.epilog197.i.if.end233.i_crit_edge
  %166 = phi i32 [ %conv231.i, %if.then230.i ], [ %conv226.i, %sw.epilog197.i.if.end233.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %166)
  %cmp235.i = icmp ult i32 %166, 3
  br i1 %cmp235.i, label %if.end233.i.if.end245.sink.split.i_crit_edge, label %if.end239.i

if.end233.i.if.end245.sink.split.i_crit_edge:     ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245.sink.split.i

if.end239.i:                                      ; preds = %if.end233.i
  %167 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr.i = load i32, ptr %can_queue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %.pr.i)
  %cmp241.i = icmp sgt i32 %.pr.i, 254
  br i1 %cmp241.i, label %if.end239.i.if.end245.sink.split.i_crit_edge, label %if.end239.i.if.end245.i_crit_edge

if.end239.i.if.end245.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245.i

if.end239.i.if.end245.sink.split.i_crit_edge:     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245.sink.split.i

if.end245.sink.split.i:                           ; preds = %if.end239.i.if.end245.sink.split.i_crit_edge, %if.end233.i.if.end245.sink.split.i_crit_edge
  %.sink546.i = phi i32 [ 1, %if.end233.i.if.end245.sink.split.i_crit_edge ], [ 254, %if.end239.i.if.end245.sink.split.i_crit_edge ]
  %168 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %.sink546.i, ptr %can_queue.i, align 4
  br label %if.end245.i

if.end245.i:                                      ; preds = %if.end245.sink.split.i, %if.end239.i.if.end245.i_crit_edge
  %max_sectors.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 25
  %169 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %max_sectors.i, align 1
  %conv246.i = zext i16 %170 to i32
  %max_sectors247.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 30
  %171 = ptrtoint ptr %max_sectors247.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv246.i, ptr %max_sectors247.i, align 8
  %max_sge.i = getelementptr inbounds %struct.myrb_enquiry2, ptr %call.i.i31, i32 0, i32 22
  %172 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 2)
  %173 = load i16, ptr %max_sge.i, align 1
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 28
  %174 = call i16 @llvm.umin.i16(i16 %173, i16 32) #12
  %175 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %sg_tablesize.i, align 2
  %blocks_per_stripe.i = getelementptr inbounds %struct.myrb_config2, ptr %call.i530.i, i32 0, i32 10
  %176 = ptrtoint ptr %blocks_per_stripe.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %blocks_per_stripe.i, align 1
  %conv255.i = zext i8 %177 to i16
  %block_factor.i = getelementptr inbounds %struct.myrb_config2, ptr %call.i530.i, i32 0, i32 5
  %178 = ptrtoint ptr %block_factor.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %block_factor.i, align 2
  %conv256.i = zext i8 %179 to i16
  %mul.i = mul nuw i16 %conv256.i, %conv255.i
  %180 = lshr i16 %mul.i, 1
  %stripe_size.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %181 = ptrtoint ptr %stripe_size.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %stripe_size.i, align 4
  %blocks_per_cacheline.i = getelementptr inbounds %struct.myrb_config2, ptr %call.i530.i, i32 0, i32 9
  %182 = ptrtoint ptr %blocks_per_cacheline.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %blocks_per_cacheline.i, align 2
  %conv259.i = zext i8 %183 to i16
  %184 = load i8, ptr %block_factor.i, align 2
  %conv261.i = zext i8 %184 to i16
  %mul262.i = mul nuw i16 %conv261.i, %conv259.i
  %185 = lshr i16 %mul262.i, 1
  %segment_size.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 5
  %186 = ptrtoint ptr %segment_size.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %segment_size.i, align 2
  %ldev_geom_heads.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %187 = ptrtoint ptr %ldev_geom_heads.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -1, ptr %ldev_geom_heads.i, align 4
  %ldev_geom_sectors.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %ldev_geom_sectors.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 63, ptr %ldev_geom_sectors.i, align 1
  %drive_geometry.i = getelementptr inbounds %struct.myrb_config2, ptr %call.i530.i, i32 0, i32 18
  %189 = ptrtoint ptr %drive_geometry.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %bf.load265.i = load i8, ptr %drive_geometry.i, align 4
  %190 = and i8 %bf.load265.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool268.not.i = icmp eq i8 %190, 0
  br i1 %tobool268.not.i, label %if.end245.i.if.end272.i_crit_edge, label %if.then269.i

if.end245.i.if.end272.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end272.i

if.then269.i:                                     ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #14
  %191 = ptrtoint ptr %ldev_geom_heads.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -128, ptr %ldev_geom_heads.i, align 4
  %192 = ptrtoint ptr %ldev_geom_sectors.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 32, ptr %ldev_geom_sectors.i, align 1
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then269.i, %if.end245.i.if.end272.i_crit_edge
  %193 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %fw_version.i, align 4
  %195 = zext i8 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.360)
  switch i8 %194, label %if.end272.i.if.end296.i_crit_edge [
    i8 52, label %land.lhs.true277.i
    i8 53, label %land.lhs.true289.i
  ]

if.end272.i.if.end296.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296.i

land.lhs.true277.i:                               ; preds = %if.end272.i
  %call280.i = call i32 @strcmp(ptr noundef %fw_version.i, ptr noundef nonnull dereferenceable(5) @.str.221) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call280.i)
  %cmp281.i = icmp sgt i32 %call280.i, -1
  br i1 %cmp281.i, label %land.lhs.true277.i.if.then295.i_crit_edge, label %land.lhs.true277.i.if.end296.i_crit_edge

land.lhs.true277.i.if.end296.i_crit_edge:         ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296.i

land.lhs.true277.i.if.then295.i_crit_edge:        ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295.i

land.lhs.true289.i:                               ; preds = %if.end272.i
  %call292.i = call i32 @strcmp(ptr noundef %fw_version.i, ptr noundef nonnull dereferenceable(5) @.str.222) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call292.i)
  %cmp293.i = icmp sgt i32 %call292.i, -1
  br i1 %cmp293.i, label %land.lhs.true289.i.if.then295.i_crit_edge, label %land.lhs.true289.i.if.end296.i_crit_edge

land.lhs.true289.i.if.end296.i_crit_edge:         ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296.i

land.lhs.true289.i.if.then295.i_crit_edge:        ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295.i

if.then295.i:                                     ; preds = %land.lhs.true289.i.if.then295.i_crit_edge, %land.lhs.true277.i.if.then295.i_crit_edge
  %bgi_status_supported.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 9
  %196 = ptrtoint ptr %bgi_status_supported.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %bgi_status_supported.i, align 1
  call fastcc void @myrb_bgi_control(ptr noundef nonnull %hostdata.i.i) #12
  br label %if.end296.i

if.end296.i:                                      ; preds = %if.then295.i, %land.lhs.true289.i.if.end296.i_crit_edge, %land.lhs.true277.i.if.end296.i_crit_edge, %if.end272.i.if.end296.i_crit_edge
  %last_rbld_status.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 37, i32 10
  %197 = ptrtoint ptr %last_rbld_status.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %last_rbld_status.i, align 4
  br label %do.end299.i

do.end299.i:                                      ; preds = %if.end296.i, %do.end184.i, %do.end105.i
  %pchan_max.1.i = phi i32 [ 0, %do.end105.i ], [ %pchan_max.0.i, %if.end296.i ], [ 0, %do.end184.i ]
  %pchan_cur.0.i = phi i32 [ 0, %do.end105.i ], [ %conv198.i, %if.end296.i ], [ 0, %do.end184.i ]
  %ret.0.i = phi i32 [ -19, %do.end105.i ], [ 0, %if.end296.i ], [ -19, %do.end184.i ]
  %memsize.0.i = phi i32 [ 0, %do.end105.i ], [ %shr.i, %if.end296.i ], [ 0, %do.end184.i ]
  %198 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %host.i, align 4
  %shost_gendev301.i = getelementptr inbounds %struct.Scsi_Host, ptr %199, i32 0, i32 49
  %model_name302.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 12
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev301.i, ptr noundef nonnull @.str.224, ptr noundef %model_name302.i) #15
  %200 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %host.i, align 4
  %shost_gendev308.i = getelementptr inbounds %struct.Scsi_Host, ptr %201, i32 0, i32 49
  %fw_version309.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 1, i32 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev308.i, ptr noundef nonnull @.str.227, ptr noundef %fw_version309.i, i32 noundef %memsize.0.i) #15
  %io_addr.i36 = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 2
  %202 = ptrtoint ptr %io_addr.i36 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %io_addr.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp311.i = icmp eq i32 %203, 0
  %204 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %host.i, align 4
  %shost_gendev318.i = getelementptr inbounds %struct.Scsi_Host, ptr %205, i32 0, i32 49
  %206 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %16, align 4
  %208 = ptrtoint ptr %irq63.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %irq63.i, align 4
  br i1 %cmp311.i, label %do.end316.i, label %do.end322.i

do.end316.i:                                      ; preds = %do.end299.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev318.i, ptr noundef nonnull @.str.230, i32 noundef %207, i32 noundef %209) #15
  br label %do.end331.i

do.end322.i:                                      ; preds = %do.end299.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev318.i, ptr noundef nonnull @.str.233, i32 noundef %203, i32 noundef %207, i32 noundef %209) #15
  br label %do.end331.i

do.end331.i:                                      ; preds = %do.end322.i, %do.end316.i
  %210 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %host.i, align 4
  %shost_gendev333.i = getelementptr inbounds %struct.Scsi_Host, ptr %211, i32 0, i32 49
  %can_queue335.i = getelementptr inbounds %struct.Scsi_Host, ptr %211, i32 0, i32 26
  %212 = ptrtoint ptr %can_queue335.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %can_queue335.i, align 4
  %max_sectors337.i = getelementptr inbounds %struct.Scsi_Host, ptr %211, i32 0, i32 30
  %214 = ptrtoint ptr %max_sectors337.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %max_sectors337.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev333.i, ptr noundef nonnull @.str.236, i32 noundef %213, i32 noundef %215) #15
  %216 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %host.i, align 4
  %shost_gendev342.i = getelementptr inbounds %struct.Scsi_Host, ptr %217, i32 0, i32 49
  %can_queue344.i = getelementptr inbounds %struct.Scsi_Host, ptr %217, i32 0, i32 26
  %218 = ptrtoint ptr %can_queue344.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %can_queue344.i, align 4
  %sg_tablesize346.i = getelementptr inbounds %struct.Scsi_Host, ptr %217, i32 0, i32 28
  %220 = ptrtoint ptr %sg_tablesize346.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %sg_tablesize346.i, align 2
  %conv347.i = zext i16 %221 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev342.i, ptr noundef nonnull @.str.239, i32 noundef %219, i32 noundef %conv347.i, i32 noundef 32) #15
  %222 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %host.i, align 4
  %shost_gendev352.i = getelementptr inbounds %struct.Scsi_Host, ptr %223, i32 0, i32 49
  %stripe_size353.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %224 = ptrtoint ptr %stripe_size353.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %stripe_size353.i, align 4
  %conv354.i = zext i16 %225 to i32
  %segment_size355.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 5
  %226 = ptrtoint ptr %segment_size355.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %segment_size355.i, align 2
  %conv356.i = zext i16 %227 to i32
  %ldev_geom_heads357.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %228 = ptrtoint ptr %ldev_geom_heads357.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %ldev_geom_heads357.i, align 4
  %conv358.i = zext i8 %229 to i32
  %ldev_geom_sectors359.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 2
  %230 = ptrtoint ptr %ldev_geom_sectors359.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %ldev_geom_sectors359.i, align 1
  %conv360.i = zext i8 %231 to i32
  %safte_enabled361.i = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i.i, i32 0, i32 10
  %232 = ptrtoint ptr %safte_enabled361.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %safte_enabled361.i, align 2, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool362.not.i = icmp eq i8 %233, 0
  %cond.i = select i1 %tobool362.not.i, ptr @.str.245, ptr @.str.244
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev352.i, ptr noundef nonnull @.str.242, i32 noundef %conv354.i, i32 noundef %conv356.i, i32 noundef %conv358.i, i32 noundef %conv360.i, ptr noundef nonnull %cond.i) #15
  %234 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %host.i, align 4
  %shost_gendev368.i = getelementptr inbounds %struct.Scsi_Host, ptr %235, i32 0, i32 49
  %enquiry369.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 35
  %236 = ptrtoint ptr %enquiry369.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %enquiry369.i, align 4
  %pdev_dead.i = getelementptr inbounds %struct.myrb_enquiry, ptr %237, i32 0, i32 15
  %238 = ptrtoint ptr %pdev_dead.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %pdev_dead.i, align 1
  %conv370.i = zext i8 %239 to i32
  %max_id372.i = getelementptr inbounds %struct.Scsi_Host, ptr %235, i32 0, i32 21
  %240 = ptrtoint ptr %max_id372.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %max_id372.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev368.i, ptr noundef nonnull @.str.247, i32 noundef %pchan_cur.0.i, i32 noundef %pchan_max.1.i, i32 noundef 0, i32 noundef %conv370.i, i32 noundef %241) #15
  %242 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %host.i, align 4
  %shost_gendev377.i = getelementptr inbounds %struct.Scsi_Host, ptr %243, i32 0, i32 49
  %244 = ptrtoint ptr %enquiry369.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %enquiry369.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %245, align 1
  %conv379.i = zext i8 %247 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev377.i, ptr noundef nonnull @.str.250, i32 noundef %conv379.i, i32 noundef 32) #15
  br label %myrb_get_hba_config.exit

myrb_get_hba_config.exit.thread:                  ; preds = %do.end9.i, %do.end.i33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config2_addr.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enquiry2_addr.i) #12
  br label %if.then3

myrb_get_hba_config.exit:                         ; preds = %do.end331.i, %do.end53.i, %do.end42.i, %do.end31.i, %do.end20.i
  %ret.1.i = phi i32 [ -19, %do.end20.i ], [ -19, %do.end31.i ], [ -19, %do.end42.i ], [ -19, %do.end53.i ], [ %ret.0.i, %do.end331.i ]
  %248 = ptrtoint ptr %enquiry2_addr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %enquiry2_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i30, i32 noundef 128, ptr noundef nonnull %call.i.i31, i32 noundef %249, i32 noundef 0) #12
  %250 = ptrtoint ptr %config2_addr.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %config2_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i30, i32 noundef 64, ptr noundef nonnull %call.i530.i, i32 noundef %251, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config2_addr.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enquiry2_addr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %myrb_get_hba_config.exit.if.then3_crit_edge, label %if.end4

myrb_get_hba_config.exit.if.then3_crit_edge:      ; preds = %myrb_get_hba_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %myrb_get_hba_config.exit.if.then3_crit_edge, %myrb_get_hba_config.exit.thread
  %retval.0.i3858 = phi i32 [ -12, %myrb_get_hba_config.exit.thread ], [ %ret.1.i, %myrb_get_hba_config.exit.if.then3_crit_edge ]
  call fastcc void @myrb_cleanup(ptr noundef nonnull %hostdata.i.i)
  br label %cleanup

if.end4:                                          ; preds = %myrb_get_hba_config.exit
  %252 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %host.i, align 4
  %sg_tablesize.i40 = getelementptr inbounds %struct.Scsi_Host, ptr %253, i32 0, i32 28
  %254 = ptrtoint ptr %sg_tablesize.i40 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %sg_tablesize.i40, align 2
  %conv.i = zext i16 %255 to i32
  %mul.i41 = shl nuw nsw i32 %conv.i, 3
  %dev.i42 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i43 = call ptr @dma_pool_create(ptr noundef nonnull @.str.303, ptr noundef %dev.i42, i32 noundef %mul.i41, i32 noundef 8, i32 noundef 0) #12
  %sg_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 6, i32 1
  %256 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call.i43, ptr %sg_pool.i, align 4
  %cmp.i44 = icmp eq ptr %call.i43, null
  br i1 %cmp.i44, label %do.end.i46, label %if.end.i48

do.end.i46:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %257 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %host.i, align 4
  %shost_gendev.i45 = getelementptr inbounds %struct.Scsi_Host, ptr %258, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev.i45, ptr noundef nonnull @.str.304) #15
  br label %failed

if.end.i48:                                       ; preds = %if.end4
  %call5.i = call ptr @dma_pool_create(ptr noundef nonnull @.str.306, ptr noundef %dev.i42, i32 noundef 88, i32 noundef 4, i32 noundef 0) #12
  %dcdb_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 7
  %259 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call5.i, ptr %dcdb_pool.i, align 4
  %tobool.not.i47 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i47, label %if.then7.i, label %if.end15.i49

if.then7.i:                                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #14
  %260 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sg_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %261) #12
  %262 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %sg_pool.i, align 4
  %263 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %host.i, align 4
  %shost_gendev14.i = getelementptr inbounds %struct.Scsi_Host, ptr %264, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev14.i, ptr noundef nonnull @.str.308) #15
  br label %failed

if.end15.i49:                                     ; preds = %if.end.i48
  %work_q_name.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 4
  %265 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %host.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %266, i32 0, i32 17
  %267 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %host_no.i, align 4
  %call17.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %work_q_name.i, i32 noundef 20, ptr noundef nonnull @.str.310, i32 noundef %268) #12
  %call20.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.311, i32 noundef 917514, i32 noundef 1, ptr noundef %work_q_name.i) #12
  %work_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 3
  %269 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call20.i, ptr %work_q.i, align 4
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end7

if.then23.i:                                      ; preds = %if.end15.i49
  call void @__sanitizer_cov_trace_pc() #14
  %270 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dcdb_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %271) #12
  %272 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %dcdb_pool.i, align 4
  %273 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %sg_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %274) #12
  %275 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %sg_pool.i, align 4
  %276 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %host.i, align 4
  %shost_gendev32.i = getelementptr inbounds %struct.Scsi_Host, ptr %277, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev32.i, ptr noundef nonnull @.str.313) #15
  br label %failed

if.end7:                                          ; preds = %if.end15.i49
  %monitor_work.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  call void @__init_work(ptr noundef %monitor_work.i, i32 noundef 0) #12
  %278 = ptrtoint ptr %monitor_work.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 -64, ptr %monitor_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 1
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.315, ptr noundef nonnull @myrb_create_mempools.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry42.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %279 = ptrtoint ptr %entry42.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store volatile ptr %entry42.i, ptr %entry42.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 4
  %280 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %entry42.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 5
  %281 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @myrb_monitor, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 5, i32 1, i32 4, i32 2
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.317, ptr noundef nonnull @myrb_create_mempools.__key.316) #12
  %282 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %work_q.i, align 4
  %call.i.i50 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %283, ptr noundef %monitor_work.i, i32 noundef 1) #12
  %284 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %host.i, align 4
  %call.i52 = call i32 @scsi_add_host_with_dma(ptr noundef %285, ptr noundef %dev.i42, ptr noundef %dev.i42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool10.not = icmp eq i32 %call.i52, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i42, ptr noundef nonnull @.str.83, i32 noundef %call.i52) #15
  call fastcc void @myrb_destroy_mempools(ptr noundef nonnull %hostdata.i.i)
  br label %failed

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %286 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %host.i, align 4
  call void @scsi_scan_host(ptr noundef %287) #12
  br label %cleanup

failed:                                           ; preds = %do.end, %if.then23.i, %if.then7.i, %do.end.i46
  %ret.0 = phi i32 [ %call.i52, %do.end ], [ -12, %do.end.i46 ], [ -12, %if.then23.i ], [ -12, %if.then7.i ]
  call fastcc void @myrb_cleanup(ptr noundef nonnull %hostdata.i.i)
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end13, %if.then3, %myrb_detect.exit.cleanup_crit_edge, %do.end66.i, %do.end.i
  %retval.0 = phi i32 [ %retval.0.i3858, %if.then3 ], [ %ret.0, %failed ], [ 0, %if.end13 ], [ -19, %myrb_detect.exit.cleanup_crit_edge ], [ -19, %do.end66.i ], [ -19, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %cmpl.i.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev, ptr noundef nonnull @.str.357) #15
  %dcmd_blk.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 52
  %dcmd_mutex.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 54
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %4 = call ptr @memset(ptr %dcmd_blk.i, i32 0, i32 18)
  %id.i = getelementptr inbounds %struct.anon.85, ptr %dcmd_blk.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %id.i, align 1
  %6 = ptrtoint ptr %dcmd_blk.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %dcmd_blk.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  %7 = getelementptr inbounds i8, ptr %cmpl.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 52)
  %9 = ptrtoint ptr %cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmpl.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 52, i32 2
  %10 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cmpl.i.i, ptr %completion.i.i, align 4
  %queue_lock.i.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 26
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #12
  %qcmd.i.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %qcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qcmd.i.i, align 4
  call void %12(ptr noundef %1, ptr noundef %dcmd_blk.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call3.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  call fastcc void @myrb_cleanup(ptr noundef %1)
  %monitor_work.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 21
  %call.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work.i) #12
  %work_q.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %work_q.i, align 4
  call void @destroy_workqueue(ptr noundef %14) #12
  %sg_pool.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %sg_pool.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %16) #12
  %dcdb_pool.i = getelementptr inbounds %struct.myrb_hba, ptr %1, i32 0, i32 25
  %17 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dcdb_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %18) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_LA_hw_init(ptr noundef %pdev, ptr noundef %cb, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -1) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @arm_heavy_mb() #12
  %add.ptr.i35 = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i35, i8 2) #12, !srcloc !707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #12
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i35) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !710
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i51 = icmp eq i8 %2, 0
  br i1 %tobool.not.i51, label %while.body.lr.ph, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i37 = getelementptr i8, ptr %base, i32 99
  %add.ptr7.i = getelementptr i8, ptr %base, i32 80
  %add.ptr13.i = getelementptr i8, ptr %base, i32 81
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %timeout.052 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !711
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i38 = icmp eq i8 %4, 0
  br i1 %tobool.not.i38, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %and3.i = and i8 %3, -3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !712
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !713
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !714
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i37, i8 -1) #12, !srcloc !707
  %call2 = tail call fastcc zeroext i1 @myrb_err_status(ptr noundef %cb, i8 noundef zeroext %and3.i, i8 noundef zeroext %5, i8 noundef zeroext %6)
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %timeout.052, 1
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i35) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !710
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.052)
  %cmp = icmp ult i32 %timeout.052, 999999
  %or.cond = select i1 %tobool.not.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end5:                                          ; preds = %while.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc zeroext i1 @myrb_enable_mmio(ptr noundef %cb, ptr noundef nonnull @DAC960_LA_mbox_init)
  br i1 %call6, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !715
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i35, i8 8) #12, !srcloc !707
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !716
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -5) #12, !srcloc !707
  %qcmd = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %10 = ptrtoint ptr %qcmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @myrb_qcmd, ptr %qcmd, align 4
  %write_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 28
  %11 = ptrtoint ptr %write_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @DAC960_LA_write_cmd_mbox, ptr %write_cmd_mbox, align 4
  %dual_mode_interface = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 8
  %12 = ptrtoint ptr %dual_mode_interface to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dual_mode_interface, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool.not, ptr @DAC960_LA_hw_mbox_new_cmd, ptr @DAC960_LA_mem_mbox_new_cmd
  %14 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 29
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select, ptr %14, align 4
  %disable_intr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 30
  %16 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @DAC960_LA_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 31
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @DAC960_LA_reset_ctrl, ptr %reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end12 ], [ -19, %do.end10 ], [ -19, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_LA_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %queue_lock = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 26
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !717
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 97
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 3) #12, !srcloc !707
  %next_stat_mbox5 = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 51
  %2 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_stat_mbox5, align 4
  %valid87 = getelementptr inbounds %struct.myrb_stat_mbox, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %valid87 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load88 = load i8, ptr %valid87, align 1
  %bf.clear89 = and i8 %bf.load88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear89)
  %tobool.not90 = icmp eq i8 %bf.clear89, 0
  br i1 %tobool.not90, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 53
  %dcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 52
  %host = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 18
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 17
  %last_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 50
  %first_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 49
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.body.lr.ph
  %next_stat_mbox.091 = phi ptr [ %3, %while.body.lr.ph ], [ %next_stat_mbox.1, %if.end43.while.body_crit_edge ]
  %5 = ptrtoint ptr %next_stat_mbox.091 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %next_stat_mbox.091, align 2
  %conv7 = zext i8 %6 to i32
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.361)
  switch i8 %6, label %if.else14 [
    i8 1, label %while.body.if.end21_crit_edge
    i8 2, label %if.then13
  ]

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else14:                                        ; preds = %while.body
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %sub = add nsw i32 %conv7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp.i = icmp eq i32 %sub, -1
  br i1 %cmp.i, label %if.else14.do.end28_crit_edge, label %if.end.i

if.else14.do.end28_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.end.i:                                         ; preds = %if.else14
  %shr.i.i = lshr i32 %sub, 16
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr.i.i)
  %cmp1.i = icmp ugt i32 %11, %shr.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.do.end28_crit_edge

if.end.i.do.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then3.i:                                       ; preds = %if.end.i
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %shr.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %conv6.i = and i32 %sub, 65535
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %17, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end28_crit_edge

if.then3.i.do.end28_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %conv6.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %21) #12, !srcloc !718
  %22 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %23, i32 %conv6.i
  %24 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end8.i.do.end28_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end28_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i22.not.i = icmp eq i32 %27, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %25, i32 1
  %tobool17.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i22.not.i, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end28_crit_edge, label %if.then18

lor.lhs.false.i.do.end28_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then18:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i73 = getelementptr %struct.request, ptr %25, i32 2, i32 19
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then13, %while.body.if.end21_crit_edge
  %scmd.0 = phi ptr [ null, %if.then13 ], [ %add.ptr.i.i, %if.then18 ], [ null, %while.body.if.end21_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then13 ], [ %add.ptr.i73, %if.then18 ], [ %dcmd_blk, %while.body.if.end21_crit_edge ]
  %tobool22.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool22.not, label %if.end21.do.end28_crit_edge, label %if.then23

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.myrb_stat_mbox, ptr %next_stat_mbox.091, i32 0, i32 2
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %status, align 2
  %status24 = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %30 = ptrtoint ptr %status24 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %status24, align 4
  br label %if.end30

do.end28:                                         ; preds = %if.end21.do.end28_crit_edge, %lor.lhs.false.i.do.end28_crit_edge, %if.end8.i.do.end28_crit_edge, %if.then3.i.do.end28_crit_edge, %if.end.i.do.end28_crit_edge, %if.else14.do.end28_crit_edge
  %scmd.082 = phi ptr [ %scmd.0, %if.end21.do.end28_crit_edge ], [ null, %if.else14.do.end28_crit_edge ], [ null, %if.end8.i.do.end28_crit_edge ], [ null, %if.end.i.do.end28_crit_edge ], [ null, %if.then3.i.do.end28_crit_edge ], [ null, %lor.lhs.false.i.do.end28_crit_edge ]
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv7) #15
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.then23
  %tobool22.not85 = phi i1 [ true, %do.end28 ], [ false, %if.then23 ]
  %cmd_blk.083 = phi ptr [ null, %do.end28 ], [ %cmd_blk.0, %if.then23 ]
  %scmd.081 = phi ptr [ %scmd.082, %do.end28 ], [ %scmd.0, %if.then23 ]
  %33 = ptrtoint ptr %next_stat_mbox.091 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %next_stat_mbox.091, align 2
  %incdec.ptr = getelementptr %struct.myrb_stat_mbox, ptr %next_stat_mbox.091, i32 1
  %34 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %last_stat_mbox, align 4
  %cmp31 = icmp ugt ptr %incdec.ptr, %35
  br i1 %cmp31, label %if.then33, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %first_stat_mbox, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %next_stat_mbox.1 = phi ptr [ %37, %if.then33 ], [ %incdec.ptr, %if.end30.if.end34_crit_edge ]
  br i1 %tobool22.not85, label %if.end34.if.end43_crit_edge, label %if.then36

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp38 = icmp ult i8 %6, 3
  br i1 %cmp38, label %if.end.i75, label %if.else41

if.end.i75:                                       ; preds = %if.then36
  %completion.i = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.083, i32 0, i32 2
  %38 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %completion.i, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i, label %if.end.i75.if.end43_crit_edge, label %if.then2.i

if.end.i75.if.end43_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then2.i:                                       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @complete(ptr noundef nonnull %39) #12
  %40 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %completion.i, align 4
  br label %if.end43

if.else41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @myrb_handle_scsi(ptr noundef %arg, ptr noundef nonnull %cmd_blk.083, ptr noundef %scmd.081)
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then2.i, %if.end.i75.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %valid = getelementptr inbounds %struct.myrb_stat_mbox, ptr %next_stat_mbox.1, i32 0, i32 1
  %41 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %valid, align 1
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end43.while.end_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %entry.while.end_crit_edge
  %next_stat_mbox.0.lcssa = phi ptr [ %3, %entry.while.end_crit_edge ], [ %next_stat_mbox.1, %if.end43.while.end_crit_edge ]
  %42 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %next_stat_mbox.0.lcssa, ptr %next_stat_mbox5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #12
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LA_disable_intr(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #12, !srcloc !707
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @myrb_err_status(ptr nocapture noundef readonly %cb, i8 noundef zeroext %error, i8 noundef zeroext %parm0, i8 noundef zeroext %parm1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = zext i8 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.362)
  switch i8 %error, label %do.end53 [
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
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv2 = zext i8 %parm1 to i32
  %conv3 = zext i8 %parm0 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv2, i32 noundef %conv3) #15
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev8, ptr noundef nonnull @.str.13) #15
  br label %cleanup

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev13, ptr noundef nonnull @.str.17) #15
  br label %cleanup

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev18, ptr noundef nonnull @.str.20) #15
  br label %cleanup

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev23, ptr noundef nonnull @.str.23) #15
  br label %cleanup

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv29 = zext i8 %parm1 to i32
  %conv30 = zext i8 %parm0 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev28, ptr noundef nonnull @.str.26, i32 noundef %conv29, i32 noundef %conv30) #15
  br label %cleanup

do.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev35, ptr noundef nonnull @.str.29) #15
  br label %cleanup

do.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev40, ptr noundef nonnull @.str.32) #15
  br label %cleanup

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev45, ptr noundef nonnull @.str.35) #15
  br label %cleanup

do.end49:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.38) #15
  br label %cleanup

do.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %error to i32
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.41, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.end49, %do.end44, %do.end39, %do.end34, %do.end27, %do.end22, %do.end17, %do.end12, %do.end7, %do.end
  %retval.0 = phi i1 [ true, %do.end53 ], [ true, %do.end49 ], [ false, %do.end44 ], [ false, %do.end39 ], [ false, %do.end34 ], [ false, %do.end27 ], [ false, %do.end22 ], [ false, %do.end17 ], [ false, %do.end12 ], [ false, %do.end7 ], [ false, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @myrb_enable_mmio(ptr noundef %cb, ptr noundef readonly %mmio_init_fn) unnamed_addr #2 align 64 {
entry:
  %mbox = alloca %union.myrb_cmd_mbox, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %pdev1 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mbox) #12
  %4 = getelementptr inbounds [4 x i32], ptr %mbox, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %mbox, i32 0, i32 2
  %6 = call ptr @memset(ptr %mbox, i32 0, i32 16)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %enquiry_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 56
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef %enquiry_addr, i32 noundef 3264, i32 noundef 0) #12
  %enquiry = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 55
  %7 = ptrtoint ptr %enquiry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %enquiry, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %err_table_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 58
  %call.i126 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 192, ptr noundef %err_table_addr, i32 noundef 3264, i32 noundef 0) #12
  %err_table = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 57
  %8 = ptrtoint ptr %err_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i126, ptr %err_table, align 4
  %tobool12.not = icmp eq ptr %call.i126, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %ldev_info_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 61
  %call.i127 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef %ldev_info_addr, i32 noundef 3264, i32 noundef 0) #12
  %ldev_info_buf = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 60
  %9 = ptrtoint ptr %ldev_info_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i127, ptr %ldev_info_buf, align 4
  %tobool18.not = icmp eq ptr %call.i127, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %tobool21.not = icmp eq ptr %mmio_init_fn, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %cmd_mbox_size = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 40
  %10 = ptrtoint ptr %cmd_mbox_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %cmd_mbox_size, align 4
  %cmd_mbox_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 41
  %call.i128 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %cmd_mbox_addr, i32 noundef 3264, i32 noundef 0) #12
  %first_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 42
  %11 = ptrtoint ptr %first_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i128, ptr %first_cmd_mbox, align 4
  %tobool28.not = icmp eq ptr %call.i128, null
  br i1 %tobool28.not, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %add.ptr = getelementptr %union.myrb_cmd_mbox, ptr %call.i128, i32 255
  %last_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 43
  %12 = ptrtoint ptr %last_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %last_cmd_mbox, align 4
  %next_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 44
  %13 = ptrtoint ptr %next_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i128, ptr %next_cmd_mbox, align 4
  %prev_cmd_mbox1 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 45
  %14 = ptrtoint ptr %prev_cmd_mbox1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %prev_cmd_mbox1, align 4
  %add.ptr35 = getelementptr %union.myrb_cmd_mbox, ptr %call.i128, i32 254
  %prev_cmd_mbox2 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 46
  %15 = ptrtoint ptr %prev_cmd_mbox2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr35, ptr %prev_cmd_mbox2, align 4
  %stat_mbox_size = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 47
  %16 = ptrtoint ptr %stat_mbox_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %stat_mbox_size, align 4
  %stat_mbox_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 48
  %call.i129 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %stat_mbox_addr, i32 noundef 3264, i32 noundef 0) #12
  %first_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 49
  %17 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i129, ptr %first_stat_mbox, align 4
  %tobool40.not = icmp eq ptr %call.i129, null
  br i1 %tobool40.not, label %if.end30.cleanup_crit_edge, label %if.end42

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  %add.ptr44 = getelementptr %struct.myrb_stat_mbox, ptr %call.i129, i32 1023
  %last_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 50
  %18 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr44, ptr %last_stat_mbox, align 4
  %next_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 51
  %19 = ptrtoint ptr %next_stat_mbox to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i129, ptr %next_stat_mbox, align 4
  %dual_mode_interface = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 8
  %20 = ptrtoint ptr %dual_mode_interface to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %dual_mode_interface, align 4
  %21 = ptrtoint ptr %mbox to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 43, ptr %mbox, align 4
  %id = getelementptr inbounds %struct.anon.94, ptr %mbox, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %id, align 1
  %opcode2 = getelementptr inbounds %struct.anon.94, ptr %mbox, i32 0, i32 2
  %23 = ptrtoint ptr %opcode2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 20, ptr %opcode2, align 2
  %24 = ptrtoint ptr %cmd_mbox_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_mbox_addr, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %4, align 4
  %27 = ptrtoint ptr %stat_mbox_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stat_mbox_addr, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %5, align 4
  %call50 = call zeroext i16 %mmio_init_fn(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %mbox) #12, !callees !719
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call50)
  %cmp.not = icmp eq i16 %call50, 0
  br i1 %cmp.not, label %if.end42.cleanup_crit_edge, label %if.then52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52:                                        ; preds = %if.end42
  %30 = ptrtoint ptr %dual_mode_interface to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dual_mode_interface, align 4
  %31 = ptrtoint ptr %opcode2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %opcode2, align 2
  %call55 = call zeroext i16 %mmio_init_fn(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %mbox) #12, !callees !719
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call55)
  %cmp57.not = icmp eq i16 %call55, 0
  br i1 %cmp57.not, label %if.then52.cleanup_crit_edge, label %do.end62

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end62:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %conv56 = zext i16 %call55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv56) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.then52.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end62 ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %if.end14.cleanup_crit_edge ], [ true, %if.end20.cleanup_crit_edge ], [ false, %if.end23.cleanup_crit_edge ], [ false, %if.end30.cleanup_crit_edge ], [ true, %if.then52.cleanup_crit_edge ], [ true, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mbox) #12
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @DAC960_LA_mbox_init(ptr noundef %pdev, ptr noundef %base, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %base, i32 96
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %timeout.043 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !720
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %timeout.043, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !720
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i34 = icmp eq i8 %4, 0
  br i1 %tobool.not.i34, label %do.end, label %if.end3

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #15
  br label %cleanup

if.end3:                                          ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !721
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %add.ptr.i35 = getelementptr i8, ptr %base, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %7) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !723
  tail call void @arm_heavy_mb() #12
  %arrayidx3.i = getelementptr [4 x i32], ptr %mbox, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %add.ptr4.i = getelementptr i8, ptr %base, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !724
  tail call void @arm_heavy_mb() #12
  %arrayidx7.i = getelementptr [4 x i32], ptr %mbox, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %add.ptr8.i = getelementptr i8, ptr %base, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %13) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !725
  tail call void @arm_heavy_mb() #12
  %arrayidx11.i = getelementptr [16 x i8], ptr %mbox, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %base, i32 92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %15) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !726
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  %add.ptr.i37 = getelementptr i8, ptr %base, i32 97
  br label %while.body6

while.body6:                                      ; preds = %if.end9.while.body6_crit_edge, %if.end3
  %timeout.144 = phi i32 [ 0, %if.end3 ], [ %inc10, %if.end9.while.body6_crit_edge ]
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !727
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not = icmp eq i8 %17, 0
  br i1 %tobool.i.not, label %if.end9, label %while.body6.while.end11_crit_edge

while.body6.while.end11_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end11

if.end9:                                          ; preds = %while.body6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  %inc10 = add nuw nsw i32 %timeout.144, 1
  %exitcond45.not = icmp eq i32 %inc10, 1000000
  br i1 %exitcond45.not, label %if.end9.while.end11_crit_edge, label %if.end9.while.body6_crit_edge

if.end9.while.body6_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body6

if.end9.while.end11_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end11

while.end11:                                      ; preds = %if.end9.while.end11_crit_edge, %while.body6.while.end11_crit_edge
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !727
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i39.not = icmp eq i8 %20, 0
  br i1 %tobool.i39.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.51) #15
  br label %cleanup

if.end18:                                         ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i40 = getelementptr i8, ptr %base, i32 94
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i40) #12, !srcloc !728
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !730
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i37, i8 1) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #12, !srcloc !707
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end
  %retval.0 = phi i16 [ 264, %do.end ], [ %22, %if.end18 ], [ 264, %do.end16 ]
  ret i16 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LA_reset_ctrl(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !715
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #12, !srcloc !707
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrb_qcmd(ptr nocapture noundef %cb, ptr noundef %cmd_blk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %next_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 44
  %2 = ptrtoint ptr %next_cmd_mbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_cmd_mbox, align 4
  %write_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 28
  %4 = ptrtoint ptr %write_cmd_mbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_cmd_mbox, align 4
  tail call void %5(ptr noundef %3, ptr noundef %cmd_blk) #12
  %prev_cmd_mbox1 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 45
  %6 = ptrtoint ptr %prev_cmd_mbox1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev_cmd_mbox1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %prev_cmd_mbox2 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 46
  %10 = ptrtoint ptr %prev_cmd_mbox2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev_cmd_mbox2, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %get_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 29
  %14 = ptrtoint ptr %get_cmd_mbox to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_cmd_mbox, align 4
  tail call void %15(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %16 = ptrtoint ptr %prev_cmd_mbox1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev_cmd_mbox1, align 4
  %prev_cmd_mbox25 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 46
  %18 = ptrtoint ptr %prev_cmd_mbox25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %prev_cmd_mbox25, align 4
  store ptr %3, ptr %prev_cmd_mbox1, align 4
  %incdec.ptr = getelementptr %union.myrb_cmd_mbox, ptr %3, i32 1
  %last_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 43
  %19 = ptrtoint ptr %last_cmd_mbox to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last_cmd_mbox, align 4
  %cmp7 = icmp ugt ptr %incdec.ptr, %20
  br i1 %cmp7, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %first_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 42
  %21 = ptrtoint ptr %first_cmd_mbox to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %first_cmd_mbox, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %next_mbox.0 = phi ptr [ %22, %if.then8 ], [ %incdec.ptr, %if.end.if.end9_crit_edge ]
  %23 = ptrtoint ptr %next_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %next_mbox.0, ptr %next_cmd_mbox, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LA_write_cmd_mbox(ptr nocapture noundef writeonly %mem_mbox, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [4 x i32], ptr %mbox, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [4 x i32], ptr %mem_mbox, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr %mbox, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [4 x i32], ptr %mem_mbox, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [4 x i32], ptr %mbox, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr [4 x i32], ptr %mem_mbox, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !731
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox, align 4
  %11 = ptrtoint ptr %mem_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mem_mbox, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !732
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LA_mem_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !733
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 16) #12, !srcloc !707
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_LA_hw_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !726
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #12, !srcloc !707
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_handle_scsi(ptr nocapture noundef readonly %cb, ptr noundef %cmd_blk, ptr noundef %scmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmd_blk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @scsi_dma_unmap(ptr noundef %scmd) #12
  %dcdb = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 3
  %0 = ptrtoint ptr %dcdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcdb, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %2 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sense_buffer, align 4
  %sense = getelementptr inbounds %struct.myrb_dcdb, ptr %1, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %3, ptr %sense, i32 64)
  %dcdb_pool = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 25
  %5 = ptrtoint ptr %dcdb_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcdb_pool, align 4
  %7 = ptrtoint ptr %dcdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dcdb, align 4
  %dcdb_addr = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 4
  %9 = ptrtoint ptr %dcdb_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dcdb_addr, align 4
  tail call void @dma_pool_free(ptr noundef %6, ptr noundef %8, i32 noundef %10) #12
  %11 = ptrtoint ptr %dcdb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dcdb, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %sgl = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 5
  %12 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgl, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %sg_pool = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 24
  %14 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg_pool, align 4
  %sgl_addr = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 6
  %16 = ptrtoint ptr %sgl_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sgl_addr, align 4
  tail call void @dma_pool_free(ptr noundef %15, ptr noundef nonnull %13, i32 noundef %17) #12
  %18 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sgl, align 4
  %19 = ptrtoint ptr %sgl_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sgl_addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  %status13 = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 1
  %20 = ptrtoint ptr %status13 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %status13, align 4
  %conv = zext i16 %21 to i32
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.363)
  switch i16 %21, label %sw.default [
    i16 0, label %if.end12.sw.bb_crit_edge
    i16 8, label %if.end12.sw.bb_crit_edge139
    i16 268, label %do.body
    i16 1, label %sw.bb24
    i16 2, label %do.body32
    i16 261, label %do.body52
    i16 14, label %do.body71
  ]

if.end12.sw.bb_crit_edge139:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge139
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %23 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %result, align 4
  br label %sw.epilog

do.body:                                          ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_handle_scsi, %if.then19)) #12
          to label %do.end [label %if.then19], !srcloc !734

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %25, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_handle_scsi.__UNIQUE_ID_ddebug293, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.56) #12
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %26 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp = icmp eq i32 %27, 2
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 0) #12
  br label %sw.epilog

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 3, i8 noundef zeroext 12, i8 noundef zeroext 0) #12
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end12
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %scmd, ptr noundef nonnull @.str.57) #12
  %sc_data_direction25 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %28 = ptrtoint ptr %sc_data_direction25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sc_data_direction25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 3, i8 noundef zeroext 17, i8 noundef zeroext 4) #12
  br label %sw.epilog

if.else29:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 3, i8 noundef zeroext 12, i8 noundef zeroext 2) #12
  br label %sw.epilog

do.body32:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_handle_scsi, %if.then44)) #12
          to label %do.end49 [label %if.then44], !srcloc !734

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  %device45 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %30 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device45, align 4
  %sdev_gendev46 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_handle_scsi.__UNIQUE_ID_ddebug294, ptr noundef %sdev_gendev46, ptr noundef nonnull @.str.58) #12
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %result50 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %32 = ptrtoint ptr %result50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262144, ptr %result50, align 4
  br label %sw.epilog

do.body52:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_handle_scsi, %if.then64)) #12
          to label %do.end69 [label %if.then64], !srcloc !734

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %device65 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %33 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device65, align 4
  %sdev_gendev66 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_handle_scsi.__UNIQUE_ID_ddebug295, ptr noundef %sdev_gendev66, ptr noundef nonnull @.str.59) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body52
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 2, i8 noundef zeroext 33, i8 noundef zeroext 0) #12
  br label %sw.epilog

do.body71:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_handle_scsi, %if.then83)) #12
          to label %do.end88 [label %if.then83], !srcloc !734

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  %device84 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %35 = ptrtoint ptr %device84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device84, align 4
  %sdev_gendev85 = getelementptr inbounds %struct.scsi_device, ptr %36, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_handle_scsi.__UNIQUE_ID_ddebug296, ptr noundef %sdev_gendev85, ptr noundef nonnull @.str.60) #12
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %do.body71
  %result89 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %37 = ptrtoint ptr %result89 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262144, ptr %result89, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.4, ptr noundef %scmd, ptr noundef nonnull @.str.61, i32 noundef %conv) #12
  %result91 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %38 = ptrtoint ptr %result91 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 458752, ptr %result91, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end88, %do.end69, %do.end49, %if.else29, %if.then28, %if.else, %if.then22, %sw.bb
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_PG_hw_init(ptr noundef %pdev, ptr noundef %cb, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !736
  tail call void @arm_heavy_mb() #12
  %add.ptr.i35 = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 33554432) #12, !srcloc !722
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !738
  %2 = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i50.not = icmp eq i32 %2, 0
  br i1 %tobool.i50.not, label %entry.if.end5_crit_edge, label %while.body.lr.ph

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i37 = getelementptr i8, ptr %base, i32 4159
  %add.ptr7.i = getelementptr i8, ptr %base, i32 4096
  %add.ptr13.i = getelementptr i8, ptr %base, i32 4097
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %timeout.051 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !739
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %and3.i = and i8 %3, -5
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !740
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !741
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !742
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i37, i8 0) #12, !srcloc !707
  %call2 = tail call fastcc zeroext i1 @myrb_err_status(ptr noundef %cb, i8 noundef zeroext %and3.i, i8 noundef zeroext %5, i8 noundef zeroext %6)
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %timeout.051, 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !738
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.051)
  %cmp = icmp ult i32 %timeout.051, 999999
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end5:                                          ; preds = %while.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc zeroext i1 @myrb_enable_mmio(ptr noundef %cb, ptr noundef nonnull @DAC960_PG_mbox_init)
  br i1 %call6, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !743
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 134217728) #12, !srcloc !722
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !744
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -67108865) #12, !srcloc !722
  %qcmd = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %10 = ptrtoint ptr %qcmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @myrb_qcmd, ptr %qcmd, align 4
  %write_cmd_mbox = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 28
  %11 = ptrtoint ptr %write_cmd_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @DAC960_PG_write_cmd_mbox, ptr %write_cmd_mbox, align 4
  %dual_mode_interface = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 8
  %12 = ptrtoint ptr %dual_mode_interface to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dual_mode_interface, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool.not, ptr @DAC960_PG_hw_mbox_new_cmd, ptr @DAC960_PG_mem_mbox_new_cmd
  %14 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 29
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select, ptr %14, align 4
  %disable_intr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 30
  %16 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @DAC960_PG_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 31
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @DAC960_PG_reset_ctrl, ptr %reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end12 ], [ -19, %do.end10 ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_PG_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %queue_lock = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 26
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !745
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #12, !srcloc !722
  %next_stat_mbox5 = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 51
  %2 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_stat_mbox5, align 4
  %valid83 = getelementptr inbounds %struct.myrb_stat_mbox, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %valid83 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load84 = load i8, ptr %valid83, align 1
  %bf.clear85 = and i8 %bf.load84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear85)
  %tobool.not86 = icmp eq i8 %bf.clear85, 0
  br i1 %tobool.not86, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 53
  %dcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 52
  %host = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 18
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 17
  %last_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 50
  %first_stat_mbox = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 49
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %next_stat_mbox.087 = phi ptr [ %3, %while.body.lr.ph ], [ %next_stat_mbox.1, %if.end40.while.body_crit_edge ]
  %5 = ptrtoint ptr %next_stat_mbox.087 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %next_stat_mbox.087, align 2
  %conv7 = zext i8 %6 to i32
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.364)
  switch i8 %6, label %if.else14 [
    i8 1, label %while.body.if.end21_crit_edge
    i8 2, label %if.then13
  ]

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else14:                                        ; preds = %while.body
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %sub = add nsw i32 %conv7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp.i = icmp eq i32 %sub, -1
  br i1 %cmp.i, label %if.else14.do.end28_crit_edge, label %if.end.i

if.else14.do.end28_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.end.i:                                         ; preds = %if.else14
  %shr.i.i = lshr i32 %sub, 16
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr.i.i)
  %cmp1.i = icmp ugt i32 %11, %shr.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.do.end28_crit_edge

if.end.i.do.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then3.i:                                       ; preds = %if.end.i
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %shr.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %conv6.i = and i32 %sub, 65535
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %17, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end28_crit_edge

if.then3.i.do.end28_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %conv6.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %21) #12, !srcloc !718
  %22 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %23, i32 %conv6.i
  %24 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end8.i.do.end28_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end28_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i22.not.i = icmp eq i32 %27, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %25, i32 1
  %tobool17.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i22.not.i, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end28_crit_edge, label %if.then18

lor.lhs.false.i.do.end28_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then18:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i69 = getelementptr %struct.request, ptr %25, i32 2, i32 19
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then13, %while.body.if.end21_crit_edge
  %scmd.0 = phi ptr [ null, %if.then13 ], [ %add.ptr.i.i, %if.then18 ], [ null, %while.body.if.end21_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then13 ], [ %add.ptr.i69, %if.then18 ], [ %dcmd_blk, %while.body.if.end21_crit_edge ]
  %tobool22.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool22.not, label %if.end21.do.end28_crit_edge, label %if.then23

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.myrb_stat_mbox, ptr %next_stat_mbox.087, i32 0, i32 2
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %status, align 2
  %status24 = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %30 = ptrtoint ptr %status24 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %status24, align 4
  br label %if.end30

do.end28:                                         ; preds = %if.end21.do.end28_crit_edge, %lor.lhs.false.i.do.end28_crit_edge, %if.end8.i.do.end28_crit_edge, %if.then3.i.do.end28_crit_edge, %if.end.i.do.end28_crit_edge, %if.else14.do.end28_crit_edge
  %scmd.078 = phi ptr [ %scmd.0, %if.end21.do.end28_crit_edge ], [ null, %if.else14.do.end28_crit_edge ], [ null, %if.end8.i.do.end28_crit_edge ], [ null, %if.end.i.do.end28_crit_edge ], [ null, %if.then3.i.do.end28_crit_edge ], [ null, %lor.lhs.false.i.do.end28_crit_edge ]
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv7) #15
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.then23
  %tobool22.not81 = phi i1 [ true, %do.end28 ], [ false, %if.then23 ]
  %cmd_blk.079 = phi ptr [ null, %do.end28 ], [ %cmd_blk.0, %if.then23 ]
  %scmd.077 = phi ptr [ %scmd.078, %do.end28 ], [ %scmd.0, %if.then23 ]
  %33 = ptrtoint ptr %next_stat_mbox.087 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %next_stat_mbox.087, align 2
  %incdec.ptr = getelementptr %struct.myrb_stat_mbox, ptr %next_stat_mbox.087, i32 1
  %34 = ptrtoint ptr %last_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %last_stat_mbox, align 4
  %cmp31 = icmp ugt ptr %incdec.ptr, %35
  br i1 %cmp31, label %if.then33, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %first_stat_mbox to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %first_stat_mbox, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %next_stat_mbox.1 = phi ptr [ %37, %if.then33 ], [ %incdec.ptr, %if.end30.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp36 = icmp ult i8 %6, 3
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end34
  br i1 %tobool22.not81, label %if.then38.if.end40_crit_edge, label %if.end.i71

if.then38.if.end40_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end.i71:                                       ; preds = %if.then38
  %completion.i = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.079, i32 0, i32 2
  %38 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %completion.i, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i, label %if.end.i71.if.end40_crit_edge, label %if.then2.i

if.end.i71.if.end40_crit_edge:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then2.i:                                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @complete(ptr noundef nonnull %39) #12
  %40 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %completion.i, align 4
  br label %if.end40

if.else39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @myrb_handle_scsi(ptr noundef %arg, ptr noundef %cmd_blk.079, ptr noundef %scmd.077)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then2.i, %if.end.i71.if.end40_crit_edge, %if.then38.if.end40_crit_edge
  %valid = getelementptr inbounds %struct.myrb_stat_mbox, ptr %next_stat_mbox.1, i32 0, i32 1
  %41 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %valid, align 1
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %entry.while.end_crit_edge
  %next_stat_mbox.0.lcssa = phi ptr [ %3, %entry.while.end_crit_edge ], [ %next_stat_mbox.1, %if.end40.while.end_crit_edge ]
  %42 = ptrtoint ptr %next_stat_mbox5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %next_stat_mbox.0.lcssa, ptr %next_stat_mbox5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #12
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PG_disable_intr(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #12, !srcloc !722
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @DAC960_PG_mbox_init(ptr noundef %pdev, ptr noundef %base, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %base, i32 32
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %timeout.044 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !746
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %timeout.044, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !746
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i34.not = icmp eq i32 %4, 0
  br i1 %tobool.i34.not, label %if.end3, label %do.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #15
  br label %cleanup

if.end3:                                          ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !747
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbox, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %add.ptr.i35 = getelementptr i8, ptr %base, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %7) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !748
  tail call void @arm_heavy_mb() #12
  %arrayidx3.i = getelementptr [4 x i32], ptr %mbox, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %add.ptr4.i = getelementptr i8, ptr %base, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !749
  tail call void @arm_heavy_mb() #12
  %arrayidx7.i = getelementptr [4 x i32], ptr %mbox, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %add.ptr8.i = getelementptr i8, ptr %base, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %13) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !750
  tail call void @arm_heavy_mb() #12
  %arrayidx11.i = getelementptr [16 x i8], ptr %mbox, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %base, i32 4108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %15) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !751
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !722
  %add.ptr.i37 = getelementptr i8, ptr %base, i32 44
  br label %while.body6

while.body6:                                      ; preds = %if.end9.while.body6_crit_edge, %if.end3
  %timeout.145 = phi i32 [ 0, %if.end3 ], [ %inc10, %if.end9.while.body6_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #12, !srcloc !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !752
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i38.not = icmp eq i32 %17, 0
  br i1 %tobool.i38.not, label %if.end9, label %while.body6.while.end11_crit_edge

while.body6.while.end11_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end11

if.end9:                                          ; preds = %while.body6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  %inc10 = add nuw nsw i32 %timeout.145, 1
  %exitcond46.not = icmp eq i32 %inc10, 1000000
  br i1 %exitcond46.not, label %if.end9.while.end11_crit_edge, label %if.end9.while.body6_crit_edge

if.end9.while.body6_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body6

if.end9.while.end11_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end11

while.end11:                                      ; preds = %if.end9.while.end11_crit_edge, %while.body6.while.end11_crit_edge
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #12, !srcloc !737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !752
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i40.not = icmp eq i32 %20, 0
  br i1 %tobool.i40.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.51) #15
  br label %cleanup

if.end18:                                         ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i41 = getelementptr i8, ptr %base, i32 4122
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41) #12, !srcloc !728
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !754
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 16777216) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !736
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #12, !srcloc !722
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end
  %retval.0 = phi i16 [ 264, %do.end ], [ %22, %if.end18 ], [ 264, %do.end16 ]
  ret i16 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PG_reset_ctrl(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !743
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #12, !srcloc !722
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PG_write_cmd_mbox(ptr nocapture noundef writeonly %mem_mbox, ptr nocapture noundef readonly %mbox) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [4 x i32], ptr %mbox, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [4 x i32], ptr %mem_mbox, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr %mbox, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [4 x i32], ptr %mem_mbox, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [4 x i32], ptr %mbox, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr [4 x i32], ptr %mem_mbox, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !755
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox, align 4
  %11 = ptrtoint ptr %mem_mbox to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mem_mbox, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !756
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PG_mem_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !757
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #12, !srcloc !722
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PG_hw_mbox_new_cmd(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !751
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #12, !srcloc !722
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_PD_hw_init(ptr noundef %pdev, ptr noundef %cb, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 36
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_addr, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 128, ptr noundef nonnull @.str, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !758
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %base, i32 67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !759
  tail call void @arm_heavy_mb() #12
  %add.ptr.i39 = getelementptr i8, ptr %base, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 2) #12, !srcloc !707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #12
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !760
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i54.not = icmp eq i8 %6, 0
  br i1 %tobool.i54.not, label %if.end.if.end13_crit_edge, label %while.body.lr.ph

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

while.body.lr.ph:                                 ; preds = %if.end
  %add.ptr.i41 = getelementptr i8, ptr %base, i32 63
  %add.ptr13.i = getelementptr i8, ptr %base, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %timeout.055 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end6.while.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i41) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !761
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %while.body.if.end6_crit_edge, label %land.lhs.true

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %while.body
  %and3.i = and i8 %7, -5
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %base) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !762
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !763
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !764
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 0) #12, !srcloc !707
  %call4 = tail call fastcc zeroext i1 @myrb_err_status(ptr noundef %cb, i8 noundef zeroext %and3.i, i8 noundef zeroext %9, i8 noundef zeroext %10)
  br i1 %call4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %while.body.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %timeout.055, 1
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !760
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.055)
  %cmp = icmp ult i32 %timeout.055, 999999
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end6.while.body_crit_edge, label %while.end

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end11, label %while.end.if.end13_crit_edge

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end11:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end13:                                         ; preds = %while.end.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = tail call fastcc zeroext i1 @myrb_enable_mmio(ptr noundef %cb, ptr noundef null)
  br i1 %call14, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !765
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 8) #12, !srcloc !707
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !766
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  %qcmd = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %14 = ptrtoint ptr %qcmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @DAC960_PD_qcmd, ptr %qcmd, align 4
  %disable_intr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 30
  %15 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @DAC960_PD_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 31
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @DAC960_PD_reset_ctrl, ptr %reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end18, %do.end11, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end11 ], [ 0, %if.end20 ], [ -19, %do.end18 ], [ -16, %do.end ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_PD_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %queue_lock = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 26
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 65
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !767
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not76 = icmp eq i8 %3, 0
  br i1 %tobool.i.not76, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i58 = getelementptr i8, ptr %1, i32 13
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 53
  %dcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 52
  %host = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 18
  %add.ptr.i60 = getelementptr i8, ptr %1, i32 14
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 17
  %add.ptr.i62 = getelementptr i8, ptr %1, i32 64
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i58) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !768
  %conv7 = zext i8 %4 to i32
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.365)
  switch i8 %4, label %if.else14 [
    i8 1, label %while.body.if.end20_crit_edge
    i8 2, label %if.then13
  ]

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.else14:                                        ; preds = %while.body
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %sub = add nsw i32 %conv7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp.i = icmp eq i32 %sub, -1
  br i1 %cmp.i, label %if.else14.do.end27_crit_edge, label %if.end.i

if.else14.do.end27_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end.i:                                         ; preds = %if.else14
  %shr.i.i = lshr i32 %sub, 16
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i.i)
  %cmp1.i = icmp ugt i32 %9, %shr.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.do.end27_crit_edge

if.end.i.do.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then3.i:                                       ; preds = %if.end.i
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %shr.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %conv6.i = and i32 %sub, 65535
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %15, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end27_crit_edge

if.then3.i.do.end27_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %17, i32 %conv6.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %19) #12, !srcloc !718
  %20 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %21, i32 %conv6.i
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end8.i.do.end27_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end27_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i22.not.i = icmp eq i32 %25, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %23, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i22.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end27_crit_edge, label %if.then17

lor.lhs.false.i.do.end27_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then17:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i59 = getelementptr %struct.request, ptr %23, i32 2, i32 19
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then13, %while.body.if.end20_crit_edge
  %scmd.0 = phi ptr [ null, %if.then13 ], [ %add.ptr.i.i, %if.then17 ], [ null, %while.body.if.end20_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then13 ], [ %add.ptr.i59, %if.then17 ], [ %dcmd_blk, %while.body.if.end20_crit_edge ]
  %tobool21.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool21.not, label %if.end20.do.end27_crit_edge, label %if.then22

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i60) #12, !srcloc !728
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !769
  %status = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %status, align 4
  br label %if.end29

do.end27:                                         ; preds = %if.end20.do.end27_crit_edge, %lor.lhs.false.i.do.end27_crit_edge, %if.end8.i.do.end27_crit_edge, %if.then3.i.do.end27_crit_edge, %if.end.i.do.end27_crit_edge, %if.else14.do.end27_crit_edge
  %scmd.071 = phi ptr [ %scmd.0, %if.end20.do.end27_crit_edge ], [ null, %if.else14.do.end27_crit_edge ], [ null, %if.end8.i.do.end27_crit_edge ], [ null, %if.end.i.do.end27_crit_edge ], [ null, %if.then3.i.do.end27_crit_edge ], [ null, %lor.lhs.false.i.do.end27_crit_edge ]
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv7) #15
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.then22
  %tobool21.not74 = phi i1 [ true, %do.end27 ], [ false, %if.then22 ]
  %cmd_blk.072 = phi ptr [ null, %do.end27 ], [ %cmd_blk.0, %if.then22 ]
  %scmd.070 = phi ptr [ %scmd.071, %do.end27 ], [ %scmd.0, %if.then22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !770
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !759
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i62, i8 2) #12, !srcloc !707
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp31 = icmp ult i8 %4, 3
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end29
  br i1 %tobool21.not74, label %if.then33.if.end35_crit_edge, label %if.end.i64

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end.i64:                                       ; preds = %if.then33
  %completion.i = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.072, i32 0, i32 2
  %31 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %completion.i, align 4
  %tobool1.not.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i, label %if.end.i64.if.end35_crit_edge, label %if.then2.i

if.end.i64.if.end35_crit_edge:                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then2.i:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @complete(ptr noundef nonnull %32) #12
  %33 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %completion.i, align 4
  br label %if.end35

if.else34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @myrb_handle_scsi(ptr noundef %arg, ptr noundef %cmd_blk.072, ptr noundef %scmd.070)
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then2.i, %if.end.i64.if.end35_crit_edge, %if.then33.if.end35_crit_edge
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !767
  %35 = and i8 %34, 1
  %tobool.i.not = icmp eq i8 %35, 0
  br i1 %tobool.i.not, label %if.end35.while.end_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PD_disable_intr(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !758
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #12, !srcloc !707
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PD_reset_ctrl(ptr noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !765
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %base, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #12, !srcloc !707
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_PD_qcmd(ptr nocapture noundef readonly %cb, ptr nocapture noundef readonly %cmd_blk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !771
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not5 = icmp eq i8 %3, 0
  br i1 %tobool.i.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !771
  %6 = and i8 %5, 1
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !772
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_blk, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %9) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !773
  tail call void @arm_heavy_mb() #12
  %arrayidx3.i = getelementptr [4 x i32], ptr %cmd_blk, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %add.ptr4.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !774
  tail call void @arm_heavy_mb() #12
  %arrayidx7.i = getelementptr [4 x i32], ptr %cmd_blk, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %add.ptr8.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %15) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !775
  tail call void @arm_heavy_mb() #12
  %arrayidx11.i = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 12
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %17) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !776
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_P_hw_init(ptr noundef %pdev, ptr noundef %cb, ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 36
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_addr, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 128, ptr noundef nonnull @.str, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !758
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %base, i32 67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !759
  tail call void @arm_heavy_mb() #12
  %add.ptr.i39 = getelementptr i8, ptr %base, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 2) #12, !srcloc !707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #12
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !760
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i54.not = icmp eq i8 %6, 0
  br i1 %tobool.i54.not, label %if.end.if.end13_crit_edge, label %while.body.lr.ph

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

while.body.lr.ph:                                 ; preds = %if.end
  %add.ptr.i41 = getelementptr i8, ptr %base, i32 63
  %add.ptr13.i = getelementptr i8, ptr %base, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %timeout.055 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end6.while.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i41) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !761
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %while.body.if.end6_crit_edge, label %land.lhs.true

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %while.body
  %and3.i = and i8 %7, -5
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %base) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !762
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !763
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !764
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 0) #12, !srcloc !707
  %call4 = tail call fastcc zeroext i1 @myrb_err_status(ptr noundef %cb, i8 noundef zeroext %and3.i, i8 noundef zeroext %9, i8 noundef zeroext %10)
  br i1 %call4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %while.body.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %timeout.055, 1
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !760
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %timeout.055)
  %cmp = icmp ult i32 %timeout.055, 999999
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end6.while.body_crit_edge, label %while.end

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end11, label %while.end.if.end13_crit_edge

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end11:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end13:                                         ; preds = %while.end.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call14 = tail call fastcc zeroext i1 @myrb_enable_mmio(ptr noundef %cb, ptr noundef null)
  br i1 %call14, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.80) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !765
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 8) #12, !srcloc !707
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !766
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  %qcmd = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %14 = ptrtoint ptr %qcmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @DAC960_P_qcmd, ptr %qcmd, align 4
  %disable_intr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 30
  %15 = ptrtoint ptr %disable_intr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @DAC960_PD_disable_intr, ptr %disable_intr, align 4
  %reset = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 31
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @DAC960_PD_reset_ctrl, ptr %reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end18, %do.end11, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end11 ], [ 0, %if.end20 ], [ -110, %do.end18 ], [ -16, %do.end ], [ -11, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DAC960_P_intr_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %queue_lock = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 26
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 65
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !767
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not120 = icmp eq i8 %3, 0
  br i1 %tobool.i.not120, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i91 = getelementptr i8, ptr %1, i32 13
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 53
  %dcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 52
  %host = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 18
  %add.ptr.i93 = getelementptr i8, ptr %1, i32 14
  %add.ptr.i95 = getelementptr i8, ptr %1, i32 64
  %enquiry = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 55
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %arg, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i91) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !768
  %conv7 = zext i8 %4 to i32
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.366)
  switch i8 %4, label %if.else14 [
    i8 1, label %while.body.if.end20_crit_edge
    i8 2, label %if.then13
  ]

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.else14:                                        ; preds = %while.body
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %sub = add nsw i32 %conv7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp.i = icmp eq i32 %sub, -1
  br i1 %cmp.i, label %if.else14.do.end27_crit_edge, label %if.end.i

if.else14.do.end27_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end.i:                                         ; preds = %if.else14
  %shr.i.i = lshr i32 %sub, 16
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i.i)
  %cmp1.i = icmp ugt i32 %9, %shr.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.do.end27_crit_edge

if.end.i.do.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then3.i:                                       ; preds = %if.end.i
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %shr.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %conv6.i = and i32 %sub, 65535
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %15, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.do.end27_crit_edge

if.then3.i.do.end27_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %17, i32 %conv6.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %19) #12, !srcloc !718
  %20 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %21, i32 %conv6.i
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end8.i.do.end27_crit_edge, label %lor.lhs.false.i

if.end8.i.do.end27_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i22.not.i = icmp eq i32 %25, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %23, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i22.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.i.do.end27_crit_edge, label %if.then17

lor.lhs.false.i.do.end27_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then17:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i92 = getelementptr %struct.request, ptr %23, i32 2, i32 19
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then13, %while.body.if.end20_crit_edge
  %scmd.0 = phi ptr [ null, %if.then13 ], [ %add.ptr.i.i, %if.then17 ], [ null, %while.body.if.end20_crit_edge ]
  %cmd_blk.0 = phi ptr [ %mcmd_blk, %if.then13 ], [ %add.ptr.i92, %if.then17 ], [ %dcmd_blk, %while.body.if.end20_crit_edge ]
  %tobool21.not = icmp eq ptr %cmd_blk.0, null
  br i1 %tobool21.not, label %if.end20.do.end27_crit_edge, label %if.then22

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then22:                                        ; preds = %if.end20
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i93) #12, !srcloc !728
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !769
  %status = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.0, i32 0, i32 1
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !770
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !759
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i95, i8 2) #12, !srcloc !707
  %29 = ptrtoint ptr %cmd_blk.0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cmd_blk.0, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.367)
  switch i8 %30, label %if.then22.sw.epilog_crit_edge [
    i8 5, label %sw.bb
    i8 2, label %sw.bb36
    i8 3, label %sw.bb38
    i8 -126, label %sw.bb40
    i8 -125, label %sw.bb42
  ]

if.then22.sw.epilog_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end27:                                         ; preds = %if.end20.do.end27_crit_edge, %lor.lhs.false.i.do.end27_crit_edge, %if.end8.i.do.end27_crit_edge, %if.then3.i.do.end27_crit_edge, %if.end.i.do.end27_crit_edge, %if.else14.do.end27_crit_edge
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !770
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !759
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i95, i8 2) #12, !srcloc !707
  br label %cleanup

sw.bb:                                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %cmd_blk.0 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 83, ptr %cmd_blk.0, align 4
  %35 = ptrtoint ptr %enquiry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enquiry, align 4
  %add.ptr.i98 = getelementptr i8, ptr %36, i32 132
  %add.ptr1.i = getelementptr i8, ptr %36, i32 36
  %37 = call ptr @memcpy(ptr %add.ptr.i98, ptr %add.ptr1.i, i32 64)
  %38 = call ptr @memset(ptr %add.ptr1.i, i32 0, i32 96)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %cmd_blk.0 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 54, ptr %cmd_blk.0, align 4
  %arrayidx.i99 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i99, align 1
  %arrayidx2.i = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.i, align 1
  %44 = lshr i8 %43, 6
  store i8 %44, ptr %arrayidx.i99, align 1
  %45 = and i8 %43, 7
  %shl.i = shl i8 %41, 3
  %or.i = or i8 %45, %shl.i
  store i8 %or.i, ptr %arrayidx2.i, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %cmd_blk.0 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 55, ptr %cmd_blk.0, align 4
  %arrayidx.i100 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 7
  %47 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i100, align 1
  %arrayidx2.i101 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx2.i101 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx2.i101, align 1
  %51 = lshr i8 %50, 6
  store i8 %51, ptr %arrayidx.i100, align 1
  %52 = and i8 %50, 7
  %shl.i102 = shl i8 %48, 3
  %or.i103 = or i8 %52, %shl.i102
  store i8 %or.i103, ptr %arrayidx2.i101, align 1
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %cmd_blk.0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -74, ptr %cmd_blk.0, align 4
  %arrayidx.i104 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 7
  %54 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i104, align 1
  %arrayidx2.i105 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx2.i105 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx2.i105, align 1
  %58 = lshr i8 %57, 6
  store i8 %58, ptr %arrayidx.i104, align 1
  %59 = and i8 %57, 7
  %shl.i106 = shl i8 %55, 3
  %or.i107 = or i8 %59, %shl.i106
  store i8 %or.i107, ptr %arrayidx2.i105, align 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %cmd_blk.0 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -73, ptr %cmd_blk.0, align 4
  %arrayidx.i108 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 7
  %61 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i108, align 1
  %arrayidx2.i109 = getelementptr [16 x i8], ptr %cmd_blk.0, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx2.i109 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx2.i109, align 1
  %65 = lshr i8 %64, 6
  store i8 %65, ptr %arrayidx.i108, align 1
  %66 = and i8 %64, 7
  %shl.i110 = shl i8 %62, 3
  %or.i111 = or i8 %66, %shl.i110
  store i8 %or.i111, ptr %arrayidx2.i109, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb, %if.then22.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp45 = icmp ult i8 %4, 3
  br i1 %cmp45, label %if.end.i113, label %if.else48

if.end.i113:                                      ; preds = %sw.epilog
  %completion.i = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk.0, i32 0, i32 2
  %67 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %completion.i, align 4
  %tobool1.not.i = icmp eq ptr %68, null
  br i1 %tobool1.not.i, label %if.end.i113.cleanup_crit_edge, label %if.then2.i

if.end.i113.cleanup_crit_edge:                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @complete(ptr noundef nonnull %68) #12
  %69 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %completion.i, align 4
  br label %cleanup

if.else48:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @myrb_handle_scsi(ptr noundef %arg, ptr noundef nonnull %cmd_blk.0, ptr noundef %scmd.0)
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %if.then2.i, %if.end.i113.cleanup_crit_edge, %do.end27
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !767
  %71 = and i8 %70, 1
  %tobool.i.not = icmp eq i8 %71, 0
  br i1 %tobool.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @DAC960_P_qcmd(ptr nocapture noundef readonly %cb, ptr noundef %cmd_blk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 38
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %2 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_blk, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.368)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 83, label %sw.bb
    i8 80, label %sw.bb3
    i8 54, label %sw.bb5
    i8 55, label %sw.bb7
    i8 -74, label %sw.bb9
    i8 -73, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %cmd_blk, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %cmd_blk, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %cmd_blk, align 4
  %ld.i = getelementptr inbounds %struct.anon.92, ptr %cmd_blk, i32 0, i32 2
  %8 = ptrtoint ptr %ld.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %ld.i, align 2
  %9 = trunc i16 %bf.load.i to i8
  %bf.cast.i = and i8 %9, 31
  %arrayidx.i = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 3
  %10 = and i8 %9, 7
  %arrayidx4.i = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4.i, align 1
  %shl.i = shl i8 %12, 6
  %or.i = or i8 %shl.i, %10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or.i, ptr %arrayidx.i, align 1
  store i8 %bf.cast.i, ptr %arrayidx4.i, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %cmd_blk, align 4
  %ld.i26 = getelementptr inbounds %struct.anon.92, ptr %cmd_blk, i32 0, i32 2
  %15 = ptrtoint ptr %ld.i26 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i27 = load i16, ptr %ld.i26, align 2
  %16 = trunc i16 %bf.load.i27 to i8
  %bf.cast.i28 = and i8 %16, 31
  %arrayidx.i29 = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 3
  %17 = and i8 %16, 7
  %arrayidx4.i30 = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx4.i30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4.i30, align 1
  %shl.i31 = shl i8 %19, 6
  %or.i32 = or i8 %shl.i31, %17
  %20 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or.i32, ptr %arrayidx.i29, align 1
  store i8 %bf.cast.i28, ptr %arrayidx4.i30, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -126, ptr %cmd_blk, align 4
  %ld.i33 = getelementptr inbounds %struct.anon.92, ptr %cmd_blk, i32 0, i32 2
  %22 = ptrtoint ptr %ld.i33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i34 = load i16, ptr %ld.i33, align 2
  %23 = trunc i16 %bf.load.i34 to i8
  %bf.cast.i35 = and i8 %23, 31
  %arrayidx.i36 = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 3
  %24 = and i8 %23, 7
  %arrayidx4.i37 = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx4.i37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i37, align 1
  %shl.i38 = shl i8 %26, 6
  %or.i39 = or i8 %shl.i38, %24
  %27 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or.i39, ptr %arrayidx.i36, align 1
  store i8 %bf.cast.i35, ptr %arrayidx4.i37, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -125, ptr %cmd_blk, align 4
  %ld.i40 = getelementptr inbounds %struct.anon.92, ptr %cmd_blk, i32 0, i32 2
  %29 = ptrtoint ptr %ld.i40 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i41 = load i16, ptr %ld.i40, align 2
  %30 = trunc i16 %bf.load.i41 to i8
  %bf.cast.i42 = and i8 %30, 31
  %arrayidx.i43 = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 3
  %31 = and i8 %30, 7
  %arrayidx4.i44 = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx4.i44 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx4.i44, align 1
  %shl.i45 = shl i8 %33, 6
  %or.i46 = or i8 %shl.i45, %31
  %34 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or.i46, ptr %arrayidx.i43, align 1
  store i8 %bf.cast.i42, ptr %arrayidx4.i44, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !771
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i.not48 = icmp eq i8 %36, 0
  br i1 %tobool.i.not48, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.epilog.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #12
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !771
  %39 = and i8 %38, 1
  %tobool.i.not = icmp eq i8 %39, 0
  br i1 %tobool.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !772
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %cmd_blk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd_blk, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %42) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !773
  tail call void @arm_heavy_mb() #12
  %arrayidx3.i = getelementptr [4 x i32], ptr %cmd_blk, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx3.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  %add.ptr4.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %45) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !774
  tail call void @arm_heavy_mb() #12
  %arrayidx7.i = getelementptr [4 x i32], ptr %cmd_blk, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %add.ptr8.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %48) #12, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !775
  tail call void @arm_heavy_mb() #12
  %arrayidx11.i = getelementptr [16 x i8], ptr %cmd_blk, i32 0, i32 12
  %49 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %50) #12, !srcloc !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !776
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #12, !srcloc !707
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_cleanup(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %ldev_info_buf.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 60
  %2 = ptrtoint ptr %ldev_info_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ldev_info_buf.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %ldev_info_addr.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 61
  %4 = ptrtoint ptr %ldev_info_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ldev_info_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 256, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 0) #12
  %6 = ptrtoint ptr %ldev_info_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ldev_info_buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err_table.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 57
  %7 = ptrtoint ptr %err_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %err_table.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then4.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev1, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %err_table_addr.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 58
  %11 = ptrtoint ptr %err_table_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err_table_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 192, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #12
  %13 = ptrtoint ptr %err_table.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %err_table.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i.if.end9.i_crit_edge
  %enquiry.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 55
  %14 = ptrtoint ptr %enquiry.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enquiry.i, align 4
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then11.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev1, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %enquiry_addr.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 56
  %18 = ptrtoint ptr %enquiry_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enquiry_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef 256, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #12
  %20 = ptrtoint ptr %enquiry.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %enquiry.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end16.i_crit_edge
  %first_stat_mbox.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 49
  %21 = ptrtoint ptr %first_stat_mbox.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %first_stat_mbox.i, align 4
  %tobool17.not.i = icmp eq ptr %22, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then18.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev1, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %stat_mbox_size.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 47
  %25 = ptrtoint ptr %stat_mbox_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stat_mbox_size.i, align 4
  %stat_mbox_addr.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 48
  %27 = ptrtoint ptr %stat_mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stat_mbox_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev20.i, i32 noundef %26, ptr noundef nonnull %22, i32 noundef %28, i32 noundef 0) #12
  %29 = ptrtoint ptr %first_stat_mbox.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %first_stat_mbox.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end23.i_crit_edge
  %first_cmd_mbox.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 42
  %30 = ptrtoint ptr %first_cmd_mbox.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %first_cmd_mbox.i, align 4
  %tobool24.not.i = icmp eq ptr %31, null
  br i1 %tobool24.not.i, label %if.end23.i.myrb_unmap.exit_crit_edge, label %if.then25.i

if.end23.i.myrb_unmap.exit_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_unmap.exit

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev1, align 4
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %cmd_mbox_size.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 40
  %34 = ptrtoint ptr %cmd_mbox_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_mbox_size.i, align 4
  %cmd_mbox_addr.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 41
  %36 = ptrtoint ptr %cmd_mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_mbox_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev27.i, i32 noundef %35, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #12
  %38 = ptrtoint ptr %first_cmd_mbox.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %first_cmd_mbox.i, align 4
  br label %myrb_unmap.exit

myrb_unmap.exit:                                  ; preds = %if.then25.i, %if.end23.i.myrb_unmap.exit_crit_edge
  %mmio_base = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 39
  %39 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base, align 4
  %tobool.not = icmp eq ptr %40, null
  br i1 %tobool.not, label %myrb_unmap.exit.if.end_crit_edge, label %if.then

myrb_unmap.exit.if.end_crit_edge:                 ; preds = %myrb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %myrb_unmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %disable_intr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 30
  %41 = ptrtoint ptr %disable_intr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %disable_intr, align 4
  %io_base = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 38
  %43 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base, align 4
  tail call void %42(ptr noundef %44) #12
  %45 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base, align 4
  tail call void @iounmap(ptr noundef %46) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %myrb_unmap.exit.if.end_crit_edge
  %irq = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 35
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool3.not = icmp eq i32 %48, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @free_irq(i32 noundef %48, ptr noundef %cb) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %io_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 36
  %49 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool7.not = icmp eq i32 %50, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %50, i32 noundef 128) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %1) #12
  %host = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %52 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %53) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_destroy_mempools(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %monitor_work = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 21
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work) #12
  %work_q = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 19
  %0 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_q, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #12
  %sg_pool = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 24
  %2 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %3) #12
  %dcdb_pool = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 25
  %4 = ptrtoint ptr %dcdb_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcdb_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_queuecommand(ptr noundef %shost, ptr noundef %scmd) #2 align 64 {
entry:
  %dcdb_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp = icmp ugt i32 %3, %sub.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 262144, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp3 = icmp eq i32 %3, %sub.i
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @myrb_ldev_queuecommand(ptr noundef %shost, ptr noundef %scmd)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %add.ptr.i.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcdb_addr.i) #12
  %7 = ptrtoint ptr %dcdb_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dcdb_addr.i, align 4, !annotation !704
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 18)
  %dcdb_pool.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 7
  %9 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dcdb_pool.i, align 4
  %call4.i = call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef 2592, ptr noundef nonnull %dcdb_addr.i) #12
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end6.myrb_pthru_queuecommand.exit_crit_edge, label %if.end.i

if.end6.myrb_pthru_queuecommand.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_pthru_queuecommand.exit

if.end.i:                                         ; preds = %if.end6
  %call5.i = call i32 @scsi_dma_map(ptr noundef %scmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i = icmp sgt i32 %call5.i, 1
  br i1 %cmp.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dcdb_pool.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcdb_pool.i, align 4
  %13 = ptrtoint ptr %dcdb_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dcdb_addr.i, align 4
  call void @dma_pool_free(ptr noundef %12, ptr noundef nonnull %call4.i, i32 noundef %14) #12
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 458752, ptr %result.i, align 4
  call void @scsi_done(ptr noundef %scmd) #12
  br label %myrb_pthru_queuecommand.exit

if.end8.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %add.ptr.i.i, align 4
  %tag.i = getelementptr i8, ptr %scmd, i32 -172
  %17 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tag.i, align 4
  %19 = trunc i32 %18 to i8
  %conv.i = add i8 %19, 3
  %id.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %id.i, align 1
  %21 = ptrtoint ptr %dcdb_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dcdb_addr.i, align 4
  %addr.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %addr.i, align 4
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel, align 4
  %26 = trunc i32 %25 to i16
  %27 = ptrtoint ptr %call4.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %call4.i, align 4
  %bf.value.i = shl i16 %26, 8
  %bf.shl.i = and i16 %bf.value.i, 3840
  %bf.clear.i = and i16 %bf.load.i, -3841
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %call4.i, align 4
  %id9.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id9.i, align 8
  %30 = trunc i32 %29 to i16
  %bf.shl12.i = shl i16 %30, 12
  %bf.clear13.i = and i16 %bf.set.i, 4095
  %bf.set14.i = or i16 %bf.clear13.i, %bf.shl12.i
  store i16 %bf.set14.i, ptr %call4.i, align 4
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %31 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sc_data_direction.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.369)
  switch i32 %32, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb19.i
    i32 2, label %sw.bb23.i
  ]

sw.bb.i:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear17.i = and i16 %bf.set14.i, -193
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear21.i = and i16 %bf.set14.i, -193
  %bf.set22.i = or i16 %bf.clear21.i, 128
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear25.i = and i16 %bf.set14.i, -193
  %bf.set26.i = or i16 %bf.clear25.i, 64
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set29.i = or i16 %bf.set14.i, 192
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb23.i, %sw.bb19.i, %sw.bb.i
  %bf.set29.sink.i = phi i16 [ %bf.set29.i, %sw.default.i ], [ %bf.set26.i, %sw.bb23.i ], [ %bf.set22.i, %sw.bb19.i ], [ %bf.clear17.i, %sw.bb.i ]
  %bf.clear31.i = and i16 %bf.set29.sink.i, -33
  %34 = ptrtoint ptr %call4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.clear31.i, ptr %call4.i, align 4
  %timeout.i = getelementptr i8, ptr %scmd, i32 -164
  %35 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %36)
  %cmp33.i = icmp ult i32 %36, 11
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear37.i = and i16 %bf.set29.sink.i, -45
  %bf.set38.i = or i16 %bf.clear37.i, 4
  br label %if.end60.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %36)
  %cmp40.i = icmp ult i32 %36, 61
  br i1 %cmp40.i, label %if.then42.i, label %if.else46.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear44.i = and i16 %bf.set29.sink.i, -45
  %bf.set45.i = or i16 %bf.clear44.i, 8
  br label %if.end60.i

if.else46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 601, i32 %36)
  %cmp48.i = icmp ult i32 %36, 601
  %bf.clear52.i = and i16 %bf.set29.sink.i, -45
  %bf.set53.i = or i16 %bf.clear52.i, 12
  %spec.select.i = select i1 %cmp48.i, i16 %bf.set53.i, i16 %bf.clear52.i
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else46.i, %if.then42.i, %if.then35.i
  %bf.set45.sink.i = phi i16 [ %bf.set45.i, %if.then42.i ], [ %bf.set38.i, %if.then35.i ], [ %spec.select.i, %if.else46.i ]
  %bf.clear65.i = and i16 %bf.set45.sink.i, -4
  %bf.set66.i = or i16 %bf.clear65.i, 1
  %37 = ptrtoint ptr %call4.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.set66.i, ptr %call4.i, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %38 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdb.i.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_address.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 2
  %42 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dma_addr.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 4
  %43 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %44)
  %cmp68.i = icmp ugt i32 %44, 65535
  %conv72.i = trunc i32 %44 to i16
  %xfer_len_lo.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 1
  %45 = ptrtoint ptr %xfer_len_lo.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv72.i, ptr %xfer_len_lo.i, align 2
  br i1 %cmp68.i, label %if.then70.i, label %if.else79.i

if.then70.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length.i, align 4
  %shr.i = lshr i32 %47, 16
  %conv74.i = trunc i32 %shr.i to i8
  %xfer_len_hi4.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 3
  %48 = ptrtoint ptr %xfer_len_hi4.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load75.i = load i8, ptr %xfer_len_hi4.i, align 4
  %bf.value76.i = and i8 %conv74.i, 15
  %bf.clear77.i = and i8 %bf.load75.i, -16
  %bf.set78.i = or i8 %bf.value76.i, %bf.clear77.i
  store i8 %bf.set78.i, ptr %xfer_len_hi4.i, align 4
  br label %if.end87.i

if.else79.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %xfer_len_hi483.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 3
  %49 = ptrtoint ptr %xfer_len_hi483.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load84.i = load i8, ptr %xfer_len_hi483.i, align 4
  %bf.clear85.i = and i8 %bf.load84.i, -16
  store i8 %bf.clear85.i, ptr %xfer_len_hi483.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else79.i, %if.then70.i
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 14
  %50 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cmd_len.i, align 4
  %conv88.i = trunc i16 %51 to i8
  %cdb_len.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 3
  %52 = ptrtoint ptr %cdb_len.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load89.i = load i8, ptr %cdb_len.i, align 4
  %bf.shl91.i = shl i8 %conv88.i, 4
  %bf.clear92.i = and i8 %bf.load89.i, 15
  %bf.set93.i = or i8 %bf.clear92.i, %bf.shl91.i
  store i8 %bf.set93.i, ptr %cdb_len.i, align 4
  %sense_len.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 4
  %53 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 64, ptr %sense_len.i, align 1
  %cdb.i = getelementptr inbounds %struct.myrb_dcdb, ptr %call4.i, i32 0, i32 5
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %54 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmnd.i, align 4
  %56 = load i16, ptr %cmd_len.i, align 4
  %conv95.i = zext i16 %56 to i32
  %57 = call ptr @memcpy(ptr %cdb.i, ptr %55, i32 %conv95.i)
  %queue_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 7, i32 1
  %call100.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %qcmd.i, align 4
  call void %59(ptr noundef %hostdata.i.i, ptr noundef %add.ptr.i.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call100.i) #12
  br label %myrb_pthru_queuecommand.exit

myrb_pthru_queuecommand.exit:                     ; preds = %if.end87.i, %if.then6.i, %if.end6.myrb_pthru_queuecommand.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then6.i ], [ 0, %if.end87.i ], [ 4181, %if.end6.myrb_pthru_queuecommand.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcdb_addr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %myrb_pthru_queuecommand.exit, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.then4 ], [ %retval.0.i, %myrb_pthru_queuecommand.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_host_reset(ptr nocapture noundef readonly %scmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %reset = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 1, i32 1
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %io_base = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 2
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  tail call void %5(ptr noundef %7) #12
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_slave_alloc(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp = icmp ugt i32 %1, %sub.i
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp1.not = icmp eq i64 %7, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp7 = icmp eq i32 %1, %sub.i
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call fastcc i32 @myrb_ldev_slave_alloc(ptr noundef %sdev)
  br label %return

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc i32 @myrb_pdev_slave_alloc(ptr noundef %sdev)
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %call11, %if.end10 ], [ -6, %entry.return_crit_edge ], [ -6, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_slave_configure(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp = icmp ugt i32 %1, %sub.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp4 = icmp ult i32 %1, %sub.i
  br i1 %cmp4, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp7.not = icmp eq i64 %7, 0
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %state = getelementptr inbounds %struct.myrb_ldev_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.370)
  switch i8 %11, label %if.end11.myrb_devstate_name.exit_crit_edge [
    i8 3, label %if.end11.cleanup.sink.split_crit_edge
    i8 0, label %if.end11.if.then.i_crit_edge
    i8 2, label %if.then.fold.split.i
    i8 -1, label %if.then.fold.split18.i
    i8 4, label %if.then.fold.split16.i
    i8 16, label %if.then.fold.split17.i
  ]

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end11.myrb_devstate_name.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then.fold.split.i:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split.i, %if.end11.if.then.i_crit_edge
  %i.013.lcssa.i = phi i32 [ 1, %if.then.fold.split.i ], [ 3, %if.then.fold.split16.i ], [ 4, %if.then.fold.split17.i ], [ 5, %if.then.fold.split18.i ], [ 0, %if.end11.if.then.i_crit_edge ]
  %name.i = getelementptr %struct.myrb_devstate_name_entry, ptr @myrb_devstate_name_list, i32 %i.013.lcssa.i, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  br label %myrb_devstate_name.exit

myrb_devstate_name.exit:                          ; preds = %if.then.i, %if.end11.myrb_devstate_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.then.i ], [ @.str.116, %if.end11.myrb_devstate_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef %retval.0.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %myrb_devstate_name.exit, %if.end11.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ 8589934592, %if.end.cleanup.sink.split_crit_edge ], [ 4503599627370496, %if.end11.cleanup.sink.split_crit_edge ], [ 4503599627370496, %myrb_devstate_name.exit ]
  %no_uld_attach = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %15 = ptrtoint ptr %no_uld_attach to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load18 = load i64, ptr %no_uld_attach, align 4
  %bf.set20 = or i64 %bf.load18, %.sink
  store i64 %bf.set20, ptr %no_uld_attach, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end6.cleanup_crit_edge ], [ -6, %if.end9.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrb_slave_destroy(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @myrb_biosparam(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %ldev_geom_heads = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %ldev_geom_heads to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ldev_geom_heads, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %geom, align 4
  %ldev_geom_sectors = getelementptr inbounds %struct.myrb_hba, ptr %hostdata.i, i32 0, i32 2
  %5 = ptrtoint ptr %ldev_geom_sectors to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ldev_geom_sectors, align 1
  %conv1 = zext i8 %6 to i32
  %arrayidx2 = getelementptr i32, ptr %geom, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %arrayidx2, align 4
  %mul = mul nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp172 = icmp ult i64 %capacity, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !777

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv177 = trunc i64 %capacity to i32
  %rem178 = urem i32 %conv177, %mul
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %capacity) #17, !srcloc !778
  %asmresult.i275 = extractvalue { i64, i64 } %8, 0
  %shr.i = lshr i64 %asmresult.i275, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %__rem.0 = phi i32 [ %rem178, %if.then176 ], [ %conv.i, %if.else182 ]
  %arrayidx188 = getelementptr i32, ptr %geom, i32 2
  %9 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %__rem.0, ptr %arrayidx188, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myrb_ldev_queuecommand(ptr noundef %shost, ptr noundef %scmd) unnamed_addr #2 align 64 {
entry:
  %hw_sgl_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %state = getelementptr inbounds %struct.myrb_ldev_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 4
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch = icmp eq i8 %6, 2
  br i1 %switch, label %if.end15, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_ldev_queuecommand.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_ldev_queuecommand, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !734

if.then11:                                        ; preds = %do.body
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %if.then11.cond.end_crit_edge, label %cond.true

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state, align 4
  %conv14 = zext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then11.cond.end_crit_edge
  %cond = phi i32 [ %conv14, %cond.true ], [ 255, %if.then11.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_ldev_queuecommand.__UNIQUE_ID_ddebug288, ptr noundef %shost_gendev, ptr noundef nonnull @.str.103, i32 noundef %8, i32 noundef %cond) #12
  br label %do.end

do.end:                                           ; preds = %cond.end, %do.body
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262144, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

if.end15:                                         ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %12 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmnd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.371)
  switch i8 %15, label %sw.default [
    i8 0, label %sw.bb
    i8 18, label %sw.bb18
    i8 53, label %sw.bb26
    i8 26, label %sw.bb28
    i8 37, label %sw.bb46
    i8 3, label %sw.bb66
    i8 29, label %sw.bb68
    i8 8, label %sw.bb78
    i8 10, label %if.end15.sw.bb85_crit_edge
    i8 40, label %sw.bb102
    i8 42, label %if.end15.sw.bb109_crit_edge
    i8 47, label %if.end15.sw.bb109_crit_edge348
    i8 46, label %if.end15.sw.bb109_crit_edge349
    i8 -88, label %sw.bb118
    i8 -86, label %if.end15.sw.bb125_crit_edge
    i8 -81, label %if.end15.sw.bb125_crit_edge350
    i8 -82, label %if.end15.sw.bb125_crit_edge351
  ]

if.end15.sw.bb125_crit_edge351:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb125

if.end15.sw.bb125_crit_edge350:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb125

if.end15.sw.bb125_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb125

if.end15.sw.bb109_crit_edge349:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb109

if.end15.sw.bb109_crit_edge348:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb109

if.end15.sw.bb109_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb109

if.end15.sw.bb85_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb85

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %result17 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %17 = ptrtoint ptr %result17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %result17, align 4
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb18:                                          ; preds = %if.end15
  %arrayidx20 = getelementptr i8, ptr %13, i32 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  br label %if.end25

if.else:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @myrb_inquiry(ptr noundef %hostdata.i, ptr noundef %scmd)
  %result24 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %21 = ptrtoint ptr %result24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %result24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb26:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %result27 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %22 = ptrtoint ptr %result27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %result27, align 4
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb28:                                          ; preds = %if.end15
  %arrayidx30 = getelementptr i8, ptr %13, i32 2
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx30, align 1
  %trunc = trunc i8 %24 to i6
  %25 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.372)
  switch i6 %trunc, label %if.then42 [
    i6 -1, label %sw.bb28.if.else43_crit_edge
    i6 8, label %sw.bb28.if.else43_crit_edge352
  ]

sw.bb28.if.else43_crit_edge352:                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

sw.bb28.if.else43_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else43

if.then42:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  br label %if.end45

if.else43:                                        ; preds = %sw.bb28.if.else43_crit_edge, %sw.bb28.if.else43_crit_edge352
  tail call fastcc void @myrb_mode_sense(ptr noundef %hostdata.i, ptr noundef %scmd, ptr noundef %3)
  %result44 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %26 = ptrtoint ptr %result44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %result44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb46:                                          ; preds = %if.end15
  %arrayidx48 = getelementptr i8, ptr %13, i32 1
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx48, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not = icmp eq i8 %29, 0
  br i1 %tobool51.not, label %lor.lhs.false, label %sw.bb46.if.then57_crit_edge

sw.bb46.if.then57_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

lor.lhs.false:                                    ; preds = %sw.bb46
  %arrayidx53 = getelementptr i8, ptr %13, i32 8
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx53, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool56.not = icmp eq i8 %32, 0
  br i1 %tobool56.not, label %if.end58, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %sw.bb46.if.then57_crit_edge
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

if.end58:                                         ; preds = %lor.lhs.false
  %arrayidx60 = getelementptr i8, ptr %13, i32 2
  %33 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool63.not = icmp eq i32 %34, 0
  br i1 %tobool63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

if.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @myrb_read_capacity(ptr noundef %hostdata.i, ptr noundef %scmd, ptr noundef %3)
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb66:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %35 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sense_buffer.i, align 4
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %37 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdb.i.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %39 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nents.i.i.i, align 4
  %call2.i.i = tail call i32 @sg_copy_from_buffer(ptr noundef %38, i32 noundef %40, ptr noundef %36, i32 noundef 96) #12
  %result67 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %41 = ptrtoint ptr %result67 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %result67, align 4
  br label %cleanup220

sw.bb68:                                          ; preds = %if.end15
  %arrayidx70 = getelementptr i8, ptr %13, i32 1
  %42 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp72.not = icmp eq i8 %43, 4
  br i1 %cmp72.not, label %if.else75, label %if.then74

if.then74:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  br label %if.end77

if.else75:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #14
  %result76 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %44 = ptrtoint ptr %result76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %result76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then74
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb78:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp81 = icmp eq i8 %5, 2
  br i1 %cmp81, label %if.then83, label %sw.bb78.sw.bb85_crit_edge

sw.bb78.sw.bb85_crit_edge:                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb85

if.then83:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 7, i8 noundef zeroext 33, i8 noundef zeroext 6) #12
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb85:                                          ; preds = %sw.bb78.sw.bb85_crit_edge, %if.end15.sw.bb85_crit_edge
  %arrayidx87 = getelementptr i8, ptr %13, i32 1
  %45 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx87, align 1
  %47 = and i8 %46, 31
  %and89 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %and89, 16
  %arrayidx91 = getelementptr i8, ptr %13, i32 2
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %49 to i32
  %shl93 = shl nuw nsw i32 %conv92, 8
  %or = or i32 %shl, %shl93
  %arrayidx95 = getelementptr i8, ptr %13, i32 3
  %50 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %51 to i32
  %or97 = or i32 %or, %conv96
  %arrayidx100 = getelementptr i8, ptr %13, i32 4
  %52 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %53 to i32
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp105 = icmp eq i8 %5, 2
  br i1 %cmp105, label %if.then107, label %sw.bb102.sw.bb109_crit_edge

sw.bb102.sw.bb109_crit_edge:                      ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb109

if.then107:                                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 7, i8 noundef zeroext 33, i8 noundef zeroext 6) #12
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb109:                                         ; preds = %sw.bb102.sw.bb109_crit_edge, %if.end15.sw.bb109_crit_edge, %if.end15.sw.bb109_crit_edge348, %if.end15.sw.bb109_crit_edge349
  %arrayidx111 = getelementptr i8, ptr %13, i32 2
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %arrayidx111, align 1
  %arrayidx115 = getelementptr i8, ptr %13, i32 7
  %56 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %arrayidx115, align 1
  %conv117 = zext i16 %57 to i32
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp121 = icmp eq i8 %5, 2
  br i1 %cmp121, label %if.then123, label %sw.bb118.sw.bb125_crit_edge

sw.bb118.sw.bb125_crit_edge:                      ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb125

if.then123:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 7, i8 noundef zeroext 33, i8 noundef zeroext 6) #12
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.bb125:                                         ; preds = %sw.bb118.sw.bb125_crit_edge, %if.end15.sw.bb125_crit_edge, %if.end15.sw.bb125_crit_edge350, %if.end15.sw.bb125_crit_edge351
  %arrayidx127 = getelementptr i8, ptr %13, i32 2
  %58 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %arrayidx127, align 1
  %arrayidx131 = getelementptr i8, ptr %13, i32 6
  %60 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx131, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %scmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #12
  tail call void @scsi_done(ptr noundef %scmd) #12
  br label %cleanup220

sw.epilog:                                        ; preds = %sw.bb125, %sw.bb109, %sw.bb85
  %lba.0.off0 = phi i32 [ %59, %sw.bb125 ], [ %55, %sw.bb109 ], [ %or97, %sw.bb85 ]
  %block_cnt.0 = phi i32 [ %61, %sw.bb125 ], [ %conv117, %sw.bb109 ], [ %conv101, %sw.bb85 ]
  %62 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 18)
  %tag = getelementptr i8, ptr %scmd, i32 -172
  %63 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tag, align 4
  %65 = trunc i32 %64 to i8
  %conv134 = add i8 %65, 3
  %id135 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %id135 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv134, ptr %id135, align 1
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 15
  %67 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp136 = icmp eq i32 %68, 3
  br i1 %cmp136, label %sw.epilog.do.body209_crit_edge, label %if.end139

sw.epilog.do.body209_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body209

if.end139:                                        ; preds = %sw.epilog
  %call140 = tail call i32 @scsi_dma_map(ptr noundef %scmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call140)
  %cmp141 = icmp eq i32 %call140, 1
  br i1 %cmp141, label %if.then143, label %if.else162

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %69 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sdb.i, align 4
  %71 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp146 = icmp eq i32 %72, 2
  %. = select i1 %cmp146, i8 54, i8 55
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %., ptr %add.ptr.i, align 4
  %conv152 = trunc i32 %block_cnt.0 to i16
  %ld = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %74 = ptrtoint ptr %ld to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load = load i16, ptr %ld, align 2
  %bf.shl = shl i16 %conv152, 5
  %bf.clear = and i16 %bf.load, 31
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %ld, align 2
  %id153 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %75 = ptrtoint ptr %id153 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id153, align 8
  %77 = trunc i32 %76 to i16
  %bf.value157 = and i16 %77, 31
  %bf.set159 = or i16 %bf.value157, %bf.shl
  store i16 %bf.set159, ptr %ld, align 2
  %lba161 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 4
  %78 = ptrtoint ptr %lba161 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %lba.0.off0, ptr %lba161, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %70, i32 0, i32 3
  %79 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_address, align 4
  %addr = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %81 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %addr, align 4
  br label %do.body209

if.else162:                                       ; preds = %if.end139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_sgl_addr) #12
  %82 = ptrtoint ptr %hw_sgl_addr to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %hw_sgl_addr, align 4, !annotation !704
  %sg_pool = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 6, i32 1
  %83 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sg_pool, align 4
  %call163 = call ptr @dma_pool_alloc(ptr noundef %84, i32 noundef 2592, ptr noundef nonnull %hw_sgl_addr) #12
  %tobool164.not = icmp eq ptr %call163, null
  br i1 %tobool164.not, label %cleanup220.critedge, label %if.end166

if.end166:                                        ; preds = %if.else162
  %sgl167 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 5
  %85 = ptrtoint ptr %sgl167 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call163, ptr %sgl167, align 4
  %86 = ptrtoint ptr %hw_sgl_addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hw_sgl_addr, align 4
  %sgl_addr = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 6
  %88 = ptrtoint ptr %sgl_addr to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %sgl_addr, align 4
  %89 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp169 = icmp eq i32 %90, 2
  %.341 = select i1 %cmp169, i8 -74, i8 -73
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %.341, ptr %add.ptr.i, align 4
  %conv176 = trunc i32 %block_cnt.0 to i16
  %ld177 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %ld177 to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load178 = load i16, ptr %ld177, align 2
  %bf.shl180 = shl i16 %conv176, 5
  %bf.clear181 = and i16 %bf.load178, 31
  %bf.set182 = or i16 %bf.clear181, %bf.shl180
  store i16 %bf.set182, ptr %ld177, align 2
  %id183 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %93 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id183, align 8
  %95 = trunc i32 %94 to i16
  %bf.value187 = and i16 %95, 31
  %bf.set189 = or i16 %bf.value187, %bf.shl180
  store i16 %bf.set189, ptr %ld177, align 2
  %lba192 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 4
  %96 = ptrtoint ptr %lba192 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %lba.0.off0, ptr %lba192, align 4
  %addr193 = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 8
  %97 = ptrtoint ptr %addr193 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %87, ptr %addr193, align 4
  %conv194 = trunc i32 %call140 to i8
  %sg_count = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 12
  %98 = ptrtoint ptr %sg_count to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load195 = load i8, ptr %sg_count, align 4
  %bf.shl197 = shl i8 %conv194, 2
  %bf.clear198 = and i8 %bf.load195, 3
  %bf.set199 = or i8 %bf.clear198, %bf.shl197
  store i8 %bf.set199, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp201344 = icmp sgt i32 %call140, 0
  br i1 %cmp201344, label %for.body.preheader, label %if.end166.cleanup_crit_edge

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end166
  %sdb.i342 = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %99 = ptrtoint ptr %sdb.i342 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sdb.i342, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0347 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %hw_sgl.0346 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call163, %for.body.preheader ]
  %sgl.0345 = phi ptr [ %call204, %for.body.for.body_crit_edge ], [ %100, %for.body.preheader ]
  %dma_address203 = getelementptr inbounds %struct.scatterlist, ptr %sgl.0345, i32 0, i32 3
  %101 = ptrtoint ptr %dma_address203 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dma_address203, align 4
  %103 = ptrtoint ptr %hw_sgl.0346 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %hw_sgl.0346, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl.0345, i32 0, i32 4
  %104 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_length, align 4
  %sge_count = getelementptr inbounds %struct.myrb_sge, ptr %hw_sgl.0346, i32 0, i32 1
  %106 = ptrtoint ptr %sge_count to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %sge_count, align 4
  %incdec.ptr = getelementptr %struct.myrb_sge, ptr %hw_sgl.0346, i32 1
  %inc = add nuw nsw i32 %i.0347, 1
  %call204 = call ptr @sg_next(ptr noundef %sgl.0345) #12
  %exitcond.not = icmp eq i32 %inc, %call140
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end166.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_sgl_addr) #12
  br label %do.body209

do.body209:                                       ; preds = %cleanup, %if.then143, %sw.epilog.do.body209_crit_edge
  %queue_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 7, i32 1
  %call214 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  %qcmd = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %107 = ptrtoint ptr %qcmd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %qcmd, align 4
  call void %108(ptr noundef %hostdata.i, ptr noundef %add.ptr.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call214) #12
  br label %cleanup220

cleanup220.critedge:                              ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_sgl_addr) #12
  br label %cleanup220

cleanup220:                                       ; preds = %cleanup220.critedge, %do.body209, %sw.default, %if.then123, %if.then107, %if.then83, %if.end77, %sw.bb66, %if.end65, %if.then64, %if.then57, %if.end45, %sw.bb26, %if.end25, %sw.bb, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %sw.default ], [ 0, %do.body209 ], [ 0, %if.then123 ], [ 0, %if.then107 ], [ 0, %if.then83 ], [ 0, %if.end77 ], [ 0, %sw.bb66 ], [ 0, %if.then57 ], [ 0, %if.then64 ], [ 0, %if.end65 ], [ 0, %if.end45 ], [ 0, %sw.bb26 ], [ 0, %if.end25 ], [ 0, %sw.bb ], [ 4181, %cleanup220.critedge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_inquiry(ptr nocapture noundef readonly %cb, ptr nocapture noundef readonly %scmd) unnamed_addr #2 align 64 {
entry:
  %inq = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %inq) #12
  %0 = call ptr @memcpy(ptr %inq, ptr @__const.myrb_inquiry.inq, i32 36)
  %bus_width = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 3
  %1 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bus_width, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %cmp = icmp ugt i8 %2, 16
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr inbounds [36 x i8], ptr %inq, i32 0, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = or i8 %4, 64
  store i8 %5, ptr %arrayidx, align 1
  br label %if.then8

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp6 = icmp ugt i8 %2, 8
  br i1 %cmp6, label %if.end.if.then8_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.thread
  %arrayidx9 = getelementptr inbounds [36 x i8], ptr %inq, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %8 = or i8 %7, 32
  store i8 %8, ptr %arrayidx9, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %arrayidx14 = getelementptr inbounds [36 x i8], ptr %inq, i32 0, i32 16
  %model_name = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 33
  %9 = call ptr @memcpy(ptr %arrayidx14, ptr %model_name, i32 16)
  %arrayidx15 = getelementptr inbounds [36 x i8], ptr %inq, i32 0, i32 32
  %fw_version = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 34
  %10 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_version, align 4
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr inbounds [36 x i8], ptr %inq, i32 0, i32 33
  %arrayidx19 = getelementptr %struct.myrb_hba, ptr %cb, i32 0, i32 34, i32 2
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx19, align 2
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx17, align 1
  %arrayidx20 = getelementptr inbounds [36 x i8], ptr %inq, i32 0, i32 35
  %arrayidx22 = getelementptr %struct.myrb_hba, ptr %cb, i32 0, i32 34, i32 7
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22, align 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx20, align 1
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %19 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %21 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nents.i.i, align 4
  %call2.i = call i32 @sg_copy_from_buffer(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %inq, i32 noundef 36) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %inq) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_mode_sense(ptr nocapture noundef readonly %cb, ptr nocapture noundef readonly %scmd, ptr nocapture noundef readonly %ldev_info) unnamed_addr #2 align 64 {
entry:
  %modes = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %modes) #12
  %0 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 4
  %1 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 5
  %2 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 6
  %3 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 12
  %4 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 14
  %5 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 18
  %6 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 26
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %7 = call ptr @memset(ptr %modes, i32 255, i32 32)
  %8 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not = icmp eq i8 %12, 0
  %. = select i1 %cmp.not, i32 32, i32 24
  %.42 = select i1 %cmp.not, ptr %3, ptr %0
  %13 = getelementptr inbounds i8, ptr %modes, i32 1
  %14 = call ptr @memset(ptr %13, i32 0, i32 31)
  %15 = trunc i32 %. to i8
  %conv4 = add nsw i8 %15, -1
  %16 = ptrtoint ptr %modes to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4, ptr %modes, align 1
  br i1 %cmp.not, label %if.then7, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %17 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 13
  %18 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 9
  %19 = getelementptr inbounds [32 x i8], ptr %modes, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %19, align 1
  %21 = ptrtoint ptr %ldev_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ldev_info, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %0, align 1
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %18, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %entry.if.end12_crit_edge
  %.42.sroa.sel52 = phi ptr [ %17, %if.then7 ], [ %1, %entry.if.end12_crit_edge ]
  %27 = ptrtoint ptr %.42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %.42, align 1
  %28 = ptrtoint ptr %.42.sroa.sel52 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 18, ptr %.42.sroa.sel52, align 1
  %wb_enabled = getelementptr inbounds %struct.myrb_ldev_info, ptr %ldev_info, i32 0, i32 2
  %29 = ptrtoint ptr %wb_enabled to i32
  call void @__asan_loadN_noabort(i32 %29, i32 3)
  %bf.load = load i24, ptr %wb_enabled, align 1
  %30 = and i24 %bf.load, 65536
  %tobool15.not = icmp eq i24 %30, 0
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %if.then16

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %.42.sroa.sel49 = select i1 %cmp.not, ptr %4, ptr %2
  %31 = ptrtoint ptr %.42.sroa.sel49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %.42.sroa.sel49, align 1
  %33 = or i8 %32, 4
  store i8 %33, ptr %.42.sroa.sel49, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end12.if.end20_crit_edge
  %segment_size = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 5
  %34 = ptrtoint ptr %segment_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %segment_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool21.not = icmp eq i16 %35, 0
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %if.then22

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %.42.sroa.sel46 = select i1 %cmp.not, ptr %4, ptr %2
  %36 = ptrtoint ptr %.42.sroa.sel46 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %.42.sroa.sel46, align 1
  %38 = or i8 %37, 8
  store i8 %38, ptr %.42.sroa.sel46, align 1
  %.42.sroa.sel = select i1 %cmp.not, ptr %6, ptr %5
  %39 = ptrtoint ptr %.42.sroa.sel to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %35, ptr %.42.sroa.sel, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end20.if.end29_crit_edge
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %40 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %42 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nents.i.i, align 4
  %call2.i = call i32 @sg_copy_from_buffer(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %modes, i32 noundef %.) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %modes) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_read_capacity(ptr nocapture noundef readonly %cb, ptr nocapture noundef readonly %scmd, ptr nocapture noundef readonly %ldev_info) unnamed_addr #2 align 64 {
entry:
  %data = alloca [8 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_read_capacity.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_read_capacity, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !734

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %ldev_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ldev_info, align 4
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_read_capacity.__UNIQUE_ID_ddebug287, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.105, i32 noundef %3, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %ldev_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ldev_info, align 4
  %sub = add i32 %8, -1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %data, align 4
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %6, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17
  %13 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 0, i32 1
  %15 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nents.i.i, align 4
  %call2.i = call i32 @sg_copy_from_buffer(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %data, i32 noundef 8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myrb_ldev_slave_alloc(ptr noundef %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %ldev_info_buf = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 37, i32 14
  %4 = ptrtoint ptr %ldev_info_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ldev_info_buf, align 4
  %conv1 = and i32 %3, 65535
  %add.ptr = getelementptr %struct.myrb_ldev_info, ptr %5, i32 %conv1
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #18
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %7 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %hostdata, align 8
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_ldev_slave_alloc.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_ldev_slave_alloc, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !734

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %state = getelementptr %struct.myrb_ldev_info, ptr %5, i32 %conv1, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 4
  %conv13 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_ldev_slave_alloc.__UNIQUE_ID_ddebug289, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.107, i32 noundef %conv1, i32 noundef %conv13) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %10 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata, align 8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %11, align 1
  %raid_level = getelementptr %struct.myrb_ldev_info, ptr %5, i32 %conv1, i32 2
  %15 = ptrtoint ptr %raid_level to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load = load i24, ptr %raid_level, align 1
  %16 = icmp ult i24 %bf.load, 1048576
  br i1 %16, label %switch.lookup, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr = lshr i24 %bf.load, 17
  %bf.cast = zext i24 %bf.lshr to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.myrb_ldev_slave_alloc, i32 0, i32 %bf.cast
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end.sw.epilog_crit_edge
  %level.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %do.end.sw.epilog_crit_edge ]
  %18 = load ptr, ptr @myrb_raid_template, align 4
  %sdev_gendev21 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %call.i = tail call ptr @attribute_container_find_class_device(ptr noundef %18, ptr noundef %sdev_gendev21) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %raid_set_level.exit, !prof !779

do.body4.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/raid_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #12, !srcloc !780
  unreachable

raid_set_level.exit:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %level.i = getelementptr inbounds %struct.raid_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %level.0, ptr %level.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %raid_set_level.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %raid_set_level.exit ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @myrb_pdev_slave_alloc(ptr noundef %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 15) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc zeroext i16 @myrb_exec_type3D(ptr noundef %hostdata.i, ptr noundef %sdev, ptr noundef nonnull %call7.i.i)
  %conv = zext i16 %call4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4)
  %cmp5.not = icmp eq i16 %call4, 0
  br i1 %cmp5.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_pdev_slave_alloc, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !734

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug290, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.109, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end3
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool16.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool16.not, label %do.body18, label %do.body36

do.body18:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_pdev_slave_alloc, %if.then30)) #12
          to label %do.end34 [label %if.then30], !srcloc !734

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %sdev_gendev31 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug291, ptr noundef %sdev_gendev31, ptr noundef nonnull @.str.110) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.body36:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_pdev_slave_alloc, %if.then48)) #12
          to label %do.end54 [label %if.then48], !srcloc !734

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %sdev_gendev49 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %state = getelementptr inbounds %struct.myrb_pdev_state, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 2
  %conv51 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug292, ptr noundef %sdev_gendev49, ptr noundef nonnull @.str.111, i32 noundef %7, i32 noundef %9, i32 noundef %conv51) #12
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %12 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %hostdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end34, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %do.end54 ], [ -6, %do.end34 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @attribute_container_find_class_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @myrb_exec_type3D(ptr noundef %cb, ptr nocapture noundef readonly %sdev, ptr noundef %pdev_info) unnamed_addr #2 align 64 {
entry:
  %cmpl.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %pdev_info) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !777

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.112, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.113, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %pdev_info, i32 noundef 15) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %pdev_info to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %and.i = and i32 %7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 15, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %dcmd_mutex = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 54
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #12
  %10 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 18)
  %id = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %id, align 1
  %12 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 80, ptr %dcmd_blk, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %conv = trunc i32 %14 to i8
  %channel5 = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk, i32 0, i32 2
  %15 = ptrtoint ptr %channel5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %channel5, align 2
  %id6 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %16 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id6, align 8
  %conv7 = trunc i32 %17 to i8
  %target = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk, i32 0, i32 3
  %18 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7, ptr %target, align 1
  %addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #12
  %20 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 52)
  %22 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %20, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 2
  %23 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmpl.i, ptr %completion.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %24 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qcmd.i, align 4
  call void %25(ptr noundef %cb, ptr noundef %dcmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i) #12
  %status.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 1
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex) #12
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev11, i32 noundef %retval.0.i, i32 noundef 15, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp = icmp eq i16 %27, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %30 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dcmd_blk, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %31)
  %cmp16 = icmp eq i8 %31, 20
  br i1 %cmp16, label %if.then18, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i1 = getelementptr i8, ptr %pdev_info, i32 2
  %add.ptr1.i = getelementptr i8, ptr %pdev_info, i32 3
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr1.i, align 1
  %34 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %add.ptr.i1, align 1
  %add.ptr2.i = getelementptr i8, ptr %pdev_info, i32 4
  %add.ptr3.i = getelementptr i8, ptr %pdev_info, i32 5
  %35 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %add.ptr3.i, align 1
  %37 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %add.ptr2.i, align 1
  %add.ptr4.i = getelementptr i8, ptr %pdev_info, i32 6
  %add.ptr5.i = getelementptr i8, ptr %pdev_info, i32 8
  %38 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr5.i, align 1
  %40 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %add.ptr4.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.then18 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %27, %if.end.cleanup_crit_edge ], [ 2, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @myrb_exec_cmd(ptr noundef %cb, ptr noundef %cmd_blk) unnamed_addr #2 align 64 {
entry:
  %cmpl = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl) #12
  %0 = getelementptr inbounds i8, ptr %cmpl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %cmpl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmpl, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %cmpl, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 2
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmpl, ptr %completion, align 4
  %queue_lock = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #12
  %qcmd = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %4 = ptrtoint ptr %qcmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qcmd, align 4
  call void %5(ptr noundef %cb, ptr noundef %cmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl) #12
  %status = getelementptr inbounds %struct.myrb_cmdblk, ptr %cmd_blk, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl) #12
  ret i16 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctlr_num_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr_num = getelementptr i8, ptr %dev, i32 1176
  %0 = ptrtoint ptr %ctlr_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr_num, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.124, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @model_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %model_name = getelementptr i8, ptr %dev, i32 1180
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.126, ptr noundef %model_name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_version = getelementptr i8, ptr %dev, i32 1200
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.126, ptr noundef %fw_version)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flush_cache_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %cmpl.i.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %dcmd_blk.i = getelementptr i8, ptr %dev, i32 1280
  %dcmd_mutex.i = getelementptr i8, ptr %dev, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %0 = call ptr @memset(ptr %dcmd_blk.i, i32 0, i32 18)
  %id.i = getelementptr i8, ptr %dev, i32 1281
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %id.i, align 1
  %2 = ptrtoint ptr %dcmd_blk.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %dcmd_blk.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  %3 = getelementptr inbounds i8, ptr %cmpl.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 52)
  %5 = ptrtoint ptr %cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmpl.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %3, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i = getelementptr i8, ptr %dev, i32 1300
  %6 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmpl.i.i, ptr %completion.i.i, align 4
  %queue_lock.i.i = getelementptr i8, ptr %dev, i32 1112
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #12
  %qcmd.i.i = getelementptr i8, ptr %dev, i32 1156
  %7 = ptrtoint ptr %qcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qcmd.i.i, align 4
  call void %8(ptr noundef %hostdata.i, ptr noundef %dcmd_blk.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call3.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i) #12
  %status.i.i = getelementptr i8, ptr %dev, i32 1296
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  br i1 %cmp, label %do.end, label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev = getelementptr i8, ptr %dev, i32 -928
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev, ptr noundef nonnull @.str.129) #15
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %10 to i32
  %shost_gendev6 = getelementptr i8, ptr %dev, i32 -928
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev6, ptr noundef nonnull @.str.132, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %do.end
  %retval.0 = phi i32 [ %count, %do.end ], [ -5, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rebuild_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %rbld_buf = alloca %struct.myrb_rbld_progress, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbld_buf) #12
  %2 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rbld_buf, align 4, !annotation !704
  %3 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !704
  %5 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !704
  %channel = getelementptr i8, ptr %dev, i32 -276
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.i)
  %cmp = icmp ult i32 %8, %sub.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.135)
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call4 = call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %hostdata.i, ptr noundef nonnull %rbld_buf)
  %11 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rbld_buf, align 4
  %id = getelementptr i8, ptr %dev, i32 -280
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.not = icmp eq i32 %12, %14
  %15 = and i16 %call4, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp8.not = icmp eq i16 %15, 0
  %or.cond = select i1 %cmp5.not, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.136, i32 16)
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %sub = sub i32 %18, %20
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.137, i32 noundef %sub, i32 noundef %18)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 15, %if.then10 ], [ %call14, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbld_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rebuild_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %cmpl.i = alloca %struct.completion, align 4
  %start = alloca i32, align 4
  %rate_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #12
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %start, align 4, !annotation !704
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %start) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

if.end:                                           ; preds = %entry
  %channel = getelementptr i8, ptr %dev, i32 -276
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub.i)
  %cmp.not = icmp ult i32 %4, %sub.i
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup63_crit_edge

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %hostdata.i, ptr noundef null)
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6)
  %cmp9 = icmp eq i16 %call6, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.138) #12
  br label %cleanup63

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %dcmd_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 14
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #12
  %dcmd_blk = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %11 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 18)
  %12 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 22, ptr %dcmd_blk, align 4
  %id = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk, i32 0, i32 1
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %id, align 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %conv15 = trunc i32 %15 to i8
  %channel16 = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk, i32 0, i32 2
  %16 = ptrtoint ptr %channel16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %channel16, align 2
  %id17 = getelementptr i8, ptr %dev, i32 -280
  %17 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id17, align 8
  %conv18 = trunc i32 %18 to i8
  %target = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk, i32 0, i32 3
  %19 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %target, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #12
  %20 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 52)
  %22 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %20, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %23 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmpl.i, ptr %completion.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 7, i32 1
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qcmd.i, align 4
  call void %25(ptr noundef %hostdata.i, ptr noundef %dcmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i) #12
  %status.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex) #12
  br label %if.end43

if.else:                                          ; preds = %if.end5
  %pdev21 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_addr) #12
  %30 = ptrtoint ptr %rate_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %rate_addr, align 4, !annotation !704
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6)
  %cmp23.not = icmp eq i16 %call6, 0
  br i1 %cmp23.not, label %if.end26, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end26:                                         ; preds = %if.else
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev27, i32 noundef 1, ptr noundef nonnull %rate_addr, i32 noundef 3264, i32 noundef 0) #12
  %cmp29 = icmp eq ptr %call.i, null
  br i1 %cmp29, label %if.end26.cleanup.thread_crit_edge, label %cleanup

if.end26.cleanup.thread_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end26.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  %.str.139.sink = phi ptr [ @.str.139, %if.else.cleanup.thread_crit_edge ], [ @.str.140, %if.end26.cleanup.thread_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.else.cleanup.thread_crit_edge ], [ -12, %if.end26.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %.str.139.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_addr) #12
  br label %cleanup63

cleanup:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %dcmd_mutex33 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 14
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex33, i32 noundef 0) #12
  %dcmd_blk34 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %31 = call ptr @memset(ptr %dcmd_blk34, i32 0, i32 18)
  %32 = ptrtoint ptr %dcmd_blk34 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 31, ptr %dcmd_blk34, align 4
  %id37 = getelementptr inbounds %struct.anon.90, ptr %dcmd_blk34, i32 0, i32 1
  %33 = ptrtoint ptr %id37 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %id37, align 1
  %rbld_rate = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 3
  %34 = ptrtoint ptr %rbld_rate to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %rbld_rate, align 4
  %35 = ptrtoint ptr %rate_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate_addr, align 4
  %addr = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %addr, align 4
  %call38 = call fastcc zeroext i16 @myrb_exec_cmd(ptr noundef %hostdata.i, ptr noundef %dcmd_blk34)
  %38 = ptrtoint ptr %rate_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev27, i32 noundef 1, ptr noundef nonnull %call.i, i32 noundef %39, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex33) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_addr) #12
  br label %if.end43

if.end43:                                         ; preds = %cleanup, %if.end12
  %status.1 = phi i16 [ %27, %if.end12 ], [ %call38, %cleanup ]
  %conv44 = zext i16 %status.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status.1)
  %cmp45 = icmp eq i16 %status.1, 0
  %40 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool48.not = icmp eq i32 %41, 0
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %tobool48.not, ptr @.str.143, ptr @.str.142
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull %cond) #12
  br label %cleanup63

if.end49:                                         ; preds = %if.end43
  br i1 %tobool48.not, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.144, i32 noundef %conv44) #12
  br label %cleanup63

if.end53:                                         ; preds = %if.end49
  %42 = zext i16 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.373)
  switch i16 %status.1, label %if.else60 [
    i16 2, label %if.end53.if.then59_crit_edge
    i16 4, label %sw.bb55
    i16 261, label %sw.bb56
    i16 262, label %sw.bb57
  ]

if.end53.if.then59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

sw.bb55:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

sw.bb56:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

sw.bb57:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

if.then59:                                        ; preds = %sw.bb57, %sw.bb56, %sw.bb55, %if.end53.if.then59_crit_edge
  %msg.0.ph = phi ptr [ @.str.145, %if.end53.if.then59_crit_edge ], [ @.str.146, %sw.bb55 ], [ @.str.147, %sw.bb56 ], [ @.str.148, %sw.bb57 ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull %msg.0.ph) #12
  br label %cleanup63

if.else60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.150, i32 noundef %conv44) #12
  br label %cleanup63

cleanup63:                                        ; preds = %if.else60, %if.then59, %if.then51, %if.then47, %cleanup.thread, %if.then11, %if.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.1 = phi i32 [ -114, %if.then11 ], [ %count, %if.then47 ], [ -5, %if.then51 ], [ %call1, %entry.cleanup63_crit_edge ], [ -6, %if.end.cleanup63_crit_edge ], [ -5, %if.else60 ], [ -5, %if.then59 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %cb, ptr noundef writeonly %rbld) unnamed_addr #2 align 64 {
entry:
  %cmpl.i = alloca %struct.completion, align 4
  %rbld_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbld_addr) #12
  %0 = ptrtoint ptr %rbld_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rbld_addr, align 4, !annotation !704
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 12, ptr noundef nonnull %rbld_addr, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53
  %3 = call ptr @memset(ptr %mcmd_blk, i32 0, i32 18)
  %id = getelementptr inbounds %struct.anon.85, ptr %mcmd_blk, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %id, align 1
  %5 = ptrtoint ptr %mcmd_blk to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 39, ptr %mcmd_blk, align 4
  %6 = ptrtoint ptr %rbld_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rbld_addr, align 4
  %addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #12
  %9 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 2
  %12 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmpl.i, ptr %completion.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %13 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qcmd.i, align 4
  call void %14(ptr noundef %cb, ptr noundef %mcmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i) #12
  %status.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 1
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #12
  %tobool3.not = icmp eq ptr %rbld, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = call ptr @memcpy(ptr %rbld, ptr %call.i, i32 12)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %rbld_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rbld_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 12, ptr noundef nonnull %call.i, i32 noundef %21, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %16, %if.end5 ], [ 264, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbld_addr) #12
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @consistency_check_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %rbld_buf.i = alloca %struct.myrb_rbld_progress, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbld_buf.i) #12
  %2 = ptrtoint ptr %rbld_buf.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rbld_buf.i, align 4, !annotation !704
  %3 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !704
  %5 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !704
  %channel.i = getelementptr i8, ptr %dev, i32 -276
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel.i, align 4
  %max_channel.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %max_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_channel.i.i, align 8
  %sub.i.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.i.i)
  %cmp.i = icmp ult i32 %8, %sub.i.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.135) #12
  br label %rebuild_show.exit

if.end.i:                                         ; preds = %entry
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call4.i = call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %hostdata.i.i, ptr noundef nonnull %rbld_buf.i) #12
  %11 = ptrtoint ptr %rbld_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rbld_buf.i, align 4
  %id.i = getelementptr i8, ptr %dev, i32 -280
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.not.i = icmp eq i32 %12, %14
  %15 = and i16 %call4.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp8.not.i = icmp eq i16 %15, 0
  %or.cond.i = select i1 %cmp5.not.i, i1 %cmp8.not.i, i1 false
  br i1 %or.cond.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.136, i32 16)
  br label %rebuild_show.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %sub.i = sub i32 %18, %20
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.137, i32 noundef %sub.i, i32 noundef %18) #12
  br label %rebuild_show.exit

rebuild_show.exit:                                ; preds = %if.end12.i, %if.then10.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ 15, %if.then10.i ], [ %call14.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbld_buf.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @consistency_check_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %cmpl.i116 = alloca %struct.completion, align 4
  %cmpl.i = alloca %struct.completion, align 4
  %rbld_buf = alloca %struct.myrb_rbld_progress, align 4
  %start = alloca i32, align 4
  %rate_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbld_buf) #12
  %2 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rbld_buf, align 4, !annotation !704
  %3 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !704
  %5 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #12
  %7 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %start, align 4, !annotation !704
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %start) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup65_crit_edge

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

if.end:                                           ; preds = %entry
  %channel = getelementptr i8, ptr %dev, i32 -276
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub.i)
  %cmp = icmp ult i32 %9, %sub.i
  br i1 %cmp, label %if.end.cleanup65_crit_edge, label %if.end5

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %hostdata.i, ptr noundef nonnull %rbld_buf)
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6)
  %cmp9 = icmp eq i16 %call6, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.152) #12
  br label %cleanup65

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %dcmd_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 14
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex, i32 noundef 0) #12
  %dcmd_blk = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %16 = call ptr @memset(ptr %dcmd_blk, i32 0, i32 18)
  %17 = ptrtoint ptr %dcmd_blk to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 30, ptr %dcmd_blk, align 4
  %id = getelementptr inbounds %struct.anon.87, ptr %dcmd_blk, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %id, align 1
  %id14 = getelementptr i8, ptr %dev, i32 -280
  %19 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id14, align 8
  %conv15 = trunc i32 %20 to i8
  %ldev_num16 = getelementptr inbounds %struct.anon.87, ptr %dcmd_blk, i32 0, i32 3
  %bf.shl = shl i8 %conv15, 2
  %bf.set19 = or i8 %bf.shl, 2
  %21 = ptrtoint ptr %ldev_num16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.set19, ptr %ldev_num16, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #12
  %22 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 52)
  %24 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %22, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %25 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cmpl.i, ptr %completion.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 7, i32 1
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qcmd.i, align 4
  call void %27(ptr noundef %hostdata.i, ptr noundef %dcmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i) #12
  %status.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex) #12
  br label %if.end45

if.else:                                          ; preds = %if.end5
  %pdev22 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_addr) #12
  %32 = ptrtoint ptr %rate_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %rate_addr, align 4, !annotation !704
  %id24 = getelementptr i8, ptr %dev, i32 -280
  %33 = ptrtoint ptr %id24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %34)
  %cmp25.not = icmp eq i32 %34, 65535
  br i1 %cmp25.not, label %if.end28, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end28:                                         ; preds = %if.else
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev29, i32 noundef 1, ptr noundef nonnull %rate_addr, i32 noundef 3264, i32 noundef 0) #12
  %cmp31 = icmp eq ptr %call.i, null
  br i1 %cmp31, label %if.end28.cleanup.thread_crit_edge, label %cleanup

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end28.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  %.str.153.sink = phi ptr [ @.str.153, %if.else.cleanup.thread_crit_edge ], [ @.str.154, %if.end28.cleanup.thread_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.else.cleanup.thread_crit_edge ], [ -12, %if.end28.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %.str.153.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_addr) #12
  br label %cleanup65

cleanup:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %dcmd_mutex35 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 14
  call void @mutex_lock_nested(ptr noundef %dcmd_mutex35, i32 noundef 0) #12
  %dcmd_blk36 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %35 = call ptr @memset(ptr %dcmd_blk36, i32 0, i32 18)
  %36 = ptrtoint ptr %dcmd_blk36 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 31, ptr %dcmd_blk36, align 4
  %id39 = getelementptr inbounds %struct.anon.90, ptr %dcmd_blk36, i32 0, i32 1
  %37 = ptrtoint ptr %id39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %id39, align 1
  %rbld_rate = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 3
  %38 = ptrtoint ptr %rbld_rate to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %rbld_rate, align 4
  %39 = ptrtoint ptr %rate_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rate_addr, align 4
  %addr = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i116) #12
  %42 = getelementptr inbounds i8, ptr %cmpl.i116, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 52)
  %44 = ptrtoint ptr %cmpl.i116 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cmpl.i116, align 4
  call void @__init_swait_queue_head(ptr noundef %42, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i118 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %45 = ptrtoint ptr %completion.i118 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cmpl.i116, ptr %completion.i118, align 4
  %queue_lock.i119 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 7, i32 1
  %call3.i120 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i119) #12
  %qcmd.i121 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %qcmd.i121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qcmd.i121, align 4
  call void %47(ptr noundef %hostdata.i, ptr noundef %dcmd_blk36) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i119, i32 noundef %call3.i120) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i116) #12
  %status.i122 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %48 = ptrtoint ptr %status.i122 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %status.i122, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i116) #12
  %50 = ptrtoint ptr %rate_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rate_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev29, i32 noundef 1, ptr noundef nonnull %call.i, i32 noundef %51, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex35) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_addr) #12
  br label %if.end45

if.end45:                                         ; preds = %cleanup, %if.end12
  %status.1 = phi i16 [ %29, %if.end12 ], [ %49, %cleanup ]
  %conv46 = zext i16 %status.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status.1)
  %cmp47 = icmp eq i16 %status.1, 0
  %52 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool50.not = icmp eq i32 %53, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %tobool50.not, ptr @.str.143, ptr @.str.142
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull %cond) #12
  br label %cleanup65

if.end51:                                         ; preds = %if.end45
  br i1 %tobool50.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.156, i32 noundef %conv46) #12
  br label %cleanup65

if.end55:                                         ; preds = %if.end51
  %54 = zext i16 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.374)
  switch i16 %status.1, label %if.else62 [
    i16 2, label %if.end55.if.then61_crit_edge
    i16 4, label %sw.bb57
    i16 261, label %sw.bb58
    i16 262, label %sw.bb59
  ]

if.end55.if.then61_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

sw.bb57:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

sw.bb58:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

sw.bb59:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.then61:                                        ; preds = %sw.bb59, %sw.bb58, %sw.bb57, %if.end55.if.then61_crit_edge
  %msg.0.ph = phi ptr [ @.str.157, %if.end55.if.then61_crit_edge ], [ @.str.146, %sw.bb57 ], [ @.str.158, %sw.bb58 ], [ @.str.148, %sw.bb59 ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull %msg.0.ph) #12
  br label %cleanup65

if.else62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.160, i32 noundef %conv46) #12
  br label %cleanup65

cleanup65:                                        ; preds = %if.else62, %if.then61, %if.then53, %if.then49, %cleanup.thread, %if.then11, %if.end.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.1 = phi i32 [ -114, %if.then11 ], [ %count, %if.then49 ], [ -5, %if.then53 ], [ %call1, %entry.cleanup65_crit_edge ], [ -6, %if.end.cleanup65_crit_edge ], [ -5, %if.else62 ], [ -5, %if.then61 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbld_buf) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_state_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.162, i32 9)
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr i8, ptr %dev, i32 -276
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub.i)
  %cmp = icmp eq i32 %6, %sub.i
  br i1 %cmp, label %if.then4, label %if.else13

if.then4:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.myrb_ldev_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.375)
  switch i8 %10, label %if.then4.if.then8_crit_edge [
    i8 0, label %if.then4.myrb_devstate_name.exit_crit_edge
    i8 2, label %if.then.fold.split.i
    i8 3, label %if.then.fold.split15.i
    i8 4, label %if.then.fold.split16.i
    i8 16, label %if.then.fold.split17.i
    i8 -1, label %if.then.fold.split18.i
  ]

if.then4.myrb_devstate_name.exit_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then.fold.split.i:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then.fold.split15.i:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then.fold.split16.i:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then.fold.split17.i:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then.fold.split18.i:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

myrb_devstate_name.exit:                          ; preds = %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split.i, %if.then4.myrb_devstate_name.exit_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %if.then4.myrb_devstate_name.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split15.i ], [ 3, %if.then.fold.split16.i ], [ 4, %if.then.fold.split17.i ], [ 5, %if.then.fold.split18.i ]
  %name.i = getelementptr %struct.myrb_devstate_name_entry, ptr @myrb_devstate_name_list, i32 %i.013.lcssa.i, i32 1
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.else, label %myrb_devstate_name.exit.if.then8_crit_edge

myrb_devstate_name.exit.if.then8_crit_edge:       ; preds = %myrb_devstate_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %myrb_devstate_name.exit.if.then8_crit_edge, %if.then4.if.then8_crit_edge
  %retval.0.i70 = phi ptr [ %13, %myrb_devstate_name.exit.if.then8_crit_edge ], [ @.str.116, %if.then4.if.then8_crit_edge ]
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.126, ptr noundef nonnull %retval.0.i70)
  br label %cleanup

if.else:                                          ; preds = %myrb_devstate_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %10 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.163, i32 noundef %conv)
  br label %cleanup

if.else13:                                        ; preds = %if.end
  %call16 = tail call fastcc zeroext i16 @myrb_exec_type3D(ptr noundef %hostdata.i, ptr noundef %add.ptr, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call16)
  %cmp18.not = icmp eq i16 %call16, 0
  br i1 %cmp18.not, label %if.else13.if.end22_crit_edge, label %if.then20

if.else13.if.end22_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  %conv17 = zext i16 %call16 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef %conv17) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else13.if.end22_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool23.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool23.not, label %if.end22.if.then30_crit_edge, label %if.else25

if.end22.if.then30_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.else25:                                        ; preds = %if.end22
  %state26 = getelementptr inbounds %struct.myrb_pdev_state, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %state26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state26, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.376)
  switch i8 %16, label %if.else25.if.then30_crit_edge [
    i8 0, label %if.else25.if.end28_crit_edge
    i8 2, label %if.then.fold.split.i58
    i8 3, label %if.then.fold.split15.i59
    i8 4, label %if.then.fold.split16.i60
    i8 16, label %if.then.fold.split17.i61
    i8 -1, label %if.then.fold.split18.i62
  ]

if.else25.if.end28_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.else25.if.then30_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then.fold.split.i58:                           ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.fold.split15.i59:                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.fold.split16.i60:                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.fold.split17.i61:                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.fold.split18.i62:                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %if.then.fold.split18.i62, %if.then.fold.split17.i61, %if.then.fold.split16.i60, %if.then.fold.split15.i59, %if.then.fold.split.i58, %if.else25.if.end28_crit_edge
  %i.013.lcssa.i63 = phi i32 [ 0, %if.else25.if.end28_crit_edge ], [ 1, %if.then.fold.split.i58 ], [ 2, %if.then.fold.split15.i59 ], [ 3, %if.then.fold.split16.i60 ], [ 4, %if.then.fold.split17.i61 ], [ 5, %if.then.fold.split18.i62 ]
  %name.i64 = getelementptr %struct.myrb_devstate_name_entry, ptr @myrb_devstate_name_list, i32 %i.013.lcssa.i63, i32 1
  %18 = ptrtoint ptr %name.i64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i64, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.else32, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.else25.if.then30_crit_edge, %if.end22.if.then30_crit_edge
  %name15.073 = phi ptr [ %19, %if.end28.if.then30_crit_edge ], [ @.str.116, %if.else25.if.then30_crit_edge ], [ @.str.164, %if.end22.if.then30_crit_edge ]
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.126, ptr noundef nonnull %name15.073)
  br label %cleanup

if.else32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %state26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state26, align 1
  %conv34 = zext i8 %21 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.163, i32 noundef %conv34)
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.then30, %if.else, %if.then8, %if.then
  %retval.0 = phi i32 [ 8, %if.then ], [ %call9, %if.then8 ], [ %call11, %if.else ], [ %call31, %if.then30 ], [ %call35, %if.else32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cmpl.i.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.165, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %lor.lhs.false

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.166, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end13_crit_edge, label %if.else

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.167, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.if.end13_crit_edge, label %if.else7

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.168, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else7.if.end13_crit_edge, label %if.else7.cleanup_crit_edge

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.else7.if.end13_crit_edge, %if.else.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge, %entry.if.end13_crit_edge
  %new_state.0 = phi i8 [ 0, %lor.lhs.false.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ], [ 3, %if.else.if.end13_crit_edge ], [ 16, %if.else7.if.end13_crit_edge ]
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.169) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool17.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.170) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %state = getelementptr inbounds %struct.myrb_pdev_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %new_state.0)
  %cmp = icmp eq i8 %6, %new_state.0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %dcmd_blk.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 2
  %dcmd_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 14
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %7 = ptrtoint ptr %dcmd_blk.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %dcmd_blk.i, align 4
  %id.i = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk.i, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %id.i, align 1
  %channel.i = getelementptr i8, ptr %dev, i32 -276
  %9 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %10 to i8
  %channel2.i = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk.i, i32 0, i32 2
  %11 = ptrtoint ptr %channel2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %channel2.i, align 2
  %id3.i = getelementptr i8, ptr %dev, i32 -280
  %12 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id3.i, align 8
  %conv4.i = trunc i32 %13 to i8
  %target.i = getelementptr inbounds %struct.anon.88, ptr %dcmd_blk.i, i32 0, i32 3
  %14 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %target.i, align 1
  %state7.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 3
  %15 = ptrtoint ptr %state7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %new_state.0, ptr %state7.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  %16 = getelementptr inbounds i8, ptr %cmpl.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 52)
  %18 = ptrtoint ptr %cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmpl.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %19 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmpl.i.i, ptr %completion.i.i, align 4
  %queue_lock.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 7, i32 1
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #12
  %qcmd.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %qcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qcmd.i.i, align 4
  call void %21(ptr noundef %hostdata.i, ptr noundef %dcmd_blk.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call3.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i) #12
  %status.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.377)
  switch i16 %23, label %sw.default [
    i16 0, label %if.end23.cleanup_crit_edge
    i16 2, label %sw.bb
    i16 258, label %sw.bb26
    i16 261, label %sw.bb27
    i16 262, label %sw.bb28
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.171) #12
  br label %cleanup

sw.bb26:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.172) #12
  br label %cleanup

sw.bb27:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.173) #12
  br label %cleanup

sw.bb28:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.174) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = zext i16 %23 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.175, i32 noundef %conv25) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then18, %if.then15, %if.else7.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.then18 ], [ -6, %if.then15 ], [ -22, %if.else7.cleanup_crit_edge ], [ %count, %if.end19.cleanup_crit_edge ], [ -5, %sw.default ], [ -16, %sw.bb28 ], [ -22, %sw.bb27 ], [ -19, %sw.bb26 ], [ -11, %sw.bb ], [ %count, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %channel = getelementptr i8, ptr %dev, i32 -276
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp = icmp eq i32 %1, %sub.i
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.cleanup12_crit_edge, label %if.end

if.then.cleanup12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup12

if.end:                                           ; preds = %if.then
  %raid_level = getelementptr inbounds %struct.myrb_ldev_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %raid_level to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load = load i24, ptr %raid_level, align 1
  %bf.lshr = lshr i24 %bf.load, 17
  %trunc = trunc i24 %bf.lshr to i7
  %9 = sext i7 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %10 = icmp ult i7 %trunc, 8
  br i1 %10, label %switch.hole_check, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

switch.hole_check:                                ; preds = %if.end
  %11 = trunc i24 %bf.lshr to i8
  %switch.shifted = lshr i8 -21, %11
  %12 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.lobit.not = icmp eq i8 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then4_crit_edge, label %switch.lookup

switch.hole_check.if.then4_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

switch.lookup:                                    ; preds = %switch.hole_check
  %13 = sext i7 %trunc to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.raid_level_show, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name.i = getelementptr %struct.myrb_raidlevel_name_entry, ptr @myrb_raidlevel_name_list, i32 %switch.load, i32 1
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %switch.lookup.if.then4_crit_edge, label %if.end7

switch.lookup.if.then4_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %switch.lookup.if.then4_crit_edge, %switch.hole_check.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %state = getelementptr inbounds %struct.myrb_ldev_info, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %state, align 4
  %conv5 = zext i8 %18 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.163, i32 noundef %conv5)
  br label %cleanup12

if.end7:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 32, ptr noundef nonnull @.str.126, ptr noundef nonnull %16)
  br label %cleanup12

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %19 = call ptr @memcpy(ptr %buf, ptr @.str.177, i32 16)
  br label %cleanup12

cleanup12:                                        ; preds = %if.end10, %if.end7, %if.then4, %if.then.cleanup12_crit_edge
  %retval.1 = phi i32 [ 15, %if.end10 ], [ %call8, %if.end7 ], [ %call6, %if.then4 ], [ -6, %if.then.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @myrb_hba_enquiry(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  %cmpl.i.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enquiry = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 55
  %0 = ptrtoint ptr %enquiry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enquiry, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %old.sroa.0.0.copyload = load i8, ptr %1, align 1
  %old.sroa.9248.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 134
  %3 = ptrtoint ptr %old.sroa.9248.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %old.sroa.9248.0.copyload = load i8, ptr %old.sroa.9248.0..sroa_idx, align 1
  %old.sroa.10249.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 138
  %4 = ptrtoint ptr %old.sroa.10249.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %old.sroa.10249.0.copyload = load i8, ptr %old.sroa.10249.0..sroa_idx, align 1
  %old.sroa.13252.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 140
  %5 = ptrtoint ptr %old.sroa.13252.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %old.sroa.13252.0.copyload = load i8, ptr %old.sroa.13252.0..sroa_idx, align 1
  %old.sroa.14253.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 142
  %6 = ptrtoint ptr %old.sroa.14253.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %old.sroa.14253.0.copyload = load i16, ptr %old.sroa.14253.0..sroa_idx, align 1
  %old.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 144
  %7 = ptrtoint ptr %old.sroa.16.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %old.sroa.16.0.copyload = load i8, ptr %old.sroa.16.0..sroa_idx, align 1
  %old.sroa.18256.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 148
  %8 = ptrtoint ptr %old.sroa.18256.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %old.sroa.18256.0.copyload = load i8, ptr %old.sroa.18256.0..sroa_idx, align 1
  %enquiry_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 56
  %9 = ptrtoint ptr %enquiry_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enquiry_addr, align 4
  %dcmd_blk.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52
  %dcmd_mutex.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 54
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %11 = call ptr @memset(ptr %dcmd_blk.i, i32 0, i32 18)
  %id.i = getelementptr inbounds %struct.anon.85, ptr %dcmd_blk.i, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %id.i, align 1
  %13 = ptrtoint ptr %dcmd_blk.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 83, ptr %dcmd_blk.i, align 4
  %addr2.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %addr2.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  %15 = getelementptr inbounds i8, ptr %cmpl.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 52)
  %17 = ptrtoint ptr %cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cmpl.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %15, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 2
  %18 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmpl.i.i, ptr %completion.i.i, align 4
  %queue_lock.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #12
  %qcmd.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %19 = ptrtoint ptr %qcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qcmd.i.i, align 4
  call void %20(ptr noundef %cb, ptr noundef %dcmd_blk.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call3.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i) #12
  %status.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 1
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.not = icmp eq i16 %22, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %enquiry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enquiry, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv5 = zext i8 %old.sroa.0.0.copyload to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %old.sroa.0.0.copyload)
  %cmp6 = icmp ugt i8 %26, %old.sroa.0.0.copyload
  br i1 %cmp6, label %if.then8, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then8:                                         ; preds = %if.end
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %old.sroa.0.0.copyload, i8 %28)
  %cmp13301 = icmp ult i8 %old.sroa.0.0.copyload, %28
  br i1 %cmp13301, label %do.end.lr.ph, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end.lr.ph:                                     ; preds = %if.then8
  %host = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %inc302 = phi i32 [ %conv5, %do.end.lr.ph ], [ %inc, %do.end.do.end_crit_edge ]
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.254, ptr noundef %shost_gendev, ptr noundef nonnull @.str.252, i32 noundef %inc302) #15
  %inc = add nuw nsw i32 %inc302, 1
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %24, align 1
  %conv12 = zext i8 %32 to i32
  %cmp13 = icmp ult i32 %inc, %conv12
  br i1 %cmp13, label %do.end.do.end_crit_edge, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15:                                         ; preds = %do.end.if.end15_crit_edge, %if.then8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %old.sroa.0.0.copyload)
  %cmp20 = icmp ult i8 %34, %old.sroa.0.0.copyload
  br i1 %cmp20, label %do.end36.lr.ph, label %if.end15.if.end40_crit_edge

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end36.lr.ph:                                   ; preds = %if.end15
  %conv17 = zext i8 %34 to i32
  %host37 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  br label %do.end36

do.end36:                                         ; preds = %do.end36.do.end36_crit_edge, %do.end36.lr.ph
  %inc28304 = phi i32 [ %conv17, %do.end36.lr.ph ], [ %inc28, %do.end36.do.end36_crit_edge ]
  %35 = ptrtoint ptr %host37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host37, align 4
  %shost_gendev38 = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.254, ptr noundef %shost_gendev38, ptr noundef nonnull @.str.256, i32 noundef %inc28304) #15
  %inc28 = add nuw nsw i32 %inc28304, 1
  %exitcond.not = icmp eq i32 %inc28, %conv5
  br i1 %exitcond.not, label %do.end36.if.end40_crit_edge, label %do.end36.do.end36_crit_edge

do.end36.do.end36_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

do.end36.if.end40_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %do.end36.if.end40_crit_edge, %if.end15.if.end40_crit_edge
  %status41 = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 4
  %37 = ptrtoint ptr %status41 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %status41, align 1
  %cmp47.not.unshifted = xor i8 %bf.load, %old.sroa.9248.0.copyload
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp47.not.unshifted)
  %cmp47.not = icmp sgt i8 %cmp47.not.unshifted, -1
  br i1 %cmp47.not, label %if.end40.if.end59_crit_edge, label %do.end52

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %host53 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %38 = ptrtoint ptr %host53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host53, align 4
  %shost_gendev54 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool.not, ptr @.str.262, ptr @.str.261
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.254, ptr noundef %shost_gendev54, ptr noundef nonnull @.str.259, ptr noundef nonnull %cond) #15
  br label %if.end59

if.end59:                                         ; preds = %do.end52, %if.end40.if.end59_crit_edge
  %ev_seq = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 12
  %40 = ptrtoint ptr %ev_seq to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %ev_seq, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %old.sroa.14253.0.copyload)
  %cmp63.not = icmp eq i16 %41, %old.sroa.14253.0.copyload
  br i1 %cmp63.not, label %if.end59.if.end79_crit_edge, label %if.then65

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %conv62 = zext i16 %old.sroa.14253.0.copyload to i32
  %new_ev_seq = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 6
  %42 = ptrtoint ptr %new_ev_seq to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %new_ev_seq, align 4
  %need_err_info = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 12
  %43 = ptrtoint ptr %need_err_info to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %need_err_info, align 4
  %host70 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %44 = ptrtoint ptr %host70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host70, align 4
  %shost_gendev71 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 49
  %old_ev_seq = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 7
  %46 = ptrtoint ptr %old_ev_seq to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %old_ev_seq, align 2
  %conv72 = zext i16 %47 to i32
  %conv74 = zext i16 %41 to i32
  %48 = ptrtoint ptr %ev_seq to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %ev_seq, align 1
  %conv78 = zext i16 %49 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev71, ptr noundef nonnull @.str.264, i32 noundef %conv72, i32 noundef %conv74, i32 noundef %conv62, i32 noundef %conv78) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then65, %if.end59.if.end79_crit_edge
  %ldev_critical = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 13
  %50 = ptrtoint ptr %ldev_critical to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ldev_critical, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp81.not = icmp eq i8 %51, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %old.sroa.16.0.copyload)
  %cmp87.not = icmp eq i8 %51, %old.sroa.16.0.copyload
  %or.cond = select i1 %cmp81.not, i1 true, i1 %cmp87.not
  br i1 %or.cond, label %lor.lhs.false, label %if.end79.do.end109_crit_edge

if.end79.do.end109_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end109

lor.lhs.false:                                    ; preds = %if.end79
  %ldev_offline = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 10
  %52 = ptrtoint ptr %ldev_offline to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ldev_offline, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp90.not = icmp eq i8 %53, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %old.sroa.13252.0.copyload)
  %cmp97.not = icmp eq i8 %53, %old.sroa.13252.0.copyload
  %or.cond292 = select i1 %cmp90.not, i1 true, i1 %cmp97.not
  br i1 %or.cond292, label %lor.lhs.false99, label %lor.lhs.false.do.end109_crit_edge

lor.lhs.false.do.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end109

lor.lhs.false99:                                  ; preds = %lor.lhs.false
  %54 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %old.sroa.0.0.copyload)
  %cmp104.not = icmp eq i8 %55, %old.sroa.0.0.copyload
  br i1 %cmp104.not, label %lor.lhs.false99.if.end118_crit_edge, label %lor.lhs.false99.do.end109_crit_edge

lor.lhs.false99.do.end109_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end109

lor.lhs.false99.if.end118_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

do.end109:                                        ; preds = %lor.lhs.false99.do.end109_crit_edge, %lor.lhs.false.do.end109_crit_edge, %if.end79.do.end109_crit_edge
  %host110 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %56 = ptrtoint ptr %host110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host110, align 4
  %shost_gendev111 = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 49
  %conv113 = zext i8 %51 to i32
  %ldev_offline114 = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 10
  %58 = ptrtoint ptr %ldev_offline114 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ldev_offline114, align 1
  %conv115 = zext i8 %59 to i32
  %60 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %24, align 1
  %conv117 = zext i8 %61 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev111, ptr noundef nonnull @.str.267, i32 noundef %conv113, i32 noundef %conv115, i32 noundef %conv117) #15
  %need_ldev_info = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 11
  %62 = ptrtoint ptr %need_ldev_info to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %need_ldev_info, align 1
  br label %if.end118

if.end118:                                        ; preds = %do.end109, %lor.lhs.false99.if.end118_crit_edge
  %pdev_dead = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 15
  %63 = ptrtoint ptr %pdev_dead to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pdev_dead, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp120.not = icmp eq i8 %64, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %old.sroa.18256.0.copyload)
  %cmp127.not = icmp eq i8 %old.sroa.18256.0.copyload, 0
  %or.cond293 = select i1 %cmp120.not, i1 %cmp127.not, i1 false
  br i1 %or.cond293, label %lor.lhs.false129, label %if.end118.if.then133_crit_edge

if.end118.if.then133_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then133

lor.lhs.false129:                                 ; preds = %if.end118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %secondary_monitor_time = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 23
  %66 = ptrtoint ptr %secondary_monitor_time to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %secondary_monitor_time, align 4
  %add.neg = add i32 %65, -6000
  %sub130 = sub i32 %add.neg, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub130)
  %cmp131 = icmp sgt i32 %sub130, -1
  br i1 %cmp131, label %lor.lhs.false129.if.then133_crit_edge, label %lor.lhs.false129.if.end136_crit_edge

lor.lhs.false129.if.end136_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

lor.lhs.false129.if.then133_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then133

if.then133:                                       ; preds = %lor.lhs.false129.if.then133_crit_edge, %if.end118.if.then133_crit_edge
  %bgi_status_supported = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 9
  %68 = ptrtoint ptr %bgi_status_supported to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bgi_status_supported, align 1, !range !705
  %need_bgi_status = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 15
  %70 = ptrtoint ptr %need_bgi_status to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %need_bgi_status, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %secondary_monitor_time135 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 23
  %72 = ptrtoint ptr %secondary_monitor_time135 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %secondary_monitor_time135, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %lor.lhs.false129.if.end136_crit_edge
  %rbld = getelementptr inbounds %struct.myrb_enquiry, ptr %24, i32 0, i32 8
  %73 = ptrtoint ptr %rbld to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rbld, align 1
  %.off = add i8 %74, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then155, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %if.end136
  %75 = zext i8 %old.sroa.10249.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.378)
  switch i8 %old.sroa.10249.0.copyload, label %lor.lhs.false145.if.else_crit_edge [
    i8 1, label %lor.lhs.false145.if.then155.thread_crit_edge
    i8 2, label %lor.lhs.false145.if.then155.thread_crit_edge305
    i8 3, label %lor.lhs.false145.if.then168_crit_edge
  ]

lor.lhs.false145.if.then168_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then168

lor.lhs.false145.if.then155.thread_crit_edge305:  ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then155.thread

lor.lhs.false145.if.then155.thread_crit_edge:     ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then155.thread

lor.lhs.false145.if.else_crit_edge:               ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then155.thread:                                ; preds = %lor.lhs.false145.if.then155.thread_crit_edge, %lor.lhs.false145.if.then155.thread_crit_edge305
  %need_rbld294 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 13
  %76 = ptrtoint ptr %need_rbld294 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %need_rbld294, align 1
  %77 = ptrtoint ptr %ldev_critical to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ldev_critical, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %old.sroa.16.0.copyload)
  %cmp160295 = icmp ult i8 %78, %old.sroa.16.0.copyload
  %rbld_first296 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 16
  %frombool162297 = zext i1 %cmp160295 to i8
  %79 = ptrtoint ptr %rbld_first296 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool162297, ptr %rbld_first296, align 4
  br label %if.elsethread-pre-split

if.then155:                                       ; preds = %if.end136
  %need_rbld = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 13
  %80 = ptrtoint ptr %need_rbld to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %need_rbld, align 1
  %81 = ptrtoint ptr %ldev_critical to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ldev_critical, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %old.sroa.16.0.copyload)
  %cmp160 = icmp ult i8 %82, %old.sroa.16.0.copyload
  %rbld_first = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 16
  %frombool162 = zext i1 %cmp160 to i8
  %83 = ptrtoint ptr %rbld_first to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool162, ptr %rbld_first, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %old.sroa.10249.0.copyload)
  %cmp166 = icmp eq i8 %old.sroa.10249.0.copyload, 3
  br i1 %cmp166, label %if.then168thread-pre-split, label %if.then155.if.elsethread-pre-split_crit_edge

if.then155.if.elsethread-pre-split_crit_edge:     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.elsethread-pre-split

if.then168thread-pre-split:                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %rbld to i32
  call void @__asan_load1_noabort(i32 %84)
  %.pr = load i8, ptr %rbld, align 1
  br label %if.then168

if.then168:                                       ; preds = %if.then168thread-pre-split, %lor.lhs.false145.if.then168_crit_edge
  %85 = phi i8 [ %.pr, %if.then168thread-pre-split ], [ %74, %lor.lhs.false145.if.then168_crit_edge ]
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.379)
  switch i8 %85, label %if.then168.cleanup_crit_edge [
    i8 0, label %do.end173
    i8 -13, label %do.end205
    i8 -14, label %do.end199
    i8 3, label %sw.bb177
    i8 -1, label %do.end181
    i8 -16, label %do.end187
    i8 -15, label %do.end193
  ]

if.then168.cleanup_crit_edge:                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end173:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %host174 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %87 = ptrtoint ptr %host174 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %host174, align 4
  %shost_gendev175 = getelementptr inbounds %struct.Scsi_Host, ptr %88, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev175, ptr noundef nonnull @.str.270) #15
  br label %cleanup

sw.bb177:                                         ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %need_cc_status = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 14
  %89 = ptrtoint ptr %need_cc_status to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %need_cc_status, align 2
  br label %cleanup

do.end181:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %host182 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %90 = ptrtoint ptr %host182 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %host182, align 4
  %shost_gendev183 = getelementptr inbounds %struct.Scsi_Host, ptr %91, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev183, ptr noundef nonnull @.str.273) #15
  br label %cleanup

do.end187:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %host188 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %92 = ptrtoint ptr %host188 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %host188, align 4
  %shost_gendev189 = getelementptr inbounds %struct.Scsi_Host, ptr %93, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev189, ptr noundef nonnull @.str.276) #15
  br label %cleanup

do.end193:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %host194 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %94 = ptrtoint ptr %host194 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %host194, align 4
  %shost_gendev195 = getelementptr inbounds %struct.Scsi_Host, ptr %95, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev195, ptr noundef nonnull @.str.279) #15
  br label %cleanup

do.end199:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %host200 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %96 = ptrtoint ptr %host200 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %host200, align 4
  %shost_gendev201 = getelementptr inbounds %struct.Scsi_Host, ptr %97, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev201, ptr noundef nonnull @.str.282) #15
  br label %cleanup

do.end205:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %host206 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %98 = ptrtoint ptr %host206 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %host206, align 4
  %shost_gendev207 = getelementptr inbounds %struct.Scsi_Host, ptr %99, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev207, ptr noundef nonnull @.str.285) #15
  br label %cleanup

if.elsethread-pre-split:                          ; preds = %if.then155.if.elsethread-pre-split_crit_edge, %if.then155.thread
  %100 = ptrtoint ptr %rbld to i32
  call void @__asan_load1_noabort(i32 %100)
  %.pr299 = load i8, ptr %rbld, align 1
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %lor.lhs.false145.if.else_crit_edge
  %101 = phi i8 [ %.pr299, %if.elsethread-pre-split ], [ %74, %lor.lhs.false145.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %101)
  %cmp210 = icmp eq i8 %101, 3
  br i1 %cmp210, label %if.then212, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then212:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %need_cc_status213 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 14
  %102 = ptrtoint ptr %need_cc_status213 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %need_cc_status213, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then212, %if.else.cleanup_crit_edge, %do.end205, %do.end199, %do.end193, %do.end187, %do.end181, %sw.bb177, %do.end173, %if.then168.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then212 ], [ 0, %do.end173 ], [ 0, %sw.bb177 ], [ 0, %do.end181 ], [ 0, %do.end187 ], [ 0, %do.end193 ], [ 0, %do.end199 ], [ 0, %do.end205 ], [ 0, %if.then168.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @myrb_get_ldev_info(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  %cmpl.i.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enquiry = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 55
  %0 = ptrtoint ptr %enquiry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enquiry, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %host = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %ldev_info_addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 61
  %6 = ptrtoint ptr %ldev_info_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ldev_info_addr, align 4
  %dcmd_blk.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52
  %dcmd_mutex.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 54
  tail call void @mutex_lock_nested(ptr noundef %dcmd_mutex.i, i32 noundef 0) #12
  %8 = call ptr @memset(ptr %dcmd_blk.i, i32 0, i32 18)
  %id.i = getelementptr inbounds %struct.anon.85, ptr %dcmd_blk.i, i32 0, i32 1
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %id.i, align 1
  %10 = ptrtoint ptr %dcmd_blk.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 25, ptr %dcmd_blk.i, align 4
  %addr2.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %addr2.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  %12 = getelementptr inbounds i8, ptr %cmpl.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 52)
  %14 = ptrtoint ptr %cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cmpl.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 2
  %15 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmpl.i.i, ptr %completion.i.i, align 4
  %queue_lock.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #12
  %qcmd.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %16 = ptrtoint ptr %qcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qcmd.i.i, align 4
  call void %17(ptr noundef %cb, ptr noundef %dcmd_blk.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call3.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i) #12
  %status.i.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 52, i32 1
  %18 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  call void @mutex_unlock(ptr noundef %dcmd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not = icmp eq i16 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp393 = icmp ne i8 %3, 0
  %or.cond = select i1 %cmp.not, i1 %cmp393, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %entry
  %ldev_info_buf = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 60
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 20
  %shost_gendev28 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ldev_num.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %20 = ptrtoint ptr %ldev_info_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ldev_info_buf, align 4
  %add.ptr = getelementptr %struct.myrb_ldev_info, ptr %21, i32 %ldev_num.094
  %22 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %23, -1
  %call6 = call ptr @scsi_device_lookup(ptr noundef %5, i32 noundef %sub.i, i32 noundef %ldev_num.094, i64 noundef 0) #12
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then7, label %if.end17

if.then7:                                         ; preds = %for.body
  %state = getelementptr %struct.myrb_ldev_info, ptr %21, i32 %ldev_num.094, i32 1
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.380)
  switch i8 %25, label %if.then7.myrb_devstate_name.exit_crit_edge [
    i8 -1, label %if.then7.cleanup_crit_edge
    i8 0, label %if.then7.if.then.i_crit_edge
    i8 2, label %if.then.fold.split.i
    i8 3, label %if.then.fold.split15.i
    i8 4, label %if.then.fold.split16.i
    i8 16, label %if.then.fold.split17.i
  ]

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.myrb_devstate_name.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit

if.then.fold.split.i:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split.i, %if.then7.if.then.i_crit_edge
  %i.013.lcssa.i = phi i32 [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split15.i ], [ 3, %if.then.fold.split16.i ], [ 4, %if.then.fold.split17.i ], [ 0, %if.then7.if.then.i_crit_edge ]
  %name.i = getelementptr %struct.myrb_devstate_name_entry, ptr @myrb_devstate_name_list, i32 %i.013.lcssa.i, i32 1
  %27 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i, align 4
  br label %myrb_devstate_name.exit

myrb_devstate_name.exit:                          ; preds = %if.then.i, %if.then7.myrb_devstate_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.then.i ], [ @.str.116, %if.then7.myrb_devstate_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev28, ptr noundef nonnull @.str.287, i32 noundef %ldev_num.094, ptr noundef %retval.0.i) #15
  %29 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_channel.i, align 8
  %sub.i82 = add i32 %30, -1
  %call16 = call i32 @scsi_add_device(ptr noundef %5, i32 noundef %sub.i82, i32 noundef %ldev_num.094, i64 noundef 0) #12
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %call6, i32 0, i32 21
  %31 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hostdata, align 8
  %state18 = getelementptr %struct.myrb_ldev_info, ptr %21, i32 %ldev_num.094, i32 1
  %33 = ptrtoint ptr %state18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %state18, align 4
  %state20 = getelementptr inbounds %struct.myrb_ldev_info, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %state20 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %state20, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp22.not = icmp eq i8 %34, %36
  br i1 %cmp22.not, label %if.end17.if.end31_crit_edge, label %do.end27

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.end27:                                         ; preds = %if.end17
  %37 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.381)
  switch i8 %34, label %do.end27.myrb_devstate_name.exit92_crit_edge [
    i8 0, label %do.end27.if.then.i90_crit_edge
    i8 2, label %if.then.fold.split.i83
    i8 3, label %if.then.fold.split15.i84
    i8 4, label %if.then.fold.split16.i85
    i8 16, label %if.then.fold.split17.i86
    i8 -1, label %if.then.fold.split18.i87
  ]

do.end27.if.then.i90_crit_edge:                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i90

do.end27.myrb_devstate_name.exit92_crit_edge:     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_devstate_name.exit92

if.then.fold.split.i83:                           ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i90

if.then.fold.split15.i84:                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i90

if.then.fold.split16.i85:                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i90

if.then.fold.split17.i86:                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i90

if.then.fold.split18.i87:                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i90

if.then.i90:                                      ; preds = %if.then.fold.split18.i87, %if.then.fold.split17.i86, %if.then.fold.split16.i85, %if.then.fold.split15.i84, %if.then.fold.split.i83, %do.end27.if.then.i90_crit_edge
  %i.013.lcssa.i88 = phi i32 [ 0, %do.end27.if.then.i90_crit_edge ], [ 1, %if.then.fold.split.i83 ], [ 2, %if.then.fold.split15.i84 ], [ 3, %if.then.fold.split16.i85 ], [ 4, %if.then.fold.split17.i86 ], [ 5, %if.then.fold.split18.i87 ]
  %name.i89 = getelementptr %struct.myrb_devstate_name_entry, ptr @myrb_devstate_name_list, i32 %i.013.lcssa.i88, i32 1
  %38 = ptrtoint ptr %name.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i89, align 4
  br label %myrb_devstate_name.exit92

myrb_devstate_name.exit92:                        ; preds = %if.then.i90, %do.end27.myrb_devstate_name.exit92_crit_edge
  %retval.0.i91 = phi ptr [ %39, %if.then.i90 ], [ @.str.116, %do.end27.myrb_devstate_name.exit92_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev28, ptr noundef nonnull @.str.290, i32 noundef %ldev_num.094, ptr noundef %retval.0.i91) #15
  br label %if.end31

if.end31:                                         ; preds = %myrb_devstate_name.exit92, %if.end17.if.end31_crit_edge
  %wb_enabled = getelementptr %struct.myrb_ldev_info, ptr %21, i32 %ldev_num.094, i32 2
  %40 = ptrtoint ptr %wb_enabled to i32
  call void @__asan_loadN_noabort(i32 %40, i32 3)
  %bf.load = load i24, ptr %wb_enabled, align 1
  %bf.lshr = lshr i24 %bf.load, 16
  %bf.clear = and i24 %bf.lshr, 1
  %wb_enabled32 = getelementptr inbounds %struct.myrb_ldev_info, ptr %32, i32 0, i32 2
  %41 = ptrtoint ptr %wb_enabled32 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 3)
  %bf.load33 = load i24, ptr %wb_enabled32, align 1
  %bf.lshr34 = lshr i24 %bf.load33, 16
  %bf.clear35 = and i24 %bf.lshr34, 1
  %cmp37.not = icmp eq i24 %bf.clear, %bf.clear35
  br i1 %cmp37.not, label %if.end31.if.end46_crit_edge, label %if.then39

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %tobool45.not = icmp eq i24 %bf.clear, 0
  %cond = select i1 %tobool45.not, ptr @.str.294, ptr @.str.293
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.292, ptr noundef nonnull %cond) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end31.if.end46_crit_edge
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %add.ptr, align 4
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %32, align 4
  call void @scsi_device_put(ptr noundef nonnull %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %myrb_devstate_name.exit, %if.then7.cleanup_crit_edge
  %inc = add nuw nsw i32 %ldev_num.094, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %cleanup.cleanup49_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  ret i16 %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_bgi_control(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  %cmpl.i = alloca %struct.completion, align 4
  %bgi_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bgi_addr) #12
  %0 = ptrtoint ptr %bgi_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bgi_addr, align 4, !annotation !704
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull %bgi_addr, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.295) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53
  %5 = call ptr @memset(ptr %mcmd_blk, i32 0, i32 18)
  %id = getelementptr inbounds %struct.anon.86, ptr %mcmd_blk, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %id, align 1
  %7 = ptrtoint ptr %mcmd_blk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 43, ptr %mcmd_blk, align 4
  %optype = getelementptr inbounds %struct.anon.86, ptr %mcmd_blk, i32 0, i32 2
  %8 = ptrtoint ptr %optype to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %optype, align 2
  %9 = ptrtoint ptr %bgi_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bgi_addr, align 4
  %addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #12
  %12 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 52)
  %14 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 2
  %15 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmpl.i, ptr %completion.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %16 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qcmd.i, align 4
  call void %17(ptr noundef %cb, ptr noundef %mcmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i) #12
  %status.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 1
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #12
  %bgi_status = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62
  %host3 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %20 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host3, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %23, -1
  %ldev_num = getelementptr inbounds %struct.myrb_bgi_status, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %ldev_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ldev_num, align 4
  %call6 = call ptr @scsi_device_lookup(ptr noundef %21, i32 noundef %sub.i, i32 noundef %25, i64 noundef 0) #12
  %26 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.382)
  switch i16 %19, label %if.end.sw.epilog61_crit_edge [
    i16 0, label %sw.bb
    i16 256, label %sw.bb36
    i16 5, label %sw.bb48
    i16 261, label %if.end.sw.bb58_crit_edge
  ]

if.end.sw.bb58_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

if.end.sw.epilog61_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog61

sw.bb:                                            ; preds = %if.end
  %status7 = getelementptr inbounds %struct.myrb_bgi_status, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %status7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status7, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.383)
  switch i8 %28, label %sw.bb.sw.epilog_crit_edge [
    i8 6, label %sw.bb31
    i8 2, label %sw.bb9
    i8 4, label %sw.bb13
    i8 5, label %sw.bb27
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %sw.bb
  %tobool10.not = icmp eq ptr %call6, null
  br i1 %tobool10.not, label %sw.bb9.sw.epilog_crit_edge, label %if.end12

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.297) #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %sw.bb
  %tobool14.not = icmp eq ptr %call6, null
  br i1 %tobool14.not, label %sw.bb13.sw.epilog_crit_edge, label %if.end16

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end16:                                         ; preds = %sw.bb13
  %blocks_done = getelementptr inbounds %struct.myrb_bgi_status, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %blocks_done to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks_done, align 4
  %blocks_done17 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62, i32 1
  %32 = ptrtoint ptr %blocks_done17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocks_done17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp = icmp eq i32 %31, %33
  br i1 %cmp, label %land.lhs.true, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end16
  %34 = ptrtoint ptr %ldev_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ldev_num, align 4
  %ldev_num20 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62, i32 3
  %36 = ptrtoint ptr %ldev_num20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ldev_num20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp21 = icmp eq i32 %35, %37
  br i1 %cmp21, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %shr = lshr i32 %31, 7
  %mul = mul nuw i32 %shr, 100
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i, align 4
  %shr26 = lshr i32 %39, 7
  %div = udiv i32 %mul, %shr26
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.298, i32 noundef %div) #12
  br label %sw.epilog

sw.bb27:                                          ; preds = %sw.bb
  %tobool28.not = icmp eq ptr %call6, null
  br i1 %tobool28.not, label %sw.bb27.sw.epilog_crit_edge, label %if.end30

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.299) #12
  br label %sw.epilog

sw.bb31:                                          ; preds = %sw.bb
  %tobool32.not = icmp eq ptr %call6, null
  br i1 %tobool32.not, label %sw.bb31.sw.epilog_crit_edge, label %if.end34

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end34:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.300) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end34, %sw.bb31.sw.epilog_crit_edge, %if.end30, %sw.bb27.sw.epilog_crit_edge, %if.end24, %land.lhs.true.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %if.end12, %sw.bb9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %40 = call ptr @memcpy(ptr %bgi_status, ptr %call.i, i32 32)
  br label %sw.epilog61

sw.bb36:                                          ; preds = %if.end
  %tobool37.not = icmp eq ptr %call6, null
  br i1 %tobool37.not, label %sw.bb36.if.end45_crit_edge, label %land.lhs.true38

sw.bb36.if.end45_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true38:                                  ; preds = %sw.bb36
  %status40 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62, i32 5
  %41 = ptrtoint ptr %status40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %status40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %42)
  %cmp42 = icmp eq i8 %42, 4
  br i1 %cmp42, label %if.then44, label %land.lhs.true38.if.end45_crit_edge

land.lhs.true38.if.end45_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.301) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true38.if.end45_crit_edge, %sw.bb36.if.end45_crit_edge
  %status47 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62, i32 5
  %43 = ptrtoint ptr %status47 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %status47, align 1
  br label %sw.epilog61

sw.bb48:                                          ; preds = %if.end
  %tobool49.not = icmp eq ptr %call6, null
  br i1 %tobool49.not, label %sw.bb48.sw.bb58_crit_edge, label %land.lhs.true50

sw.bb48.sw.bb58_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

land.lhs.true50:                                  ; preds = %sw.bb48
  %status52 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62, i32 5
  %44 = ptrtoint ptr %status52 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %status52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %45)
  %cmp54 = icmp eq i8 %45, 4
  br i1 %cmp54, label %if.then56, label %land.lhs.true50.sw.bb58_crit_edge

land.lhs.true50.sw.bb58_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb58

if.then56:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call6, ptr noundef null, ptr noundef nonnull @.str.302) #12
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.then56, %land.lhs.true50.sw.bb58_crit_edge, %sw.bb48.sw.bb58_crit_edge, %if.end.sw.bb58_crit_edge
  %status60 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 62, i32 5
  %46 = ptrtoint ptr %status60 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %status60, align 1
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.bb58, %if.end45, %sw.epilog, %if.end.sw.epilog61_crit_edge
  %tobool62.not = icmp eq ptr %call6, null
  br i1 %tobool62.not, label %sw.epilog61.if.end64_crit_edge, label %if.then63

sw.epilog61.if.end64_crit_edge:                   ; preds = %sw.epilog61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then63:                                        ; preds = %sw.epilog61
  call void @__sanitizer_cov_trace_pc() #14
  call void @scsi_device_put(ptr noundef nonnull %call6) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %sw.epilog61.if.end64_crit_edge
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 4
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %bgi_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bgi_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev66, i32 noundef 32, ptr noundef nonnull %call.i, i32 noundef %50, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bgi_addr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

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
define internal void @myrb_monitor(ptr noundef %work) #2 align 64 {
entry:
  %cmpl.i.i313 = alloca %struct.completion, align 4
  %old_table.i = alloca [48 x %struct.myrb_error_entry], align 1
  %cmpl.i.i = alloca %struct.completion, align 4
  %ev_addr.i = alloca i32, align 4
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %host = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !734

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug297, ptr noundef %shost_gendev, ptr noundef nonnull @.str.319) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %new_ev_seq = getelementptr i8, ptr %work, i32 -48
  %2 = ptrtoint ptr %new_ev_seq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %new_ev_seq, align 4
  %old_ev_seq = getelementptr i8, ptr %work, i32 -46
  %4 = ptrtoint ptr %old_ev_seq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %old_ev_seq, align 2
  %conv4 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp ugt i16 %3, %5
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then21)) #12
          to label %do.end27 [label %if.then21], !srcloc !734

if.then21:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev22 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %new_ev_seq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %new_ev_seq, align 4
  %conv24 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug298, ptr noundef %shost_gendev22, ptr noundef nonnull @.str.320, i32 noundef %conv24, i32 noundef %conv4) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev_addr.i) #12
  %8 = ptrtoint ptr %ev_addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ev_addr.i, align 4, !annotation !704
  %pdev.i = getelementptr i8, ptr %work, i32 -32
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 32, ptr noundef nonnull %ev_addr.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end27.myrb_get_event.exit_crit_edge, label %if.end.i

do.end27.myrb_get_event.exit_crit_edge:           ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_get_event.exit

if.end.i:                                         ; preds = %do.end27
  %mcmd_blk.i = getelementptr i8, ptr %work, i32 324
  %11 = getelementptr i8, ptr %work, i32 328
  %12 = call ptr @memset(ptr %11, i32 0, i32 14)
  %id.i = getelementptr i8, ptr %work, i32 325
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %id.i, align 1
  %14 = ptrtoint ptr %mcmd_blk.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 114, ptr %mcmd_blk.i, align 4
  %optype.i = getelementptr i8, ptr %work, i32 326
  %15 = ptrtoint ptr %optype.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %optype.i, align 2
  %opqual.i = getelementptr i8, ptr %work, i32 327
  %16 = ptrtoint ptr %opqual.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %opqual.i, align 1
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %5, ptr %11, align 4
  %18 = ptrtoint ptr %ev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ev_addr.i, align 4
  %addr.i = getelementptr i8, ptr %work, i32 332
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  %21 = getelementptr inbounds i8, ptr %cmpl.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 52)
  %23 = ptrtoint ptr %cmpl.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cmpl.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %21, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i = getelementptr i8, ptr %work, i32 344
  %24 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cmpl.i.i, ptr %completion.i.i, align 4
  %queue_lock.i.i = getelementptr i8, ptr %work, i32 116
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #12
  %qcmd.i.i = getelementptr i8, ptr %work, i32 160
  %25 = ptrtoint ptr %qcmd.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qcmd.i.i, align 4
  call void %26(ptr noundef %add.ptr, ptr noundef %mcmd_blk.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call3.i.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i) #12
  %status.i.i = getelementptr i8, ptr %work, i32 340
  %27 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %status.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.not.i = icmp eq i16 %28, 0
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.328, i32 noundef %conv4, i32 noundef %conv3.i) #15
  br label %if.end59.i

if.else.i:                                        ; preds = %if.end.i
  %seq_num.i = getelementptr inbounds %struct.myrb_log_entry, ptr %call.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %seq_num.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %5)
  %cmp8.i = icmp eq i16 %32, %5
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i.if.end59.i_crit_edge

if.else.i.if.end59.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then10.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #12
  %33 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %36 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %sshdr.i, align 8
  %sense.i = getelementptr inbounds %struct.myrb_log_entry, ptr %call.i.i, i32 0, i32 4
  %call11.i = call zeroext i1 @scsi_normalize_sense(ptr noundef %sense.i, i32 noundef 32, ptr noundef nonnull %sshdr.i) #12
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %cmp13.i = icmp eq i8 %38, 9
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.then10.i.do.end37.i_crit_edge

if.then10.i.do.end37.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37.i

land.lhs.true.i:                                  ; preds = %if.then10.i
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %cmp16.i = icmp eq i8 %40, -128
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true.i.do.end37.i_crit_edge

land.lhs.true.i.do.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %42)
  %cmp20.i = icmp ult i8 %42, 13
  br i1 %cmp20.i, label %do.end25.i, label %land.lhs.true18.i.do.end37.i_crit_edge

land.lhs.true18.i.do.end37.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37.i

do.end25.i:                                       ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  %shost_gendev27.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 49
  %channel.i = getelementptr inbounds %struct.myrb_log_entry, ptr %call.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i = load i16, ptr %channel.i, align 2
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %46 = and i16 %bf.lshr.i, 7
  %bf.cast.i = zext i16 %46 to i32
  %bf.lshr30.i = lshr i16 %bf.load.i, 11
  %bf.cast31.i = zext i16 %bf.lshr30.i to i32
  %arrayidx.i = getelementptr [13 x ptr], ptr @myrb_event_msg, i32 0, i32 %conv19.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.254, ptr noundef %shost_gendev27.i, ptr noundef nonnull @.str.331, i32 noundef %bf.cast.i, i32 noundef %bf.cast31.i, ptr noundef %48) #15
  br label %if.end57.i

do.end37.i:                                       ; preds = %land.lhs.true18.i.do.end37.i_crit_edge, %land.lhs.true.i.do.end37.i_crit_edge, %if.then10.i.do.end37.i_crit_edge
  %49 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host, align 4
  %shost_gendev39.i = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 49
  %channel40.i = getelementptr inbounds %struct.myrb_log_entry, ptr %call.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %channel40.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load41.i = load i16, ptr %channel40.i, align 2
  %bf.lshr42.i = lshr i16 %bf.load41.i, 8
  %52 = and i16 %bf.lshr42.i, 7
  %bf.cast44.i = zext i16 %52 to i32
  %bf.lshr48.i = lshr i16 %bf.load41.i, 11
  %bf.cast49.i = zext i16 %bf.lshr48.i to i32
  %conv52.i = zext i8 %38 to i32
  %53 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %34, align 2
  %conv54.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %35, align 1
  %conv56.i = zext i8 %56 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.254, ptr noundef %shost_gendev39.i, ptr noundef nonnull @.str.334, i32 noundef %bf.cast44.i, i32 noundef %bf.cast49.i, i32 noundef %conv52.i, i32 noundef %conv54.i, i32 noundef %conv56.i) #15
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end37.i, %do.end25.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end57.i, %if.else.i.if.end59.i_crit_edge, %do.end.i
  %57 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i, align 4
  %dev61.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %ev_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ev_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev61.i, i32 noundef 32, ptr noundef nonnull %call.i.i, i32 noundef %60, i32 noundef 0) #12
  br label %myrb_get_event.exit

myrb_get_event.exit:                              ; preds = %if.end59.i, %do.end27.myrb_get_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev_addr.i) #12
  %add = add nuw i16 %5, 1
  %61 = ptrtoint ptr %old_ev_seq to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %add, ptr %old_ev_seq, align 2
  br label %if.then233

if.else:                                          ; preds = %do.end
  %need_err_info = getelementptr i8, ptr %work, i32 -40
  %62 = ptrtoint ptr %need_err_info to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %need_err_info, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool30.not = icmp eq i8 %63, 0
  br i1 %tobool30.not, label %if.else50, label %if.then31

if.then31:                                        ; preds = %if.else
  %64 = ptrtoint ptr %need_err_info to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %need_err_info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then45)) #12
          to label %do.end49 [label %if.then45], !srcloc !734

if.then45:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev46 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug299, ptr noundef %shost_gendev46, ptr noundef nonnull @.str.321) #12
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %if.then31
  %mcmd_blk.i314 = getelementptr i8, ptr %work, i32 324
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %old_table.i) #12
  %err_table.i = getelementptr i8, ptr %work, i32 464
  %65 = ptrtoint ptr %err_table.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %err_table.i, align 4
  %67 = call ptr @memcpy(ptr %old_table.i, ptr %66, i32 192)
  %68 = call ptr @memset(ptr %mcmd_blk.i314, i32 0, i32 18)
  %id.i315 = getelementptr i8, ptr %work, i32 325
  %69 = ptrtoint ptr %id.i315 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %id.i315, align 1
  %70 = ptrtoint ptr %mcmd_blk.i314 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 23, ptr %mcmd_blk.i314, align 4
  %err_table_addr.i = getelementptr i8, ptr %work, i32 468
  %71 = ptrtoint ptr %err_table_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %err_table_addr.i, align 4
  %addr.i316 = getelementptr i8, ptr %work, i32 332
  %73 = ptrtoint ptr %addr.i316 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %addr.i316, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i.i313) #12
  %74 = getelementptr inbounds i8, ptr %cmpl.i.i313, i32 4
  %75 = call ptr @memset(ptr %74, i32 255, i32 52)
  %76 = ptrtoint ptr %cmpl.i.i313 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %cmpl.i.i313, align 4
  call void @__init_swait_queue_head(ptr noundef %74, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i.i317 = getelementptr i8, ptr %work, i32 344
  %77 = ptrtoint ptr %completion.i.i317 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %cmpl.i.i313, ptr %completion.i.i317, align 4
  %queue_lock.i.i318 = getelementptr i8, ptr %work, i32 116
  %call3.i.i319 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i318) #12
  %qcmd.i.i320 = getelementptr i8, ptr %work, i32 160
  %78 = ptrtoint ptr %qcmd.i.i320 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %qcmd.i.i320, align 4
  call void %79(ptr noundef %add.ptr, ptr noundef %mcmd_blk.i314) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i318, i32 noundef %call3.i.i319) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i.i313) #12
  %status.i.i321 = getelementptr i8, ptr %work, i32 340
  %80 = ptrtoint ptr %status.i.i321 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %status.i.i321, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i.i313) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp.i = icmp eq i16 %81, 0
  br i1 %cmp.i, label %if.then.i, label %do.end49.myrb_get_errtable.exit_crit_edge

do.end49.myrb_get_errtable.exit_crit_edge:        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_get_errtable.exit

if.then.i:                                        ; preds = %do.end49
  %82 = ptrtoint ptr %err_table.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %err_table.i, align 4
  %84 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host, align 4
  %call4.i = call ptr @__scsi_iterate_devices(ptr noundef %85, ptr noundef null) #12
  %tobool.not74.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not74.i, label %if.then.i.myrb_get_errtable.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.myrb_get_errtable.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_get_errtable.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %sdev.075.i = phi ptr [ %call45.i, %for.inc.i.for.body.i_crit_edge ], [ %call4.i, %if.then.i.for.body.i_crit_edge ]
  %channel.i323 = getelementptr inbounds %struct.scsi_device, ptr %sdev.075.i, i32 0, i32 17
  %86 = ptrtoint ptr %channel.i323 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %channel.i323, align 4
  %88 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %host, align 4
  %max_channel.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %89, i32 0, i32 20
  %90 = ptrtoint ptr %max_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_channel.i.i, align 8
  %sub.i.i = add i32 %91, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %sub.i.i)
  %cmp7.not.i = icmp ult i32 %87, %sub.i.i
  br i1 %cmp7.not.i, label %if.end.i325, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i325:                                      ; preds = %for.body.i
  %mul.i = shl i32 %87, 4
  %id11.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.075.i, i32 0, i32 16
  %92 = ptrtoint ptr %id11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %id11.i, align 8
  %add.i = add i32 %93, %mul.i
  %add.ptr.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i
  %arrayidx.i324 = getelementptr [48 x %struct.myrb_error_entry], ptr %old_table.i, i32 0, i32 %add.i
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr.i, align 1
  %96 = ptrtoint ptr %arrayidx.i324 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i324, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp15.i = icmp eq i8 %95, %97
  br i1 %cmp15.i, label %land.lhs.true.i327, label %if.end.i325.if.end35.i_crit_edge

if.end.i325.if.end35.i_crit_edge:                 ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.lhs.true.i327:                               ; preds = %if.end.i325
  %soft_err.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i, i32 1
  %98 = ptrtoint ptr %soft_err.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %soft_err.i, align 1
  %soft_err18.i = getelementptr [48 x %struct.myrb_error_entry], ptr %old_table.i, i32 0, i32 %add.i, i32 1
  %100 = ptrtoint ptr %soft_err18.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %soft_err18.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %101)
  %cmp20.i326 = icmp eq i8 %99, %101
  br i1 %cmp20.i326, label %land.lhs.true22.i, label %land.lhs.true.i327.if.end35.i_crit_edge

land.lhs.true.i327.if.end35.i_crit_edge:          ; preds = %land.lhs.true.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i327
  %hard_err.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i, i32 2
  %102 = ptrtoint ptr %hard_err.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %hard_err.i, align 1
  %hard_err24.i = getelementptr [48 x %struct.myrb_error_entry], ptr %old_table.i, i32 0, i32 %add.i, i32 2
  %104 = ptrtoint ptr %hard_err24.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %hard_err24.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %103, i8 %105)
  %cmp26.i = icmp eq i8 %103, %105
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true22.i.if.end35.i_crit_edge

land.lhs.true22.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %misc_err.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i, i32 3
  %106 = ptrtoint ptr %misc_err.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %misc_err.i, align 1
  %misc_err30.i = getelementptr [48 x %struct.myrb_error_entry], ptr %old_table.i, i32 0, i32 %add.i, i32 3
  %108 = ptrtoint ptr %misc_err30.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %misc_err30.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %109)
  %cmp32.i = icmp eq i8 %107, %109
  br i1 %cmp32.i, label %land.lhs.true28.i.for.inc.i_crit_edge, label %land.lhs.true28.i.if.end35.i_crit_edge

land.lhs.true28.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.lhs.true28.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end35.i:                                       ; preds = %land.lhs.true28.i.if.end35.i_crit_edge, %land.lhs.true22.i.if.end35.i_crit_edge, %land.lhs.true.i327.if.end35.i_crit_edge, %if.end.i325.if.end35.i_crit_edge
  %conv37.i = zext i8 %95 to i32
  %soft_err38.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i, i32 1
  %110 = ptrtoint ptr %soft_err38.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %soft_err38.i, align 1
  %conv39.i = zext i8 %111 to i32
  %hard_err40.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i, i32 2
  %112 = ptrtoint ptr %hard_err40.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hard_err40.i, align 1
  %conv41.i = zext i8 %113 to i32
  %misc_err42.i = getelementptr %struct.myrb_error_entry, ptr %83, i32 %add.i, i32 3
  %114 = ptrtoint ptr %misc_err42.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %misc_err42.i, align 1
  %conv43.i = zext i8 %115 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull %sdev.075.i, ptr noundef null, ptr noundef nonnull @.str.349, i32 noundef %conv37.i, i32 noundef %conv39.i, i32 noundef %conv41.i, i32 noundef %conv43.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end35.i, %land.lhs.true28.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %116 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %host, align 4
  %call45.i = call ptr @__scsi_iterate_devices(ptr noundef %117, ptr noundef nonnull %sdev.075.i) #12
  %tobool.not.i328 = icmp eq ptr %call45.i, null
  br i1 %tobool.not.i328, label %for.inc.i.myrb_get_errtable.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.myrb_get_errtable.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %myrb_get_errtable.exit

myrb_get_errtable.exit:                           ; preds = %for.inc.i.myrb_get_errtable.exit_crit_edge, %if.then.i.myrb_get_errtable.exit_crit_edge, %do.end49.myrb_get_errtable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %old_table.i) #12
  br label %if.then233

if.else50:                                        ; preds = %if.else
  %need_rbld = getelementptr i8, ptr %work, i32 -39
  %118 = ptrtoint ptr %need_rbld to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %need_rbld, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool51.not = icmp eq i8 %119, 0
  br i1 %tobool51.not, label %if.else74, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else50
  %rbld_first = getelementptr i8, ptr %work, i32 -36
  %120 = ptrtoint ptr %rbld_first to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %rbld_first, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool53.not = icmp eq i8 %121, 0
  br i1 %tobool53.not, label %if.else74.thread, label %if.then55

if.then55:                                        ; preds = %land.lhs.true
  %122 = ptrtoint ptr %need_rbld to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %need_rbld, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then69)) #12
          to label %do.end73 [label %if.then69], !srcloc !734

if.then69:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev70 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug300, ptr noundef %shost_gendev70, ptr noundef nonnull @.str.322) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %if.then55
  tail call fastcc void @myrb_update_rbld_progress(ptr noundef %add.ptr)
  br label %if.then233

if.else74:                                        ; preds = %if.else50
  %need_ldev_info = getelementptr i8, ptr %work, i32 -41
  %123 = ptrtoint ptr %need_ldev_info to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %need_ldev_info, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool75.not = icmp eq i8 %124, 0
  br i1 %tobool75.not, label %if.else118, label %if.else74.if.then76_crit_edge

if.else74.if.then76_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

if.else74.thread:                                 ; preds = %land.lhs.true
  %need_ldev_info334 = getelementptr i8, ptr %work, i32 -41
  %125 = ptrtoint ptr %need_ldev_info334 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %need_ldev_info334, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool75.not335 = icmp eq i8 %126, 0
  br i1 %tobool75.not335, label %if.then99, label %if.else74.thread.if.then76_crit_edge

if.else74.thread.if.then76_crit_edge:             ; preds = %if.else74.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

if.then76:                                        ; preds = %if.else74.thread.if.then76_crit_edge, %if.else74.if.then76_crit_edge
  %need_ldev_info337 = phi ptr [ %need_ldev_info334, %if.else74.thread.if.then76_crit_edge ], [ %need_ldev_info, %if.else74.if.then76_crit_edge ]
  %127 = ptrtoint ptr %need_ldev_info337 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %need_ldev_info337, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then90)) #12
          to label %do.end94 [label %if.then90], !srcloc !734

if.then90:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev91 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug301, ptr noundef %shost_gendev91, ptr noundef nonnull @.str.323) #12
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %if.then76
  %call95 = tail call fastcc zeroext i16 @myrb_get_ldev_info(ptr noundef %add.ptr)
  br label %if.then233

if.then99:                                        ; preds = %if.else74.thread
  %128 = ptrtoint ptr %need_rbld to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %need_rbld, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then113)) #12
          to label %do.end117 [label %if.then113], !srcloc !734

if.then113:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev114 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug302, ptr noundef %shost_gendev114, ptr noundef nonnull @.str.322) #12
  br label %do.end117

do.end117:                                        ; preds = %if.then113, %if.then99
  tail call fastcc void @myrb_update_rbld_progress(ptr noundef %add.ptr)
  br label %if.then233

if.else118:                                       ; preds = %if.else74
  %need_cc_status = getelementptr i8, ptr %work, i32 -38
  %129 = ptrtoint ptr %need_cc_status to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %need_cc_status, align 2, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool119.not = icmp eq i8 %130, 0
  br i1 %tobool119.not, label %if.else139, label %if.then120

if.then120:                                       ; preds = %if.else118
  %131 = ptrtoint ptr %need_cc_status to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %need_cc_status, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then134)) #12
          to label %do.end138 [label %if.then134], !srcloc !734

if.then134:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev135 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug303, ptr noundef %shost_gendev135, ptr noundef nonnull @.str.324) #12
  br label %do.end138

do.end138:                                        ; preds = %if.then134, %if.then120
  tail call fastcc void @myrb_get_cc_progress(ptr noundef %add.ptr)
  br label %if.then233

if.else139:                                       ; preds = %if.else118
  %need_bgi_status = getelementptr i8, ptr %work, i32 -37
  %132 = ptrtoint ptr %need_bgi_status to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %need_bgi_status, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool140.not = icmp eq i8 %133, 0
  br i1 %tobool140.not, label %do.body161, label %if.then141

if.then141:                                       ; preds = %if.else139
  %134 = ptrtoint ptr %need_bgi_status to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %need_bgi_status, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then155)) #12
          to label %do.end159 [label %if.then155], !srcloc !734

if.then155:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev156 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug304, ptr noundef %shost_gendev156, ptr noundef nonnull @.str.325) #12
  br label %do.end159

do.end159:                                        ; preds = %if.then155, %if.then141
  tail call fastcc void @myrb_bgi_control(ptr noundef %add.ptr)
  br label %if.then233

do.body161:                                       ; preds = %if.else139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then173)) #12
          to label %do.end177 [label %if.then173], !srcloc !734

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev174 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug305, ptr noundef %shost_gendev174, ptr noundef nonnull @.str.326) #12
  br label %do.end177

do.end177:                                        ; preds = %if.then173, %do.body161
  %dma_mutex = getelementptr i8, ptr %work, i32 516
  tail call void @mutex_lock_nested(ptr noundef %dma_mutex, i32 noundef 0) #12
  %call178 = tail call fastcc zeroext i16 @myrb_hba_enquiry(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %dma_mutex) #12
  %135 = ptrtoint ptr %new_ev_seq to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %new_ev_seq, align 4
  %137 = ptrtoint ptr %old_ev_seq to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %old_ev_seq, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %138)
  %cmp184 = icmp ugt i16 %136, %138
  br i1 %cmp184, label %do.end177.do.body206_crit_edge, label %lor.lhs.false

do.end177.do.body206_crit_edge:                   ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

lor.lhs.false:                                    ; preds = %do.end177
  %139 = ptrtoint ptr %need_err_info to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %need_err_info, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool187.not = icmp eq i8 %140, 0
  br i1 %tobool187.not, label %lor.lhs.false189, label %lor.lhs.false.do.body206_crit_edge

lor.lhs.false.do.body206_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

lor.lhs.false189:                                 ; preds = %lor.lhs.false
  %141 = ptrtoint ptr %need_rbld to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %need_rbld, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool191.not = icmp eq i8 %142, 0
  br i1 %tobool191.not, label %lor.lhs.false193, label %lor.lhs.false189.do.body206_crit_edge

lor.lhs.false189.do.body206_crit_edge:            ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

lor.lhs.false193:                                 ; preds = %lor.lhs.false189
  %143 = ptrtoint ptr %need_ldev_info to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %need_ldev_info, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool195.not = icmp eq i8 %144, 0
  br i1 %tobool195.not, label %lor.lhs.false197, label %lor.lhs.false193.do.body206_crit_edge

lor.lhs.false193.do.body206_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

lor.lhs.false197:                                 ; preds = %lor.lhs.false193
  %145 = ptrtoint ptr %need_cc_status to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %need_cc_status, align 2, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool199.not = icmp eq i8 %146, 0
  br i1 %tobool199.not, label %lor.lhs.false201, label %lor.lhs.false197.do.body206_crit_edge

lor.lhs.false197.do.body206_crit_edge:            ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

lor.lhs.false201:                                 ; preds = %lor.lhs.false197
  %147 = ptrtoint ptr %need_bgi_status to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %need_bgi_status, align 1, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool203.not = icmp eq i8 %148, 0
  br i1 %tobool203.not, label %lor.lhs.false201.if.then233_crit_edge, label %lor.lhs.false201.do.body206_crit_edge

lor.lhs.false201.do.body206_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

lor.lhs.false201.if.then233_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then233

do.body206:                                       ; preds = %lor.lhs.false201.do.body206_crit_edge, %lor.lhs.false197.do.body206_crit_edge, %lor.lhs.false193.do.body206_crit_edge, %lor.lhs.false189.do.body206_crit_edge, %lor.lhs.false.do.body206_crit_edge, %do.end177.do.body206_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @myrb_monitor.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@myrb_monitor, %if.then218)) #12
          to label %if.end234 [label %if.then218], !srcloc !734

if.then218:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #14
  %shost_gendev219 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @myrb_monitor.__UNIQUE_ID_ddebug306, ptr noundef %shost_gendev219, ptr noundef nonnull @.str.327) #12
  br label %if.end234

if.then233:                                       ; preds = %lor.lhs.false201.if.then233_crit_edge, %do.end159, %do.end138, %do.end117, %do.end94, %do.end73, %myrb_get_errtable.exit, %myrb_get_event.exit
  %interval.0.ph = phi i32 [ 10, %myrb_get_event.exit ], [ 10, %do.end73 ], [ 10, %do.end117 ], [ 10, %do.end159 ], [ 1000, %lor.lhs.false201.if.then233_crit_edge ], [ 10, %do.end138 ], [ 10, %do.end94 ], [ 10, %myrb_get_errtable.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %149 = load volatile i32, ptr @jiffies, align 128
  %primary_monitor_time = getelementptr i8, ptr %work, i32 100
  %150 = ptrtoint ptr %primary_monitor_time to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %primary_monitor_time, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.then233, %if.then218, %do.body206
  %interval.0346 = phi i32 [ %interval.0.ph, %if.then233 ], [ 0, %if.then218 ], [ 0, %do.body206 ]
  %work_q = getelementptr i8, ptr %work, i32 -24
  %151 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %work_q, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %152, ptr noundef %work, i32 noundef %interval.0346) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_update_rbld_progress(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  %rbld_buf = alloca %struct.myrb_rbld_progress, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbld_buf) #12
  %0 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rbld_buf, align 4, !annotation !704
  %1 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !704
  %3 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !704
  %call = call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %cb, ptr noundef nonnull %rbld_buf)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp = icmp eq i16 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

land.lhs.true:                                    ; preds = %entry
  %last_rbld_status = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 59
  %5 = ptrtoint ptr %last_rbld_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %last_rbld_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp3 = icmp eq i16 %6, 0
  br i1 %cmp3, label %land.lhs.true.if.then8_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true.if.then8_crit_edge, %entry.if.then8_crit_edge
  %status.0.ph = phi i16 [ %call, %entry.if.then8_crit_edge ], [ 256, %land.lhs.true.if.then8_crit_edge ]
  %host = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %10, -1
  %11 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rbld_buf, align 4
  %call11 = call ptr @scsi_device_lookup(ptr noundef %8, i32 noundef %sub.i, i32 noundef %12, i64 noundef 0) #12
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.then8.cleanup25_crit_edge, label %if.end13

if.then8.cleanup25_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

if.end13:                                         ; preds = %if.then8
  %13 = zext i16 %status.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.384)
  switch i16 %status.0.ph, label %if.end13.if.end23.sink.split_crit_edge [
    i16 263, label %sw.bb21
    i16 2, label %if.end13.if.end23.sink.split.sink.split_crit_edge
    i16 3, label %sw.bb18
    i16 4, label %sw.bb19
    i16 256, label %sw.bb20
  ]

if.end13.if.end23.sink.split.sink.split_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split.sink.split

if.end13.if.end23.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

sw.bb18:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split.sink.split

sw.bb19:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split.sink.split

sw.bb20:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split.sink.split

sw.bb21:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split.sink.split

if.end23.sink.split.sink.split:                   ; preds = %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %if.end13.if.end23.sink.split.sink.split_crit_edge
  %.str.355.sink = phi ptr [ @.str.355, %sw.bb21 ], [ @.str.354, %sw.bb20 ], [ @.str.353, %sw.bb19 ], [ @.str.352, %sw.bb18 ], [ @.str.351, %if.end13.if.end23.sink.split.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call11, ptr noundef null, ptr noundef nonnull %.str.355.sink) #12
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.end23.sink.split.sink.split, %if.end13.if.end23.sink.split_crit_edge
  call void @scsi_device_put(ptr noundef nonnull %call11) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.if.end23_crit_edge
  %status.052 = phi i16 [ 0, %land.lhs.true.if.end23_crit_edge ], [ %status.0.ph, %if.end23.sink.split ]
  %last_rbld_status24 = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 59
  %14 = ptrtoint ptr %last_rbld_status24 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %status.052, ptr %last_rbld_status24, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %if.end23, %if.then8.cleanup25_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbld_buf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @myrb_get_cc_progress(ptr noundef %cb) unnamed_addr #2 align 64 {
entry:
  %cmpl.i = alloca %struct.completion, align 4
  %rbld_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbld_addr) #12
  %0 = ptrtoint ptr %rbld_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rbld_addr, align 4, !annotation !704
  %pdev = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 17
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 12, ptr noundef nonnull %rbld_addr, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %need_cc_status = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 14
  %3 = ptrtoint ptr %need_cc_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %need_cc_status, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcmd_blk = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53
  %4 = call ptr @memset(ptr %mcmd_blk, i32 0, i32 18)
  %id = getelementptr inbounds %struct.anon.85, ptr %mcmd_blk, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %id, align 1
  %6 = ptrtoint ptr %mcmd_blk to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %mcmd_blk, align 4
  %7 = ptrtoint ptr %rbld_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rbld_addr, align 4
  %addr = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #12
  %10 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 52)
  %12 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %10, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #12
  %completion.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 2
  %13 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmpl.i, ptr %completion.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 26
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #12
  %qcmd.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 27
  %14 = ptrtoint ptr %qcmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qcmd.i, align 4
  call void %15(ptr noundef %cb, ptr noundef %mcmd_blk) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #12
  call void @wait_for_completion(ptr noundef nonnull %cmpl.i) #12
  %status.i = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 53, i32 1
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp = icmp eq i16 %17, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  %ldev_size6 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %ldev_size6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ldev_size6, align 4
  %blocks_left = getelementptr inbounds %struct.myrb_rbld_progress, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %blocks_left to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocks_left, align 4
  %host = getelementptr inbounds %struct.myrb_hba, ptr %cb, i32 0, i32 18
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %27, -1
  %call9 = call ptr @scsi_device_lookup(ptr noundef %25, i32 noundef %sub.i, i32 noundef %19, i64 noundef 0) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then4.if.end14_crit_edge, label %if.then11

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %21, %23
  %shr = lshr i32 %sub, 7
  %mul = mul nuw i32 %shr, 100
  %shr12 = lshr i32 %21, 7
  %div = udiv i32 %mul, %shr12
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call9, ptr noundef null, ptr noundef nonnull @.str.356, i32 noundef %div) #12
  call void @scsi_device_put(ptr noundef nonnull %call9) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %rbld_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rbld_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev16, i32 noundef 12, ptr noundef nonnull %call.i, i32 noundef %31, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbld_addr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @myrb_is_raid(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %channel = getelementptr i8, ptr %dev, i32 -276
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp = icmp eq i32 %1, %sub.i
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrb_get_resync(ptr noundef %dev) #2 align 64 {
entry:
  %rbld_buf = alloca %struct.myrb_rbld_progress, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbld_buf) #12
  %2 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rbld_buf, align 4, !annotation !704
  %3 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !704
  %5 = getelementptr inbounds %struct.myrb_rbld_progress, ptr %rbld_buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !704
  %channel = getelementptr i8, ptr %dev, i32 -276
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.i)
  %cmp = icmp ult i32 %8, %sub.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call3 = call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %hostdata.i, ptr noundef nonnull %rbld_buf)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %cmp4 = icmp eq i16 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %11 = ptrtoint ptr %rbld_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rbld_buf, align 4
  %id = getelementptr i8, ptr %dev, i32 -280
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp7 = icmp eq i32 %12, %14
  br i1 %cmp7, label %if.end12, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end12:                                         ; preds = %if.then6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %16, %18
  %mul = mul i32 %sub, 100
  %div = udiv i32 %mul, %16
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge, %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %percent_complete.0 = phi i32 [ %div, %if.then14 ], [ 0, %if.end12.if.end15_crit_edge ], [ 0, %if.then6.if.end15_crit_edge ], [ 0, %if.end.if.end15_crit_edge ]
  %19 = load ptr, ptr @myrb_raid_template, align 4
  %call.i = call ptr @attribute_container_find_class_device(ptr noundef %19, ptr noundef %dev) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %raid_set_resync.exit, !prof !779

do.body4.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/raid_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #12, !srcloc !781
  unreachable

raid_set_resync.exit:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %resync.i = getelementptr inbounds %struct.raid_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %resync.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %percent_complete.0, ptr %resync.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %raid_set_resync.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbld_buf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @myrb_get_state(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_channel.i, align 8
  %sub.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub.i)
  %cmp = icmp ult i32 %5, %sub.i
  %tobool.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end11_crit_edge, label %if.else

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else:                                          ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %call3 = tail call fastcc zeroext i16 @myrb_get_rbld_progress(ptr noundef %hostdata.i, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %cmp4 = icmp eq i16 %call3, 0
  br i1 %cmp4, label %if.else.if.end11_crit_edge, label %if.else7

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else7:                                         ; preds = %if.else
  %state8 = getelementptr inbounds %struct.myrb_ldev_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %state8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state8, align 4
  %switch.tableidx = add i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %if.else7.if.end11_crit_edge

if.else7.if.end11_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

switch.lookup:                                    ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.myrb_get_state, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end11

if.end11:                                         ; preds = %switch.lookup, %if.else7.if.end11_crit_edge, %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %state.0 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ 3, %if.else.if.end11_crit_edge ], [ %switch.load, %switch.lookup ], [ 4, %if.else7.if.end11_crit_edge ]
  %13 = load ptr, ptr @myrb_raid_template, align 4
  %call.i = tail call ptr @attribute_container_find_class_device(ptr noundef %13, ptr noundef %dev) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %raid_set_state.exit, !prof !779

do.body4.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/raid_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #12, !srcloc !782
  unreachable

raid_set_state.exit:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.raid_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %state.0, ptr %state.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 359)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 359)
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
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !111, !112, !114, !115, !117, !118, !120, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !233, !234, !235, !237, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !261, !263, !264, !266, !268, !269, !271, !273, !274, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !309, !310, !312, !314, !316, !318, !320, !322, !324, !326, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !398, !399, !400, !402, !403, !404, !406, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !446, !447, !449, !451, !453, !454, !455, !457, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !483, !485, !486, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501, !502, !503, !505, !506, !507, !509, !510, !511, !512, !513, !515, !516, !517, !519, !520, !521, !523, !524, !525, !527, !528, !529, !531, !532, !533, !535, !536, !537, !539, !540, !541, !543, !544, !545, !547, !548, !549, !550, !552, !553, !554, !556, !557, !558, !560, !561, !562, !563, !565, !567, !569, !571, !573, !575, !577, !579, !580, !581, !582, !584, !586, !587, !588, !590, !592, !594, !595, !596, !598, !599, !600, !601, !603, !604, !605, !607, !608, !610, !611, !613, !614, !616, !617, !619, !621, !622, !624, !625, !627, !628, !630, !631, !633, !634, !635, !636, !638, !639, !640, !642, !643, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !691, !692, !693}
!llvm.module.flags = !{!695, !696, !697, !698, !699, !700, !701, !702}
!llvm.ident = !{!703}

!0 = !{ptr @__initcall__kmod_myrb__307_3552_myrb_init_module6, !1, !"__initcall__kmod_myrb__307_3552_myrb_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/myrb.c", i32 3552, i32 1}
!2 = !{ptr @__exitcall_myrb_cleanup_module, !3, !"__exitcall_myrb_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/scsi/myrb.c", i32 3553, i32 1}
!4 = !{ptr @__UNIQUE_ID_description308, !5, !"__UNIQUE_ID_description308", i1 false, i1 false}
!5 = !{!"../drivers/scsi/myrb.c", i32 3555, i32 1}
!6 = !{ptr @__UNIQUE_ID_author309, !7, !"__UNIQUE_ID_author309", i1 false, i1 false}
!7 = !{!"../drivers/scsi/myrb.c", i32 3556, i32 1}
!8 = !{ptr @__UNIQUE_ID_file310, !9, !"__UNIQUE_ID_file310", i1 false, i1 false}
!9 = !{!"../drivers/scsi/myrb.c", i32 3557, i32 1}
!10 = !{ptr @__UNIQUE_ID_license311, !9, !"__UNIQUE_ID_license311", i1 false, i1 false}
!11 = !{ptr @myrb_raid_template, !12, !"myrb_raid_template", i1 false, i1 false}
!12 = !{!"../drivers/scsi/myrb.c", i32 27, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/myrb.c", i32 3525, i32 11}
!15 = !{ptr @myrb_pci_driver, !16, !"myrb_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/scsi/myrb.c", i32 3524, i32 26}
!17 = !{ptr @myrb_id_table, !18, !"myrb_id_table", i1 false, i1 false}
!18 = !{!"../drivers/scsi/myrb.c", i32 3502, i32 35}
!19 = !{ptr @DAC960_LA_privdata, !20, !"DAC960_LA_privdata", i1 false, i1 false}
!20 = !{!"../drivers/scsi/myrb.c", i32 2754, i32 29}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/myrb.c", i32 2685, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @DAC960_LA_hw_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @DAC960_LA_hw_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/myrb.c", i32 2690, i32 3}
!31 = !{ptr @DAC960_LA_hw_init._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @DAC960_LA_hw_init._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/myrb.c", i32 2468, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @myrb_err_status._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @myrb_err_status._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/myrb.c", i32 2473, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @myrb_err_status._entry.12, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @myrb_err_status._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/myrb.c", i32 2476, i32 3}
!46 = !{ptr @myrb_err_status._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @myrb_err_status._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/myrb.c", i32 2479, i32 3}
!50 = !{ptr @myrb_err_status._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @myrb_err_status._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/myrb.c", i32 2482, i32 3}
!54 = !{ptr @myrb_err_status._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @myrb_err_status._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/myrb.c", i32 2485, i32 3}
!58 = !{ptr @myrb_err_status._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @myrb_err_status._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/myrb.c", i32 2489, i32 3}
!62 = !{ptr @myrb_err_status._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @myrb_err_status._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/myrb.c", i32 2492, i32 3}
!66 = !{ptr @myrb_err_status._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @myrb_err_status._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/myrb.c", i32 2495, i32 3}
!70 = !{ptr @myrb_err_status._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @myrb_err_status._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/myrb.c", i32 2498, i32 3}
!74 = !{ptr @myrb_err_status._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @myrb_err_status._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/myrb.c", i32 2501, i32 3}
!78 = !{ptr @myrb_err_status._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @myrb_err_status._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/myrb.c", i32 820, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @myrb_enable_mmio._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @myrb_enable_mmio._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/myrb.c", i32 894, i32 4}
!87 = !{ptr @myrb_enable_mmio._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @myrb_enable_mmio._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/myrb.c", i32 2642, i32 3}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @DAC960_LA_mbox_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @DAC960_LA_mbox_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/myrb.c", i32 2656, i32 3}
!96 = !{ptr @DAC960_LA_mbox_init._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @DAC960_LA_mbox_init._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/myrb.c", i32 2735, i32 4}
!100 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @DAC960_LA_intr_handler._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @DAC960_LA_intr_handler._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/myrb.c", i32 2329, i32 3}
!105 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug293, !104, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/myrb.c", i32 2339, i32 31}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/myrb.c", i32 2348, i32 3}
!111 = !{ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug294, !110, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/myrb.c", i32 2353, i32 3}
!114 = !{ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug295, !113, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/myrb.c", i32 2359, i32 3}
!117 = !{ptr @myrb_handle_scsi.__UNIQUE_ID_ddebug296, !116, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/myrb.c", i32 2364, i32 8}
!120 = !{ptr @DAC960_PG_privdata, !121, !"DAC960_PG_privdata", i1 false, i1 false}
!121 = !{!"../drivers/scsi/myrb.c", i32 3000, i32 29}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/myrb.c", i32 2933, i32 3}
!124 = !{ptr @DAC960_PG_hw_init._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @DAC960_PG_hw_init._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @DAC960_PG_hw_init._entry.63, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/scsi/myrb.c", i32 2938, i32 3}
!128 = !{ptr @DAC960_PG_hw_init._entry_ptr.64, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/myrb.c", i32 2888, i32 3}
!131 = !{ptr @DAC960_PG_mbox_init._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @DAC960_PG_mbox_init._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @DAC960_PG_mbox_init._entry.66, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/scsi/myrb.c", i32 2903, i32 3}
!135 = !{ptr @DAC960_PG_mbox_init._entry_ptr.67, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/myrb.c", i32 2983, i32 4}
!138 = !{ptr @DAC960_PG_intr_handler._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @DAC960_PG_intr_handler._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @DAC960_PD_privdata, !141, !"DAC960_PD_privdata", i1 false, i1 false}
!141 = !{!"../drivers/scsi/myrb.c", i32 3191, i32 29}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/myrb.c", i32 3117, i32 3}
!144 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @DAC960_PD_hw_init._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @DAC960_PD_hw_init._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @DAC960_PD_hw_init._entry.71, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/scsi/myrb.c", i32 3134, i32 3}
!149 = !{ptr @DAC960_PD_hw_init._entry_ptr.72, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @DAC960_PD_hw_init._entry.73, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/scsi/myrb.c", i32 3139, i32 3}
!152 = !{ptr @DAC960_PD_hw_init._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/myrb.c", i32 3176, i32 4}
!155 = !{ptr @DAC960_PD_intr_handler._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @DAC960_PD_intr_handler._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @DAC960_P_privdata, !158, !"DAC960_P_privdata", i1 false, i1 false}
!158 = !{!"../drivers/scsi/myrb.c", i32 3389, i32 29}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/myrb.c", i32 3283, i32 3}
!161 = !{ptr @DAC960_P_hw_init._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @DAC960_P_hw_init._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @DAC960_P_hw_init._entry.77, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/scsi/myrb.c", i32 3300, i32 3}
!165 = !{ptr @DAC960_P_hw_init._entry_ptr.78, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/myrb.c", i32 3305, i32 3}
!168 = !{ptr @DAC960_P_hw_init._entry.79, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @DAC960_P_hw_init._entry_ptr.81, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/myrb.c", i32 3345, i32 4}
!172 = !{ptr @DAC960_P_intr_handler._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @DAC960_P_intr_handler._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/myrb.c", i32 3479, i32 3}
!176 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @myrb_probe._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @myrb_probe._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/myrb.c", i32 3407, i32 3}
!181 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @myrb_detect._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @myrb_detect._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @myrb_detect.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/scsi/myrb.c", i32 3413, i32 2}
!186 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @myrb_detect.__key.88, !188, !"__key", i1 false, i1 false}
!188 = !{!"../drivers/scsi/myrb.c", i32 3414, i32 2}
!189 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @myrb_detect.__key.90, !191, !"__key", i1 false, i1 false}
!191 = !{!"../drivers/scsi/myrb.c", i32 3428, i32 2}
!192 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/myrb.c", i32 3433, i32 3}
!195 = !{ptr @myrb_detect._entry.92, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @myrb_detect._entry_ptr.94, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/myrb.c", i32 3443, i32 3}
!199 = !{ptr @myrb_detect._entry.95, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @myrb_detect._entry_ptr.97, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/myrb.c", i32 3451, i32 2}
!203 = !{ptr @myrb_detect._entry.98, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @myrb_detect._entry_ptr.100, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/myrb.c", i32 2207, i32 12}
!207 = !{ptr @myrb_template, !208, !"myrb_template", i1 false, i1 false}
!208 = !{!"../drivers/scsi/myrb.c", i32 2205, i32 34}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/myrb.c", i32 1436, i32 3}
!211 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @myrb_ldev_queuecommand.__UNIQUE_ID_ddebug288, !210, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/myrb.c", i32 1411, i32 2}
!215 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @myrb_read_capacity.__UNIQUE_ID_ddebug287, !214, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/myrb.c", i32 1636, i32 2}
!219 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @myrb_ldev_slave_alloc.__UNIQUE_ID_ddebug289, !218, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/myrb.c", i32 1684, i32 3}
!223 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug290, !222, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/myrb.c", i32 1691, i32 3}
!227 = !{ptr @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug291, !226, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/myrb.c", i32 1696, i32 2}
!230 = !{ptr @myrb_pdev_slave_alloc.__UNIQUE_ID_ddebug292, !229, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!233 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @init_completion.__key, !236, !"__key", i1 false, i1 false}
!236 = !{!"../include/linux/completion.h", i32 87, i32 2}
!237 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/myrb.c", i32 1736, i32 3}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/myrb.c", i32 58, i32 9}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/myrb.c", i32 41, i32 22}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/myrb.c", i32 42, i32 20}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/myrb.c", i32 43, i32 24}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/myrb.c", i32 44, i32 26}
!250 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/myrb.c", i32 45, i32 25}
!252 = !{ptr @.str.122, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/myrb.c", i32 46, i32 25}
!254 = !{ptr @myrb_devstate_name_list, !255, !"myrb_devstate_name_list", i1 false, i1 false}
!255 = !{!"../drivers/scsi/myrb.c", i32 40, i32 3}
!256 = !{ptr @myrb_shost_groups, !257, !"myrb_shost_groups", i1 false, i1 false}
!257 = !{!"../drivers/scsi/myrb.c", i32 2203, i32 1}
!258 = !{ptr @myrb_shost_group, !257, !"myrb_shost_group", i1 false, i1 false}
!259 = !{ptr @myrb_shost_attrs, !260, !"myrb_shost_attrs", i1 false, i1 false}
!260 = !{!"../drivers/scsi/myrb.c", i32 2195, i32 26}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/myrb.c", i32 2144, i32 8}
!263 = !{ptr @dev_attr_ctlr_num, !262, !"dev_attr_ctlr_num", i1 false, i1 false}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/myrb.c", i32 2142, i32 27}
!266 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/myrb.c", i32 2164, i32 8}
!268 = !{ptr @dev_attr_model, !267, !"dev_attr_model", i1 false, i1 false}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/myrb.c", i32 2162, i32 27}
!271 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/myrb.c", i32 2154, i32 8}
!273 = !{ptr @dev_attr_firmware, !272, !"dev_attr_firmware", i1 false, i1 false}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/myrb.c", i32 2183, i32 8}
!276 = !{ptr @dev_attr_flush_cache, !275, !"dev_attr_flush_cache", i1 false, i1 false}
!277 = !{ptr @.str.129, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/myrb.c", i32 2175, i32 3}
!279 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @flush_cache_store._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @flush_cache_store._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.132, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/myrb.c", i32 2179, i32 2}
!284 = !{ptr @flush_cache_store._entry.131, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @flush_cache_store._entry_ptr.133, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @myrb_sdev_groups, !287, !"myrb_sdev_groups", i1 false, i1 false}
!287 = !{!"../drivers/scsi/myrb.c", i32 2193, i32 1}
!288 = !{ptr @myrb_sdev_group, !287, !"myrb_sdev_group", i1 false, i1 false}
!289 = !{ptr @myrb_sdev_attrs, !290, !"myrb_sdev_attrs", i1 false, i1 false}
!290 = !{!"../drivers/scsi/myrb.c", i32 2185, i32 26}
!291 = !{ptr @.str.134, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/myrb.c", i32 2021, i32 8}
!293 = !{ptr @dev_attr_rebuild, !292, !"dev_attr_rebuild", i1 false, i1 false}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/myrb.c", i32 1905, i32 28}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/myrb.c", i32 1911, i32 28}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/myrb.c", i32 1913, i32 27}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/myrb.c", i32 1939, i32 4}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/myrb.c", i32 1959, i32 4}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/myrb.c", i32 1967, i32 4}
!306 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/myrb.c", i32 1984, i32 3}
!308 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.144, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/myrb.c", i32 1989, i32 3}
!312 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/myrb.c", i32 1997, i32 9}
!314 = !{ptr @.str.146, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/myrb.c", i32 2000, i32 9}
!316 = !{ptr @.str.147, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/myrb.c", i32 2003, i32 9}
!318 = !{ptr @.str.148, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/myrb.c", i32 2006, i32 9}
!320 = !{ptr @.str.149, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/myrb.c", i32 2013, i32 3}
!322 = !{ptr @.str.150, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/myrb.c", i32 2016, i32 3}
!324 = !{ptr @.str.151, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/myrb.c", i32 2134, i32 8}
!326 = !{ptr @dev_attr_consistency_check, !325, !"dev_attr_consistency_check", i1 false, i1 false}
!327 = !{ptr @.str.152, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/myrb.c", i32 2046, i32 4}
!329 = !{ptr @.str.153, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/myrb.c", i32 2067, i32 4}
!331 = !{ptr @.str.154, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/myrb.c", i32 2074, i32 4}
!333 = !{ptr @.str.155, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/myrb.c", i32 2091, i32 3}
!335 = !{ptr @.str.156, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/myrb.c", i32 2096, i32 3}
!337 = !{ptr @.str.157, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/myrb.c", i32 2104, i32 9}
!339 = !{ptr @.str.158, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/myrb.c", i32 2110, i32 9}
!341 = !{ptr @.str.159, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/myrb.c", i32 2120, i32 3}
!343 = !{ptr @.str.160, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/myrb.c", i32 2123, i32 3}
!345 = !{ptr @.str.161, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/myrb.c", i32 1872, i32 8}
!347 = !{ptr @dev_attr_raid_state, !346, !"dev_attr_raid_state", i1 false, i1 false}
!348 = !{ptr @.str.162, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/myrb.c", i32 1769, i32 28}
!350 = !{ptr @.str.163, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/myrb.c", i32 1779, i32 28}
!352 = !{ptr @.str.164, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/myrb.c", i32 1794, i32 11}
!354 = !{ptr @.str.165, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/myrb.c", i32 1815, i32 20}
!356 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/myrb.c", i32 1816, i32 20}
!358 = !{ptr @.str.167, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/myrb.c", i32 1818, i32 25}
!360 = !{ptr @.str.168, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/myrb.c", i32 1820, i32 25}
!362 = !{ptr @.str.169, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/myrb.c", i32 1827, i32 3}
!364 = !{ptr @.str.170, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/myrb.c", i32 1832, i32 3}
!366 = !{ptr @.str.171, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/scsi/myrb.c", i32 1845, i32 3}
!368 = !{ptr @.str.172, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/myrb.c", i32 1850, i32 3}
!370 = !{ptr @.str.173, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/myrb.c", i32 1855, i32 3}
!372 = !{ptr @.str.174, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/myrb.c", i32 1860, i32 3}
!374 = !{ptr @.str.175, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/myrb.c", i32 1865, i32 3}
!376 = !{ptr @.str.176, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/myrb.c", i32 1894, i32 8}
!378 = !{ptr @dev_attr_raid_level, !377, !"dev_attr_raid_level", i1 false, i1 false}
!379 = !{ptr @.str.177, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/myrb.c", i32 1892, i32 27}
!381 = !{ptr @.str.178, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/myrb.c", i32 65, i32 22}
!383 = !{ptr @.str.179, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/myrb.c", i32 66, i32 22}
!385 = !{ptr @.str.180, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/myrb.c", i32 67, i32 22}
!387 = !{ptr @.str.181, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/myrb.c", i32 68, i32 22}
!389 = !{ptr @.str.182, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/myrb.c", i32 69, i32 22}
!391 = !{ptr @.str.183, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/myrb.c", i32 70, i32 20}
!393 = !{ptr @myrb_raidlevel_name_list, !394, !"myrb_raidlevel_name_list", i1 false, i1 false}
!394 = !{!"../drivers/scsi/myrb.c", i32 64, i32 3}
!395 = !{ptr @.str.184, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/myrb.c", i32 926, i32 3}
!397 = !{ptr @.str.185, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @myrb_get_hba_config._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @myrb_get_hba_config._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.187, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/myrb.c", i32 933, i32 3}
!402 = !{ptr @myrb_get_hba_config._entry.186, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @myrb_get_hba_config._entry_ptr.188, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.190, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/myrb.c", i32 943, i32 3}
!406 = !{ptr @.str.191, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @myrb_get_hba_config._entry.189, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @myrb_get_hba_config._entry_ptr.192, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.194, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/myrb.c", i32 950, i32 3}
!411 = !{ptr @myrb_get_hba_config._entry.193, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @myrb_get_hba_config._entry_ptr.195, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.197, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/myrb.c", i32 957, i32 3}
!415 = !{ptr @myrb_get_hba_config._entry.196, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @myrb_get_hba_config._entry_ptr.198, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.200, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/myrb.c", i32 964, i32 3}
!419 = !{ptr @myrb_get_hba_config._entry.199, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @myrb_get_hba_config._entry_ptr.201, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.202, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/myrb.c", i32 975, i32 27}
!423 = !{ptr @.str.203, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/myrb.c", i32 977, i32 27}
!425 = !{ptr @.str.204, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/myrb.c", i32 980, i32 26}
!427 = !{ptr @.str.205, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/myrb.c", i32 983, i32 26}
!429 = !{ptr @.str.206, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/myrb.c", i32 986, i32 26}
!431 = !{ptr @.str.207, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/scsi/myrb.c", i32 989, i32 26}
!433 = !{ptr @.str.208, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/myrb.c", i32 992, i32 26}
!435 = !{ptr @.str.209, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/scsi/myrb.c", i32 995, i32 26}
!437 = !{ptr @.str.210, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/myrb.c", i32 998, i32 26}
!439 = !{ptr @.str.211, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/scsi/myrb.c", i32 1001, i32 26}
!441 = !{ptr @.str.212, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/myrb.c", i32 1004, i32 26}
!443 = !{ptr @.str.214, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/myrb.c", i32 1007, i32 3}
!445 = !{ptr @myrb_get_hba_config._entry.213, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @myrb_get_hba_config._entry_ptr.215, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.216, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/myrb.c", i32 1051, i32 3}
!449 = !{ptr @.str.217, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/myrb.c", i32 1063, i32 32}
!451 = !{ptr @.str.219, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/myrb.c", i32 1064, i32 3}
!453 = !{ptr @myrb_get_hba_config._entry.218, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @myrb_get_hba_config._entry_ptr.220, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.221, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/scsi/myrb.c", i32 1140, i32 30}
!457 = !{ptr @.str.222, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/myrb.c", i32 1142, i32 30}
!459 = !{ptr @.str.224, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/scsi/myrb.c", i32 1150, i32 2}
!461 = !{ptr @myrb_get_hba_config._entry.223, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @myrb_get_hba_config._entry_ptr.225, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.227, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/scsi/myrb.c", i32 1152, i32 2}
!465 = !{ptr @myrb_get_hba_config._entry.226, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @myrb_get_hba_config._entry_ptr.228, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.230, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/myrb.c", i32 1156, i32 3}
!469 = !{ptr @myrb_get_hba_config._entry.229, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @myrb_get_hba_config._entry_ptr.231, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.233, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/scsi/myrb.c", i32 1160, i32 3}
!473 = !{ptr @myrb_get_hba_config._entry.232, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @myrb_get_hba_config._entry_ptr.234, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.236, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/scsi/myrb.c", i32 1164, i32 2}
!477 = !{ptr @myrb_get_hba_config._entry.235, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @myrb_get_hba_config._entry_ptr.237, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.239, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/scsi/myrb.c", i32 1167, i32 2}
!481 = !{ptr @myrb_get_hba_config._entry.238, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @myrb_get_hba_config._entry_ptr.240, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.242, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/scsi/myrb.c", i32 1171, i32 2}
!485 = !{ptr @myrb_get_hba_config._entry.241, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @myrb_get_hba_config._entry_ptr.243, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.244, !484, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @.str.245, !484, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @.str.247, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/scsi/myrb.c", i32 1177, i32 2}
!491 = !{ptr @myrb_get_hba_config._entry.246, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @myrb_get_hba_config._entry_ptr.248, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.250, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/scsi/myrb.c", i32 1182, i32 2}
!495 = !{ptr @myrb_get_hba_config._entry.249, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @myrb_get_hba_config._entry_ptr.251, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.252, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/scsi/myrb.c", i32 685, i32 4}
!499 = !{ptr @.str.253, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.254, !498, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @myrb_hba_enquiry._entry, !498, !"_entry", i1 false, i1 false}
!502 = !{ptr @myrb_hba_enquiry._entry_ptr, !498, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.256, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/scsi/myrb.c", i32 693, i32 4}
!505 = !{ptr @myrb_hba_enquiry._entry.255, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @myrb_hba_enquiry._entry_ptr.257, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.259, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/scsi/myrb.c", i32 698, i32 3}
!509 = !{ptr @myrb_hba_enquiry._entry.258, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @myrb_hba_enquiry._entry_ptr.260, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.261, !508, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @.str.262, !508, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @.str.264, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/scsi/myrb.c", i32 704, i32 3}
!515 = !{ptr @myrb_hba_enquiry._entry.263, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @myrb_hba_enquiry._entry_ptr.265, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.267, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/scsi/myrb.c", i32 714, i32 3}
!519 = !{ptr @myrb_hba_enquiry._entry.266, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @myrb_hba_enquiry._entry_ptr.268, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.270, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/myrb.c", i32 738, i32 4}
!523 = !{ptr @myrb_hba_enquiry._entry.269, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @myrb_hba_enquiry._entry_ptr.271, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.273, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/scsi/myrb.c", i32 748, i32 4}
!527 = !{ptr @myrb_hba_enquiry._entry.272, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @myrb_hba_enquiry._entry_ptr.274, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.276, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/scsi/myrb.c", i32 752, i32 4}
!531 = !{ptr @myrb_hba_enquiry._entry.275, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @myrb_hba_enquiry._entry_ptr.277, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.279, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/scsi/myrb.c", i32 756, i32 4}
!535 = !{ptr @myrb_hba_enquiry._entry.278, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @myrb_hba_enquiry._entry_ptr.280, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.282, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/scsi/myrb.c", i32 760, i32 4}
!539 = !{ptr @myrb_hba_enquiry._entry.281, !538, !"_entry", i1 false, i1 false}
!540 = !{ptr @myrb_hba_enquiry._entry_ptr.283, !538, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.285, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/scsi/myrb.c", i32 764, i32 4}
!543 = !{ptr @myrb_hba_enquiry._entry.284, !542, !"_entry", i1 false, i1 false}
!544 = !{ptr @myrb_hba_enquiry._entry_ptr.286, !542, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.287, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/scsi/myrb.c", i32 408, i32 4}
!547 = !{ptr @.str.288, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @myrb_get_ldev_info._entry, !546, !"_entry", i1 false, i1 false}
!549 = !{ptr @myrb_get_ldev_info._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.290, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/scsi/myrb.c", i32 417, i32 4}
!552 = !{ptr @myrb_get_ldev_info._entry.289, !551, !"_entry", i1 false, i1 false}
!553 = !{ptr @myrb_get_ldev_info._entry_ptr.291, !551, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.292, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/scsi/myrb.c", i32 421, i32 4}
!556 = !{ptr @.str.293, !555, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @.str.294, !555, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @.str.295, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/scsi/myrb.c", i32 590, i32 3}
!560 = !{ptr @.str.296, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @myrb_bgi_control._entry, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @myrb_bgi_control._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.297, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/scsi/myrb.c", i32 612, i32 4}
!565 = !{ptr @.str.298, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/myrb.c", i32 621, i32 4}
!567 = !{ptr @.str.299, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/scsi/myrb.c", i32 629, i32 4}
!569 = !{ptr @.str.300, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/scsi/myrb.c", i32 635, i32 4}
!571 = !{ptr @.str.301, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/scsi/myrb.c", i32 643, i32 4}
!573 = !{ptr @.str.302, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/scsi/myrb.c", i32 649, i32 4}
!575 = !{ptr @.str.303, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/scsi/myrb.c", i32 96, i32 32}
!577 = !{ptr @.str.304, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/myrb.c", i32 99, i32 3}
!579 = !{ptr @.str.305, !578, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @myrb_create_mempools._entry, !578, !"_entry", i1 false, i1 false}
!581 = !{ptr @myrb_create_mempools._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.306, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/scsi/myrb.c", i32 104, i32 34}
!584 = !{ptr @.str.308, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/scsi/myrb.c", i32 110, i32 3}
!586 = !{ptr @myrb_create_mempools._entry.307, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @myrb_create_mempools._entry_ptr.309, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.310, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/scsi/myrb.c", i32 116, i32 4}
!590 = !{ptr @.str.311, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/scsi/myrb.c", i32 117, i32 15}
!592 = !{ptr @.str.313, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/scsi/myrb.c", i32 123, i32 3}
!594 = !{ptr @myrb_create_mempools._entry.312, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @myrb_create_mempools._entry_ptr.314, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @myrb_create_mempools.__key, !597, !"__key", i1 false, i1 false}
!597 = !{!"../drivers/scsi/myrb.c", i32 131, i32 2}
!598 = !{ptr @.str.315, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @myrb_create_mempools.__key.316, !597, !"__key", i1 false, i1 false}
!600 = !{ptr @.str.317, !597, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @.str.318, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/myrb.c", i32 2389, i32 2}
!603 = !{ptr @.str.319, !602, !"<string literal>", i1 false, i1 false}
!604 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug297, !602, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!605 = !{ptr @.str.320, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/scsi/myrb.c", i32 2394, i32 3}
!607 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug298, !606, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!608 = !{ptr @.str.321, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/scsi/myrb.c", i32 2402, i32 3}
!610 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug299, !609, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!611 = !{ptr @.str.322, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/myrb.c", i32 2407, i32 3}
!613 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug300, !612, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!614 = !{ptr @.str.323, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/scsi/myrb.c", i32 2413, i32 3}
!616 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug301, !615, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!617 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug302, !618, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!618 = !{!"../drivers/scsi/myrb.c", i32 2419, i32 3}
!619 = !{ptr @.str.324, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/scsi/myrb.c", i32 2425, i32 3}
!621 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug303, !620, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!622 = !{ptr @.str.325, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/scsi/myrb.c", i32 2431, i32 3}
!624 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug304, !623, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!625 = !{ptr @.str.326, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/scsi/myrb.c", i32 2435, i32 3}
!627 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug305, !626, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!628 = !{ptr @.str.327, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/scsi/myrb.c", i32 2443, i32 4}
!630 = !{ptr @myrb_monitor.__UNIQUE_ID_ddebug306, !629, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!631 = !{ptr @.str.328, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/scsi/myrb.c", i32 307, i32 3}
!633 = !{ptr @.str.329, !632, !"<string literal>", i1 false, i1 false}
!634 = !{ptr @myrb_get_event._entry, !632, !"_entry", i1 false, i1 false}
!635 = !{ptr @myrb_get_event._entry_ptr, !632, !"_entry_ptr", i1 false, i1 false}
!636 = !{ptr @.str.331, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/scsi/myrb.c", i32 320, i32 4}
!638 = !{ptr @myrb_get_event._entry.330, !637, !"_entry", i1 false, i1 false}
!639 = !{ptr @myrb_get_event._entry_ptr.332, !637, !"_entry_ptr", i1 false, i1 false}
!640 = !{ptr @.str.334, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/scsi/myrb.c", i32 325, i32 4}
!642 = !{ptr @myrb_get_event._entry.333, !641, !"_entry", i1 false, i1 false}
!643 = !{ptr @myrb_get_event._entry_ptr.335, !641, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @.str.336, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/scsi/myrb.c", i32 262, i32 2}
!646 = !{ptr @.str.337, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/scsi/myrb.c", i32 263, i32 2}
!648 = !{ptr @.str.338, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/scsi/myrb.c", i32 264, i32 2}
!650 = !{ptr @.str.339, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/scsi/myrb.c", i32 265, i32 2}
!652 = !{ptr @.str.340, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/scsi/myrb.c", i32 266, i32 2}
!654 = !{ptr @.str.341, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/scsi/myrb.c", i32 267, i32 2}
!656 = !{ptr @.str.342, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/scsi/myrb.c", i32 268, i32 2}
!658 = !{ptr @.str.343, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/scsi/myrb.c", i32 269, i32 2}
!660 = !{ptr @.str.344, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/scsi/myrb.c", i32 270, i32 2}
!662 = !{ptr @.str.345, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/scsi/myrb.c", i32 271, i32 2}
!664 = !{ptr @.str.346, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/scsi/myrb.c", i32 272, i32 2}
!666 = !{ptr @.str.347, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/scsi/myrb.c", i32 273, i32 2}
!668 = !{ptr @.str.348, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/scsi/myrb.c", i32 274, i32 2}
!670 = !{ptr @myrb_event_msg, !671, !"myrb_event_msg", i1 false, i1 false}
!671 = !{!"../drivers/scsi/myrb.c", i32 261, i32 14}
!672 = !{ptr @.str.349, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/scsi/myrb.c", i32 372, i32 4}
!674 = distinct !{null, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/scsi/myrb.c", i32 492, i32 4}
!676 = !{ptr @.str.351, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/scsi/myrb.c", i32 498, i32 4}
!678 = !{ptr @.str.352, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/scsi/myrb.c", i32 502, i32 4}
!680 = !{ptr @.str.353, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/scsi/myrb.c", i32 506, i32 4}
!682 = !{ptr @.str.354, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/scsi/myrb.c", i32 510, i32 4}
!684 = !{ptr @.str.355, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/scsi/myrb.c", i32 514, i32 4}
!686 = !{ptr @.str.356, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/scsi/myrb.c", i32 562, i32 4}
!688 = !{ptr @.str.357, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/scsi/myrb.c", i32 3495, i32 2}
!690 = !{ptr @.str.358, !689, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @myrb_remove._entry, !689, !"_entry", i1 false, i1 false}
!692 = !{ptr @myrb_remove._entry_ptr, !689, !"_entry_ptr", i1 false, i1 false}
!693 = !{ptr @myrb_raid_functions, !694, !"myrb_raid_functions", i1 false, i1 false}
!694 = !{!"../drivers/scsi/myrb.c", i32 2294, i32 38}
!695 = !{i32 1, !"wchar_size", i32 2}
!696 = !{i32 1, !"min_enum_size", i32 4}
!697 = !{i32 8, !"branch-target-enforcement", i32 0}
!698 = !{i32 8, !"sign-return-address", i32 0}
!699 = !{i32 8, !"sign-return-address-all", i32 0}
!700 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!701 = !{i32 7, !"uwtable", i32 1}
!702 = !{i32 7, !"frame-pointer", i32 2}
!703 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!704 = !{!"auto-init"}
!705 = !{i8 0, i8 2}
!706 = !{i64 2155334318}
!707 = !{i64 4718110}
!708 = !{i64 2155330234}
!709 = !{i64 4718505}
!710 = !{i64 2155332071}
!711 = !{i64 2155337824}
!712 = !{i64 2155338090}
!713 = !{i64 2155338346}
!714 = !{i64 2155338574}
!715 = !{i64 2155330697}
!716 = !{i64 2155333849}
!717 = !{i64 2155332950}
!718 = !{i64 932965}
!719 = !{ptr @DAC960_LA_mbox_init, ptr @DAC960_PG_mbox_init}
!720 = !{i64 2155331645}
!721 = !{i64 2155335251}
!722 = !{i64 4718307}
!723 = !{i64 2155335708}
!724 = !{i64 2155336165}
!725 = !{i64 2155336624}
!726 = !{i64 2155329771}
!727 = !{i64 2155333442}
!728 = !{i64 4717887}
!729 = !{i64 2155337397}
!730 = !{i64 2155332475}
!731 = !{i64 2155334702}
!732 = !{i64 2155334845}
!733 = !{i64 2155331160}
!734 = !{i64 2149048054, i64 2149048059, i64 2149048072, i64 2149048116, i64 2149048150, i64 2149048171}
!735 = !{i64 2155360775}
!736 = !{i64 2155355108}
!737 = !{i64 4718725}
!738 = !{i64 2155357865}
!739 = !{i64 2155364409}
!740 = !{i64 2155364675}
!741 = !{i64 2155364931}
!742 = !{i64 2155365156}
!743 = !{i64 2155355695}
!744 = !{i64 2155360181}
!745 = !{i64 2155358868}
!746 = !{i64 2155357165}
!747 = !{i64 2155361836}
!748 = !{i64 2155362293}
!749 = !{i64 2155362750}
!750 = !{i64 2155363209}
!751 = !{i64 2155354521}
!752 = !{i64 2155359772}
!753 = !{i64 2155363982}
!754 = !{i64 2155358269}
!755 = !{i64 2155361287}
!756 = !{i64 2155361430}
!757 = !{i64 2155356282}
!758 = !{i64 2155380631}
!759 = !{i64 2155377503}
!760 = !{i64 2155378877}
!761 = !{i64 2155384098}
!762 = !{i64 2155384364}
!763 = !{i64 2155384620}
!764 = !{i64 2155384845}
!765 = !{i64 2155377966}
!766 = !{i64 2155380172}
!767 = !{i64 2155379766}
!768 = !{i64 2155382976}
!769 = !{i64 2155383671}
!770 = !{i64 2155379281}
!771 = !{i64 2155378451}
!772 = !{i64 2155381100}
!773 = !{i64 2155381557}
!774 = !{i64 2155382014}
!775 = !{i64 2155382473}
!776 = !{i64 2155377040}
!777 = !{!"branch_weights", i32 2000, i32 1}
!778 = !{i64 2148281101, i64 2148281381, i64 2148281715, i64 2148282049}
!779 = !{!"branch_weights", i32 1, i32 2000}
!780 = !{i64 2154528658, i64 2154529148, i64 2154528695, i64 2154528751, i64 2154528785, i64 2154528809, i64 2154528850, i64 2154528871, i64 2154528899, i64 2154528933}
!781 = !{i64 2154532970, i64 2154533460, i64 2154533007, i64 2154533063, i64 2154533097, i64 2154533121, i64 2154533162, i64 2154533183, i64 2154533211, i64 2154533245}
!782 = !{i64 2154541363, i64 2154541853, i64 2154541400, i64 2154541456, i64 2154541490, i64 2154541514, i64 2154541555, i64 2154541576, i64 2154541604, i64 2154541638}
