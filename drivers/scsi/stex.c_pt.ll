; ModuleID = '/llk/IR_all_yes/drivers/scsi/stex.c_pt.bc'
source_filename = "../drivers/scsi/stex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st_card_info = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.st_hba = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [20 x i8], ptr, %struct.work_struct, %struct.wait_queue_head, i32, i32, i32, i32, i32, i16, i16, i16, i8, i32 }
%struct.st_msg_header = type { i64, i8, i8, i16, i32 }
%struct.handshake_frame = type { i64, i16, i16, i16, i16, i64, i8, [7 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.st_drvver = type { i32, i32, i32, i32, [2 x i32], i8, i8, [2 x i8], [3 x i32] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.req_msg = type { i16, i8, i8, i8, i8, i8, i8, [16 x i8], [0 x i32] }
%struct.st_ccb = type { ptr, ptr, ptr, i32, i32, i32, i8, i8, [2 x i8] }
%struct.status_msg = type { i16, i8, i8, i8, i8, i8, i8, [128 x i8] }
%struct.st_frame = type { [6 x i32], i32, %struct.ver_info, %struct.ver_info, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32 }
%struct.ver_info = type { i32, i32, i32, i32, [2 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.st_sgitem = type { i8, [3 x i8], i32, i64 }
%struct.st_ss_sgitem = type { i32, i32, i32 }

@__param_str_msi = internal constant [9 x i8] c"stex.msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype287 = internal constant [22 x i8] c"stex.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi288 = internal constant [62 x i8] c"stex.parm=msi:Enable Message Signaled Interrupts(0=off, 1=on)\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [19 x i8] c"stex.author=Ed Lin\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"stex.description=Promise Technology SuperTrak EX Controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [28 x i8] c"stex.file=drivers/scsi/stex\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [17 x i8] c"stex.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [26 x i8] c"stex.version=6.02.0000.01\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stex\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"6.02.0000.01\00", [19 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@stex_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @stex_pci_tbl, ptr @stex_probe, ptr @stex_remove, ptr @stex_suspend, ptr @stex_resume, ptr @stex_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_stex__296_2024_stex_init6 = internal global ptr @stex_init, section ".initcall6.init", align 4
@__exitcall_stex_exit = internal global ptr @stex_exit, section ".exitcall.exit", align 4
@stex_pci_tbl = internal global { [16 x %struct.pci_device_id], [128 x i8] } { [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 4186, i32 33616, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 50000, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 17154, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 58192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 29264, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 34384, i32 4186, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4186, i32 13152, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4186, i32 34384, i32 4147, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 34656, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4186, i32 34928, i32 4186, i32 34928, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4186, i32 34928, i32 4186, i32 17152, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4186, i32 34929, i32 4186, i32 17169, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4186, i32 34929, i32 4186, i32 17170, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4186, i32 34929, i32 4186, i32 17185, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4186, i32 34929, i32 4186, i32 17186, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@S6flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@stex_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @stex_halt, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @stex_queuecommand, ptr null, ptr null, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @stex_abort, ptr null, ptr null, ptr null, ptr @stex_reset, ptr null, ptr @stex_slave_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stex_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 0, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@stex_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013stex(%s): scsi_host_alloc failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stex_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/scsi/stex.c\00", [44 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr = internal global ptr @stex_probe._entry, section ".printk_index", align 4
@stex_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013stex(%s): request regions failed\0A\00", [60 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.8 = internal global ptr @stex_probe._entry.6, section ".printk_index", align 4
@stex_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013stex(%s): memory map failed\0A\00", [33 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.11 = internal global ptr @stex_probe._entry.9, section ".printk_index", align 4
@stex_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013stex(%s): set dma mask failed\0A\00", [63 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.14 = internal global ptr @stex_probe._entry.12, section ".printk_index", align 4
@stex_card_info = internal constant { [6 x %struct.st_card_info], [32 x i8] } { [6 x %struct.st_card_info] [%struct.st_card_info { ptr @stex_alloc_req, ptr @stex_map_sg, ptr @stex_send_cmd, i32 17, i32 8, i32 0, i16 32, i16 1048, i16 32 }, %struct.st_card_info { ptr @stex_alloc_req, ptr @stex_map_sg, ptr @stex_send_cmd, i32 129, i32 1, i32 0, i16 32, i16 1048, i16 32 }, %struct.st_card_info { ptr @stex_alloc_req, ptr @stex_map_sg, ptr @stex_send_cmd, i32 2, i32 256, i32 0, i16 256, i16 1048, i16 256 }, %struct.st_card_info { ptr @stex_alloc_req, ptr @stex_map_sg, ptr @stex_send_cmd, i32 129, i32 1, i32 0, i16 32, i16 1048, i16 32 }, %struct.st_card_info { ptr @stex_ss_alloc_req, ptr @stex_ss_map_sg, ptr @stex_ss_send_cmd, i32 129, i32 256, i32 3, i16 801, i16 512, i16 801 }, %struct.st_card_info { ptr @stex_ss_alloc_req, ptr @stex_ss_map_sg, ptr @stex_ss_send_cmd, i32 129, i32 256, i32 0, i16 801, i16 512, i16 801 }], [32 x i8] zeroinitializer }, align 32
@stex_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014stex(%s): allocating min buffer for controller\0A\00", [46 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.17 = internal global ptr @stex_probe._entry.15, section ".printk_index", align 4
@stex_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013stex(%s): dma mem alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.20 = internal global ptr @stex_probe._entry.18, section ".printk_index", align 4
@stex_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013stex(%s): ccb alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.23 = internal global ptr @stex_probe._entry.21, section ".printk_index", align 4
@stex_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hba->reset_waitq\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stex_wq_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@stex_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013stex(%s): create workqueue failed\0A\00", [59 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.29 = internal global ptr @stex_probe._entry.27, section ".printk_index", align 4
@stex_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&hba->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@stex_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013stex(%s): request irq failed\0A\00", [32 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.34 = internal global ptr @stex_probe._entry.32, section ".printk_index", align 4
@stex_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013stex(%s): scsi_add_host failed\0A\00", [62 x i8] zeroinitializer }, align 32
@stex_probe._entry_ptr.37 = internal global ptr @stex_probe._entry.35, section ".printk_index", align 4
@stex_queuecommand_lck.ms10_caching_page = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\00\12\00\00\00\00\00\00\08\0A\04\00", [20 x i8] zeroinitializer }, align 32
@console_inq_page = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\03\00\03\03\FA\00\000Promise RAID Console    1.00    SX/RSAF-TE1.00  \0C       ", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aborting command\0A\00", [46 x i8] zeroinitializer }, align 32
@stex_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014stex(%s): lost interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stex_abort\00", [21 x i8] zeroinitializer }, align 32
@stex_abort._entry_ptr = internal global ptr @stex_abort._entry, section ".printk_index", align 4
@stex_ss_mu_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014stex(%s): invalid tag\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stex_ss_mu_intr\00", [16 x i8] zeroinitializer }, align 32
@stex_ss_mu_intr._entry_ptr = internal global ptr @stex_ss_mu_intr._entry, section ".printk_index", align 4
@stex_ss_mu_intr._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014stex(%s): lagging req\0A\00", [39 x i8] zeroinitializer }, align 32
@stex_ss_mu_intr._entry_ptr.46 = internal global ptr @stex_ss_mu_intr._entry.44, section ".printk_index", align 4
@stex_ss_mu_intr._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.5, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014stex(%s): bad status size\0A\00", [35 x i8] zeroinitializer }, align 32
@stex_ss_mu_intr._entry_ptr.49 = internal global ptr @stex_ss_mu_intr._entry.47, section ".printk_index", align 4
@stex_mu_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014stex(%s): invalid status head\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stex_mu_intr\00", [19 x i8] zeroinitializer }, align 32
@stex_mu_intr._entry_ptr = internal global ptr @stex_mu_intr._entry, section ".printk_index", align 4
@stex_mu_intr._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.51, ptr @.str.5, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stex_mu_intr._entry_ptr.53 = internal global ptr @stex_mu_intr._entry.52, section ".printk_index", align 4
@stex_mu_intr._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.51, ptr @.str.5, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stex_mu_intr._entry_ptr.55 = internal global ptr @stex_mu_intr._entry.54, section ".printk_index", align 4
@stex_mu_intr._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.51, ptr @.str.5, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stex_mu_intr._entry_ptr.57 = internal global ptr @stex_mu_intr._entry.56, section ".printk_index", align 4
@stex_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 1443, ptr @.str.38, ptr @.str.60 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resetting host\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stex_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stex_reset._entry_ptr = internal global ptr @stex_reset._entry, section ".printk_index", align 4
@stex_do_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016stex(%s): request reset during init\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stex_do_reset\00", [18 x i8] zeroinitializer }, align 32
@stex_do_reset._entry_ptr = internal global ptr @stex_do_reset._entry, section ".printk_index", align 4
@stex_do_reset._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014stex(%s): resetting: handshake failed\0A\00", [55 x i8] zeroinitializer }, align 32
@stex_do_reset._entry_ptr.65 = internal global ptr @stex_do_reset._entry.63, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stex_yos_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014stex(%s): reset timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stex_yos_reset\00", [17 x i8] zeroinitializer }, align 32
@stex_yos_reset._entry_ptr = internal global ptr @stex_yos_reset._entry, section ".printk_index", align 4
@stex_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 1623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013stex(%s): error %d setting up MSI\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stex_request_irq\00", [47 x i8] zeroinitializer }, align 32
@stex_request_irq._entry_ptr = internal global ptr @stex_request_irq._entry, section ".printk_index", align 4
@stex_ss_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013stex(%s): firmware not operational\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stex_ss_handshake\00", [46 x i8] zeroinitializer }, align 32
@stex_ss_handshake._entry_ptr = internal global ptr @stex_ss_handshake._entry, section ".printk_index", align 4
@stex_ss_handshake._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stex_ss_handshake._entry_ptr.73 = internal global ptr @stex_ss_handshake._entry.72, section ".printk_index", align 4
@stex_ss_handshake._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.5, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013stex(%s): no signature after handshake frame\0A\00", [48 x i8] zeroinitializer }, align 32
@stex_ss_handshake._entry_ptr.76 = internal global ptr @stex_ss_handshake._entry.74, section ".printk_index", align 4
@stex_ss_handshake._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.5, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stex_ss_handshake._entry_ptr.78 = internal global ptr @stex_ss_handshake._entry.77, section ".printk_index", align 4
@stex_common_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013stex(%s): no handshake signature\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stex_common_handshake\00", [42 x i8] zeroinitializer }, align 32
@stex_common_handshake._entry_ptr = internal global ptr @stex_common_handshake._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stex_common_handshake._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.80, ptr @.str.5, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stex_common_handshake._entry_ptr.82 = internal global ptr @stex_common_handshake._entry.81, section ".printk_index", align 4
@stex_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016stex: Promise SuperTrak EX Driver version: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stex_init\00", [22 x i8] zeroinitializer }, align 32
@stex_init._entry_ptr = internal global ptr @stex_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 16929, i64 16930, i64 16931, i64 16932, i64 16933, i64 16934, i64 16935, i64 16993, i64 16994, i64 16995, i64 16996, i64 16997]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 18, i64 90, i64 160, i64 227]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 6, i64 8, i64 63]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@___asan_gen_.104 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 367, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 386, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"stex_pci_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 2000, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"stex_pci_tbl\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1487, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"S6flag\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"stex_notifier\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 363, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"driver_template\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1474, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1669, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1680, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1687, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1697, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"stex_card_info\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1533, i32 28 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1739, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1750, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1759, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1791, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1794, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1795, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1797, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1802, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1806, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1819, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"ms10_caching_page\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 617, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"console_inq_page\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 371, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1253, i32 14 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1253, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1289, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 935, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 945, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 960, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 806, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 830, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 840, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 848, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1442, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1395, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1431, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1355, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1621, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1121, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1133, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1186, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1199, i32 5 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1035, i32 5 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1085, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private constant [23 x i8] c"../drivers/scsi/stex.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 2012, i32 2 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_msi288, ptr @__UNIQUE_ID_msitype287, ptr @__UNIQUE_ID_version293, ptr @__exitcall_stex_exit, ptr @__initcall__kmod_stex__296_2024_stex_init6, ptr @__modver_attr, ptr @__param_msi, ptr @stex_abort._entry, ptr @stex_abort._entry_ptr, ptr @stex_common_handshake._entry, ptr @stex_common_handshake._entry.81, ptr @stex_common_handshake._entry_ptr, ptr @stex_common_handshake._entry_ptr.82, ptr @stex_do_reset._entry, ptr @stex_do_reset._entry.63, ptr @stex_do_reset._entry_ptr, ptr @stex_do_reset._entry_ptr.65, ptr @stex_exit, ptr @stex_init._entry, ptr @stex_init._entry_ptr, ptr @stex_mu_intr._entry, ptr @stex_mu_intr._entry.52, ptr @stex_mu_intr._entry.54, ptr @stex_mu_intr._entry.56, ptr @stex_mu_intr._entry_ptr, ptr @stex_mu_intr._entry_ptr.53, ptr @stex_mu_intr._entry_ptr.55, ptr @stex_mu_intr._entry_ptr.57, ptr @stex_probe._entry, ptr @stex_probe._entry.12, ptr @stex_probe._entry.15, ptr @stex_probe._entry.18, ptr @stex_probe._entry.21, ptr @stex_probe._entry.27, ptr @stex_probe._entry.32, ptr @stex_probe._entry.35, ptr @stex_probe._entry.6, ptr @stex_probe._entry.9, ptr @stex_probe._entry_ptr, ptr @stex_probe._entry_ptr.11, ptr @stex_probe._entry_ptr.14, ptr @stex_probe._entry_ptr.17, ptr @stex_probe._entry_ptr.20, ptr @stex_probe._entry_ptr.23, ptr @stex_probe._entry_ptr.29, ptr @stex_probe._entry_ptr.34, ptr @stex_probe._entry_ptr.37, ptr @stex_probe._entry_ptr.8, ptr @stex_request_irq._entry, ptr @stex_request_irq._entry_ptr, ptr @stex_reset._entry, ptr @stex_reset._entry_ptr, ptr @stex_ss_handshake._entry, ptr @stex_ss_handshake._entry.72, ptr @stex_ss_handshake._entry.74, ptr @stex_ss_handshake._entry.77, ptr @stex_ss_handshake._entry_ptr, ptr @stex_ss_handshake._entry_ptr.73, ptr @stex_ss_handshake._entry_ptr.76, ptr @stex_ss_handshake._entry_ptr.78, ptr @stex_ss_mu_intr._entry, ptr @stex_ss_mu_intr._entry.44, ptr @stex_ss_mu_intr._entry.47, ptr @stex_ss_mu_intr._entry_ptr, ptr @stex_ss_mu_intr._entry_ptr.46, ptr @stex_ss_mu_intr._entry_ptr.49, ptr @stex_yos_reset._entry, ptr @stex_yos_reset._entry_ptr, ptr @msi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stex_pci_driver, ptr @stex_pci_tbl, ptr @S6flag, ptr @stex_notifier, ptr @driver_template, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @stex_card_info, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @stex_probe.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @stex_probe.__key.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @stex_queuecommand_lck.ms10_caching_page, ptr @console_inq_page, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.75, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_pci_tbl to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S6flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_card_info to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_queuecommand_lck.ms10_caching_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_inq_page to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_mu_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_mu_intr._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_mu_intr._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_mu_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_mu_intr._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_mu_intr._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_mu_intr._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_do_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_do_reset._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_yos_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_handshake._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_handshake._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_ss_handshake._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_common_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_common_handshake._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stex_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stex_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @stex_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2) #15
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @stex_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #12
  store i1 false, ptr @S6flag, align 4
  %call1 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @stex_notifier) #12
  %call2 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @driver_template, i32 noundef 224) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end.pci_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #15
  br label %out_disable

if.end7:                                          ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 53
  %4 = call ptr @memset(ptr %hostdata, i32 0, i32 224)
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end7
  %init_name.i.i397 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i397 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i397, align 8
  %tobool.not.i.i398 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i398, label %if.end.i.i400, label %do.end12.pci_name.exit402_crit_edge

do.end12.pci_name.exit402_crit_edge:              ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit402

if.end.i.i400:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i399 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i399 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i399, align 4
  br label %pci_name.exit402

pci_name.exit402:                                 ; preds = %if.end.i.i400, %do.end12.pci_name.exit402_crit_edge
  %retval.0.i.i401 = phi ptr [ %8, %if.end.i.i400 ], [ %6, %do.end12.pci_name.exit402_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i401) #15
  br label %out_scsi_host_put

if.end16:                                         ; preds = %if.end7
  %call17 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #12
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %hostdata, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end16
  %init_name.i.i403 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i403 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i403, align 8
  %tobool.not.i.i404 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i404, label %if.end.i.i406, label %do.end23.pci_name.exit408_crit_edge

do.end23.pci_name.exit408_crit_edge:              ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit408

if.end.i.i406:                                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i405 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i405 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i405, align 4
  br label %pci_name.exit408

pci_name.exit408:                                 ; preds = %if.end.i.i406, %do.end23.pci_name.exit408_crit_edge
  %retval.0.i.i407 = phi ptr [ %13, %if.end.i.i406 ], [ %11, %do.end23.pci_name.exit408_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i407) #15
  br label %out_release_regions

if.end27:                                         ; preds = %if.end16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end27.if.end42_crit_edge, label %if.then30

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then30:                                        ; preds = %if.end27
  %call.i409 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i409)
  %cmp.i410 = icmp eq i32 %call.i409, 0
  br i1 %cmp.i410, label %if.then30.if.end42_crit_edge, label %do.end38

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.end38:                                         ; preds = %if.then30
  %init_name.i.i414 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i414 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i414, align 8
  %tobool.not.i.i415 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i415, label %if.end.i.i417, label %do.end38.pci_name.exit419_crit_edge

do.end38.pci_name.exit419_crit_edge:              ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit419

if.end.i.i417:                                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %pci_name.exit419

pci_name.exit419:                                 ; preds = %if.end.i.i417, %do.end38.pci_name.exit419_crit_edge
  %retval.0.i.i418 = phi ptr [ %17, %if.end.i.i417 ], [ %15, %do.end38.pci_name.exit419_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i418) #15
  br label %out_iounmap

if.end42:                                         ; preds = %if.then30.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  %.sink482 = phi i64 [ -1, %if.end27.if.end42_crit_edge ], [ 4294967295, %if.then30.if.end42_crit_edge ]
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink482) #12
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  %cardtype = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %cardtype to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cardtype, align 4
  %arrayidx = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3
  %21 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %subdevice, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %sw.default [
    i32 16929, label %if.end42.sw.epilog_crit_edge
    i32 16930, label %if.end42.sw.epilog_crit_edge483
    i32 16931, label %if.end42.sw.epilog_crit_edge484
    i32 16932, label %if.end42.sw.epilog_crit_edge485
    i32 16933, label %if.end42.sw.epilog_crit_edge486
    i32 16934, label %if.end42.sw.epilog_crit_edge487
    i32 16935, label %if.end42.sw.epilog_crit_edge488
    i32 16993, label %if.end42.sw.epilog_crit_edge489
    i32 16994, label %if.end42.sw.epilog_crit_edge490
    i32 16995, label %if.end42.sw.epilog_crit_edge491
    i32 16996, label %if.end42.sw.epilog_crit_edge492
    i32 16997, label %if.end42.sw.epilog_crit_edge493
  ]

if.end42.sw.epilog_crit_edge493:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge492:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge491:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge490:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge489:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge488:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge487:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge486:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge485:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge484:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge483:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end42
  %24 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %switch = icmp eq i32 %24, 4
  br i1 %switch, label %if.then48, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then48:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %supports_pm = getelementptr inbounds %struct.st_hba, ptr %hostdata, i32 0, i32 30
  %25 = ptrtoint ptr %supports_pm to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %supports_pm, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then48, %sw.default.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge483, %if.end42.sw.epilog_crit_edge484, %if.end42.sw.epilog_crit_edge485, %if.end42.sw.epilog_crit_edge486, %if.end42.sw.epilog_crit_edge487, %if.end42.sw.epilog_crit_edge488, %if.end42.sw.epilog_crit_edge489, %if.end42.sw.epilog_crit_edge490, %if.end42.sw.epilog_crit_edge491, %if.end42.sw.epilog_crit_edge492, %if.end42.sw.epilog_crit_edge493
  %rq_count = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 6
  %26 = ptrtoint ptr %rq_count to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rq_count, align 4
  %conv = zext i16 %27 to i32
  %add = add nuw nsw i32 %conv, 1
  %rq_size = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 7
  %28 = ptrtoint ptr %rq_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rq_size, align 2
  %conv50 = zext i16 %29 to i32
  %mul = mul nuw i32 %add, %conv50
  %30 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cardtype, align 4
  %32 = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %switch392 = icmp eq i32 %32, 4
  br i1 %switch392, label %if.then58, label %sw.epilog.if.end63_crit_edge

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %sts_count = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 8
  %33 = ptrtoint ptr %sts_count to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sts_count, align 4
  %conv59 = zext i16 %34 to i32
  %add60 = shl nuw nsw i32 %conv59, 2
  %mul61 = add nuw i32 %mul, 4
  %add62 = add i32 %mul61, %add60
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %sw.epilog.if.end63_crit_edge
  %sts_offset.0 = phi i32 [ %add62, %if.then58 ], [ %mul, %sw.epilog.if.end63_crit_edge ]
  %sts_count64 = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 8
  %35 = ptrtoint ptr %sts_count64 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sts_count64, align 4
  %conv65 = zext i16 %36 to i32
  %37 = mul nuw nsw i32 %conv65, 136
  %mul67 = add i32 %sts_offset.0, 136
  %add68 = add i32 %mul67, %37
  %add69 = add i32 %add68, 116
  %dma_size = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add69, ptr %dma_size, align 4
  %39 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %31, label %if.end63.if.end83_crit_edge [
    i32 3, label %if.end63.if.then79_crit_edge
    i32 1, label %land.lhs.true
  ]

if.end63.if.then79_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.end63.if.end83_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end63
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %40 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %subsystem_device, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool78.not = icmp eq i16 %42, 0
  br i1 %tobool78.not, label %land.lhs.true.if.end83_crit_edge, label %land.lhs.true.if.then79_crit_edge

land.lhs.true.if.then79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then79:                                        ; preds = %land.lhs.true.if.then79_crit_edge, %if.end63.if.then79_crit_edge
  %extra_offset = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %extra_offset to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add69, ptr %extra_offset, align 4
  %add82 = add i32 %add68, 2097268
  %44 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add82, ptr %dma_size, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %land.lhs.true.if.end83_crit_edge, %if.end63.if.end83_crit_edge
  %45 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_size, align 4
  %dma_handle = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 1
  %call.i420 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %46, ptr noundef %dma_handle, i32 noundef 3264, i32 noundef 0) #12
  %dma_mem = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %dma_mem to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i420, ptr %dma_mem, align 4
  %tobool88.not = icmp eq ptr %call.i420, null
  br i1 %tobool88.not, label %if.then89, label %if.end83.if.end7.i.i_crit_edge

if.end83.if.end7.i.i_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then89:                                        ; preds = %if.end83
  %48 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cardtype, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %49, label %if.then89.if.then120_crit_edge [
    i32 3, label %if.then89.do.end105_crit_edge
    i32 1, label %land.lhs.true97
  ]

if.then89.do.end105_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end105

if.then89.if.then120_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then120

land.lhs.true97:                                  ; preds = %if.then89
  %subsystem_device98 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %51 = ptrtoint ptr %subsystem_device98 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %subsystem_device98, align 2
  %53 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool101.not = icmp eq i16 %53, 0
  br i1 %tobool101.not, label %if.end117thread-pre-split, label %land.lhs.true97.do.end105_crit_edge

land.lhs.true97.do.end105_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end105

do.end105:                                        ; preds = %land.lhs.true97.do.end105_crit_edge, %if.then89.do.end105_crit_edge
  %init_name.i.i421 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %54 = ptrtoint ptr %init_name.i.i421 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i421, align 8
  %tobool.not.i.i422 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i422, label %if.end.i.i424, label %do.end105.pci_name.exit426_crit_edge

do.end105.pci_name.exit426_crit_edge:             ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit426

if.end.i.i424:                                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  br label %pci_name.exit426

pci_name.exit426:                                 ; preds = %if.end.i.i424, %do.end105.pci_name.exit426_crit_edge
  %retval.0.i.i425 = phi ptr [ %57, %if.end.i.i424 ], [ %55, %do.end105.pci_name.exit426_crit_edge ]
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i425) #15
  %extra_offset109 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %extra_offset109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %extra_offset109, align 4
  %add110 = add i32 %59, 524288
  %60 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add110, ptr %dma_size, align 4
  %call.i427 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add110, ptr noundef %dma_handle, i32 noundef 3264, i32 noundef 0) #12
  %61 = ptrtoint ptr %dma_mem to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i427, ptr %dma_mem, align 4
  br label %if.end117

if.end117thread-pre-split:                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load ptr, ptr %dma_mem, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end117thread-pre-split, %pci_name.exit426
  %63 = phi ptr [ %.pr, %if.end117thread-pre-split ], [ %call.i427, %pci_name.exit426 ]
  %tobool119.not = icmp eq ptr %63, null
  br i1 %tobool119.not, label %if.end117.if.then120_crit_edge, label %if.end117.if.end7.i.i_crit_edge

if.end117.if.end7.i.i_crit_edge:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.end117.if.then120_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then120

if.then120:                                       ; preds = %if.end117.if.then120_crit_edge, %if.then89.if.then120_crit_edge
  %init_name.i.i428 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i428 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i428, align 8
  %tobool.not.i.i429 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i429, label %if.end.i.i431, label %if.then120.pci_name.exit433_crit_edge

if.then120.pci_name.exit433_crit_edge:            ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit433

if.end.i.i431:                                    ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  br label %pci_name.exit433

pci_name.exit433:                                 ; preds = %if.end.i.i431, %if.then120.pci_name.exit433_crit_edge
  %retval.0.i.i432 = phi ptr [ %67, %if.end.i.i431 ], [ %65, %if.then120.pci_name.exit433_crit_edge ]
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i432) #15
  br label %out_iounmap

if.end7.i.i:                                      ; preds = %if.end117.if.end7.i.i_crit_edge, %if.end83.if.end7.i.i_crit_edge
  %68 = mul nuw nsw i32 %conv, 28
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %68, i32 noundef 3520) #16
  %ccb = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %69 = ptrtoint ptr %ccb to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call8.i.i, ptr %ccb, align 4
  %tobool133.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool133.not, label %if.then134, label %if.end141

if.then134:                                       ; preds = %if.end7.i.i
  %init_name.i.i436 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %70 = ptrtoint ptr %init_name.i.i436 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i.i436, align 8
  %tobool.not.i.i437 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i437, label %if.end.i.i439, label %if.then134.pci_name.exit441_crit_edge

if.then134.pci_name.exit441_crit_edge:            ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit441

if.end.i.i439:                                    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  br label %pci_name.exit441

pci_name.exit441:                                 ; preds = %if.end.i.i439, %if.then134.pci_name.exit441_crit_edge
  %retval.0.i.i440 = phi ptr [ %73, %if.end.i.i439 ], [ %71, %if.then134.pci_name.exit441_crit_edge ]
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i440) #15
  br label %out_pci_free

if.end141:                                        ; preds = %if.end7.i.i
  %74 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cardtype, align 4
  %76 = and i32 %75, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %switch394 = icmp eq i32 %76, 4
  br i1 %switch394, label %if.then149, label %if.end141.if.end151_crit_edge

if.end141.if.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then149:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_mem, align 4
  %add.ptr = getelementptr i8, ptr %78, i32 %mul
  %scratch = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 4
  %79 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr, ptr %scratch, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end141.if.end151_crit_edge
  %80 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_mem, align 4
  %add.ptr153 = getelementptr i8, ptr %81, i32 %sts_offset.0
  %status_buffer = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %82 = ptrtoint ptr %status_buffer to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr153, ptr %status_buffer, align 4
  %add.ptr155 = getelementptr i8, ptr %81, i32 %add68
  %copy_buffer = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %83 = ptrtoint ptr %copy_buffer to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr155, ptr %copy_buffer, align 4
  %rq_count157 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %84 = ptrtoint ptr %rq_count157 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %27, ptr %rq_count157, align 4
  %rq_size159 = getelementptr inbounds %struct.st_hba, ptr %hostdata, i32 0, i32 28
  %85 = ptrtoint ptr %rq_size159 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %29, ptr %rq_size159, align 2
  %sts_count161 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 2
  %86 = ptrtoint ptr %sts_count161 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %36, ptr %sts_count161, align 4
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx, align 4
  %alloc_rq162 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3
  %89 = ptrtoint ptr %alloc_rq162 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %alloc_rq162, align 4
  %map_sg = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 1
  %90 = ptrtoint ptr %map_sg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map_sg, align 4
  %map_sg163 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %map_sg163 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %map_sg163, align 4
  %send = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 2
  %93 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %send, align 4
  %send164 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 3, i32 0, i32 0, i32 2
  %95 = ptrtoint ptr %send164 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %send164, align 4
  %mu_status = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %mu_status to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %mu_status, align 4
  %msi_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 3
  %97 = ptrtoint ptr %msi_lock to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %msi_lock, align 4
  %98 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cardtype, align 4
  %100 = and i32 %99, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %100)
  %switch396 = icmp eq i32 %100, 4
  %spec.select = select i1 %switch396, i16 38, i16 32
  %101 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 28
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %spec.select, ptr %101, align 2
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 26
  %103 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv, ptr %can_queue, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 27
  %104 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %27, ptr %cmd_per_lun, align 8
  %max_id = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 3
  %105 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_id, align 4
  %max_id178 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 21
  %107 = ptrtoint ptr %max_id178 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %max_id178, align 4
  %max_lun = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 4
  %108 = ptrtoint ptr %max_lun to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_lun, align 4
  %conv179 = zext i32 %109 to i64
  %max_lun180 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 22
  %110 = ptrtoint ptr %max_lun180 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv179, ptr %max_lun180, align 8
  %max_channel = getelementptr [6 x %struct.st_card_info], ptr @stex_card_info, i32 0, i32 %19, i32 5
  %111 = ptrtoint ptr %max_channel to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_channel, align 4
  %max_channel181 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 20
  %113 = ptrtoint ptr %max_channel181 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_channel181, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 17
  %114 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %host_no, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 23
  %116 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %unique_id, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 0, i32 24
  %117 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 16, ptr %max_cmd_len, align 4
  %host182 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 2
  %118 = ptrtoint ptr %host182 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call2, ptr %host182, align 4
  %pdev183 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 2, i32 1
  %119 = ptrtoint ptr %pdev183 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %pdev, ptr %pdev183, align 4
  %reset_waitq = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 5, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %reset_waitq, ptr noundef nonnull @.str.24, ptr noundef nonnull @stex_probe.__key) #12
  %work_q_name = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5
  %120 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %host_no, align 4
  %call189 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %work_q_name, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %121)
  %call192 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.26, i32 noundef 917514, i32 noundef 1, ptr noundef %work_q_name) #12
  %work_q = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 1, i32 4
  %122 = ptrtoint ptr %work_q to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call192, ptr %work_q, align 4
  %tobool194.not = icmp eq ptr %call192, null
  br i1 %tobool194.not, label %do.end198, label %do.body203

do.end198:                                        ; preds = %if.end151
  %init_name.i.i442 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %123 = ptrtoint ptr %init_name.i.i442 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %init_name.i.i442, align 8
  %tobool.not.i.i443 = icmp eq ptr %124, null
  br i1 %tobool.not.i.i443, label %if.end.i.i445, label %do.end198.pci_name.exit447_crit_edge

do.end198.pci_name.exit447_crit_edge:             ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit447

if.end.i.i445:                                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  br label %pci_name.exit447

pci_name.exit447:                                 ; preds = %if.end.i.i445, %do.end198.pci_name.exit447_crit_edge
  %retval.0.i.i446 = phi ptr [ %126, %if.end.i.i445 ], [ %124, %do.end198.pci_name.exit447_crit_edge ]
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i446) #15
  br label %out_ccb_free

do.body203:                                       ; preds = %if.end151
  %reset_work = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 1, i32 4, i32 1
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #12
  %127 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 1, i32 4, i32 6
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @stex_probe.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry207 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 1, i32 4, i32 1, i32 1
  %128 = ptrtoint ptr %entry207 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %entry207, ptr %entry207, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 1, i32 4, i32 2
  %129 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %entry207, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 5, i32 1, i32 4, i32 3
  %130 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @stex_reset_work, ptr %func, align 4
  %131 = ptrtoint ptr %pdev183 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev183, align 4
  %133 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %do.body203.if.then.i450_crit_edge

do.body203.if.then.i450_crit_edge:                ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i450

lor.lhs.false.i:                                  ; preds = %do.body203
  %134 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %135)
  %cmp.i448 = icmp eq i32 %135, 5
  br i1 %cmp.i448, label %lor.lhs.false.i.if.then.i450_crit_edge, label %if.else6.i

lor.lhs.false.i.if.then.i450_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i450

if.then.i450:                                     ; preds = %lor.lhs.false.i.if.then.i450_crit_edge, %do.body203.if.then.i450_crit_edge
  %call.i449 = tail call i32 @pci_enable_msi(ptr noundef %132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i449)
  %cmp2.not.i = icmp eq i32 %call.i449, 0
  br i1 %cmp2.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i450
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44, i32 3
  %136 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i451, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i451:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  %138 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i451, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %139, %if.end.i.i.i451 ], [ %137, %do.end.i.pci_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %retval.0.i.i.i, i32 noundef %call.i449) #15
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then.i450
  call void @__sanitizer_cov_trace_pc() #14
  %msi_enabled.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %140 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %msi_enabled.i, align 4
  br label %if.end8.i

if.else6.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %msi_enabled7.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %141 = ptrtoint ptr %msi_enabled7.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %msi_enabled7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.else.i, %pci_name.exit.i
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 46
  %142 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %irq.i, align 4
  %144 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cardtype, align 4
  %146 = and i32 %145, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %146)
  %147 = icmp eq i32 %146, 4
  %148 = select i1 %147, ptr @stex_ss_intr, ptr @stex_intr
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %143, ptr noundef nonnull %148, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %hostdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp14.not.i, label %if.end220, label %if.then15.i

if.then15.i:                                      ; preds = %if.end8.i
  %msi_enabled16.i = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %149 = ptrtoint ptr %msi_enabled16.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %msi_enabled16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool17.not.i = icmp eq i32 %150, 0
  br i1 %tobool17.not.i, label %if.then15.i.do.end216_crit_edge, label %if.then18.i

if.then15.i.do.end216_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end216

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_msi(ptr noundef %132) #12
  br label %do.end216

do.end216:                                        ; preds = %if.then18.i, %if.then15.i.do.end216_crit_edge
  %init_name.i.i452 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %151 = ptrtoint ptr %init_name.i.i452 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %init_name.i.i452, align 8
  %tobool.not.i.i453 = icmp eq ptr %152, null
  br i1 %tobool.not.i.i453, label %if.end.i.i455, label %do.end216.pci_name.exit457_crit_edge

do.end216.pci_name.exit457_crit_edge:             ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit457

if.end.i.i455:                                    ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev, align 4
  br label %pci_name.exit457

pci_name.exit457:                                 ; preds = %if.end.i.i455, %do.end216.pci_name.exit457_crit_edge
  %retval.0.i.i456 = phi ptr [ %154, %if.end.i.i455 ], [ %152, %do.end216.pci_name.exit457_crit_edge ]
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i456) #15
  br label %out_free_wq

if.end220:                                        ; preds = %if.end8.i
  %call221 = tail call fastcc i32 @stex_handshake(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end224, label %if.end220.out_free_irq_crit_edge

if.end220.out_free_irq_crit_edge:                 ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_irq

if.end224:                                        ; preds = %if.end220
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %155 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %hostdata, ptr %driver_data.i.i, align 4
  %call.i458 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call2, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i458)
  %tobool227.not = icmp eq i32 %call.i458, 0
  br i1 %tobool227.not, label %if.end235, label %do.end231

do.end231:                                        ; preds = %if.end224
  %init_name.i.i459 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %156 = ptrtoint ptr %init_name.i.i459 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %init_name.i.i459, align 8
  %tobool.not.i.i460 = icmp eq ptr %157, null
  br i1 %tobool.not.i.i460, label %if.end.i.i462, label %do.end231.pci_name.exit464_crit_edge

do.end231.pci_name.exit464_crit_edge:             ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit464

if.end.i.i462:                                    ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #14
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 4
  br label %pci_name.exit464

pci_name.exit464:                                 ; preds = %if.end.i.i462, %do.end231.pci_name.exit464_crit_edge
  %retval.0.i.i463 = phi ptr [ %159, %if.end.i.i462 ], [ %157, %do.end231.pci_name.exit464_crit_edge ]
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i.i463) #15
  br label %out_free_irq

if.end235:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_scan_host(ptr noundef nonnull %call2) #12
  br label %cleanup

out_free_irq:                                     ; preds = %pci_name.exit464, %if.end220.out_free_irq_crit_edge
  %err.1 = phi i32 [ -1, %if.end220.out_free_irq_crit_edge ], [ %call.i458, %pci_name.exit464 ]
  %160 = ptrtoint ptr %pdev183 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev183, align 4
  %irq.i466 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 46
  %162 = ptrtoint ptr %irq.i466 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %irq.i466, align 4
  %call.i467 = tail call ptr @free_irq(i32 noundef %163, ptr noundef %hostdata) #12
  %msi_enabled.i468 = getelementptr inbounds %struct.Scsi_Host, ptr %call2, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %164 = ptrtoint ptr %msi_enabled.i468 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %msi_enabled.i468, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i469 = icmp eq i32 %165, 0
  br i1 %tobool.not.i469, label %out_free_irq.out_free_wq_crit_edge, label %if.then.i470

out_free_irq.out_free_wq_crit_edge:               ; preds = %out_free_irq
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_wq

if.then.i470:                                     ; preds = %out_free_irq
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_msi(ptr noundef %161) #12
  br label %out_free_wq

out_free_wq:                                      ; preds = %if.then.i470, %out_free_irq.out_free_wq_crit_edge, %pci_name.exit457
  %err.2 = phi i32 [ %call.i.i, %pci_name.exit457 ], [ %err.1, %out_free_irq.out_free_wq_crit_edge ], [ %err.1, %if.then.i470 ]
  %166 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %work_q, align 4
  tail call void @destroy_workqueue(ptr noundef %167) #12
  br label %out_ccb_free

out_ccb_free:                                     ; preds = %out_free_wq, %pci_name.exit447
  %err.3 = phi i32 [ %err.2, %out_free_wq ], [ -12, %pci_name.exit447 ]
  %168 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ccb, align 4
  tail call void @kfree(ptr noundef %169) #12
  br label %out_pci_free

out_pci_free:                                     ; preds = %out_ccb_free, %pci_name.exit441
  %err.4 = phi i32 [ %err.3, %out_ccb_free ], [ -12, %pci_name.exit441 ]
  %170 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dma_size, align 4
  %172 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dma_mem, align 4
  %174 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dma_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %171, ptr noundef %173, i32 noundef %175, i32 noundef 0) #12
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_pci_free, %pci_name.exit433, %pci_name.exit419
  %err.5 = phi i32 [ %call.i409, %pci_name.exit419 ], [ %err.4, %out_pci_free ], [ -12, %pci_name.exit433 ]
  %176 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hostdata, align 4
  tail call void @iounmap(ptr noundef %177) #12
  br label %out_release_regions

out_release_regions:                              ; preds = %out_iounmap, %pci_name.exit408
  %err.6 = phi i32 [ %err.5, %out_iounmap ], [ -12, %pci_name.exit408 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  br label %out_scsi_host_put

out_scsi_host_put:                                ; preds = %out_release_regions, %pci_name.exit402
  %err.7 = phi i32 [ %call8, %pci_name.exit402 ], [ %err.6, %out_release_regions ]
  tail call void @scsi_host_put(ptr noundef nonnull %call2) #12
  br label %out_disable

out_disable:                                      ; preds = %out_scsi_host_put, %pci_name.exit
  %err.8 = phi i32 [ %err.7, %out_scsi_host_put ], [ -12, %pci_name.exit ]
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %out_disable, %if.end235, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.8, %out_disable ], [ 0, %if.end235 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stex_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mu_status = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mu_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %mu_status, align 4
  tail call fastcc void @return_abnormal_state(ptr noundef %1, i32 noundef 1)
  %host = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  tail call void @scsi_remove_host(ptr noundef %4) #12
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  tail call void @scsi_block_requests(ptr noundef %6) #12
  %pdev1.i.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev1.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i.i, align 4
  %call.i.i = tail call ptr @free_irq(i32 noundef %10, ptr noundef %1) #12
  %msi_enabled.i.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %msi_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msi_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %entry.stex_hba_free.exit_crit_edge, label %if.then.i.i

entry.stex_hba_free.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_hba_free.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_msi(ptr noundef %8) #12
  br label %stex_hba_free.exit

stex_hba_free.exit:                               ; preds = %if.then.i.i, %entry.stex_hba_free.exit_crit_edge
  %work_q.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %work_q.i, align 4
  tail call void @destroy_workqueue(ptr noundef %14) #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %16) #12
  %17 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev1.i.i, align 4
  tail call void @pci_release_regions(ptr noundef %18) #12
  %ccb.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %ccb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ccb.i, align 4
  tail call void @kfree(ptr noundef %20) #12
  %21 = ptrtoint ptr %pdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev1.i.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %dma_size.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_size.i, align 4
  %dma_mem.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_mem.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #12
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %30) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  %call3 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @stex_notifier) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cardtype, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch = icmp eq i32 %4, 4
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %supports_pm = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %supports_pm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %supports_pm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp3 = icmp eq i8 %6, 1
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %state.coerce.fca.0.extract.i = extractvalue [1 x i32] %state.coerce, 0
  %7 = zext i32 %state.coerce.fca.0.extract.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %state.coerce.fca.0.extract.i, label %sw.default.i [
    i32 2, label %if.then.if.end_crit_edge
    i32 4, label %sw.bb1.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %msi_lock.i = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %msi_lock.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %msi_lock.i, align 4
  br label %if.end

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sw.default.i, %sw.bb1.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 7, %sw.default.i ], [ 4, %sw.bb1.i ], [ 3, %if.then.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ], [ -1, %land.lhs.true.if.end_crit_edge ]
  tail call fastcc void @stex_hba_stop(ptr noundef %1, i32 noundef %.sink)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mu_status = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mu_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mu_status, align 4
  %call1 = tail call fastcc i32 @stex_handshake(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stex_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supports_pm = getelementptr inbounds %struct.st_hba, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %supports_pm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supports_pm, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %3, label %entry.if.else8_crit_edge [
    i8 0, label %entry.if.end9_crit_edge
    i8 1, label %land.lhs.true
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

entry.if.else8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @S6flag, align 4
  br i1 %.b, label %if.then6, label %land.lhs.true.if.else8_crit_edge

land.lhs.true.if.else8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @stex_notifier) #12
  br label %if.end9

if.else8:                                         ; preds = %land.lhs.true.if.else8_crit_edge, %entry.if.else8_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then6, %entry.if.end9_crit_edge
  %.sink = phi i32 [ 6, %if.then6 ], [ 5, %if.else8 ], [ -1, %entry.if.end9_crit_edge ]
  tail call fastcc void @stex_hba_stop(ptr noundef %1, i32 noundef %.sink)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stex_reset_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -96
  %call = tail call fastcc i32 @stex_do_reset(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stex_handshake(ptr noundef %hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 23
  %0 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cardtype, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %switch = icmp eq i32 %2, 4
  %3 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hba, align 4
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp eq i32 %1, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp2.not284.i = icmp eq i32 %6, 128
  br i1 %cmp2.not284.i, label %if.then.i.if.end47.i_crit_edge, label %while.body.lr.ph.i

if.then.i.if.end47.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

while.body.lr.ph.i:                               ; preds = %if.then.i
  %add.i = add i32 %5, 5000
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  %pdev.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %do.end.i.pci_name.exit.i_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %retval.0.i.i.i) #15
  br label %do.body4

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 1) #12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  %cmp2.not.i = icmp eq i32 %14, 128
  br i1 %cmp2.not.i, label %if.end.i.if.end47.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.else.i:                                        ; preds = %if.then
  %add.ptr18.i = getelementptr i8, ptr %4, i32 188
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %15)
  %cmp24.not283.i = icmp eq i32 %15, 128
  br i1 %cmp24.not283.i, label %if.else.i.if.end47.i_crit_edge, label %while.body26.lr.ph.i

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

while.body26.lr.ph.i:                             ; preds = %if.else.i
  %add27.i = add i32 %5, 5000
  br label %while.body26.i

while.body26.i:                                   ; preds = %if.end39.i.while.body26.i_crit_edge, %while.body26.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub28.i = sub i32 %add27.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i)
  %cmp29.i = icmp slt i32 %sub28.i, 0
  br i1 %cmp29.i, label %do.end34.i, label %if.end39.i

do.end34.i:                                       ; preds = %while.body26.i
  %pdev36.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %17 = ptrtoint ptr %pdev36.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev36.i, align 4
  %init_name.i.i260.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i260.i, align 8
  %tobool.not.i.i261.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i261.i, label %if.end.i.i263.i, label %do.end34.i.pci_name.exit265.i_crit_edge

do.end34.i.pci_name.exit265.i_crit_edge:          ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit265.i

if.end.i.i263.i:                                  ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i262.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %21 = ptrtoint ptr %dev.i262.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i262.i, align 4
  br label %pci_name.exit265.i

pci_name.exit265.i:                               ; preds = %if.end.i.i263.i, %do.end34.i.pci_name.exit265.i_crit_edge
  %retval.0.i.i264.i = phi ptr [ %22, %if.end.i.i263.i ], [ %20, %do.end34.i.pci_name.exit265.i_crit_edge ]
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %retval.0.i.i264.i) #15
  br label %do.body4

if.end39.i:                                       ; preds = %while.body26.i
  tail call void @msleep(i32 noundef 1) #12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  %cmp24.not.i = icmp eq i32 %23, 128
  br i1 %cmp24.not.i, label %if.end39.i.if.end47.i_crit_edge, label %if.end39.i.while.body26.i_crit_edge

if.end39.i.while.body26.i_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body26.i

if.end39.i.if.end47.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end39.i.if.end47.i_crit_edge, %if.else.i.if.end47.i_crit_edge, %if.end.i.if.end47.i_crit_edge, %if.then.i.if.end47.i_crit_edge
  %dma_mem.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 1
  %24 = ptrtoint ptr %dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_mem.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 2
  %26 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_handle.i, align 4
  %conv48.i = zext i32 %27 to i64
  %28 = tail call i64 @llvm.bswap.i64(i64 %conv48.i) #12
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %25, align 8
  %flag.i = getelementptr inbounds %struct.st_msg_header, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %flag.i, align 8
  %add.ptr49.i = getelementptr %struct.st_msg_header, ptr %25, i32 1
  %31 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_handle.i, align 4
  %conv51.i = zext i32 %32 to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv51.i) #12
  %34 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %add.ptr49.i, align 8
  %rq_size.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %35 = ptrtoint ptr %rq_size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rq_size.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #12
  %req_sz.i = getelementptr %struct.st_msg_header, ptr %25, i32 1, i32 1
  %38 = ptrtoint ptr %req_sz.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %req_sz.i, align 8
  %rq_count.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 27
  %39 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rq_count.i, align 4
  %add53.i = add i16 %40, 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %add53.i) #12
  %req_cnt.i = getelementptr %struct.st_msg_header, ptr %25, i32 1, i32 3
  %42 = ptrtoint ptr %req_cnt.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %req_cnt.i, align 2
  %status_sz.i = getelementptr %struct.st_msg_header, ptr %25, i32 1, i32 4
  %43 = ptrtoint ptr %status_sz.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -30720, ptr %status_sz.i, align 4
  %sts_count.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 29
  %44 = ptrtoint ptr %sts_count.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sts_count.i, align 4
  %add56.i = add i16 %45, 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %add56.i) #12
  %status_cnt.i = getelementptr inbounds %struct.handshake_frame, ptr %add.ptr49.i, i32 0, i32 4
  %47 = ptrtoint ptr %status_cnt.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %status_cnt.i, align 2
  %call58.i = tail call i64 @ktime_get_real_seconds() #12
  %48 = tail call i64 @llvm.bswap.i64(i64 %call58.i) #12
  %hosttime.i = getelementptr %struct.st_msg_header, ptr %25, i32 2
  %49 = ptrtoint ptr %hosttime.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %hosttime.i, align 8
  %partner_type.i = getelementptr %struct.st_msg_header, ptr %25, i32 2, i32 1
  %50 = ptrtoint ptr %partner_type.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %partner_type.i, align 8
  %extra_size.i = getelementptr inbounds %struct.handshake_frame, ptr %add.ptr49.i, i32 0, i32 13
  %51 = ptrtoint ptr %extra_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %extra_size.i, align 4
  %extra_offset.i = getelementptr %struct.st_msg_header, ptr %25, i32 4
  %52 = ptrtoint ptr %extra_offset.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %extra_offset.i, align 8
  %53 = ptrtoint ptr %sts_count.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sts_count.i, align 4
  %conv60.i = zext i16 %54 to i32
  %add61.i = shl nuw nsw i32 %conv60.i, 2
  %mul.i = add nuw nsw i32 %add61.i, 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #12
  %scratch_size62.i = getelementptr %struct.st_msg_header, ptr %25, i32 4, i32 1
  %56 = ptrtoint ptr %scratch_size62.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %scratch_size62.i, align 8
  %57 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp64.i = icmp eq i32 %58, 4
  %add.ptr69.i = getelementptr i8, ptr %4, i32 52
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp64.i, label %if.then66.i, label %if.else100.i

if.then66.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = and i32 %59, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %60) #12, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  tail call void @arm_heavy_mb() #12
  %add.ptr82.i = getelementptr i8, ptr %4, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 0) #12, !srcloc !197
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %62 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_handle.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #12
  %add.ptr93.i = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %64) #12, !srcloc !197
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  br label %if.end134.i

if.else100.i:                                     ; preds = %if.end47.i
  %66 = and i32 %59, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %66) #12, !srcloc !197
  %msi_lock.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 31
  %67 = ptrtoint ptr %msi_lock.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msi_lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp113.i = icmp eq i32 %68, 0
  br i1 %cmp113.i, label %do.body116.i, label %if.else100.i.do.body122.i_crit_edge

if.else100.i.do.body122.i_crit_edge:              ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body122.i

do.body116.i:                                     ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  tail call void @arm_heavy_mb() #12
  %add.ptr119.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 1073741824) #12, !srcloc !197
  %69 = ptrtoint ptr %msi_lock.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %msi_lock.i, align 4
  br label %do.body122.i

do.body122.i:                                     ; preds = %do.body116.i, %if.else100.i.do.body122.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call void @arm_heavy_mb() #12
  %add.ptr128.i = getelementptr i8, ptr %4, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 0) #12, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_handle.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  %add.ptr133.i = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 %72) #12, !srcloc !197
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.body122.i, %if.then66.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %scratch135.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 17
  %74 = ptrtoint ptr %scratch135.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %scratch135.i, align 4
  %76 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp137.i = icmp eq i32 %77, 4
  br i1 %cmp137.i, label %while.cond140.preheader.i, label %if.else157.i

while.cond140.preheader.i:                        ; preds = %if.end134.i
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %75, align 4
  %80 = and i32 %79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not286.i = icmp eq i32 %80, 0
  br i1 %tobool.not286.i, label %while.body142.lr.ph.i, label %while.cond140.preheader.i.if.end190.i_crit_edge

while.cond140.preheader.i.if.end190.i_crit_edge:  ; preds = %while.cond140.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i

while.body142.lr.ph.i:                            ; preds = %while.cond140.preheader.i
  %add143.i = add i32 %73, 5000
  br label %while.body142.i

while.body142.i:                                  ; preds = %if.end155.i.while.body142.i_crit_edge, %while.body142.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub144.i = sub i32 %add143.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub144.i)
  %cmp145.i = icmp slt i32 %sub144.i, 0
  br i1 %cmp145.i, label %do.end150.i, label %if.end155.i

do.end150.i:                                      ; preds = %while.body142.i
  %pdev152.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %82 = ptrtoint ptr %pdev152.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev152.i, align 4
  %init_name.i.i266.i = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44, i32 3
  %84 = ptrtoint ptr %init_name.i.i266.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init_name.i.i266.i, align 8
  %tobool.not.i.i267.i = icmp eq ptr %85, null
  br i1 %tobool.not.i.i267.i, label %do.end150.i.if.end190.sink.split.sink.split.i_crit_edge, label %do.end150.i.if.end190.sink.split.i_crit_edge

do.end150.i.if.end190.sink.split.i_crit_edge:     ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.sink.split.i

do.end150.i.if.end190.sink.split.sink.split.i_crit_edge: ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.sink.split.sink.split.i

if.end155.i:                                      ; preds = %while.body142.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @msleep(i32 noundef 1) #12
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %75, align 4
  %88 = and i32 %87, 32
  %tobool.not.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i, label %if.end155.i.while.body142.i_crit_edge, label %if.end155.i.if.end190.i_crit_edge

if.end155.i.if.end190.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i

if.end155.i.while.body142.i_crit_edge:            ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body142.i

if.else157.i:                                     ; preds = %if.end134.i
  %add.ptr160.i = getelementptr i8, ptr %4, i32 4096
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %89)
  %cmp166.not285.i = icmp eq i32 %89, 32
  br i1 %cmp166.not285.i, label %if.else157.i.if.end190.i_crit_edge, label %while.body168.lr.ph.i

if.else157.i.if.end190.i_crit_edge:               ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i

while.body168.lr.ph.i:                            ; preds = %if.else157.i
  %add169.i = add i32 %73, 5000
  br label %while.body168.i

while.body168.i:                                  ; preds = %if.end181.i.while.body168.i_crit_edge, %while.body168.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %sub170.i = sub i32 %add169.i, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub170.i)
  %cmp171.i = icmp slt i32 %sub170.i, 0
  br i1 %cmp171.i, label %do.end176.i, label %if.end181.i

do.end176.i:                                      ; preds = %while.body168.i
  %pdev178.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %91 = ptrtoint ptr %pdev178.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev178.i, align 4
  %init_name.i.i272.i = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44, i32 3
  %93 = ptrtoint ptr %init_name.i.i272.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i.i272.i, align 8
  %tobool.not.i.i273.i = icmp eq ptr %94, null
  br i1 %tobool.not.i.i273.i, label %do.end176.i.if.end190.sink.split.sink.split.i_crit_edge, label %do.end176.i.if.end190.sink.split.i_crit_edge

do.end176.i.if.end190.sink.split.i_crit_edge:     ; preds = %do.end176.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.sink.split.i

do.end176.i.if.end190.sink.split.sink.split.i_crit_edge: ; preds = %do.end176.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.sink.split.sink.split.i

if.end181.i:                                      ; preds = %while.body168.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @msleep(i32 noundef 1) #12
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  %cmp166.not.i = icmp eq i32 %95, 32
  br i1 %cmp166.not.i, label %if.end181.i.if.end190.i_crit_edge, label %if.end181.i.while.body168.i_crit_edge

if.end181.i.while.body168.i_crit_edge:            ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body168.i

if.end181.i.if.end190.i_crit_edge:                ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i

if.end190.sink.split.sink.split.i:                ; preds = %do.end176.i.if.end190.sink.split.sink.split.i_crit_edge, %do.end150.i.if.end190.sink.split.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %83, %do.end150.i.if.end190.sink.split.sink.split.i_crit_edge ], [ %92, %do.end176.i.if.end190.sink.split.sink.split.i_crit_edge ]
  %dev.i274.i = getelementptr inbounds %struct.pci_dev, ptr %.sink.i, i32 0, i32 44
  %96 = ptrtoint ptr %dev.i274.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i274.i, align 4
  br label %if.end190.sink.split.i

if.end190.sink.split.i:                           ; preds = %if.end190.sink.split.sink.split.i, %do.end176.i.if.end190.sink.split.i_crit_edge, %do.end150.i.if.end190.sink.split.i_crit_edge
  %retval.0.i.i276.sink.i = phi ptr [ %85, %do.end150.i.if.end190.sink.split.i_crit_edge ], [ %94, %do.end176.i.if.end190.sink.split.i_crit_edge ], [ %97, %if.end190.sink.split.sink.split.i ]
  %call180.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i276.sink.i) #15
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.end190.sink.split.i, %if.end181.i.if.end190.i_crit_edge, %if.else157.i.if.end190.i_crit_edge, %if.end155.i.if.end190.i_crit_edge, %while.cond140.preheader.i.if.end190.i_crit_edge
  %ret.0.i = phi i32 [ 0, %while.cond140.preheader.i.if.end190.i_crit_edge ], [ 0, %if.else157.i.if.end190.i_crit_edge ], [ -1, %if.end190.sink.split.i ], [ 0, %if.end155.i.if.end190.i_crit_edge ], [ 0, %if.end181.i.if.end190.i_crit_edge ]
  %98 = call ptr @memset(ptr %75, i32 0, i32 %mul.i)
  %99 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %flag.i, align 8
  br label %do.body4

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437248085, i32 %100)
  %cmp.not.i = icmp eq i32 %100, 1437248085
  br i1 %cmp.not.i, label %if.else.if.end24.i_crit_edge, label %do.body.i

if.else.if.end24.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

do.body.i:                                        ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  %add.ptr2.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #12, !srcloc !197
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437248085, i32 %103)
  %cmp15.not237.i = icmp eq i32 %103, 1437248085
  br i1 %cmp15.not237.i, label %do.body.i.if.end24.i_crit_edge, label %while.body.lr.ph.i40

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

while.body.lr.ph.i40:                             ; preds = %do.body.i
  %add.i39 = add i32 %102, 5000
  br label %while.body.i42

while.body.i42:                                   ; preds = %if.end.i50.while.body.i42_crit_edge, %while.body.lr.ph.i40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %sub.i41 = sub i32 %add.i39, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i41)
  %cmp16.i = icmp slt i32 %sub.i41, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end.i50

do.end20.i:                                       ; preds = %while.body.i42
  %pdev.i43 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %105 = ptrtoint ptr %pdev.i43 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i43, align 4
  %init_name.i.i.i44 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44, i32 3
  %107 = ptrtoint ptr %init_name.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i.i.i44, align 8
  %tobool.not.i.i.i45 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i.i45, label %if.end.i.i.i47, label %do.end20.i.pci_name.exit.i49_crit_edge

do.end20.i.pci_name.exit.i49_crit_edge:           ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i49

if.end.i.i.i47:                                   ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i46 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %109 = ptrtoint ptr %dev.i.i46 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i.i46, align 4
  br label %pci_name.exit.i49

pci_name.exit.i49:                                ; preds = %if.end.i.i.i47, %do.end20.i.pci_name.exit.i49_crit_edge
  %retval.0.i.i.i48 = phi ptr [ %110, %if.end.i.i.i47 ], [ %108, %do.end20.i.pci_name.exit.i49_crit_edge ]
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %retval.0.i.i.i48) #15
  br label %do.body4

if.end.i50:                                       ; preds = %while.body.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @msleep(i32 noundef 1) #12
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  %cmp15.not.i = icmp eq i32 %111, 1437248085
  br i1 %cmp15.not.i, label %if.end.i50.if.end24.i_crit_edge, label %if.end.i50.while.body.i42_crit_edge

if.end.i50.while.body.i42_crit_edge:              ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i42

if.end.i50.if.end24.i_crit_edge:                  ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end.i50.if.end24.i_crit_edge, %do.body.i.if.end24.i_crit_edge, %if.else.if.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 2147480) #12
  %add.ptr27.i = getelementptr i8, ptr %4, i32 28
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #12, !srcloc !191
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  %and.i = and i32 %114, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515847680, i32 %and.i)
  %cmp31.i = icmp eq i32 %and.i, 1515847680
  br i1 %cmp31.i, label %if.then32.i, label %if.end24.i.if.end40.i_crit_edge

if.end24.i.if.end40.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then32.i:                                      ; preds = %if.end24.i
  %and33.i = and i32 %114, 65535
  %host.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %115 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %host.i, align 4
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %116, i32 0, i32 26
  %117 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %can_queue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %and33.i)
  %cmp34.i = icmp ugt i32 %118, %and33.i
  br i1 %cmp34.i, label %if.then35.i, label %if.then32.i.if.end40.i_crit_edge

if.then32.i.if.end40.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %and33.i, ptr %can_queue.i, align 4
  %conv.i = trunc i32 %114 to i16
  %120 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %host.i, align 4
  %cmd_per_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %121, i32 0, i32 27
  %122 = ptrtoint ptr %cmd_per_lun.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.i, ptr %cmd_per_lun.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.then32.i.if.end40.i_crit_edge, %if.end24.i.if.end40.i_crit_edge
  %status_buffer.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 13
  %123 = ptrtoint ptr %status_buffer.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %status_buffer.i, align 4
  %dma_handle.i51 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 2
  %125 = ptrtoint ptr %dma_handle.i51 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_handle.i51, align 4
  %conv41.i = zext i32 %126 to i64
  %127 = tail call i64 @llvm.bswap.i64(i64 %conv41.i) #12
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %127, ptr %124, align 8
  %rq_size.i52 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %129 = ptrtoint ptr %rq_size.i52 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %rq_size.i52, align 2
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #12
  %req_sz.i53 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 1
  %132 = ptrtoint ptr %req_sz.i53 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %req_sz.i53, align 8
  %rq_count.i54 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 27
  %133 = ptrtoint ptr %rq_count.i54 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %rq_count.i54, align 4
  %add43.i = add i16 %134, 1
  %135 = tail call i16 @llvm.bswap.i16(i16 %add43.i) #12
  %req_cnt.i55 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 2
  %136 = ptrtoint ptr %req_cnt.i55 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %req_cnt.i55, align 2
  %status_sz.i56 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 3
  %137 = ptrtoint ptr %status_sz.i56 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -30720, ptr %status_sz.i56, align 4
  %sts_count.i57 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 29
  %138 = ptrtoint ptr %sts_count.i57 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %sts_count.i57, align 4
  %add46.i = add i16 %139, 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %add46.i) #12
  %status_cnt.i58 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 4
  %141 = ptrtoint ptr %status_cnt.i58 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %status_cnt.i58, align 2
  %call48.i = tail call i64 @ktime_get_real_seconds() #12
  %142 = tail call i64 @llvm.bswap.i64(i64 %call48.i) #12
  %hosttime.i59 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 5
  %143 = ptrtoint ptr %hosttime.i59 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %142, ptr %hosttime.i59, align 8
  %partner_type.i60 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 6
  %144 = ptrtoint ptr %partner_type.i60 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 2, ptr %partner_type.i60, align 8
  %extra_offset.i61 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 26
  %145 = ptrtoint ptr %extra_offset.i61 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %extra_offset.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i62 = icmp eq i32 %146, 0
  br i1 %tobool.not.i62, label %if.else.i63, label %if.then49.i

if.then49.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #12
  %extra_offset51.i = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 12
  %148 = ptrtoint ptr %extra_offset51.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %extra_offset51.i, align 8
  %dma_size.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 3
  %149 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dma_size.i, align 4
  %151 = ptrtoint ptr %extra_offset.i61 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %extra_offset.i61, align 4
  %sub53.i = sub i32 %150, %152
  %153 = tail call i32 @llvm.bswap.i32(i32 %sub53.i) #12
  br label %if.end56.i

if.else.i63:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %extra_offset55.i = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 12
  %154 = ptrtoint ptr %extra_offset55.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %extra_offset55.i, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i63, %if.then49.i
  %.sink.i64 = phi i32 [ 0, %if.else.i63 ], [ %153, %if.then49.i ]
  %155 = getelementptr inbounds %struct.handshake_frame, ptr %124, i32 0, i32 13
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %.sink.i64, ptr %155, align 4
  %157 = ptrtoint ptr %dma_handle.i51 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dma_handle.i51, align 4
  %159 = ptrtoint ptr %rq_count.i54 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %rq_count.i54, align 4
  %conv59.i = zext i16 %160 to i32
  %add60.i = add nuw nsw i32 %conv59.i, 1
  %161 = ptrtoint ptr %rq_size.i52 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %rq_size.i52, align 2
  %conv62.i = zext i16 %162 to i32
  %mul.i65 = mul nuw i32 %add60.i, %conv62.i
  %add63.i = add i32 %mul.i65, %158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  tail call void @arm_heavy_mb() #12
  %163 = tail call i32 @llvm.bswap.i32(i32 %add63.i) #12
  %add.ptr67.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %163) #12, !srcloc !197
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !218
  tail call void @arm_heavy_mb() #12
  %add.ptr78.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 0) #12, !srcloc !197
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !220
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !197
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  tail call void @arm_heavy_mb() #12
  %add.ptr100.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i, i32 16777216) #12, !srcloc !197
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 2147480) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %169 = load volatile i32, ptr @jiffies, align 128
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437248085, i32 %170)
  %cmp114.not238.i = icmp eq i32 %170, 1437248085
  br i1 %cmp114.not238.i, label %if.end56.i.do.body131.i_crit_edge, label %while.body116.lr.ph.i

if.end56.i.do.body131.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body131.i

while.body116.lr.ph.i:                            ; preds = %if.end56.i
  %add117.i = add i32 %169, 5000
  br label %while.body116.i

while.body116.i:                                  ; preds = %if.end129.i.while.body116.i_crit_edge, %while.body116.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %171 = load volatile i32, ptr @jiffies, align 128
  %sub118.i = sub i32 %add117.i, %171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub118.i)
  %cmp119.i = icmp slt i32 %sub118.i, 0
  br i1 %cmp119.i, label %do.end124.i, label %if.end129.i

do.end124.i:                                      ; preds = %while.body116.i
  %pdev126.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %172 = ptrtoint ptr %pdev126.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev126.i, align 4
  %init_name.i.i230.i = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44, i32 3
  %174 = ptrtoint ptr %init_name.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %init_name.i.i230.i, align 8
  %tobool.not.i.i231.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.i231.i, label %if.end.i.i233.i, label %do.end124.i.pci_name.exit235.i_crit_edge

do.end124.i.pci_name.exit235.i_crit_edge:         ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit235.i

if.end.i.i233.i:                                  ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i232.i = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  %176 = ptrtoint ptr %dev.i232.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i232.i, align 4
  br label %pci_name.exit235.i

pci_name.exit235.i:                               ; preds = %if.end.i.i233.i, %do.end124.i.pci_name.exit235.i_crit_edge
  %retval.0.i.i234.i = phi ptr [ %177, %if.end.i.i233.i ], [ %175, %do.end124.i.pci_name.exit235.i_crit_edge ]
  %call128.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i234.i) #15
  br label %do.body4

if.end129.i:                                      ; preds = %while.body116.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  tail call void @msleep(i32 noundef 1) #12
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  %cmp114.not.i = icmp eq i32 %178, 1437248085
  br i1 %cmp114.not.i, label %if.end129.i.do.body131.i_crit_edge, label %if.end129.i.while.body116.i_crit_edge

if.end129.i.while.body116.i_crit_edge:            ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body116.i

if.end129.i.do.body131.i_crit_edge:               ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body131.i

do.body131.i:                                     ; preds = %if.end129.i.do.body131.i_crit_edge, %if.end56.i.do.body131.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 0) #12, !srcloc !197
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !197
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 0) #12, !srcloc !197
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 0) #12, !srcloc !197
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  br label %do.body4

do.body4:                                         ; preds = %do.body131.i, %pci_name.exit235.i, %pci_name.exit.i49, %if.end190.i, %pci_name.exit265.i, %pci_name.exit.i
  %err.0 = phi i32 [ -1, %pci_name.exit.i ], [ %ret.0.i, %if.end190.i ], [ -1, %pci_name.exit265.i ], [ -1, %pci_name.exit.i49 ], [ -1, %pci_name.exit235.i ], [ 0, %do.body131.i ]
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %183 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %host_lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %186) #12
  %mu_status10 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 22
  %187 = ptrtoint ptr %mu_status10 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %mu_status10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp11 = icmp eq i32 %err.0, 0
  br i1 %cmp11, label %if.then13, label %do.body4.if.end17_crit_edge

do.body4.if.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %req_head = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 9
  %out_req_cnt = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 25
  %189 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %out_req_cnt, align 4
  %190 = call ptr @memset(ptr %req_head, i32 0, i32 16)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.body4.if.end17_crit_edge
  %storemerge = phi i32 [ 2, %if.then13 ], [ 4, %do.body4.if.end17_crit_edge ]
  %191 = ptrtoint ptr %mu_status10 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %storemerge, ptr %mu_status10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %188)
  %cmp18 = icmp eq i32 %188, 3
  br i1 %cmp18, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %reset_waitq = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %reset_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %192 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %host, align 4
  %host_lock23 = getelementptr inbounds %struct.Scsi_Host, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %host_lock23 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %host_lock23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %195, i32 noundef %call7) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stex_halt(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readnone %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @S6flag, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  %ver.i = alloca %struct.st_drvver, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %id3.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id3.i, align 8
  %lun5.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %lun5.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lun5.i, align 8
  %conv.i = trunc i64 %9 to i32
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %mu_status.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %mu_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mu_status.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %11, label %entry.stex_queuecommand_lck.exit_crit_edge [
    i32 6, label %if.then.i
    i32 2, label %if.end12.i
  ], !prof !234

entry.stex_queuecommand_lck.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_queuecommand_lck.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

if.end12.i:                                       ; preds = %entry
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %14 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmnd.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %17, label %if.end12.i.sw.epilog.i_crit_edge [
    i8 90, label %sw.bb.i
    i8 -96, label %sw.bb28.i
    i8 0, label %sw.bb36.i
    i8 18, label %sw.bb44.i
    i8 -29, label %sw.bb72.i
  ]

if.end12.i.sw.epilog.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end12.i
  %arrayidx16.i = getelementptr i8, ptr %15, i32 2
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16.i, align 1
  %trunc.i = trunc i8 %20 to i6
  %21 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.91)
  switch i6 %trunc.i, label %if.else.i [
    i6 8, label %sw.bb.i.if.then25.i_crit_edge
    i6 -1, label %sw.bb.i.if.then25.i_crit_edge8
  ]

sw.bb.i.if.then25.i_crit_edge8:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

sw.bb.i.if.then25.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

if.then25.i:                                      ; preds = %sw.bb.i.if.then25.i_crit_edge, %sw.bb.i.if.then25.i_crit_edge8
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %22 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdb.i.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %24 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nents.i.i.i, align 4
  %call2.i.i = tail call i32 @sg_copy_from_buffer(ptr noundef %23, i32 noundef %25, ptr noundef nonnull @stex_queuecommand_lck.ms10_caching_page, i32 noundef 12) #12
  %result26.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %26 = ptrtoint ptr %result26.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %result26.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_build_sense(ptr noundef %cmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

sw.bb28.i:                                        ; preds = %if.end12.i
  %cardtype.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %cardtype.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cardtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp29.i = icmp eq i32 %28, 0
  br i1 %cmp29.i, label %sw.bb28.i.if.then34.i_crit_edge, label %lor.lhs.false31.i

sw.bb28.i.if.then34.i_crit_edge:                  ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

lor.lhs.false31.i:                                ; preds = %sw.bb28.i
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 21
  %29 = ptrtoint ptr %max_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_id.i, align 4
  %sub.i = add i32 %30, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp32.i = icmp eq i32 %7, %sub.i
  br i1 %cmp32.i, label %lor.lhs.false31.i.if.then34.i_crit_edge, label %lor.lhs.false31.i.sw.epilog.i_crit_edge

lor.lhs.false31.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

lor.lhs.false31.i.if.then34.i_crit_edge:          ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false31.i.if.then34.i_crit_edge, %sw.bb28.i.if.then34.i_crit_edge
  tail call void @scsi_build_sense(ptr noundef %cmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

sw.bb36.i:                                        ; preds = %if.end12.i
  %max_id37.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 21
  %31 = ptrtoint ptr %max_id37.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_id37.i, align 4
  %sub38.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub38.i)
  %cmp39.i = icmp eq i32 %7, %sub38.i
  br i1 %cmp39.i, label %if.then41.i, label %sw.bb36.i.sw.epilog.i_crit_edge

sw.bb36.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then41.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #14
  %result42.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %33 = ptrtoint ptr %result42.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %result42.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

sw.bb44.i:                                        ; preds = %if.end12.i
  %conv45.i = and i64 %9, 4294967295
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 22
  %34 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %max_lun.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv45.i, i64 %35)
  %cmp46.not.i = icmp ult i64 %conv45.i, %35
  br i1 %cmp46.not.i, label %if.end50.i, label %if.then48.i

if.then48.i:                                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #14
  %result49.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %36 = ptrtoint ptr %result49.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 65536, ptr %result49.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

if.end50.i:                                       ; preds = %sw.bb44.i
  %max_id51.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 21
  %37 = ptrtoint ptr %max_id51.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_id51.i, align 4
  %sub52.i = add i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub52.i)
  %cmp53.not.i = icmp eq i32 %7, %sub52.i
  br i1 %cmp53.not.i, label %if.end56.i, label %if.end50.i.sw.epilog.i_crit_edge

if.end50.i.sw.epilog.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool57.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i, label %if.end56.i.if.else70.i_crit_edge

if.end56.i.if.else70.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else70.i

land.lhs.true.i:                                  ; preds = %if.end56.i
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 17
  %39 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool59.not.i = icmp eq i32 %40, 0
  br i1 %tobool59.not.i, label %land.lhs.true60.i, label %land.lhs.true.i.if.else70.i_crit_edge

land.lhs.true.i.if.else70.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else70.i

land.lhs.true60.i:                                ; preds = %land.lhs.true.i
  %arrayidx62.i = getelementptr i8, ptr %15, i32 1
  %41 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx62.i, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp65.i = icmp eq i8 %43, 0
  br i1 %cmp65.i, label %if.then67.i, label %land.lhs.true60.i.if.else70.i_crit_edge

land.lhs.true60.i.if.else70.i_crit_edge:          ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else70.i

if.then67.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #14
  %sdb.i.i235.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %44 = ptrtoint ptr %sdb.i.i235.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdb.i.i235.i, align 4
  %nents.i.i236.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %46 = ptrtoint ptr %nents.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nents.i.i236.i, align 4
  %call2.i237.i = tail call i32 @sg_copy_from_buffer(ptr noundef %45, i32 noundef %47, ptr noundef nonnull @console_inq_page, i32 noundef 64) #12
  %result69.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %48 = ptrtoint ptr %result69.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %result69.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

if.else70.i:                                      ; preds = %land.lhs.true60.i.if.else70.i_crit_edge, %land.lhs.true.i.if.else70.i_crit_edge, %if.end56.i.if.else70.i_crit_edge
  tail call void @scsi_build_sense(ptr noundef %cmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #12
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %stex_queuecommand_lck.exit

sw.bb72.i:                                        ; preds = %if.end12.i
  %arrayidx74.i = getelementptr i8, ptr %15, i32 1
  %49 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %50)
  %cmp76.i = icmp eq i8 %50, 16
  br i1 %cmp76.i, label %if.then78.i, label %sw.bb72.i.sw.epilog.i_crit_edge

sw.bb72.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then78.i:                                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ver.i) #12
  %51 = getelementptr inbounds i8, ptr %ver.i, i32 20
  %52 = call ptr @memset(ptr %51, i32 255, i32 20)
  %53 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 6, ptr %ver.i, align 4
  %minor.i = getelementptr inbounds %struct.st_drvver, ptr %ver.i, i32 0, i32 1
  %54 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %minor.i, align 4
  %oem.i = getelementptr inbounds %struct.st_drvver, ptr %ver.i, i32 0, i32 2
  %55 = ptrtoint ptr %oem.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %oem.i, align 4
  %build.i = getelementptr inbounds %struct.st_drvver, ptr %ver.i, i32 0, i32 3
  %56 = ptrtoint ptr %build.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %build.i, align 4
  %signature.i = getelementptr inbounds %struct.st_drvver, ptr %ver.i, i32 0, i32 4
  %57 = ptrtoint ptr %signature.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1312903233, ptr %signature.i, align 4
  %max_id80.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 21
  %58 = ptrtoint ptr %max_id80.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_id80.i, align 4
  %60 = trunc i32 %59 to i8
  %conv82.i = add i8 %60, -1
  %console_id.i = getelementptr inbounds %struct.st_drvver, ptr %ver.i, i32 0, i32 5
  %61 = ptrtoint ptr %console_id.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv82.i, ptr %console_id.i, align 4
  %host83.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 2
  %62 = ptrtoint ptr %host83.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host83.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %host_no.i, align 4
  %conv84.i = trunc i32 %65 to i8
  %host_no85.i = getelementptr inbounds %struct.st_drvver, ptr %ver.i, i32 0, i32 6
  %66 = ptrtoint ptr %host_no85.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv84.i, ptr %host_no85.i, align 1
  %sdb.i.i238.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %67 = ptrtoint ptr %sdb.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdb.i.i238.i, align 4
  %nents.i.i239.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %69 = ptrtoint ptr %nents.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nents.i.i239.i, align 4
  %call2.i240.i = call i32 @sg_copy_from_buffer(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %ver.i, i32 noundef 40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call2.i240.i)
  %cmp87.i = icmp eq i32 %call2.i240.i, 40
  %spec.select.i = select i1 %cmp87.i, i32 0, i32 458752
  %71 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select.i, ptr %71, align 4
  call void @scsi_done(ptr noundef %cmd) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ver.i) #12
  br label %stex_queuecommand_lck.exit

sw.epilog.i:                                      ; preds = %sw.bb72.i.sw.epilog.i_crit_edge, %if.end50.i.sw.epilog.i_crit_edge, %sw.bb36.i.sw.epilog.i_crit_edge, %lor.lhs.false31.i.sw.epilog.i_crit_edge, %if.end12.i.sw.epilog.i_crit_edge
  %tag96.i = getelementptr i8, ptr %cmd, i32 -172
  %73 = ptrtoint ptr %tag96.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tag96.i, align 4
  %conv97.i = trunc i32 %74 to i16
  %conv98.i = and i32 %74, 65535
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 26
  %75 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %can_queue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv98.i, i32 %76)
  %cmp99.not.i = icmp slt i32 %conv98.i, %76
  br i1 %cmp99.not.i, label %if.end108.i, label %sw.epilog.i.stex_queuecommand_lck.exit_crit_edge, !prof !235

sw.epilog.i.stex_queuecommand_lck.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_queuecommand_lck.exit

if.end108.i:                                      ; preds = %sw.epilog.i
  %alloc_rq.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3
  %77 = ptrtoint ptr %alloc_rq.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %alloc_rq.i, align 4
  %call109.i = tail call ptr %78(ptr noundef %hostdata.i) #12
  %conv110.i = trunc i64 %9 to i8
  %lun111.i = getelementptr inbounds %struct.req_msg, ptr %call109.i, i32 0, i32 1
  %79 = ptrtoint ptr %lun111.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv110.i, ptr %lun111.i, align 2
  %conv112.i = trunc i32 %7 to i8
  %target.i = getelementptr inbounds %struct.req_msg, ptr %call109.i, i32 0, i32 2
  %80 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv112.i, ptr %target.i, align 1
  %cdb.i = getelementptr inbounds %struct.req_msg, ptr %call109.i, i32 0, i32 7
  %81 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmnd.i, align 4
  %83 = call ptr @memcpy(ptr %cdb.i, ptr %82, i32 16)
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %84 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sc_data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %switch.selectcmp.i = icmp eq i32 %85, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %switch.selectcmp241.i = icmp eq i32 %85, 2
  %switch.select242.i = select i1 %switch.selectcmp241.i, i8 1, i8 %switch.select.i
  %data_dir122.i = getelementptr inbounds %struct.req_msg, ptr %call109.i, i32 0, i32 5
  %86 = ptrtoint ptr %data_dir122.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %switch.select242.i, ptr %data_dir122.i, align 2
  %ccb.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %87 = ptrtoint ptr %ccb.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ccb.i, align 4
  %cmd128.i = getelementptr %struct.st_ccb, ptr %88, i32 %conv98.i, i32 1
  %89 = ptrtoint ptr %cmd128.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %cmd, ptr %cmd128.i, align 4
  %90 = load ptr, ptr %ccb.i, align 4
  %sense_bufflen.i = getelementptr %struct.st_ccb, ptr %90, i32 %conv98.i, i32 3
  %91 = ptrtoint ptr %sense_bufflen.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 96, ptr %sense_bufflen.i, align 4
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %92 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sense_buffer.i, align 4
  %94 = load ptr, ptr %ccb.i, align 4
  %sense_buffer135.i = getelementptr %struct.st_ccb, ptr %94, i32 %conv98.i, i32 2
  %95 = ptrtoint ptr %sense_buffer135.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %sense_buffer135.i, align 4
  %map_sg.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %map_sg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map_sg.i, align 4
  %98 = load ptr, ptr %ccb.i, align 4
  %arrayidx138.i = getelementptr %struct.st_ccb, ptr %98, i32 %conv98.i
  %call139.i = tail call i32 %97(ptr noundef %hostdata.i, ptr noundef %call109.i, ptr noundef %arrayidx138.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool140.not.i, label %if.then141.i, label %if.end108.i.if.end146.i_crit_edge

if.end108.i.if.end146.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i

if.then141.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %ccb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ccb.i, align 4
  %sg_count.i = getelementptr %struct.st_ccb, ptr %100, i32 %conv98.i, i32 4
  %101 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %sg_count.i, align 4
  %variable.i = getelementptr inbounds %struct.req_msg, ptr %call109.i, i32 0, i32 8
  %102 = ptrtoint ptr %variable.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 0, ptr %variable.i, align 4
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then141.i, %if.end108.i.if.end146.i_crit_edge
  %send.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 2
  %103 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %send.i, align 4
  tail call void %104(ptr noundef %hostdata.i, ptr noundef %call109.i, i16 noundef zeroext %conv97.i) #12
  br label %stex_queuecommand_lck.exit

stex_queuecommand_lck.exit:                       ; preds = %if.end146.i, %sw.epilog.i.stex_queuecommand_lck.exit_crit_edge, %if.then78.i, %if.else70.i, %if.then67.i, %if.then48.i, %if.then41.i, %if.then34.i, %if.else.i, %if.then25.i, %if.then.i, %entry.stex_queuecommand_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %if.end146.i ], [ 0, %if.then78.i ], [ 0, %if.then48.i ], [ 0, %if.then41.i ], [ 0, %if.then34.i ], [ 4181, %entry.stex_queuecommand_lck.exit_crit_edge ], [ 0, %if.else.i ], [ 0, %if.then25.i ], [ 0, %if.else70.i ], [ 0, %if.then67.i ], [ 4181, %sw.epilog.i.stex_queuecommand_lck.exit_crit_edge ]
  %105 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %call2) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_abort(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %tag2 = getelementptr i8, ptr %cmd, i32 -172
  %4 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag2, align 4
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.38, ptr noundef %cmd, ptr noundef nonnull @.str.39) #12
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %conv9 = and i32 %5, 65535
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %11)
  %cmp10 = icmp slt i32 %conv9, %11
  br i1 %cmp10, label %land.lhs.true, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %entry
  %ccb = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccb, align 4
  %arrayidx = getelementptr %struct.st_ccb, ptr %13, i32 %conv9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true12

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true12:                                  ; preds = %land.lhs.true
  %cmd16 = getelementptr %struct.st_ccb, ptr %13, i32 %conv9, i32 1
  %16 = ptrtoint ptr %cmd16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd16, align 4
  %cmp17 = icmp eq ptr %17, %cmd
  br i1 %cmp17, label %if.then, label %land.lhs.true12.out_crit_edge

land.lhs.true12.out_crit_edge:                    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then:                                          ; preds = %land.lhs.true12
  %wait_ccb = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %18 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %wait_ccb, align 4
  %cardtype = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cardtype, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %20, label %if.else65 [
    i32 4, label %if.then24
    i32 5, label %if.then42
  ]

if.then24:                                        ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %7, i32 156
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %22, label %do.body34 [
    i32 0, label %if.then24.fail_out_crit_edge
    i32 -1, label %if.then24.fail_out_crit_edge148
  ]

if.then24.fail_out_crit_edge148:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_out

if.then24.fail_out_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_out

do.body34:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  tail call void @arm_heavy_mb() #12
  %add.ptr37 = getelementptr i8, ptr %7, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %22) #12, !srcloc !197
  tail call fastcc void @stex_ss_mu_intr(ptr noundef %hostdata)
  br label %if.end90

if.then42:                                        ; preds = %if.then
  %add.ptr45 = getelementptr i8, ptr %7, i32 200
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %24, label %do.body56 [
    i32 -1, label %if.then42.fail_out_crit_edge
    i32 0, label %if.then42.if.end64_crit_edge
  ]

if.then42.if.end64_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then42.fail_out_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_out

do.body56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %add.ptr59 = getelementptr i8, ptr %7, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %24) #12, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %add.ptr63 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 16384) #12, !srcloc !197
  br label %if.end64

if.end64:                                         ; preds = %do.body56, %if.then42.if.end64_crit_edge
  tail call fastcc void @stex_ss_mu_intr(ptr noundef %hostdata)
  br label %if.end90

if.else65:                                        ; preds = %if.then
  %add.ptr68 = getelementptr i8, ptr %7, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %26, label %do.body79 [
    i32 0, label %if.else65.fail_out_crit_edge
    i32 -1, label %if.else65.fail_out_crit_edge149
  ]

if.else65.fail_out_crit_edge149:                  ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_out

if.else65.fail_out_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_out

do.body79:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %26) #12, !srcloc !197
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call fastcc void @stex_mu_intr(ptr noundef %hostdata, i32 noundef %28)
  br label %if.end90

if.end90:                                         ; preds = %do.body79, %if.end64, %do.body34
  %30 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wait_ccb, align 4
  %cmp92 = icmp eq ptr %31, null
  br i1 %cmp92, label %do.end97, label %if.end90.fail_out_crit_edge

if.end90.fail_out_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_out

do.end97:                                         ; preds = %if.end90
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 2, i32 1
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 3
  %34 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end97.pci_name.exit_crit_edge

do.end97.pci_name.exit_crit_edge:                 ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end97.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %37, %if.end.i.i ], [ %35, %do.end97.pci_name.exit_crit_edge ]
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i) #15
  br label %out

fail_out:                                         ; preds = %if.end90.fail_out_crit_edge, %if.else65.fail_out_crit_edge, %if.else65.fail_out_crit_edge149, %if.then42.fail_out_crit_edge, %if.then24.fail_out_crit_edge, %if.then24.fail_out_crit_edge148
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #12
  %38 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wait_ccb, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %39, align 4
  store ptr null, ptr %wait_ccb, align 4
  br label %out

out:                                              ; preds = %fail_out, %pci_name.exit, %land.lhs.true12.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %result.0 = phi i32 [ 8195, %fail_out ], [ 8194, %pci_name.exit ], [ 8194, %land.lhs.true12.out_crit_edge ], [ 8194, %land.lhs.true.out_crit_edge ], [ 8194, %entry.out_crit_edge ]
  %41 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call6) #12
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_reset(ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.38, ptr noundef %shost_gendev, ptr noundef nonnull @.str.58) #15
  %call = tail call fastcc i32 @stex_do_reset(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 8194, i32 8195
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_slave_config(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %use_10_for_rw = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %0 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %use_10_for_rw, align 4
  %bf.set3 = or i64 %bf.load, 422212465065984
  store i64 %bf.set3, ptr %use_10_for_rw, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %1 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %2, i32 noundef 6000) #12
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @stex_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %capacity)
  %cmp = icmp ult i64 %capacity, 2097152
  %mul = select i1 %cmp, i32 2048, i32 16065
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp168 = icmp ult i64 %capacity, 4294967296
  br i1 %cmp168, label %if.then172, label %if.else178, !prof !235

if.then172:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv173 = trunc i64 %capacity to i32
  %div176 = udiv i32 %conv173, %mul
  br label %if.end182

if.else178:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %capacity) #17, !srcloc !244
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  %extract.t298 = trunc i64 %asmresult1.i to i32
  br label %if.end182

if.end182:                                        ; preds = %if.else178, %if.then172
  %capacity.addr.0.off0 = phi i32 [ %div176, %if.then172 ], [ %extract.t298, %if.else178 ]
  %spec.select = select i1 %cmp, i32 32, i32 63
  %spec.select271 = select i1 %cmp, i32 64, i32 255
  %1 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select271, ptr %geom, align 4
  %arrayidx184 = getelementptr i32, ptr %geom, i32 1
  %2 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %arrayidx184, align 4
  %arrayidx186 = getelementptr i32, ptr %geom, i32 2
  %3 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %capacity.addr.0.off0, ptr %arrayidx186, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stex_ss_mu_intr(ptr nocapture noundef %hba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %out_req_cnt = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 25
  %0 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !245

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %mu_status = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 22
  %2 = ptrtoint ptr %mu_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mu_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %lor.rhs.cleanup_crit_edge, label %while.cond.preheader, !prof !245

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.rhs
  %scratch5 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 17
  %sts_count = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 29
  %4 = ptrtoint ptr %sts_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sts_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp3197.not = icmp eq i16 %5, 0
  br i1 %cmp3197.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %status_tail = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 12
  %status_buffer = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 13
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %pdev = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %ccb39 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 15
  %wait_ccb = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %count.0198 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.backedge.while.body_crit_edge ]
  %6 = ptrtoint ptr %scratch5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scratch5, align 4
  %8 = ptrtoint ptr %status_tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_tail, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool7.not = icmp sgt i32 %12, -1
  br i1 %tobool7.not, label %while.body.cleanup_crit_edge, label %if.end17, !prof !245

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %13 = ptrtoint ptr %status_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %status_buffer, align 4
  %add.ptr19 = getelementptr %struct.status_msg, ptr %14, i32 %9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr, align 4
  %inc = add nuw nsw i32 %count.0198, 1
  %16 = ptrtoint ptr %status_tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status_tail, align 4
  %inc21 = add i32 %17, 1
  %18 = ptrtoint ptr %sts_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sts_count, align 4
  %conv23 = zext i16 %19 to i32
  %add = add nuw nsw i32 %conv23, 1
  %rem = urem i32 %inc21, %add
  store i32 %rem, ptr %status_tail, align 4
  %conv26 = and i32 %12, 65535
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %23)
  %cmp27.not = icmp slt i32 %conv26, %23
  br i1 %cmp27.not, label %if.end37, label %do.end, !prof !235

do.end:                                           ; preds = %if.end17
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %29, %if.end.i.i ], [ %27, %do.end.pci_name.exit_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %retval.0.i.i) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else130, %stex_scsi_done.exit, %pci_name.exit187, %pci_name.exit
  %30 = ptrtoint ptr %sts_count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sts_count, align 4
  %conv = zext i16 %31 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end37:                                         ; preds = %if.end17
  %32 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out_req_cnt, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %out_req_cnt, align 4
  %34 = ptrtoint ptr %ccb39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ccb39, align 4
  %arrayidx = getelementptr %struct.st_ccb, ptr %35, i32 %conv26
  %36 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wait_ccb, align 4
  %cmp40 = icmp eq ptr %37, %arrayidx
  br i1 %cmp40, label %if.then48, label %if.end37.if.end50_crit_edge, !prof !245

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %wait_ccb, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end37.if.end50_crit_edge
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %cmp51 = icmp eq ptr %40, null
  br i1 %cmp51, label %do.end62, label %if.end67, !prof !245

do.end62:                                         ; preds = %if.end50
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %init_name.i.i182 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44, i32 3
  %43 = ptrtoint ptr %init_name.i.i182 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i182, align 8
  %tobool.not.i.i183 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i183, label %if.end.i.i185, label %do.end62.pci_name.exit187_crit_edge

do.end62.pci_name.exit187_crit_edge:              ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit187

if.end.i.i185:                                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i184 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %45 = ptrtoint ptr %dev.i184 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i184, align 4
  br label %pci_name.exit187

pci_name.exit187:                                 ; preds = %if.end.i.i185, %do.end62.pci_name.exit187_crit_edge
  %retval.0.i.i186 = phi ptr [ %46, %if.end.i.i185 ], [ %44, %do.end62.pci_name.exit187_crit_edge ]
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i186) #15
  br label %while.cond.backedge

if.end67:                                         ; preds = %if.end50
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx, align 4
  %and69 = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else, label %if.then77, !prof !245

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %srb_status = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 6
  %48 = ptrtoint ptr %srb_status to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %srb_status, align 4
  %scsi_status = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 7
  %49 = ptrtoint ptr %scsi_status to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %scsi_status, align 1
  br label %if.end118

if.else:                                          ; preds = %if.end67
  %srb_status78 = getelementptr %struct.status_msg, ptr %14, i32 %9, i32 3
  %50 = ptrtoint ptr %srb_status78 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %srb_status78, align 2
  %srb_status79 = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 6
  %52 = ptrtoint ptr %srb_status79 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %srb_status79, align 4
  %scsi_status80 = getelementptr %struct.status_msg, ptr %14, i32 %9, i32 4
  %53 = ptrtoint ptr %scsi_status80 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %scsi_status80, align 1
  %scsi_status81 = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 7
  %55 = ptrtoint ptr %scsi_status81 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %scsi_status81, align 1
  %payload_sz = getelementptr %struct.status_msg, ptr %14, i32 %9, i32 6
  %56 = ptrtoint ptr %payload_sz to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %payload_sz, align 1
  %58 = add i8 %57, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %58)
  %59 = icmp ult i8 %58, -33
  br i1 %59, label %do.end98, label %if.else103, !prof !245

do.end98:                                         ; preds = %if.else
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 4
  %init_name.i.i188 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44, i32 3
  %62 = ptrtoint ptr %init_name.i.i188 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i188, align 8
  %tobool.not.i.i189 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i189, label %if.end.i.i191, label %do.end98.pci_name.exit193_crit_edge

do.end98.pci_name.exit193_crit_edge:              ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit193

if.end.i.i191:                                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i190 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %64 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i190, align 4
  br label %pci_name.exit193

pci_name.exit193:                                 ; preds = %if.end.i.i191, %do.end98.pci_name.exit193_crit_edge
  %retval.0.i.i192 = phi ptr [ %65, %if.end.i.i191 ], [ %63, %do.end98.pci_name.exit193_crit_edge ]
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i192) #15
  br label %if.end107

if.else103:                                       ; preds = %if.else
  %conv82 = zext i8 %57 to i32
  %mul = shl nuw nsw i32 %conv82, 2
  %sub = add nsw i32 %mul, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool104.not = icmp eq i32 %sub, 0
  br i1 %tobool104.not, label %if.else103.if.end107_crit_edge, label %if.then105

if.else103.if.end107_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then105:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @stex_copy_data(ptr noundef %arrayidx, ptr noundef %add.ptr19, i32 noundef %sub)
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.else103.if.end107_crit_edge, %pci_name.exit193
  %cmd = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 1
  %66 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cmd, align 4
  %cmp108.not = icmp eq ptr %67, null
  br i1 %cmp108.not, label %if.end107.if.end118_crit_edge, label %if.then116, !prof !245

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then116:                                       ; preds = %if.end107
  %68 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmnd.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %73)
  %cmp.i = icmp eq i8 %73, -40
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then116.if.end118_crit_edge

if.then116.if.end118_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true.i:                                  ; preds = %if.then116
  %74 = ptrtoint ptr %scsi_status80 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %scsi_status80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp3.not.i = icmp eq i8 %75, 2
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end118_crit_edge, label %if.then.i

land.lhs.true.i.if.end118_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %69, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length.i.i, align 4
  %variable.i = getelementptr %struct.status_msg, ptr %14, i32 %9, i32 7
  %78 = ptrtoint ptr %variable.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %variable.i, align 2
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #12
  %sub.i = sub i32 %77, %80
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %69, i32 0, i32 5
  %81 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i, ptr %resid_len.i.i, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then.i, %land.lhs.true.i.if.end118_crit_edge, %if.then116.if.end118_crit_edge, %if.end107.if.end118_crit_edge, %if.then77
  %cmd119 = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 1
  %82 = ptrtoint ptr %cmd119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd119, align 4
  %cmp120.not = icmp eq ptr %83, null
  br i1 %cmp120.not, label %if.else130, label %if.then128, !prof !245

if.then128:                                       ; preds = %if.end118
  tail call void @scsi_dma_unmap(ptr noundef nonnull %83) #12
  %84 = ptrtoint ptr %cmd119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmd119, align 4
  %srb_status.i = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 6
  %86 = ptrtoint ptr %srb_status.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %srb_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %switch.i = icmp ult i8 %87, 2
  br i1 %switch.i, label %if.then.i195, label %if.else.i

if.then.i195:                                     ; preds = %if.then128
  %scsi_status.i194 = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 7
  %88 = ptrtoint ptr %scsi_status.i194 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %scsi_status.i194, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %89, label %sw.default.i [
    i8 0, label %if.then.i195.stex_scsi_done.exit_crit_edge
    i8 2, label %sw.bb10.i
    i8 8, label %sw.bb12.i
  ]

if.then.i195.stex_scsi_done.exit_crit_edge:       ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

sw.bb10.i:                                        ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

sw.bb12.i:                                        ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

sw.default.i:                                     ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #14
  %conv7.i = zext i8 %89 to i32
  %or14.i = or i32 %conv7.i, 458752
  br label %stex_scsi_done.exit

if.else.i:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %87)
  %tobool.not.i = icmp sgt i8 %87, -1
  br i1 %tobool.not.i, label %if.else18.i, label %if.else.i.stex_scsi_done.exit_crit_edge

if.else.i.stex_scsi_done.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %87)
  %switch.selectcmp.i = icmp eq i8 %87, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 131072, i32 458752
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %87)
  %switch.selectcmp39.i = icmp eq i8 %87, 10
  %switch.select40.i = select i1 %switch.selectcmp39.i, i32 65536, i32 %switch.select.i
  br label %stex_scsi_done.exit

stex_scsi_done.exit:                              ; preds = %if.else18.i, %if.else.i.stex_scsi_done.exit_crit_edge, %sw.default.i, %sw.bb12.i, %sw.bb10.i, %if.then.i195.stex_scsi_done.exit_crit_edge
  %result.0.i = phi i32 [ %or14.i, %sw.default.i ], [ 131080, %sw.bb12.i ], [ 2, %sw.bb10.i ], [ 0, %if.then.i195.stex_scsi_done.exit_crit_edge ], [ 2, %if.else.i.stex_scsi_done.exit_crit_edge ], [ %switch.select40.i, %if.else18.i ]
  %result27.i = getelementptr inbounds %struct.scsi_cmnd, ptr %85, i32 0, i32 24
  %91 = ptrtoint ptr %result27.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %result.0.i, ptr %result27.i, align 4
  tail call void @scsi_done(ptr noundef %85) #12
  br label %while.cond.backedge

if.else130:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %req_type = getelementptr %struct.st_ccb, ptr %35, i32 %conv26, i32 5
  %92 = ptrtoint ptr %req_type to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %req_type, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stex_mu_intr(ptr nocapture noundef %hba, i32 noundef %doorbell) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %and = and i32 %doorbell, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !245

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !191
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %status_head = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 11
  %4 = ptrtoint ptr %status_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status_head, align 4
  %sts_count = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 29
  %5 = ptrtoint ptr %sts_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sts_count, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ugt i32 %3, %conv
  br i1 %cmp, label %do.end, label %if.end17, !prof !245

do.end:                                           ; preds = %if.end
  %pdev = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %do.end.pci_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %retval.0.i.i) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %out_req_cnt = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 25
  %13 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp18 = icmp slt i32 %14, 1
  br i1 %cmp18, label %if.end17.if.then30_crit_edge, label %lor.rhs, !prof !245

if.end17.if.then30_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

lor.rhs:                                          ; preds = %if.end17
  %mu_status = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 22
  %15 = ptrtoint ptr %mu_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mu_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp20 = icmp eq i32 %16, 3
  br i1 %cmp20, label %land.rhs, label %lor.rhs.while.cond.preheader_crit_edge

lor.rhs.while.cond.preheader_crit_edge:           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.rhs.while.cond.preheader_crit_edge, %lor.rhs.while.cond.preheader_crit_edge
  %status_tail33 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 12
  %17 = ptrtoint ptr %status_tail33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status_tail33, align 4
  %19 = ptrtoint ptr %status_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp35.not240 = icmp eq i32 %18, %20
  br i1 %cmp35.not240, label %while.cond.preheader.do.body153_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body153_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body153

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %status_buffer.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 13
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %pdev53 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %ccb58 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 15
  %wait_ccb = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 16
  %cardtype124 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 23
  br label %while.body

land.rhs:                                         ; preds = %lor.rhs
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 23
  %21 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp22.not = icmp eq i32 %22, 2
  br i1 %cmp22.not, label %land.rhs.while.cond.preheader_crit_edge, label %land.rhs.if.then30_crit_edge, !prof !235

land.rhs.if.then30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.rhs.while.cond.preheader_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.then30:                                        ; preds = %land.rhs.if.then30_crit_edge, %if.end17.if.then30_crit_edge
  %status_tail = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 12
  %23 = ptrtoint ptr %status_tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %3, ptr %status_tail, align 4
  br label %do.body153

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %24 = phi i32 [ %18, %while.body.lr.ph ], [ %44, %while.cond.backedge.while.body_crit_edge ]
  %25 = ptrtoint ptr %status_buffer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %status_buffer.i, align 4
  %add.ptr.i = getelementptr %struct.status_msg, ptr %26, i32 %24
  %inc.i = add i32 %24, 1
  %27 = ptrtoint ptr %sts_count to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sts_count, align 4
  %conv.i = zext i16 %28 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %rem.i = urem i32 %inc.i, %add.i
  %29 = ptrtoint ptr %status_tail33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rem.i, ptr %status_tail33, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv39 = zext i16 %32 to i32
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv39)
  %cmp40.not = icmp sgt i32 %36, %conv39
  br i1 %cmp40.not, label %if.end56, label %do.end51, !prof !235

do.end51:                                         ; preds = %while.body
  %37 = ptrtoint ptr %pdev53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev53, align 4
  %init_name.i.i217 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 3
  %39 = ptrtoint ptr %init_name.i.i217 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i217, align 8
  %tobool.not.i.i218 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i218, label %if.end.i.i220, label %do.end51.pci_name.exit222_crit_edge

do.end51.pci_name.exit222_crit_edge:              ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit222

if.end.i.i220:                                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i219 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %41 = ptrtoint ptr %dev.i219 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i219, align 4
  br label %pci_name.exit222

pci_name.exit222:                                 ; preds = %if.end.i.i220, %do.end51.pci_name.exit222_crit_edge
  %retval.0.i.i221 = phi ptr [ %42, %if.end.i.i220 ], [ %40, %do.end51.pci_name.exit222_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %retval.0.i.i221) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else151, %stex_scsi_done.exit, %pci_name.exit228, %pci_name.exit222
  %43 = ptrtoint ptr %status_tail33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status_tail33, align 4
  %45 = ptrtoint ptr %status_head to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status_head, align 4
  %cmp35.not = icmp eq i32 %44, %46
  br i1 %cmp35.not, label %while.cond.backedge.do.body153_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.do.body153_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body153

if.end56:                                         ; preds = %while.body
  %47 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %out_req_cnt, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %out_req_cnt, align 4
  %49 = ptrtoint ptr %ccb58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ccb58, align 4
  %arrayidx = getelementptr %struct.st_ccb, ptr %50, i32 %conv39
  %51 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wait_ccb, align 4
  %cmp59 = icmp eq ptr %52, %arrayidx
  br i1 %cmp59, label %if.then67, label %if.end56.if.end69_crit_edge, !prof !245

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %wait_ccb to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %wait_ccb, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end56.if.end69_crit_edge
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %cmp70 = icmp eq ptr %55, null
  br i1 %cmp70, label %do.end81, label %if.end86, !prof !245

do.end81:                                         ; preds = %if.end69
  %56 = ptrtoint ptr %pdev53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev53, align 4
  %init_name.i.i223 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44, i32 3
  %58 = ptrtoint ptr %init_name.i.i223 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i223, align 8
  %tobool.not.i.i224 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i224, label %if.end.i.i226, label %do.end81.pci_name.exit228_crit_edge

do.end81.pci_name.exit228_crit_edge:              ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit228

if.end.i.i226:                                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i225 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %60 = ptrtoint ptr %dev.i225 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i225, align 4
  br label %pci_name.exit228

pci_name.exit228:                                 ; preds = %if.end.i.i226, %do.end81.pci_name.exit228_crit_edge
  %retval.0.i.i227 = phi ptr [ %61, %if.end.i.i226 ], [ %59, %do.end81.pci_name.exit228_crit_edge ]
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i227) #15
  br label %while.cond.backedge

if.end86:                                         ; preds = %if.end69
  %payload_sz = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 6
  %62 = ptrtoint ptr %payload_sz to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %payload_sz, align 1
  %64 = add i8 %63, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %64)
  %65 = icmp ult i8 %64, -33
  br i1 %65, label %do.end103, label %if.else, !prof !245

do.end103:                                        ; preds = %if.end86
  %66 = ptrtoint ptr %pdev53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev53, align 4
  %init_name.i.i229 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44, i32 3
  %68 = ptrtoint ptr %init_name.i.i229 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i.i229, align 8
  %tobool.not.i.i230 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i230, label %if.end.i.i232, label %do.end103.pci_name.exit234_crit_edge

do.end103.pci_name.exit234_crit_edge:             ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit234

if.end.i.i232:                                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i231 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %70 = ptrtoint ptr %dev.i231 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i231, align 4
  br label %pci_name.exit234

pci_name.exit234:                                 ; preds = %if.end.i.i232, %do.end103.pci_name.exit234_crit_edge
  %retval.0.i.i233 = phi ptr [ %71, %if.end.i.i232 ], [ %69, %do.end103.pci_name.exit234_crit_edge ]
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i233) #15
  br label %if.end111

if.else:                                          ; preds = %if.end86
  %conv87 = zext i8 %63 to i32
  %mul = shl nuw nsw i32 %conv87, 2
  %sub = add nsw i32 %mul, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool108.not = icmp eq i32 %sub, 0
  br i1 %tobool108.not, label %if.else.if.end111_crit_edge, label %if.then109

if.else.if.end111_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then109:                                       ; preds = %if.else
  %scsi_status.i = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 4
  %72 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %scsi_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp.not.i = icmp eq i8 %73, 0
  br i1 %cmp.not.i, label %if.end9.i, label %if.then.i

if.then.i:                                        ; preds = %if.then109
  %sense_buffer.i = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 2
  %74 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sense_buffer.i, align 4
  %cmp2.not.i = icmp eq ptr %75, null
  br i1 %cmp2.not.i, label %if.then.i.if.end111_crit_edge, label %if.then4.i

if.then.i.if.end111_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %variable6.i = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 7
  %sense_bufflen.i = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 3
  %76 = ptrtoint ptr %sense_bufflen.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sense_bufflen.i, align 4
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %sub) #12
  %79 = call ptr @memcpy(ptr %75, ptr %variable6.i, i32 %78)
  br label %if.end111

if.end9.i:                                        ; preds = %if.then109
  %cmd.i = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 1
  %80 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cmd.i, align 4
  %cmp10.i = icmp eq ptr %81, null
  br i1 %cmp10.i, label %if.end9.i.if.end111_crit_edge, label %if.end13.i

if.end9.i.if.end111_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %variable15.i = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 7
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %81, i32 0, i32 17
  %82 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sdb.i.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %81, i32 0, i32 17, i32 0, i32 1
  %84 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nents.i.i.i, align 4
  %call2.i.i = tail call i32 @sg_copy_from_buffer(ptr noundef %83, i32 noundef %85, ptr noundef %variable15.i, i32 noundef %sub) #12
  br label %if.end111

if.end111:                                        ; preds = %if.end13.i, %if.end9.i.if.end111_crit_edge, %if.then4.i, %if.then.i.if.end111_crit_edge, %if.else.if.end111_crit_edge, %pci_name.exit234
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx, align 4
  %srb_status = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 3
  %87 = ptrtoint ptr %srb_status to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %srb_status, align 2
  %srb_status113 = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 6
  %89 = ptrtoint ptr %srb_status113 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %srb_status113, align 4
  %scsi_status = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 4
  %90 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %scsi_status, align 1
  %scsi_status114 = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 7
  %92 = ptrtoint ptr %scsi_status114 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %scsi_status114, align 1
  %cmd = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 1
  %93 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cmd, align 4
  %cmp115.not = icmp eq ptr %94, null
  br i1 %cmp115.not, label %if.else151, label %if.then123, !prof !245

if.then123:                                       ; preds = %if.end111
  %95 = ptrtoint ptr %cardtype124 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cardtype124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp125 = icmp eq i32 %96, 2
  br i1 %cmp125, label %if.then127, label %if.then123.if.end128_crit_edge

if.then123.if.end128_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then127:                                       ; preds = %if.then123
  %97 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cmd, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cmnd.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %102)
  %cmp.i = icmp eq i8 %102, -40
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then127.if.end128_crit_edge

if.then127.if.end128_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

land.lhs.true.i:                                  ; preds = %if.then127
  %103 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %scsi_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %104)
  %cmp3.not.i = icmp eq i8 %104, 2
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end128_crit_edge, label %if.then.i237

land.lhs.true.i.if.end128_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then.i237:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %98, i32 0, i32 17, i32 1
  %105 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.i.i, align 4
  %variable.i = getelementptr %struct.status_msg, ptr %26, i32 %24, i32 7
  %107 = ptrtoint ptr %variable.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %variable.i, align 2
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #12
  %sub.i = sub i32 %106, %109
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %98, i32 0, i32 5
  %110 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.i, ptr %resid_len.i.i, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then.i237, %land.lhs.true.i.if.end128_crit_edge, %if.then127.if.end128_crit_edge, %if.then123.if.end128_crit_edge
  %111 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cmd, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %112, i32 0, i32 16
  %113 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cmnd, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -29, i8 %116)
  %cmp132 = icmp eq i8 %116, -29
  br i1 %cmp132, label %land.rhs134, label %if.end128.if.end149_crit_edge

if.end128.if.end149_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

land.rhs134:                                      ; preds = %if.end128
  %arrayidx137 = getelementptr i8, ptr %114, i32 1
  %117 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %118)
  %cmp139 = icmp eq i8 %118, 5
  br i1 %cmp139, label %if.then148, label %land.rhs134.if.end149_crit_edge, !prof !245

land.rhs134.if.end149_crit_edge:                  ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then148:                                       ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @stex_controller_info(ptr noundef %hba, ptr noundef %arrayidx)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %land.rhs134.if.end149_crit_edge, %if.end128.if.end149_crit_edge
  %119 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cmd, align 4
  tail call void @scsi_dma_unmap(ptr noundef %120) #12
  %121 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cmd, align 4
  %123 = ptrtoint ptr %srb_status113 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %srb_status113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %124)
  %switch.i = icmp ult i8 %124, 2
  br i1 %switch.i, label %if.then.i239, label %if.else.i

if.then.i239:                                     ; preds = %if.end149
  %125 = ptrtoint ptr %scsi_status114 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %scsi_status114, align 1
  %127 = zext i8 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %126, label %sw.default.i [
    i8 0, label %if.then.i239.stex_scsi_done.exit_crit_edge
    i8 2, label %sw.bb10.i
    i8 8, label %sw.bb12.i
  ]

if.then.i239.stex_scsi_done.exit_crit_edge:       ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

sw.bb10.i:                                        ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

sw.bb12.i:                                        ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

sw.default.i:                                     ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #14
  %conv7.i = zext i8 %126 to i32
  %or14.i = or i32 %conv7.i, 458752
  br label %stex_scsi_done.exit

if.else.i:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %124)
  %tobool.not.i = icmp sgt i8 %124, -1
  br i1 %tobool.not.i, label %if.else18.i, label %if.else.i.stex_scsi_done.exit_crit_edge

if.else.i.stex_scsi_done.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_scsi_done.exit

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %124)
  %switch.selectcmp.i = icmp eq i8 %124, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 131072, i32 458752
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %124)
  %switch.selectcmp39.i = icmp eq i8 %124, 10
  %switch.select40.i = select i1 %switch.selectcmp39.i, i32 65536, i32 %switch.select.i
  br label %stex_scsi_done.exit

stex_scsi_done.exit:                              ; preds = %if.else18.i, %if.else.i.stex_scsi_done.exit_crit_edge, %sw.default.i, %sw.bb12.i, %sw.bb10.i, %if.then.i239.stex_scsi_done.exit_crit_edge
  %result.0.i = phi i32 [ %or14.i, %sw.default.i ], [ 131080, %sw.bb12.i ], [ 2, %sw.bb10.i ], [ 0, %if.then.i239.stex_scsi_done.exit_crit_edge ], [ 2, %if.else.i.stex_scsi_done.exit_crit_edge ], [ %switch.select40.i, %if.else18.i ]
  %result27.i = getelementptr inbounds %struct.scsi_cmnd, ptr %122, i32 0, i32 24
  %128 = ptrtoint ptr %result27.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %result.0.i, ptr %result27.i, align 4
  tail call void @scsi_done(ptr noundef %122) #12
  br label %while.cond.backedge

if.else151:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  %req_type = getelementptr %struct.st_ccb, ptr %50, i32 %conv39, i32 5
  %129 = ptrtoint ptr %req_type to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %req_type, align 4
  br label %while.cond.backedge

do.body153:                                       ; preds = %while.cond.backedge.do.body153_crit_edge, %if.then30, %while.cond.preheader.do.body153_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %130 = ptrtoint ptr %status_head to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %status_head, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %add.ptr157 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %132) #12, !srcloc !197
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  br label %cleanup

cleanup:                                          ; preds = %do.body153, %pci_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stex_copy_data(ptr nocapture noundef readonly %ccb, ptr noundef %resp, i32 noundef %variable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_status = getelementptr inbounds %struct.status_msg, ptr %resp, i32 0, i32 4
  %0 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scsi_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %sense_buffer = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 2
  %2 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sense_buffer, align 4
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %if.then.return_crit_edge, label %if.then4

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %variable6 = getelementptr inbounds %struct.status_msg, ptr %resp, i32 0, i32 7
  %sense_bufflen = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 3
  %4 = ptrtoint ptr %sense_bufflen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sense_bufflen, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %variable)
  %7 = call ptr @memcpy(ptr %3, ptr %variable6, i32 %6)
  br label %return

if.end9:                                          ; preds = %entry
  %cmd = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %if.end9.return_crit_edge, label %if.end13

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %variable15 = getelementptr inbounds %struct.status_msg, ptr %resp, i32 0, i32 7
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 17, i32 0, i32 1
  %12 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents.i.i, align 4
  %call2.i = tail call i32 @sg_copy_from_buffer(ptr noundef %11, i32 noundef %13, ptr noundef %variable15, i32 noundef %variable) #12
  br label %return

return:                                           ; preds = %if.end13, %if.end9.return_crit_edge, %if.then4, %if.then.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stex_controller_info(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %ccb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %copy_buffer = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 14
  %0 = ptrtoint ptr %copy_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %copy_buffer, align 4
  %cmd = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdb.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 0, i32 1
  %6 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents.i.i, align 4
  %call2.i = tail call i32 @sg_copy_to_buffer(ptr noundef %5, i32 noundef %7, ptr noundef %1, i32 noundef 116) #12
  %8 = call ptr @memset(ptr %1, i32 0, i32 24)
  %pdev = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  %rom_addr = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %rom_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rom_addr, align 4
  %drv_ver = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %drv_ver to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %drv_ver, align 4
  %minor = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %minor, align 4
  %oem = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %oem to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %oem, align 4
  %build = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %build to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %build, align 4
  %19 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %number, align 4
  %conv = zext i8 %23 to i32
  %bus7 = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %bus7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %bus7, align 4
  %25 = load ptr, ptr %pdev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devfn, align 4
  %slot = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %slot, align 4
  %irq_level = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %irq_level to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %irq_level, align 4
  %30 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %irq_vec = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %irq_vec to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %irq_vec, align 4
  %34 = load ptr, ptr %pdev, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vendor, align 8
  %conv11 = zext i16 %36 to i32
  %shl = shl nuw i32 %conv11, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 8
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device, align 2
  %conv13 = zext i16 %38 to i32
  %or = or i32 %shl, %conv13
  %id = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %id, align 4
  %40 = load ptr, ptr %pdev, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %subsystem_vendor, align 4
  %conv15 = zext i16 %42 to i32
  %shl16 = shl nuw i32 %conv15, 16
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 10
  %43 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %subsystem_device, align 2
  %conv18 = zext i16 %44 to i32
  %or19 = or i32 %shl16, %conv18
  %subid = getelementptr inbounds %struct.st_frame, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %subid to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or19, ptr %subid, align 4
  %46 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd, align 4
  %sdb.i.i46 = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %sdb.i.i46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdb.i.i46, align 4
  %nents.i.i47 = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 17, i32 0, i32 1
  %50 = ptrtoint ptr %nents.i.i47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nents.i.i47, align 4
  %call2.i48 = tail call i32 @sg_copy_from_buffer(ptr noundef %49, i32 noundef %51, ptr noundef %1, i32 noundef 116) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stex_do_reset(ptr noundef %hba) unnamed_addr #2 align 64 {
entry:
  %pci_cmd.i = alloca i16, align 2
  %pci_bctl.i = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %mu_status5 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 22
  %4 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mu_status5, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %5, label %if.end92 [
    i32 1, label %if.then
    i32 3, label %while.body.lr.ph
  ]

while.body.lr.ph:                                 ; preds = %entry
  %reset_waitq = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 21
  br label %while.body

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %host_lock9 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %host_lock9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_lock9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call2) #12
  %pdev = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.pci_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %retval.0.i.i) #15
  br label %cleanup129

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.lr.ph
  %flags.0186 = phi i32 [ %call2, %while.body.lr.ph ], [ %call79, %if.end67.while.body_crit_edge ]
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %host_lock20 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %host_lock20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_lock20, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %flags.0186) #12
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1403) #12
  %21 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mu_status5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp28.not = icmp eq i32 %22, 3
  br i1 %cmp28.not, label %if.then39, label %while.body.if.end67_crit_edge

while.body.if.end67_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then39:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call41181 = call i32 @prepare_to_wait_event(ptr noundef %reset_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %24 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mu_status5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp44.not182.not = icmp eq i32 %25, 3
  br i1 %cmp44.not182.not, label %if.then39.cleanup_crit_edge, label %if.then39.for.end_crit_edge

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then39.cleanup_crit_edge
  %__ret40.1184 = phi i32 [ %__ret40.1, %cleanup.cleanup_crit_edge ], [ 5000, %if.then39.cleanup_crit_edge ]
  %call64 = call i32 @schedule_timeout(i32 noundef %__ret40.1184) #12
  %call41 = call i32 @prepare_to_wait_event(ptr noundef %reset_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %26 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mu_status5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp44.not = icmp eq i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool50.not = icmp eq i32 %call64, 0
  %spec.store.select131 = select i1 %tobool50.not, i32 1, i32 %call64
  %__ret40.1 = select i1 %cmp44.not, i32 %call64, i32 %spec.store.select131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret40.1)
  %tobool57.not = icmp eq i32 %__ret40.1, 0
  %not.cmp44.not = xor i1 %cmp44.not, true
  %28 = select i1 %not.cmp44.not, i1 true, i1 %tobool57.not
  br i1 %28, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then39.for.end_crit_edge
  call void @finish_wait(ptr noundef %reset_waitq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end67

if.end67:                                         ; preds = %for.end, %while.body.if.end67_crit_edge
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %host_lock77 = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %host_lock77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host_lock77, align 4
  %call79 = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #12
  %33 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mu_status5, align 4
  %cmp17 = icmp eq i32 %34, 3
  br i1 %cmp17, label %if.end67.while.body_crit_edge, label %if.then87

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then87:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host, align 4
  %host_lock89 = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %host_lock89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host_lock89, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call79) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp90 = icmp ne i32 %34, 2
  %cond = sext i1 %cmp90 to i32
  br label %cleanup129

if.end92:                                         ; preds = %entry
  %39 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %mu_status5, align 4
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  %host_lock95 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %host_lock95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host_lock95, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %call2) #12
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 23
  %44 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cardtype, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %45, label %if.end92.if.end116_crit_edge [
    i32 2, label %if.then98
    i32 0, label %if.then104
    i32 4, label %if.then108
    i32 5, label %if.then113
  ]

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then98:                                        ; preds = %if.end92
  %47 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hba, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %48, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #12, !srcloc !197
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %out_req_cnt.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 25
  %51 = ptrtoint ptr %out_req_cnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %out_req_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp46.i = icmp sgt i32 %52, 0
  br i1 %cmp46.i, label %while.body.lr.ph.i, label %if.then98.stex_yos_reset.exit_crit_edge

if.then98.stex_yos_reset.exit_crit_edge:          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_yos_reset.exit

while.body.lr.ph.i:                               ; preds = %if.then98
  %add.i = add i32 %50, 18000
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %do.end6.i, label %if.end.i

do.end6.i:                                        ; preds = %while.body.i
  %pdev.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %54 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44, i32 3
  %56 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end6.i.if.then22.i_crit_edge

do.end6.i.if.then22.i_crit_edge:                  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

if.end.i.i.i:                                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  br label %if.then22.i

if.end.i:                                         ; preds = %while.body.i
  call void @msleep(i32 noundef 1) #12
  %60 = ptrtoint ptr %out_req_cnt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %out_req_cnt.i, align 4
  %cmp.i = icmp sgt i32 %61, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.stex_yos_reset.exit_crit_edge

if.end.i.stex_yos_reset.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_yos_reset.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.then22.i:                                      ; preds = %if.end.i.i.i, %do.end6.i.if.then22.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %59, %if.end.i.i.i ], [ %57, %do.end6.i.if.then22.i_crit_edge ]
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %retval.0.i.i.i) #15
  br label %stex_yos_reset.exit

stex_yos_reset.exit:                              ; preds = %if.then22.i, %if.end.i.stex_yos_reset.exit_crit_edge, %if.then98.stex_yos_reset.exit_crit_edge
  %.sink.i = phi i32 [ 4, %if.then22.i ], [ 2, %if.then98.stex_yos_reset.exit_crit_edge ], [ 2, %if.end.i.stex_yos_reset.exit_crit_edge ]
  %ret.040.i = phi i32 [ -1, %if.then22.i ], [ 0, %if.then98.stex_yos_reset.exit_crit_edge ], [ 0, %if.end.i.stex_yos_reset.exit_crit_edge ]
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host_lock.i, align 4
  %call15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #12
  %66 = ptrtoint ptr %mu_status5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %mu_status5, align 4
  %reset_waitq.i = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 21
  call void @__wake_up(ptr noundef %reset_waitq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %67 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %host, align 4
  %host_lock26.i = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %host_lock26.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host_lock26.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %70, i32 noundef %call15.i) #12
  br label %cleanup129

if.then104:                                       ; preds = %if.end92
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_cmd.i) #12
  %71 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %pci_cmd.i, align 2, !annotation !251
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_bctl.i) #12
  %72 = ptrtoint ptr %pci_bctl.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %pci_bctl.i, align 1, !annotation !251
  %pdev.i168 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %73 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %74, i32 0, i32 52, i32 0
  %call.i = call i32 @pci_read_config_dword(ptr noundef %74, i32 noundef 0, ptr noundef %arrayidx.i) #12
  %75 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %76, i32 0, i32 52, i32 1
  %call.1.i = call i32 @pci_read_config_dword(ptr noundef %76, i32 noundef 4, ptr noundef %arrayidx.1.i) #12
  %77 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.2.i = getelementptr %struct.pci_dev, ptr %78, i32 0, i32 52, i32 2
  %call.2.i = call i32 @pci_read_config_dword(ptr noundef %78, i32 noundef 8, ptr noundef %arrayidx.2.i) #12
  %79 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.3.i = getelementptr %struct.pci_dev, ptr %80, i32 0, i32 52, i32 3
  %call.3.i = call i32 @pci_read_config_dword(ptr noundef %80, i32 noundef 12, ptr noundef %arrayidx.3.i) #12
  %81 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.4.i = getelementptr %struct.pci_dev, ptr %82, i32 0, i32 52, i32 4
  %call.4.i = call i32 @pci_read_config_dword(ptr noundef %82, i32 noundef 16, ptr noundef %arrayidx.4.i) #12
  %83 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.5.i = getelementptr %struct.pci_dev, ptr %84, i32 0, i32 52, i32 5
  %call.5.i = call i32 @pci_read_config_dword(ptr noundef %84, i32 noundef 20, ptr noundef %arrayidx.5.i) #12
  %85 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.6.i = getelementptr %struct.pci_dev, ptr %86, i32 0, i32 52, i32 6
  %call.6.i = call i32 @pci_read_config_dword(ptr noundef %86, i32 noundef 24, ptr noundef %arrayidx.6.i) #12
  %87 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.7.i = getelementptr %struct.pci_dev, ptr %88, i32 0, i32 52, i32 7
  %call.7.i = call i32 @pci_read_config_dword(ptr noundef %88, i32 noundef 28, ptr noundef %arrayidx.7.i) #12
  %89 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.8.i = getelementptr %struct.pci_dev, ptr %90, i32 0, i32 52, i32 8
  %call.8.i = call i32 @pci_read_config_dword(ptr noundef %90, i32 noundef 32, ptr noundef %arrayidx.8.i) #12
  %91 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.9.i = getelementptr %struct.pci_dev, ptr %92, i32 0, i32 52, i32 9
  %call.9.i = call i32 @pci_read_config_dword(ptr noundef %92, i32 noundef 36, ptr noundef %arrayidx.9.i) #12
  %93 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.10.i = getelementptr %struct.pci_dev, ptr %94, i32 0, i32 52, i32 10
  %call.10.i = call i32 @pci_read_config_dword(ptr noundef %94, i32 noundef 40, ptr noundef %arrayidx.10.i) #12
  %95 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.11.i = getelementptr %struct.pci_dev, ptr %96, i32 0, i32 52, i32 11
  %call.11.i = call i32 @pci_read_config_dword(ptr noundef %96, i32 noundef 44, ptr noundef %arrayidx.11.i) #12
  %97 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.12.i = getelementptr %struct.pci_dev, ptr %98, i32 0, i32 52, i32 12
  %call.12.i = call i32 @pci_read_config_dword(ptr noundef %98, i32 noundef 48, ptr noundef %arrayidx.12.i) #12
  %99 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.13.i = getelementptr %struct.pci_dev, ptr %100, i32 0, i32 52, i32 13
  %call.13.i = call i32 @pci_read_config_dword(ptr noundef %100, i32 noundef 52, ptr noundef %arrayidx.13.i) #12
  %101 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.14.i = getelementptr %struct.pci_dev, ptr %102, i32 0, i32 52, i32 14
  %call.14.i = call i32 @pci_read_config_dword(ptr noundef %102, i32 noundef 56, ptr noundef %arrayidx.14.i) #12
  %103 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev.i168, align 4
  %arrayidx.15.i = getelementptr %struct.pci_dev, ptr %104, i32 0, i32 52, i32 15
  %call.15.i = call i32 @pci_read_config_dword(ptr noundef %104, i32 noundef 60, ptr noundef %arrayidx.15.i) #12
  %105 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i168, align 4
  %bus3.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %bus3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus3.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %self.i, align 4
  %call4.i = call i32 @pci_read_config_byte(ptr noundef %110, i32 noundef 62, ptr noundef nonnull %pci_bctl.i) #12
  %111 = ptrtoint ptr %pci_bctl.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %pci_bctl.i, align 1
  %113 = or i8 %112, 64
  store i8 %113, ptr %pci_bctl.i, align 1
  %114 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %self.i, align 4
  %call7.i = call i32 @pci_write_config_byte(ptr noundef %115, i32 noundef 62, i8 noundef zeroext %113) #12
  call void @msleep(i32 noundef 100) #12
  %116 = ptrtoint ptr %pci_bctl.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pci_bctl.i, align 1
  %118 = and i8 %117, -65
  store i8 %118, ptr %pci_bctl.i, align 1
  %119 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %self.i, align 4
  %call11.i = call i32 @pci_write_config_byte(ptr noundef %120, i32 noundef 62, i8 noundef zeroext %118) #12
  br label %for.body15.i

for.body15.i:                                     ; preds = %if.end.i169.for.body15.i_crit_edge, %if.then104
  %i.156.i = phi i32 [ 0, %if.then104 ], [ %inc24.i, %if.end.i169.for.body15.i_crit_edge ]
  %121 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev.i168, align 4
  %call17.i = call i32 @pci_read_config_word(ptr noundef %122, i32 noundef 4, ptr noundef nonnull %pci_cmd.i) #12
  %123 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %pci_cmd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %124)
  %cmp19.not.i = icmp eq i16 %124, -1
  %125 = and i16 %124, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool.not.i = icmp eq i16 %125, 0
  %or.cond.i = or i1 %cmp19.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i169, label %for.body15.i.stex_hard_reset.exit_crit_edge

for.body15.i.stex_hard_reset.exit_crit_edge:      ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_hard_reset.exit

if.end.i169:                                      ; preds = %for.body15.i
  call void @msleep(i32 noundef 1) #12
  %inc24.i = add nuw nsw i32 %i.156.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 30000
  br i1 %exitcond.not.i, label %if.end.i169.stex_hard_reset.exit_crit_edge, label %if.end.i169.for.body15.i_crit_edge

if.end.i169.for.body15.i_crit_edge:               ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

if.end.i169.stex_hard_reset.exit_crit_edge:       ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %stex_hard_reset.exit

stex_hard_reset.exit:                             ; preds = %if.end.i169.stex_hard_reset.exit_crit_edge, %for.body15.i.stex_hard_reset.exit_crit_edge
  call void @msleep(i32 noundef 5000) #12
  %126 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.i = getelementptr %struct.pci_dev, ptr %127, i32 0, i32 52, i32 0
  %128 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx34.i, align 4
  %call35.i = call i32 @pci_write_config_dword(ptr noundef %127, i32 noundef 0, i32 noundef %129) #12
  %130 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.1.i = getelementptr %struct.pci_dev, ptr %131, i32 0, i32 52, i32 1
  %132 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx34.1.i, align 4
  %call35.1.i = call i32 @pci_write_config_dword(ptr noundef %131, i32 noundef 4, i32 noundef %133) #12
  %134 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.2.i = getelementptr %struct.pci_dev, ptr %135, i32 0, i32 52, i32 2
  %136 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx34.2.i, align 4
  %call35.2.i = call i32 @pci_write_config_dword(ptr noundef %135, i32 noundef 8, i32 noundef %137) #12
  %138 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.3.i = getelementptr %struct.pci_dev, ptr %139, i32 0, i32 52, i32 3
  %140 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx34.3.i, align 4
  %call35.3.i = call i32 @pci_write_config_dword(ptr noundef %139, i32 noundef 12, i32 noundef %141) #12
  %142 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.4.i = getelementptr %struct.pci_dev, ptr %143, i32 0, i32 52, i32 4
  %144 = ptrtoint ptr %arrayidx34.4.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx34.4.i, align 4
  %call35.4.i = call i32 @pci_write_config_dword(ptr noundef %143, i32 noundef 16, i32 noundef %145) #12
  %146 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.5.i = getelementptr %struct.pci_dev, ptr %147, i32 0, i32 52, i32 5
  %148 = ptrtoint ptr %arrayidx34.5.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx34.5.i, align 4
  %call35.5.i = call i32 @pci_write_config_dword(ptr noundef %147, i32 noundef 20, i32 noundef %149) #12
  %150 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.6.i = getelementptr %struct.pci_dev, ptr %151, i32 0, i32 52, i32 6
  %152 = ptrtoint ptr %arrayidx34.6.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx34.6.i, align 4
  %call35.6.i = call i32 @pci_write_config_dword(ptr noundef %151, i32 noundef 24, i32 noundef %153) #12
  %154 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.7.i = getelementptr %struct.pci_dev, ptr %155, i32 0, i32 52, i32 7
  %156 = ptrtoint ptr %arrayidx34.7.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx34.7.i, align 4
  %call35.7.i = call i32 @pci_write_config_dword(ptr noundef %155, i32 noundef 28, i32 noundef %157) #12
  %158 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.8.i = getelementptr %struct.pci_dev, ptr %159, i32 0, i32 52, i32 8
  %160 = ptrtoint ptr %arrayidx34.8.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx34.8.i, align 4
  %call35.8.i = call i32 @pci_write_config_dword(ptr noundef %159, i32 noundef 32, i32 noundef %161) #12
  %162 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.9.i = getelementptr %struct.pci_dev, ptr %163, i32 0, i32 52, i32 9
  %164 = ptrtoint ptr %arrayidx34.9.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx34.9.i, align 4
  %call35.9.i = call i32 @pci_write_config_dword(ptr noundef %163, i32 noundef 36, i32 noundef %165) #12
  %166 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.10.i = getelementptr %struct.pci_dev, ptr %167, i32 0, i32 52, i32 10
  %168 = ptrtoint ptr %arrayidx34.10.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx34.10.i, align 4
  %call35.10.i = call i32 @pci_write_config_dword(ptr noundef %167, i32 noundef 40, i32 noundef %169) #12
  %170 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.11.i = getelementptr %struct.pci_dev, ptr %171, i32 0, i32 52, i32 11
  %172 = ptrtoint ptr %arrayidx34.11.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx34.11.i, align 4
  %call35.11.i = call i32 @pci_write_config_dword(ptr noundef %171, i32 noundef 44, i32 noundef %173) #12
  %174 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.12.i = getelementptr %struct.pci_dev, ptr %175, i32 0, i32 52, i32 12
  %176 = ptrtoint ptr %arrayidx34.12.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx34.12.i, align 4
  %call35.12.i = call i32 @pci_write_config_dword(ptr noundef %175, i32 noundef 48, i32 noundef %177) #12
  %178 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.13.i = getelementptr %struct.pci_dev, ptr %179, i32 0, i32 52, i32 13
  %180 = ptrtoint ptr %arrayidx34.13.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx34.13.i, align 4
  %call35.13.i = call i32 @pci_write_config_dword(ptr noundef %179, i32 noundef 52, i32 noundef %181) #12
  %182 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.14.i = getelementptr %struct.pci_dev, ptr %183, i32 0, i32 52, i32 14
  %184 = ptrtoint ptr %arrayidx34.14.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx34.14.i, align 4
  %call35.14.i = call i32 @pci_write_config_dword(ptr noundef %183, i32 noundef 56, i32 noundef %185) #12
  %186 = ptrtoint ptr %pdev.i168 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pdev.i168, align 4
  %arrayidx34.15.i = getelementptr %struct.pci_dev, ptr %187, i32 0, i32 52, i32 15
  %188 = ptrtoint ptr %arrayidx34.15.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx34.15.i, align 4
  %call35.15.i = call i32 @pci_write_config_dword(ptr noundef %187, i32 noundef 60, i32 noundef %189) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_bctl.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_cmd.i) #12
  br label %if.end116

if.then108:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  call void @arm_heavy_mb() #12
  %190 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hba, align 4
  %add.ptr.i170 = getelementptr i8, ptr %191, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 65536) #12, !srcloc !197
  %192 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hba, align 4
  %add.ptr2.i = getelementptr i8, ptr %193, i32 32
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  call void @msleep(i32 noundef 5000) #12
  br label %if.end116

if.then113:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  call void @arm_heavy_mb() #12
  %195 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hba, align 4
  %add.ptr.i171 = getelementptr i8, ptr %196, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 65536) #12, !srcloc !197
  call void @msleep(i32 noundef 5000) #12
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.then108, %stex_hard_reset.exit, %if.end92.if.end116_crit_edge
  call fastcc void @return_abnormal_state(ptr noundef %hba, i32 noundef 8)
  %call117 = call fastcc i32 @stex_handshake(ptr noundef %hba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.end116.cleanup129_crit_edge, label %do.end124

if.end116.cleanup129_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

do.end124:                                        ; preds = %if.end116
  %pdev126 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 5
  %197 = ptrtoint ptr %pdev126 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pdev126, align 4
  %init_name.i.i172 = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 44, i32 3
  %199 = ptrtoint ptr %init_name.i.i172 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %init_name.i.i172, align 8
  %tobool.not.i.i173 = icmp eq ptr %200, null
  br i1 %tobool.not.i.i173, label %if.end.i.i175, label %do.end124.pci_name.exit177_crit_edge

do.end124.pci_name.exit177_crit_edge:             ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit177

if.end.i.i175:                                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i174 = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 44
  %201 = ptrtoint ptr %dev.i174 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i174, align 4
  br label %pci_name.exit177

pci_name.exit177:                                 ; preds = %if.end.i.i175, %do.end124.pci_name.exit177_crit_edge
  %retval.0.i.i176 = phi ptr [ %202, %if.end.i.i175 ], [ %200, %do.end124.pci_name.exit177_crit_edge ]
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %retval.0.i.i176) #15
  br label %cleanup129

cleanup129:                                       ; preds = %pci_name.exit177, %if.end116.cleanup129_crit_edge, %stex_yos_reset.exit, %if.then87, %pci_name.exit
  %retval.0 = phi i32 [ 0, %pci_name.exit ], [ %cond, %if.then87 ], [ %ret.040.i, %stex_yos_reset.exit ], [ -1, %pci_name.exit177 ], [ 0, %if.end116.cleanup129_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @return_abnormal_state(ptr nocapture noundef readonly %hba, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %can_queue32 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %can_queue32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_queue32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp733 = icmp sgt i32 %7, 0
  br i1 %cmp733, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ccb9 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 15
  %shl = shl i32 %status, 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv535 = phi i32 [ 0, %for.body.lr.ph ], [ %conv5, %for.inc.for.body_crit_edge ]
  %tag.034 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %ccb9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccb9, align 4
  %arrayidx = getelementptr %struct.st_ccb, ptr %9, i32 %conv535
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp10 = icmp eq ptr %11, null
  br i1 %cmp10, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %cmd = getelementptr %struct.st_ccb, ptr %9, i32 %conv535, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then13

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_dma_unmap(ptr noundef nonnull %14) #12
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %result, align 4
  %18 = load ptr, ptr %cmd, align 4
  tail call void @scsi_done(ptr noundef %18) #12
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cmd, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i16 %tag.034, 1
  %conv5 = zext i16 %inc to i32
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %can_queue, align 4
  %cmp7 = icmp sgt i32 %23, %conv5
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %5, %entry.for.end_crit_edge ], [ %21, %for.inc.for.end_crit_edge ]
  %host_lock20 = getelementptr inbounds %struct.Scsi_Host, ptr %.lcssa, i32 0, i32 4
  %24 = ptrtoint ptr %host_lock20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_lock20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @stex_alloc_req(ptr nocapture noundef %hba) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mem = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mem, align 4
  %req_head = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 9
  %2 = ptrtoint ptr %req_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_head, align 4
  %rq_size = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %4 = ptrtoint ptr %rq_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rq_size, align 2
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %inc = add i32 %3, 1
  %rq_count = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 27
  %6 = ptrtoint ptr %rq_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rq_count, align 4
  %conv2 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv2, 1
  %rem = urem i32 %inc, %add
  store i32 %rem, ptr %req_head, align 4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_map_sg(ptr nocapture noundef readonly %hba, ptr nocapture noundef %req, ptr nocapture noundef %ccb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %call = tail call i32 @scsi_dma_map(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !245

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/stex.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 433, 0\0A.popsection", ""() #12, !srcloc !255
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %do.end8.if.end24_crit_edge, label %for.body.preheader

do.end8.if.end24_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

for.body.preheader:                               ; preds = %do.end8
  %variable = getelementptr inbounds %struct.req_msg, ptr %req, i32 0, i32 8
  %sg_count = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 4
  %2 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %sg_count, align 4
  %conv = trunc i32 %call to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %variable to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %variable, align 4
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sg_tablesize, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %max_sg_count = getelementptr inbounds %struct.req_msg, ptr %req, i32 1, i32 1
  %10 = ptrtoint ptr %max_sg_count to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %max_sg_count, align 2
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sz_in_byte = getelementptr inbounds %struct.req_msg, ptr %req, i32 1, i32 3
  %14 = ptrtoint ptr %sz_in_byte to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sz_in_byte, align 4
  %add.ptr = getelementptr %struct.req_msg, ptr %req, i32 1, i32 7
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.047 = phi ptr [ %call19, %for.body.for.body_crit_edge ], [ %16, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.047, i32 0, i32 4
  %17 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_length, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx = getelementptr %struct.st_sgitem, ptr %add.ptr, i32 %i.048
  %count = getelementptr %struct.st_sgitem, ptr %add.ptr, i32 %i.048, i32 2
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.047, i32 0, i32 3
  %21 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_address, align 4
  %conv16 = zext i32 %22 to i64
  %23 = tail call i64 @llvm.bswap.i64(i64 %conv16)
  %addr = getelementptr %struct.st_sgitem, ptr %add.ptr, i32 %i.048, i32 3
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %addr, align 8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 96, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.048, 1
  %call19 = tail call ptr @sg_next(ptr noundef %sg.047) #12
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo = add i32 %call, -1
  %arrayidx20 = getelementptr %struct.st_sgitem, ptr %add.ptr, i32 %phi.bo
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx20, align 8
  %28 = or i8 %27, -128
  store i8 %28, ptr %arrayidx20, align 8
  br label %if.end24

if.end24:                                         ; preds = %for.end, %do.end8.if.end24_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stex_send_cmd(ptr nocapture noundef %hba, ptr noundef %req, i16 noundef zeroext %tag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %tag)
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %req, align 4
  %ccb = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 15
  %2 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccb, align 4
  %idxprom = zext i16 %tag to i32
  %arrayidx = getelementptr %struct.st_ccb, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %arrayidx, align 4
  %out_req_cnt = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 25
  %5 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_req_cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %out_req_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @arm_heavy_mb() #12
  %req_head = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 9
  %7 = ptrtoint ptr %req_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req_head, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #12, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hba, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 33554432) #12, !srcloc !197
  %14 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hba, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @stex_ss_alloc_req(ptr nocapture noundef readonly %hba) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mem = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mem, align 4
  %req_head = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 9
  %2 = ptrtoint ptr %req_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_head, align 4
  %rq_size = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %4 = ptrtoint ptr %rq_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rq_size, align 2
  %conv = zext i16 %5 to i32
  %mul = mul i32 %3, %conv
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 16
  ret ptr %add.ptr1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_ss_map_sg(ptr nocapture noundef readonly %hba, ptr nocapture noundef writeonly %req, ptr nocapture noundef %ccb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %call = tail call i32 @scsi_dma_map(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !245

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/stex.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #12, !srcloc !259
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %do.end8.if.end21_crit_edge, label %for.body.preheader

do.end8.if.end21_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

for.body.preheader:                               ; preds = %do.end8
  %variable = getelementptr inbounds %struct.req_msg, ptr %req, i32 0, i32 8
  %sg_count = getelementptr inbounds %struct.st_ccb, ptr %ccb, i32 0, i32 4
  %2 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %sg_count, align 4
  %conv = trunc i32 %call to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %variable to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %variable, align 4
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sg_tablesize, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %max_sg_count = getelementptr inbounds %struct.req_msg, ptr %req, i32 1, i32 1
  %10 = ptrtoint ptr %max_sg_count to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %max_sg_count, align 2
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sz_in_byte = getelementptr inbounds %struct.req_msg, ptr %req, i32 1, i32 3
  %14 = ptrtoint ptr %sz_in_byte to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sz_in_byte, align 4
  %add.ptr = getelementptr %struct.req_msg, ptr %req, i32 1, i32 7
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.043 = phi ptr [ %call20, %for.body.for.body_crit_edge ], [ %16, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 4
  %17 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_length, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx = getelementptr %struct.st_ss_sgitem, ptr %add.ptr, i32 %i.044
  %count = getelementptr %struct.st_ss_sgitem, ptr %add.ptr, i32 %i.044, i32 2
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 3
  %21 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_address, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx, align 4
  %addr_hi = getelementptr %struct.st_ss_sgitem, ptr %add.ptr, i32 %i.044, i32 1
  %25 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %addr_hi, align 4
  %inc = add nuw nsw i32 %i.044, 1
  %call20 = tail call ptr @sg_next(ptr noundef %sg.043) #12
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.if.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %do.end8.if.end21_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stex_ss_send_cmd(ptr nocapture noundef %hba, ptr noundef %req, i16 noundef zeroext %tag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %tag)
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %req, align 4
  %ccb = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 15
  %2 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccb, align 4
  %idxprom = zext i16 %tag to i32
  %arrayidx = getelementptr %struct.st_ccb, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %arrayidx, align 4
  %out_req_cnt = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 25
  %5 = ptrtoint ptr %out_req_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_req_cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %out_req_cnt, align 4
  %7 = load ptr, ptr %ccb, align 4
  %cmd6 = getelementptr %struct.st_ccb, ptr %7, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %cmd6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd6, align 4
  %add.ptr = getelementptr %struct.st_msg_header, ptr %req, i32 -1
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !245

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %conv = trunc i32 %13 to i8
  %channel9 = getelementptr %struct.st_msg_header, ptr %req, i32 -1, i32 2
  %14 = ptrtoint ptr %channel9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %channel9, align 1
  %timeout = getelementptr i8, ptr %9, i32 -164
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout, align 4
  %div = udiv i32 %16, 100
  %conv10 = trunc i32 %div to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %timeout11 = getelementptr %struct.st_msg_header, ptr %req, i32 -1, i32 3
  %18 = ptrtoint ptr %timeout11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %timeout11, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_handle = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 2
  %19 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_handle, align 4
  %req_head = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 9
  %21 = ptrtoint ptr %req_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req_head, align 4
  %rq_size = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %23 = ptrtoint ptr %rq_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rq_size, align 2
  %conv12 = zext i16 %24 to i32
  %mul = mul i32 %22, %conv12
  %add = add i32 %mul, %20
  %25 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ccb, align 4
  %sg_count = getelementptr %struct.st_ccb, ptr %26, i32 %idxprom, i32 4
  %27 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_count, align 4
  %add16 = add i32 %28, 4
  %div17 = sdiv i32 %add16, 11
  %add18 = add i32 %add, %div17
  %conv19 = zext i32 %add18 to i64
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv19)
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %add.ptr, align 8
  %31 = ptrtoint ptr %req_head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %req_head, align 4
  %inc21 = add i32 %32, 1
  %rq_count = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 27
  %33 = ptrtoint ptr %rq_count to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rq_count, align 4
  %conv22 = zext i16 %34 to i32
  %add23 = add nuw nsw i32 %conv22, 1
  %rem = urem i32 %inc21, %add23
  store i32 %rem, ptr %req_head, align 4
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 23
  %35 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %36)
  %cmp = icmp eq i32 %36, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hba, align 4
  %add.ptr28 = getelementptr i8, ptr %38, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #12
  br i1 %cmp, label %do.body, label %do.body34

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  tail call void @arm_heavy_mb() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %add18)
  %40 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hba, align 4
  %add.ptr33 = getelementptr i8, ptr %41, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %39) #12, !srcloc !197
  br label %if.end57

do.body34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hba, align 4
  %add.ptr42 = getelementptr i8, ptr %43, i32 196
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %add18)
  %46 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hba, align 4
  %add.ptr49 = getelementptr i8, ptr %47, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %45) #12, !srcloc !197
  %48 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hba, align 4
  %add.ptr53 = getelementptr i8, ptr %49, i32 192
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  br label %if.end57

if.end57:                                         ; preds = %do.body34, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_ss_intr(i32 noundef %irq, ptr noundef %__hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %__hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__hba, align 4
  %host = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 23
  %6 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp5 = icmp eq i32 %7, 4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 156
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %8, label %do.body13 [
    i32 0, label %if.then.if.end62_crit_edge
    i32 -1, label %if.then.if.end62_crit_edge94
  ]

if.then.if.end62_crit_edge94:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then.if.end62_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body13:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %add.ptr16 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #12, !srcloc !197
  tail call fastcc void @stex_ss_mu_intr(ptr noundef %__hba)
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %host_lock18 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %host_lock18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call2) #12
  %14 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %do.body13.cleanup_crit_edge, label %if.then22, !prof !235

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %work_q = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 19
  %15 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work_q, align 4
  %reset_work = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 20
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %reset_work) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.ptr27 = getelementptr i8, ptr %1, i32 200
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %17, label %do.body37 [
    i32 -1, label %if.else.if.end62_crit_edge
    i32 0, label %if.else.if.end45_crit_edge
  ]

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %add.ptr40 = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %17) #12, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %add.ptr44 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 16384) #12, !srcloc !197
  br label %if.end45

if.end45:                                         ; preds = %do.body37, %if.else.if.end45_crit_edge
  tail call fastcc void @stex_ss_mu_intr(ptr noundef %__hba)
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %host_lock47 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %host_lock47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_lock47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call2) #12
  %23 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool49.not = icmp eq i32 %23, 0
  br i1 %tobool49.not, label %if.end45.cleanup_crit_edge, label %if.then56, !prof !235

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %work_q57 = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 19
  %24 = ptrtoint ptr %work_q57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %work_q57, align 4
  %reset_work58 = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 20
  %call.i93 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %reset_work58) #12
  br label %cleanup

if.end62:                                         ; preds = %if.else.if.end62_crit_edge, %if.then.if.end62_crit_edge, %if.then.if.end62_crit_edge94
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %host_lock64 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %host_lock64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_lock64, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then56, %if.end45.cleanup_crit_edge, %if.then22, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ 1, %if.then22 ], [ 1, %do.body13.cleanup_crit_edge ], [ 1, %if.then56 ], [ 1, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stex_intr(i32 noundef %irq, ptr noundef %__hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %__hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__hba, align 4
  %host = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %6, label %do.body10 [
    i32 0, label %entry.if.end29_crit_edge
    i32 -1, label %entry.if.end29_crit_edge49
  ]

entry.if.end29_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.body10:                                        ; preds = %entry
  %8 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #12, !srcloc !197
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !271
  tail call fastcc void @stex_mu_intr(ptr noundef %__hba, i32 noundef %8)
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %host_lock21 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %host_lock21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call2) #12
  %and = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.body10.cleanup_crit_edge, label %land.rhs

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %do.body10
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 23
  %14 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cardtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23 = icmp eq i32 %15, 0
  br i1 %cmp23, label %if.then27, label %land.rhs.cleanup_crit_edge, !prof !245

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %work_q = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 19
  %16 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %work_q, align 4
  %reset_work = getelementptr inbounds %struct.st_hba, ptr %__hba, i32 0, i32 20
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %reset_work) #12
  br label %cleanup

if.end29:                                         ; preds = %entry.if.end29_crit_edge, %entry.if.end29_crit_edge49
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %host_lock31 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %host_lock31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then27, %land.rhs.cleanup_crit_edge, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 1, %do.body10.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stex_hba_stop(ptr noundef %hba, i32 noundef %st_sleep_mic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 4
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %cardtype = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 23
  %4 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cardtype, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp eq i32 %6, 4
  br i1 %switch, label %land.lhs.true, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %supports_pm = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 30
  %7 = ptrtoint ptr %supports_pm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %supports_pm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp11 = icmp eq i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %st_sleep_mic)
  %cmp13 = icmp eq i32 %st_sleep_mic, 7
  %or.cond = and i1 %cmp13, %cmp11
  br i1 %or.cond, label %if.then15, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %host_lock17 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %host_lock17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_lock17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call2) #12
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %alloc_rq = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 6
  %13 = ptrtoint ptr %alloc_rq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_rq, align 4
  %call19 = tail call ptr %14(ptr noundef %hba) #12
  %15 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cardtype, align 4
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %switch173 = icmp eq i32 %17, 4
  br i1 %switch173, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr %struct.st_msg_header, ptr %call19, i32 -1
  %rq_size = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %18 = ptrtoint ptr %rq_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rq_size, align 2
  %conv28 = zext i16 %19 to i32
  %20 = call ptr @memset(ptr %add.ptr, i32 0, i32 %conv28)
  br label %if.end31

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %rq_size29 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 28
  %21 = ptrtoint ptr %rq_size29 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rq_size29, align 2
  %conv30 = zext i16 %22 to i32
  %23 = call ptr @memset(ptr %call19, i32 0, i32 %conv30)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %24 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cardtype, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %25, label %if.end31.if.else76_crit_edge [
    i32 2, label %if.end31.land.lhs.true43_crit_edge
    i32 4, label %if.end31.land.lhs.true43_crit_edge194
    i32 5, label %if.end31.land.lhs.true43_crit_edge195
  ]

if.end31.land.lhs.true43_crit_edge195:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true43

if.end31.land.lhs.true43_crit_edge194:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true43

if.end31.land.lhs.true43_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true43

if.end31.if.else76_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else76

land.lhs.true43:                                  ; preds = %if.end31.land.lhs.true43_crit_edge, %if.end31.land.lhs.true43_crit_edge194, %if.end31.land.lhs.true43_crit_edge195
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %st_sleep_mic)
  %cmp44 = icmp eq i32 %st_sleep_mic, -1
  br i1 %cmp44, label %if.then46, label %if.else53

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  %cdb = getelementptr inbounds %struct.req_msg, ptr %call19, i32 0, i32 7
  %27 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -40, ptr %cdb, align 4
  %arrayidx48 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -70, ptr %arrayidx48, align 1
  %arrayidx50 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %arrayidx50, align 2
  %arrayidx52 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 13, ptr %arrayidx52, align 1
  br label %if.end84

if.else53:                                        ; preds = %land.lhs.true43
  %31 = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %switch175.not = icmp eq i32 %31, 4
  br i1 %switch175.not, label %if.then64, label %if.else53.if.else76_crit_edge

if.else53.if.else76_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else76

if.then64:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #14
  %cdb65 = getelementptr inbounds %struct.req_msg, ptr %call19, i32 0, i32 7
  %32 = ptrtoint ptr %cdb65 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -40, ptr %cdb65, align 4
  %arrayidx68 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -70, ptr %arrayidx68, align 1
  %arrayidx70 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %arrayidx70, align 2
  %arrayidx72 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 13, ptr %arrayidx72, align 1
  %conv73 = trunc i32 %st_sleep_mic to i8
  %arrayidx75 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 4
  %36 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv73, ptr %arrayidx75, align 4
  br label %if.end84

if.else76:                                        ; preds = %if.else53.if.else76_crit_edge, %if.end31.if.else76_crit_edge
  %cdb77 = getelementptr inbounds %struct.req_msg, ptr %call19, i32 0, i32 7
  %37 = ptrtoint ptr %cdb77 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -31, ptr %cdb77, align 4
  %arrayidx80 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 14, ptr %arrayidx80, align 1
  %arrayidx82 = getelementptr %struct.req_msg, ptr %call19, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %arrayidx82, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.else76, %if.then64, %if.then46
  %ccb = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 15
  %40 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ccb, align 4
  %cmd = getelementptr inbounds %struct.st_ccb, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cmd, align 4
  %43 = load ptr, ptr %ccb, align 4
  %sg_count = getelementptr inbounds %struct.st_ccb, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sg_count, align 4
  %45 = load ptr, ptr %ccb, align 4
  %sense_bufflen = getelementptr inbounds %struct.st_ccb, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %sense_bufflen to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sense_bufflen, align 4
  %47 = load ptr, ptr %ccb, align 4
  %sense_buffer = getelementptr inbounds %struct.st_ccb, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %sense_buffer, align 4
  %49 = load ptr, ptr %ccb, align 4
  %req_type = getelementptr inbounds %struct.st_ccb, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %req_type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %req_type, align 4
  %send = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 8
  %51 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %send, align 4
  tail call void %52(ptr noundef %hba, ptr noundef %call19, i16 noundef zeroext 0) #12
  %53 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host, align 4
  %host_lock99 = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %host_lock99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host_lock99, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %call2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %58 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ccb, align 4
  %req_type103182 = getelementptr inbounds %struct.st_ccb, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %req_type103182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %req_type103182, align 4
  %and183 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool.not184 = icmp eq i32 %and183, 0
  br i1 %tobool.not184, label %if.end84.while.end_crit_edge, label %while.body.lr.ph

if.end84.while.end_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end84
  %add = add i32 %57, 18000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub188 = sub i32 %add, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub188)
  %cmp104189 = icmp slt i32 %sub188, 0
  br i1 %cmp104189, label %while.body.lr.ph.if.then106_crit_edge, label %while.body.lr.ph.if.end111_crit_edge

while.body.lr.ph.if.end111_crit_edge:             ; preds = %while.body.lr.ph
  br label %if.end111

while.body.lr.ph.if.then106_crit_edge:            ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then106

while.body:                                       ; preds = %if.end111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %63
  %cmp104 = icmp slt i32 %sub, 0
  br i1 %cmp104, label %while.body.if.then106_crit_edge, label %while.body.if.end111_crit_edge

while.body.if.end111_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

while.body.if.then106_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then106

if.then106:                                       ; preds = %while.body.if.then106_crit_edge, %while.body.lr.ph.if.then106_crit_edge
  %.lcssa = phi ptr [ %59, %while.body.lr.ph.if.then106_crit_edge ], [ %67, %while.body.if.then106_crit_edge ]
  %req_type103.le = getelementptr inbounds %struct.st_ccb, ptr %.lcssa, i32 0, i32 5
  %64 = ptrtoint ptr %req_type103.le to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %req_type103.le, align 4
  %mu_status = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 22
  %65 = ptrtoint ptr %mu_status to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 5, ptr %mu_status, align 4
  br label %cleanup

if.end111:                                        ; preds = %while.body.if.end111_crit_edge, %while.body.lr.ph.if.end111_crit_edge
  tail call void @msleep(i32 noundef 1) #12
  %66 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ccb, align 4
  %req_type103 = getelementptr inbounds %struct.st_ccb, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %req_type103 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %req_type103, align 4
  %and = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end111.while.end_crit_edge, label %while.body

if.end111.while.end_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end111.while.end_crit_edge, %if.end84.while.end_crit_edge
  %mu_status112 = getelementptr inbounds %struct.st_hba, ptr %hba, i32 0, i32 22
  %70 = ptrtoint ptr %mu_status112 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %mu_status112, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then106, %if.then15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !179, !180, !181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__param_msi, !1, !"__param_msi", i1 false, i1 false}
!1 = !{!"../drivers/scsi/stex.c", i32 368, i32 1}
!2 = !{ptr @__UNIQUE_ID_msitype287, !1, !"__UNIQUE_ID_msitype287", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msi288, !4, !"__UNIQUE_ID_msi288", i1 false, i1 false}
!4 = !{!"../drivers/scsi/stex.c", i32 369, i32 1}
!5 = !{ptr @__UNIQUE_ID_author289, !6, !"__UNIQUE_ID_author289", i1 false, i1 false}
!6 = !{!"../drivers/scsi/stex.c", i32 383, i32 1}
!7 = !{ptr @__UNIQUE_ID_description290, !8, !"__UNIQUE_ID_description290", i1 false, i1 false}
!8 = !{!"../drivers/scsi/stex.c", i32 384, i32 1}
!9 = !{ptr @__UNIQUE_ID_file291, !10, !"__UNIQUE_ID_file291", i1 false, i1 false}
!10 = !{!"../drivers/scsi/stex.c", i32 385, i32 1}
!11 = !{ptr @__UNIQUE_ID_license292, !10, !"__UNIQUE_ID_license292", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version293, !13, !"__UNIQUE_ID_version293", i1 false, i1 false}
!13 = !{!"../drivers/scsi/stex.c", i32 386, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_stex__296_2024_stex_init6, !19, !"__initcall__kmod_stex__296_2024_stex_init6", i1 false, i1 false}
!19 = !{!"../drivers/scsi/stex.c", i32 2024, i32 1}
!20 = !{ptr @__exitcall_stex_exit, !21, !"__exitcall_stex_exit", i1 false, i1 false}
!21 = !{!"../drivers/scsi/stex.c", i32 2025, i32 1}
!22 = !{ptr @msi, !23, !"msi", i1 false, i1 false}
!23 = !{!"../drivers/scsi/stex.c", i32 367, i32 12}
!24 = !{ptr @__param_str_msi, !1, !"__param_str_msi", i1 false, i1 false}
!25 = !{ptr @stex_pci_driver, !26, !"stex_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/scsi/stex.c", i32 2000, i32 26}
!27 = !{ptr @stex_pci_tbl, !28, !"stex_pci_tbl", i1 false, i1 false}
!28 = !{!"../drivers/scsi/stex.c", i32 1487, i32 29}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/stex.c", i32 1669, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stex_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @stex_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/stex.c", i32 1680, i32 3}
!37 = !{ptr @stex_probe._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @stex_probe._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/stex.c", i32 1687, i32 3}
!41 = !{ptr @stex_probe._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @stex_probe._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/stex.c", i32 1697, i32 3}
!45 = !{ptr @stex_probe._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stex_probe._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/stex.c", i32 1739, i32 4}
!49 = !{ptr @stex_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stex_probe._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/stex.c", i32 1750, i32 4}
!53 = !{ptr @stex_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stex_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/stex.c", i32 1759, i32 3}
!57 = !{ptr @stex_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @stex_probe._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @stex_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/scsi/stex.c", i32 1791, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/stex.c", i32 1794, i32 4}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/stex.c", i32 1795, i32 16}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/stex.c", i32 1797, i32 3}
!68 = !{ptr @stex_probe._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @stex_probe._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @stex_probe.__key.30, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/scsi/stex.c", i32 1802, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/stex.c", i32 1806, i32 3}
!75 = !{ptr @stex_probe._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @stex_probe._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/stex.c", i32 1819, i32 3}
!79 = !{ptr @stex_probe._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @stex_probe._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"S6flag", i1 false, i1 false}
!82 = !{!"../drivers/scsi/stex.c", i32 361, i32 12}
!83 = !{ptr @stex_notifier, !84, !"stex_notifier", i1 false, i1 false}
!84 = !{!"../drivers/scsi/stex.c", i32 363, i32 30}
!85 = !{ptr @driver_template, !86, !"driver_template", i1 false, i1 false}
!86 = !{!"../drivers/scsi/stex.c", i32 1474, i32 34}
!87 = !{ptr @stex_queuecommand_lck.ms10_caching_page, !88, !"ms10_caching_page", i1 false, i1 false}
!88 = !{!"../drivers/scsi/stex.c", i32 617, i32 15}
!89 = !{ptr @console_inq_page, !90, !"console_inq_page", i1 false, i1 false}
!90 = !{!"../drivers/scsi/stex.c", i32 371, i32 19}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/stex.c", i32 1253, i32 14}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/stex.c", i32 1253, i32 30}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/stex.c", i32 1289, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @stex_abort._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @stex_abort._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/stex.c", i32 935, i32 4}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @stex_ss_mu_intr._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @stex_ss_mu_intr._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/stex.c", i32 945, i32 4}
!107 = !{ptr @stex_ss_mu_intr._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @stex_ss_mu_intr._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/stex.c", i32 960, i32 5}
!111 = !{ptr @stex_ss_mu_intr._entry.47, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @stex_ss_mu_intr._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/stex.c", i32 806, i32 3}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @stex_mu_intr._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @stex_mu_intr._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @stex_mu_intr._entry.52, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/scsi/stex.c", i32 830, i32 4}
!120 = !{ptr @stex_mu_intr._entry_ptr.53, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @stex_mu_intr._entry.54, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/scsi/stex.c", i32 840, i32 4}
!123 = !{ptr @stex_mu_intr._entry_ptr.55, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @stex_mu_intr._entry.56, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/scsi/stex.c", i32 848, i32 4}
!126 = !{ptr @stex_mu_intr._entry_ptr.57, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/stex.c", i32 1442, i32 2}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @stex_reset._entry, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @stex_reset._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/stex.c", i32 1395, i32 3}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @stex_do_reset._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @stex_do_reset._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/stex.c", i32 1431, i32 2}
!140 = !{ptr @stex_do_reset._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @stex_do_reset._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/stex.c", i32 1355, i32 4}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @stex_yos_reset._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @stex_yos_reset._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @stex_card_info, !148, !"stex_card_info", i1 false, i1 false}
!148 = !{!"../drivers/scsi/stex.c", i32 1533, i32 28}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/stex.c", i32 1621, i32 4}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @stex_request_irq._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @stex_request_irq._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/stex.c", i32 1121, i32 5}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @stex_ss_handshake._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @stex_ss_handshake._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @stex_ss_handshake._entry.72, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/scsi/stex.c", i32 1133, i32 5}
!161 = !{ptr @stex_ss_handshake._entry_ptr.73, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/stex.c", i32 1186, i32 5}
!164 = !{ptr @stex_ss_handshake._entry.74, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @stex_ss_handshake._entry_ptr.76, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @stex_ss_handshake._entry.77, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/scsi/stex.c", i32 1199, i32 5}
!168 = !{ptr @stex_ss_handshake._entry_ptr.78, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/stex.c", i32 1035, i32 5}
!171 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @stex_common_handshake._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @stex_common_handshake._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @stex_common_handshake._entry.81, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/scsi/stex.c", i32 1085, i32 4}
!176 = !{ptr @stex_common_handshake._entry_ptr.82, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/stex.c", i32 2012, i32 2}
!179 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @stex_init._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @stex_init._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 5427559}
!192 = !{i64 2155103724}
!193 = !{i64 2155106176}
!194 = !{i64 2155106658}
!195 = !{i64 2155109102}
!196 = !{i64 2155110768}
!197 = !{i64 5427141}
!198 = !{i64 2155111184}
!199 = !{i64 2155111928}
!200 = !{i64 2155112152}
!201 = !{i64 2155112839}
!202 = !{i64 2155113525}
!203 = !{i64 2155113917}
!204 = !{i64 2155114346}
!205 = !{i64 2155114824}
!206 = !{i64 2155117279}
!207 = !{i64 2155117857}
!208 = !{i64 2155119970}
!209 = !{i64 2155120548}
!210 = !{i64 2155087649}
!211 = !{i64 2155087883}
!212 = !{i64 2155088592}
!213 = !{i64 2155089054}
!214 = !{i64 2155091095}
!215 = !{i64 2155092099}
!216 = !{i64 2155093341}
!217 = !{i64 2155093996}
!218 = !{i64 2155094226}
!219 = !{i64 2155094923}
!220 = !{i64 2155095153}
!221 = !{i64 2155095850}
!222 = !{i64 2155096084}
!223 = !{i64 2155096793}
!224 = !{i64 2155097797}
!225 = !{i64 2155099910}
!226 = !{i64 2155100116}
!227 = !{i64 2155100741}
!228 = !{i64 2155100947}
!229 = !{i64 2155101572}
!230 = !{i64 2155101778}
!231 = !{i64 2155102403}
!232 = !{i64 2155102609}
!233 = !{i64 2155103234}
!234 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{i64 2155121903}
!237 = !{i64 2155122118}
!238 = !{i64 2155122778}
!239 = !{i64 2155122992}
!240 = !{i64 2155123387}
!241 = !{i64 2155124040}
!242 = !{i64 2155124249}
!243 = !{i64 2155124883}
!244 = !{i64 2148661576, i64 2148661856, i64 2148662190, i64 2148662524}
!245 = !{!"branch_weights", i32 1, i32 2000}
!246 = !{i64 2155070031}
!247 = !{i64 2155076957}
!248 = !{i64 2155077627}
!249 = !{i64 2155126665}
!250 = !{i64 2155127362}
!251 = !{!"auto-init"}
!252 = !{i64 2155130009}
!253 = !{i64 2155130749}
!254 = !{i64 2155130984}
!255 = !{i64 2155056930, i64 2155057414, i64 2155056967, i64 2155057023, i64 2155057057, i64 2155057081, i64 2155057122, i64 2155057143, i64 2155057171, i64 2155057205}
!256 = !{i64 2155062027}
!257 = !{i64 2155062485}
!258 = !{i64 2155063259}
!259 = !{i64 2155059348, i64 2155059832, i64 2155059385, i64 2155059441, i64 2155059475, i64 2155059499, i64 2155059540, i64 2155059561, i64 2155059589, i64 2155059623}
!260 = !{i64 2155064347}
!261 = !{i64 2155065534}
!262 = !{i64 2155065757}
!263 = !{i64 2155066461}
!264 = !{i64 2155085402}
!265 = !{i64 2155085617}
!266 = !{i64 2155086332}
!267 = !{i64 2155086546}
!268 = !{i64 2155086941}
!269 = !{i64 2155078461}
!270 = !{i64 2155078670}
!271 = !{i64 2155079304}
