; ModuleID = '/llk/IR_all_yes/drivers/scsi/dmx3191d.c_pt.bc'
source_filename = "../drivers/scsi/dmx3191d.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.NCR5380_hostdata = type { ptr, ptr, i32, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.work_struct, i32, i32, i32, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, %struct.scsi_eh_save, [8 x i8], i8, i8, i8, i32, [168 x i8] }
%struct.scsi_eh_save = type { i32, i32, i32, i32, i32, i8, i8, ptr, %struct.scsi_data_buffer, [16 x i8], %struct.scatterlist }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@__param_str_disconnect_mask = internal constant [25 x i8] c"dmx3191d.disconnect_mask\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disconnect_mask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_disconnect_mask = internal constant %struct.kernel_param { ptr @__param_str_disconnect_mask, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @disconnect_mask } }, section "__param", align 4
@__UNIQUE_ID_disconnect_masktype287 = internal constant [38 x i8] c"dmx3191d.parmtype=disconnect_mask:int\00", section ".modinfo", align 1
@__initcall__kmod_dmx3191d__290_144_dmx3191d_pci_driver_init6 = internal global ptr @dmx3191d_pci_driver_init, section ".initcall6.init", align 4
@dmx3191d_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @dmx3191d_pci_tbl, ptr @dmx3191d_probe_one, ptr @dmx3191d_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dmx3191d_pci_driver_exit = internal global ptr @dmx3191d_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [56 x i8] c"dmx3191d.author=Massimo Piccioni <dafastidio@libero.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [48 x i8] c"dmx3191d.description=Domex DMX3191D SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [36 x i8] c"dmx3191d.file=drivers/scsi/dmx3191d\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [21 x i8] c"dmx3191d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmx3191d\00", [23 x i8] zeroinitializer }, align 32
@dmx3191d_pci_tbl = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4938, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@dmx3191d_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dmx3191: region 0x%lx-0x%lx already reserved\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmx3191d_probe_one\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/dmx3191d.c\00", [40 x i8] zeroinitializer }, align 32
@dmx3191d_probe_one._entry_ptr = internal global ptr @dmx3191d_probe_one._entry, section ".printk_index", align 4
@dmx3191d_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 8, ptr @NCR5380_queue_command, ptr null, ptr null, ptr @.str.4, ptr @NCR5380_info, ptr null, ptr null, ptr null, ptr @NCR5380_abort, ptr null, ptr null, ptr null, ptr @NCR5380_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 7, i16 128, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 2, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Domex DMX3191D\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@NCR5380_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hostdata->lock\00", [16 x i8] zeroinitializer }, align 32
@NCR5380_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&hostdata->main_task)\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ncr5380_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"%s, irq %d, io_port 0x%lx, base 0x%lx, can_queue %d, cmd_per_lun %d, sg_tablesize %d, this_id %d, flags { %s%s%s}\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA_FIXUP \00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NO_PSEUDO_DMA \00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TOSHIBA_DELAY \00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/NCR5380.c\00", [41 x i8] zeroinitializer }, align 32
@NCR5380_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.14, i32 1028, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"select: arbitration timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NCR5380_select\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@NCR5380_select._entry_ptr = internal global ptr @NCR5380_select._entry, section ".printk_index", align 4
@NCR5380_select._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.14, i32 1145, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reselection after won arbitration?\0A\00", [60 x i8] zeroinitializer }, align 32
@NCR5380_select._entry_ptr.21 = internal global ptr @NCR5380_select._entry.19, section ".printk_index", align 4
@NCR5380_select._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.14, i32 1187, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"select: REQ timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@NCR5380_select._entry_ptr.24 = internal global ptr @NCR5380_select._entry.22, section ".printk_index", align 4
@NCR5380_reselect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.14, i32 2046, ptr @.str.27, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reselect: bad target_mask 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NCR5380_reselect\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@NCR5380_reselect._entry_ptr = internal global ptr @NCR5380_reselect._entry, section ".printk_index", align 4
@NCR5380_reselect._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.14, i32 2062, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reselect: !SEL timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@NCR5380_reselect._entry_ptr.30 = internal global ptr @NCR5380_reselect._entry.28, section ".printk_index", align 4
@NCR5380_reselect._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.14, i32 2077, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reselect: REQ timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@NCR5380_reselect._entry_ptr.33 = internal global ptr @NCR5380_reselect._entry.31, section ".printk_index", align 4
@NCR5380_reselect._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.14, i32 2104, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"expecting IDENTIFY message, got \00", [63 x i8] zeroinitializer }, align 32
@NCR5380_reselect._entry_ptr.36 = internal global ptr @NCR5380_reselect._entry.34, section ".printk_index", align 4
@NCR5380_reselect._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.14, i32 2106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@NCR5380_reselect._entry_ptr.39 = internal global ptr @NCR5380_reselect._entry.37, section ".printk_index", align 4
@NCR5380_reselect._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.26, ptr @.str.14, i32 2142, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"target bitmask 0x%02x lun %d not in disconnected queue.\0A\00", [39 x i8] zeroinitializer }, align 32
@NCR5380_reselect._entry_ptr.42 = internal global ptr @NCR5380_reselect._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@NCR5380_information_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.14, i32 1942, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error receiving extended message\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NCR5380_information_transfer\00", [35 x i8] zeroinitializer }, align 32
@NCR5380_information_transfer._entry_ptr = internal global ptr @NCR5380_information_transfer._entry, section ".printk_index", align 4
@NCR5380_information_transfer._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.14, i32 1946, ptr @.str.49, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"extended message code %02x length %d is too long\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@NCR5380_information_transfer._entry_ptr.50 = internal global ptr @NCR5380_information_transfer._entry.47, section ".printk_index", align 4
@.str.51 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rejecting unknown extended message code %02x, length %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rejecting unknown message code %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@NCR5380_information_transfer._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.14, i32 2006, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown phase\0A\00", [17 x i8] zeroinitializer }, align 32
@NCR5380_information_transfer._entry_ptr.55 = internal global ptr @NCR5380_information_transfer._entry.53, section ".printk_index", align 4
@NCR5380_transfer_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.14, i32 1633, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PDMA read: DRQ timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NCR5380_transfer_dma\00", [43 x i8] zeroinitializer }, align 32
@NCR5380_transfer_dma._entry_ptr = internal global ptr @NCR5380_transfer_dma._entry, section ".printk_index", align 4
@NCR5380_transfer_dma._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.14, i32 1638, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PDMA read: !REQ timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@NCR5380_transfer_dma._entry_ptr.60 = internal global ptr @NCR5380_transfer_dma._entry.58, section ".printk_index", align 4
@NCR5380_transfer_dma._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.14, i32 1650, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PDMA write: DRQ and phase timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@NCR5380_transfer_dma._entry_ptr.63 = internal global ptr @NCR5380_transfer_dma._entry.61, section ".printk_index", align 4
@NCR5380_maybe_reset_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.14, i32 483, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SCSI bus busy, waiting up to five seconds\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NCR5380_maybe_reset_bus\00", [40 x i8] zeroinitializer }, align 32
@NCR5380_maybe_reset_bus._entry_ptr = internal global ptr @NCR5380_maybe_reset_bus._entry, section ".printk_index", align 4
@NCR5380_maybe_reset_bus._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.14, i32 488, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bus busy, attempting abort\0A\00", [36 x i8] zeroinitializer }, align 32
@NCR5380_maybe_reset_bus._entry_ptr.68 = internal global ptr @NCR5380_maybe_reset_bus._entry.66, section ".printk_index", align 4
@NCR5380_maybe_reset_bus._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.14, i32 492, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bus busy, attempting reset\0A\00", [36 x i8] zeroinitializer }, align 32
@NCR5380_maybe_reset_bus._entry_ptr.71 = internal global ptr @NCR5380_maybe_reset_bus._entry.69, section ".printk_index", align 4
@NCR5380_maybe_reset_bus._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.14, i32 504, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bus locked solid\0A\00", [46 x i8] zeroinitializer }, align 32
@NCR5380_maybe_reset_bus._entry_ptr.74 = internal global ptr @NCR5380_maybe_reset_bus._entry.72, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"disconnect_mask\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 132, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"dmx3191d_pci_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 137, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 144, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"dmx3191d_pci_tbl\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 130, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 71, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"dmx3191d_driver_template\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 42, i32 34 }
@___asan_gen_.107 = private constant [27 x i8] c"../drivers/scsi/dmx3191d.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 45, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 411, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 420, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 421, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 428, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 432, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 432, i32 61 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 433, i32 42 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 434, i32 42 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 745, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1027, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1145, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1187, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2045, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2062, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2077, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2104, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2106, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2141, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1787, i32 19 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1942, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1945, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1963, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1967, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 2006, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1633, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1638, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1650, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 483, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 488, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 492, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [26 x i8] c"../drivers/scsi/NCR5380.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 504, i32 4 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @NCR5380_information_transfer._entry, ptr @NCR5380_information_transfer._entry.47, ptr @NCR5380_information_transfer._entry.53, ptr @NCR5380_information_transfer._entry_ptr, ptr @NCR5380_information_transfer._entry_ptr.50, ptr @NCR5380_information_transfer._entry_ptr.55, ptr @NCR5380_maybe_reset_bus._entry, ptr @NCR5380_maybe_reset_bus._entry.66, ptr @NCR5380_maybe_reset_bus._entry.69, ptr @NCR5380_maybe_reset_bus._entry.72, ptr @NCR5380_maybe_reset_bus._entry_ptr, ptr @NCR5380_maybe_reset_bus._entry_ptr.68, ptr @NCR5380_maybe_reset_bus._entry_ptr.71, ptr @NCR5380_maybe_reset_bus._entry_ptr.74, ptr @NCR5380_reselect._entry, ptr @NCR5380_reselect._entry.28, ptr @NCR5380_reselect._entry.31, ptr @NCR5380_reselect._entry.34, ptr @NCR5380_reselect._entry.37, ptr @NCR5380_reselect._entry.40, ptr @NCR5380_reselect._entry_ptr, ptr @NCR5380_reselect._entry_ptr.30, ptr @NCR5380_reselect._entry_ptr.33, ptr @NCR5380_reselect._entry_ptr.36, ptr @NCR5380_reselect._entry_ptr.39, ptr @NCR5380_reselect._entry_ptr.42, ptr @NCR5380_select._entry, ptr @NCR5380_select._entry.19, ptr @NCR5380_select._entry.22, ptr @NCR5380_select._entry_ptr, ptr @NCR5380_select._entry_ptr.21, ptr @NCR5380_select._entry_ptr.24, ptr @NCR5380_transfer_dma._entry, ptr @NCR5380_transfer_dma._entry.58, ptr @NCR5380_transfer_dma._entry.61, ptr @NCR5380_transfer_dma._entry_ptr, ptr @NCR5380_transfer_dma._entry_ptr.60, ptr @NCR5380_transfer_dma._entry_ptr.63, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_disconnect_masktype287, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_dmx3191d_pci_driver_exit, ptr @__initcall__kmod_dmx3191d__290_144_dmx3191d_pci_driver_init6, ptr @__param_disconnect_mask, ptr @dmx3191d_pci_driver_exit, ptr @dmx3191d_probe_one._entry, ptr @dmx3191d_probe_one._entry_ptr, ptr @disconnect_mask, ptr @dmx3191d_pci_driver, ptr @.str, ptr @dmx3191d_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dmx3191d_driver_template, ptr @.str.4, ptr @NCR5380_init.__key, ptr @.str.5, ptr @NCR5380_init.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disconnect_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmx3191d_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmx3191d_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmx3191d_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmx3191d_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_select._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_select._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_reselect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_reselect._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_reselect._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_reselect._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_reselect._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_reselect._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_information_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_information_transfer._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_information_transfer._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_transfer_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_transfer_dma._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_transfer_dma._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_maybe_reset_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_maybe_reset_bus._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_maybe_reset_bus._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NCR5380_maybe_reset_bus._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx3191d_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dmx3191d_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmx3191d_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @dmx3191d_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmx3191d_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %call1 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 8, ptr noundef nonnull @.str, i32 noundef 0) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %1, 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %add) #11
  br label %out_disable_device

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @dmx3191d_driver_template, i32 noundef 428) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_release_region_crit_edge, label %if.end9

if.end5.out_release_region_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_region

if.end9:                                          ; preds = %if.end5
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 53
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %base, align 4
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 47
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %irq, align 8
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 22
  %4 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 7, ptr %max_lun.i, align 8
  %host.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 4
  %5 = ptrtoint ptr %host.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %host.i, align 4
  %this_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 25
  %6 = ptrtoint ptr %this_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %this_id.i, align 8
  %shl.i = shl nuw i32 1, %7
  %conv.i = trunc i32 %shl.i to i8
  %id_mask.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %id_mask.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %id_mask.i, align 4
  %id_higher_mask.i = getelementptr inbounds %struct.NCR5380_hostdata, ptr %hostdata.i, i32 0, i32 21
  %9 = ptrtoint ptr %id_higher_mask.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %id_higher_mask.i, align 1
  %conv2.i = and i32 %shl.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %conv2.i)
  %cmp5.i = icmp ult i32 %conv2.i, 129
  br i1 %cmp5.i, label %if.end9.for.body.i_crit_edge, label %if.end9.for.cond12.preheader.i_crit_edge

if.end9.for.cond12.preheader.i_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

for.cond12.preheader.i:                           ; preds = %for.inc.i.for.cond12.preheader.i_crit_edge, %if.end9.for.cond12.preheader.i_crit_edge
  %uglygep.i = getelementptr i8, ptr %call6, i32 2692
  %10 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %uglygep.i, align 1
  %dma_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 3
  %11 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dma_len.i, align 4
  %lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @NCR5380_init.__key, i16 noundef signext 3) #8
  %connected.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %connected.i, align 4
  %sensing.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 5, i32 7
  %13 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sensing.i, align 4
  %autosense.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 5, i32 3
  %14 = ptrtoint ptr %autosense.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %autosense.i, ptr %autosense.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 5, i32 6
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %autosense.i, ptr %prev.i.i, align 4
  %unissued.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 5, i32 1
  %16 = ptrtoint ptr %unissued.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %unissued.i, ptr %unissued.i, align 4
  %prev.i2.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 5, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %unissued.i, ptr %prev.i2.i, align 4
  %disconnected.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %disconnected.i, ptr %disconnected.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %disconnected.i, ptr %prev.i3.i, align 4
  %flags19.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 2
  %20 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags19.i, align 4
  %main_task.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 1
  tail call void @__init_work(ptr noundef %main_task.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %main_task.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %main_task.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 1, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @NCR5380_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry24.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 1, i32 1
  %22 = ptrtoint ptr %entry24.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry24.i, ptr %entry24.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 1, i32 2
  %23 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry24.i, ptr %prev.i4.i, align 4
  %func.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 1, i32 3
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @NCR5380_main, ptr %func.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 17
  %25 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no.i, align 4
  %call28.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 10, i32 noundef 1, i32 noundef %26) #8
  %work_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5
  %27 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call28.i, ptr %work_q.i, align 4
  %tobool.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool.not.i, label %for.cond12.preheader.i.out_host_put_crit_edge, label %if.end31.i

for.cond12.preheader.i.out_host_put_crit_edge:    ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_host_put

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.06.i = phi i32 [ %shl11.i, %for.inc.i.for.body.i_crit_edge ], [ %conv2.i, %if.end9.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.06.i, i32 %conv2.i)
  %cmp6.i = icmp sgt i32 %i.06.i, %conv2.i
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %id_higher_mask.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id_higher_mask.i, align 1
  %30 = trunc i32 %i.06.i to i8
  %conv10.i = or i8 %29, %30
  store i8 %conv10.i, ptr %id_higher_mask.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %shl11.i = shl i32 %i.06.i, 1
  %cmp.i = icmp slt i32 %shl11.i, 129
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond12.preheader.i_crit_edge

for.inc.i.for.cond12.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end31.i:                                       ; preds = %for.cond12.preheader.i
  %info.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 13, i32 0, i32 1
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 11
  %31 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hostt.i, align 8
  %name.i = getelementptr inbounds %struct.scsi_host_template, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name.i, align 8
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 8
  %io_port.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 5, i32 4
  %37 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_port.i, align 4
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base, align 4
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 26
  %41 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %can_queue.i, align 4
  %cmd_per_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 27
  %43 = ptrtoint ptr %cmd_per_lun.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %cmd_per_lun.i, align 8
  %conv32.i = sext i16 %44 to i32
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 28
  %45 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sg_tablesize.i, align 2
  %conv33.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %this_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %this_id.i, align 8
  %49 = ptrtoint ptr %flags19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags19.i, align 4
  %and.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool36.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool36.not.i, ptr @.str.11, ptr @.str.10
  %and38.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond40.i = select i1 %tobool39.not.i, ptr @.str.11, ptr @.str.12
  %and42.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %cond44.i = select i1 %tobool43.not.i, ptr @.str.11, ptr @.str.13
  %call45.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %info.i, i32 noundef 168, ptr noundef nonnull @.str.9, ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef %48, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond40.i, ptr noundef nonnull %cond44.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base, align 4
  %add.i = add i32 %52, 1
  %and50.i = and i32 %add.i, 1048575
  %add51.i = or i32 %and50.i, -18874368
  %53 = inttoptr i32 %add51.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 0) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base, align 4
  %add57.i = add i32 %55, 2
  %and58.i = and i32 %add57.i, 1048575
  %add59.i = or i32 %and58.i, -18874368
  %56 = inttoptr i32 %add59.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 0) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base, align 4
  %add65.i = add i32 %58, 3
  %and66.i = and i32 %add65.i, 1048575
  %add67.i = or i32 %and66.i, -18874368
  %59 = inttoptr i32 %add67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 0) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base, align 4
  %add73.i = add i32 %61, 4
  %and74.i = and i32 %add73.i, 1048575
  %add75.i = or i32 %and74.i, -18874368
  %62 = inttoptr i32 %add75.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 0) #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %add77.neg.i = xor i32 %63, -1
  br label %do.body78.i

do.body78.i:                                      ; preds = %do.body78.i.do.body78.i_crit_edge, %if.end31.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %64, %add77.neg.i
  %cmp89.i = icmp slt i32 %sub.i, 0
  br i1 %cmp89.i, label %do.body78.i.do.body78.i_crit_edge, label %do.end91.i

do.body78.i.do.body78.i_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body78.i

do.end91.i:                                       ; preds = %do.body78.i
  %add93.neg.i = sub i32 -27, %63
  br label %do.body94.i

do.body94.i:                                      ; preds = %do.body94.i.do.body94.i_crit_edge, %do.end91.i
  %i.2.i = phi i32 [ 0, %do.end91.i ], [ %inc101.i, %do.body94.i.do.body94.i_crit_edge ]
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base, align 4
  %add96.i = add i32 %66, 4
  %and97.i = and i32 %add96.i, 1048575
  %add98.i = or i32 %and97.i, -18874368
  %67 = inttoptr i32 %add98.i to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %inc101.i = add i32 %i.2.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub112.i = add i32 %add93.neg.i, %69
  %cmp113.i = icmp slt i32 %sub112.i, 0
  br i1 %cmp113.i, label %do.body94.i.do.body94.i_crit_edge, label %if.end14

do.body94.i.do.body94.i_crit_edge:                ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94.i

if.end14:                                         ; preds = %do.body94.i
  %div.i = sdiv i32 %inc101.i, 256
  %mul.i = mul nsw i32 %div.i, 10
  %div1161.i = lshr exact i32 %mul.i, 1
  %poll_loops.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 1, i32 1
  %70 = ptrtoint ptr %poll_loops.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div1161.i, ptr %poll_loops.i, align 4
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %base, align 4
  %add2.i = add i32 %72, 4
  %and3.i = and i32 %add2.i, 1048575
  %add14.i = or i32 %and3.i, -18874368
  %73 = inttoptr i32 %add14.i to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %75 = and i8 %74, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.not5.i = icmp eq i8 %75, 0
  br i1 %tobool.not.not5.i, label %if.end14.NCR5380_maybe_reset_bus.exit_crit_edge, label %for.body.lr.ph.i

if.end14.NCR5380_maybe_reset_bus.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_maybe_reset_bus.exit

for.body.lr.ph.i:                                 ; preds = %if.end14
  %shost_gendev17.i = getelementptr inbounds %struct.Scsi_Host, ptr %call6, i32 0, i32 49
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.inc.i48.for.body.i44_crit_edge, %for.body.lr.ph.i
  %pass.06.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i48.for.body.i44_crit_edge ]
  %76 = zext i32 %pass.06.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pass.06.i, label %for.body.i44.for.inc.i48_crit_edge [
    i32 1, label %for.body.i44.do.end.i_crit_edge
    i32 3, label %for.body.i44.do.end.i_crit_edge53
    i32 5, label %for.body.i44.do.end.i_crit_edge54
    i32 2, label %do.end10.i
    i32 4, label %do.end16.i
    i32 6, label %do.end23.i
  ]

for.body.i44.do.end.i_crit_edge54:                ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i44.do.end.i_crit_edge53:                ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i44.do.end.i_crit_edge:                  ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i44.for.inc.i48_crit_edge:               ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i48

do.end.i:                                         ; preds = %for.body.i44.do.end.i_crit_edge, %for.body.i44.do.end.i_crit_edge53, %for.body.i44.do.end.i_crit_edge54
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev17.i, ptr noundef nonnull @.str.64) #11
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base, align 4
  %add.i.i = add i32 %78, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %79 = inttoptr i32 %add1.i.i to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i.i = and i8 %80, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %cmp.i.i = icmp eq i8 %and41.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.for.inc.i48_crit_edge, label %if.end.i.i

do.end.i.for.inc.i48_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i48

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = tail call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i, i32 noundef 4, i8 noundef zeroext 64, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 64, i8 noundef zeroext 0, i32 noundef 500) #8
  br label %for.inc.i48

do.end10.i:                                       ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev17.i, ptr noundef nonnull @.str.67) #11
  %call12.i = tail call fastcc i32 @do_abort(ptr noundef %call6, i32 noundef 1) #8
  br label %for.inc.i48

do.end16.i:                                       ; preds = %for.body.i44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev17.i, ptr noundef nonnull @.str.70) #11
  tail call fastcc void @do_reset(ptr noundef %call6) #8
  %81 = ptrtoint ptr %flags19.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags19.i, align 4
  %and18.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then.i45

if.then.i45:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 2500) #8
  br label %for.inc.i48

if.else.i:                                        ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 500) #8
  br label %for.inc.i48

do.end23.i:                                       ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev17.i, ptr noundef nonnull @.str.73) #11
  br label %NCR5380_maybe_reset_bus.exit

for.inc.i48:                                      ; preds = %if.else.i, %if.then.i45, %do.end10.i, %if.end.i.i, %do.end.i.for.inc.i48_crit_edge, %for.body.i44.for.inc.i48_crit_edge
  %inc.i = add nuw nsw i32 %pass.06.i, 1
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base, align 4
  %add.i46 = add i32 %84, 4
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i = or i32 %and.i47, -18874368
  %85 = inttoptr i32 %add1.i to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %87 = and i8 %86, 64
  %tobool.not.not.i = icmp eq i8 %87, 0
  br i1 %tobool.not.not.i, label %for.inc.i48.NCR5380_maybe_reset_bus.exit_crit_edge, label %for.inc.i48.for.body.i44_crit_edge

for.inc.i48.for.body.i44_crit_edge:               ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i44

for.inc.i48.NCR5380_maybe_reset_bus.exit_crit_edge: ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_maybe_reset_bus.exit

NCR5380_maybe_reset_bus.exit:                     ; preds = %for.inc.i48.NCR5380_maybe_reset_bus.exit_crit_edge, %do.end23.i, %if.end14.NCR5380_maybe_reset_bus.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef %call6, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %out_exit

if.end19:                                         ; preds = %NCR5380_maybe_reset_bus.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @scsi_scan_host(ptr noundef nonnull %call6) #8
  br label %cleanup

out_exit:                                         ; preds = %NCR5380_maybe_reset_bus.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %main_task.i) #8
  %89 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %work_q.i, align 4
  tail call void @destroy_workqueue(ptr noundef %90) #8
  br label %out_host_put

out_host_put:                                     ; preds = %out_exit, %for.cond12.preheader.i.out_host_put_crit_edge
  %error.0 = phi i32 [ %call.i, %out_exit ], [ -12, %for.cond12.preheader.i.out_host_put_crit_edge ]
  tail call void @scsi_host_put(ptr noundef nonnull %call6) #8
  br label %out_release_region

out_release_region:                               ; preds = %out_host_put, %if.end5.out_release_region_crit_edge
  %error.1 = phi i32 [ %error.0, %out_host_put ], [ -19, %if.end5.out_release_region_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 8) #8
  br label %out_disable_device

out_disable_device:                               ; preds = %out_release_region, %do.end
  %error.2 = phi i32 [ %error.1, %out_release_region ], [ -19, %do.end ]
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -19, %entry.cleanup_crit_edge ], [ %error.2, %out_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmx3191d_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  tail call void @scsi_remove_host(ptr noundef %1) #8
  %main_task.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %main_task.i) #8
  %work_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5
  %4 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %work_q.i, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #8
  tail call void @scsi_host_put(ptr noundef %1) #8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 8) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @NCR5380_queue_command(ptr noundef %instance, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 1, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %1 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmnd, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp8 = icmp eq i8 %4, 3
  %unissued = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5, i32 5, i32 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %unissued to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unissued, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %unissued, ptr noundef %6) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %8, ptr noundef %unissued) #8
  br i1 %call.i.i25, label %if.else.if.end.sink.split_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else.if.end.sink.split_crit_edge ]
  %unissued.sink = phi ptr [ %6, %if.end.i.i ], [ %unissued, %if.else.if.end.sink.split_crit_edge ]
  %.sink28 = phi ptr [ %unissued, %if.end.i.i ], [ %8, %if.else.if.end.sink.split_crit_edge ]
  %9 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %prev.i.sink, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %unissued.sink, ptr %add.ptr.i, align 4
  %prev3.i.i26 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %11 = ptrtoint ptr %prev3.i.i26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink28, ptr %prev3.i.i26, align 4
  %12 = ptrtoint ptr %.sink28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %add.ptr.i, ptr %.sink28, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %work_q = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5
  %13 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %work_q, align 4
  %main_task = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %main_task) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @NCR5380_info(ptr noundef readnone %instance) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 13, i32 0, i32 1
  ret ptr %info
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @NCR5380_abort(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %unissued = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %ncmd.0.in.i.i = phi ptr [ %unissued, %entry ], [ %ncmd.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %ncmd.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ncmd.0.i.i = load ptr, ptr %ncmd.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ncmd.0.i.i, %unissued
  %add.ptr.i.i.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.0.i.i, i32 -1
  %cmp1.i.i = icmp eq ptr %add.ptr.i.i.i, %cmd
  %or.cond.i.i = or i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %list_find_cmd.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

list_find_cmd.exit.i:                             ; preds = %for.cond.i.i
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  br i1 %cmp.not.i.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %list_find_cmd.exit.i
  %add.ptr.i.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.do.end15_crit_edge

if.then.i.do.end15_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %do.end15

do.end15:                                         ; preds = %if.end.i.i.i, %if.then.i.do.end15_crit_edge
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i.i, align 4
  %prev.i.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %result16 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %13 = ptrtoint ptr %result16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 327680, ptr %result16, align 4
  br label %if.else.sink.split

if.end:                                           ; preds = %list_find_cmd.exit.i
  %selecting = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 2
  %14 = ptrtoint ptr %selecting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %selecting, align 4
  %cmp17 = icmp eq ptr %15, %cmd
  br i1 %cmp17, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end
  %16 = ptrtoint ptr %selecting to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %selecting, align 4
  %result24 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %17 = ptrtoint ptr %result24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 327680, ptr %result24, align 4
  %sensing.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %18 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensing.i, align 4
  %cmp.i = icmp eq ptr %19, %cmd
  br i1 %cmp.i, label %if.end.i, label %do.end22.if.else.sink.split_crit_edge

do.end22.if.else.sink.split_crit_edge:            ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.sink.split

if.end.i:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %ses5.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %cmd, ptr noundef %ses5.i) #8
  %20 = ptrtoint ptr %result24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %result24, align 4
  %and.i.i = and i32 %21, -256
  %or.i.i = or i32 %and.i.i, 2
  store i32 %or.i.i, ptr %result24, align 4
  %22 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sensing.i, align 4
  br label %if.else.sink.split

if.end25:                                         ; preds = %if.end
  %disconnected = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  br label %for.cond.i.i112

for.cond.i.i112:                                  ; preds = %for.cond.i.i112.for.cond.i.i112_crit_edge, %if.end25
  %ncmd.0.in.i.i106 = phi ptr [ %disconnected, %if.end25 ], [ %ncmd.0.i.i107, %for.cond.i.i112.for.cond.i.i112_crit_edge ]
  %23 = ptrtoint ptr %ncmd.0.in.i.i106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %ncmd.0.i.i107 = load ptr, ptr %ncmd.0.in.i.i106, align 4
  %cmp.not.i.i108 = icmp eq ptr %ncmd.0.i.i107, %disconnected
  %add.ptr.i.i.i109 = getelementptr %struct.scsi_cmnd, ptr %ncmd.0.i.i107, i32 -1
  %cmp1.i.i110 = icmp eq ptr %add.ptr.i.i.i109, %cmd
  %or.cond.i.i111 = or i1 %cmp.not.i.i108, %cmp1.i.i110
  br i1 %or.cond.i.i111, label %list_find_cmd.exit.i113, label %for.cond.i.i112.for.cond.i.i112_crit_edge

for.cond.i.i112.for.cond.i.i112_crit_edge:        ; preds = %for.cond.i.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i112

list_find_cmd.exit.i113:                          ; preds = %for.cond.i.i112
  br i1 %cmp.not.i.i108, label %if.end31, label %if.then.i116

if.then.i116:                                     ; preds = %list_find_cmd.exit.i113
  %add.ptr.i.i114 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1
  %call.i.i.i115 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i114) #8
  br i1 %call.i.i.i115, label %if.end.i.i.i119, label %if.then.i116.do.end30_crit_edge

if.then.i116.do.end30_crit_edge:                  ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.end.i.i.i119:                                  ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i117 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %24 = ptrtoint ptr %prev.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i117, align 4
  %26 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i114, align 4
  %prev1.i.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i118, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %do.end30

do.end30:                                         ; preds = %if.end.i.i.i119, %if.then.i116.do.end30_crit_edge
  %30 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i.i114, align 4
  %prev.i.i120 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %prev.i.i120 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i120, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %32 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %result.i, align 4
  %and.i = and i32 %33, -16711681
  %or.i = or i32 %and.i, 458752
  store i32 %or.i, ptr %result.i, align 4
  %sensing.i123 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %34 = ptrtoint ptr %sensing.i123 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sensing.i123, align 4
  %cmp.i124 = icmp eq ptr %35, %cmd
  br i1 %cmp.i124, label %if.then.i129, label %do.end30.complete_cmd.exit134_crit_edge

do.end30.complete_cmd.exit134_crit_edge:          ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit134

if.then.i129:                                     ; preds = %do.end30
  %conv.i.i126 = trunc i32 %33 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i126)
  %cmp2.not.i127 = icmp eq i8 %conv.i.i126, 0
  %ses5.i128 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %cmd, ptr noundef %ses5.i128) #8
  br i1 %cmp2.not.i127, label %if.else.i132, label %if.then.i129.if.end.i133_crit_edge

if.then.i129.if.end.i133_crit_edge:               ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i133

if.else.i132:                                     ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %result.i, align 4
  %and.i.i130 = and i32 %37, -256
  %or.i.i131 = or i32 %and.i.i130, 2
  store i32 %or.i.i131, ptr %result.i, align 4
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.else.i132, %if.then.i129.if.end.i133_crit_edge
  %38 = ptrtoint ptr %sensing.i123 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %sensing.i123, align 4
  br label %complete_cmd.exit134

complete_cmd.exit134:                             ; preds = %if.end.i133, %do.end30.complete_cmd.exit134_crit_edge
  tail call void @scsi_done(ptr noundef %cmd) #8
  br label %if.end65

if.end31:                                         ; preds = %list_find_cmd.exit.i113
  %connected = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %connected, align 4
  %cmp32 = icmp eq ptr %40, %cmd
  br i1 %cmp32, label %do.end37, label %if.end44

do.end37:                                         ; preds = %if.end31
  %41 = ptrtoint ptr %connected to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %connected, align 4
  %dma_len = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 3
  %42 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %dma_len, align 4
  %call39 = tail call fastcc i32 @do_abort(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  %result.i135 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %43 = ptrtoint ptr %result.i135 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %result.i135, align 4
  %and.i136 = and i32 %44, -16711681
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.end37
  %or.i137 = or i32 %and.i136, 458752
  %45 = ptrtoint ptr %result.i135 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i137, ptr %result.i135, align 4
  %sensing.i138 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %46 = ptrtoint ptr %sensing.i138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sensing.i138, align 4
  %cmp.i139 = icmp eq ptr %47, %cmd
  br i1 %cmp.i139, label %if.then.i144, label %if.then42.complete_cmd.exit149_crit_edge

if.then42.complete_cmd.exit149_crit_edge:         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit149

if.then.i144:                                     ; preds = %if.then42
  %conv.i.i141 = trunc i32 %44 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i141)
  %cmp2.not.i142 = icmp eq i8 %conv.i.i141, 0
  %ses5.i143 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %cmd, ptr noundef %ses5.i143) #8
  br i1 %cmp2.not.i142, label %if.else.i147, label %if.then.i144.if.end.i148_crit_edge

if.then.i144.if.end.i148_crit_edge:               ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i148

if.else.i147:                                     ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %result.i135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %result.i135, align 4
  %and.i.i145 = and i32 %49, -256
  %or.i.i146 = or i32 %and.i.i145, 2
  store i32 %or.i.i146, ptr %result.i135, align 4
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.else.i147, %if.then.i144.if.end.i148_crit_edge
  %50 = ptrtoint ptr %sensing.i138 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %sensing.i138, align 4
  br label %complete_cmd.exit149

complete_cmd.exit149:                             ; preds = %if.end.i148, %if.then42.complete_cmd.exit149_crit_edge
  tail call void @scsi_done(ptr noundef %cmd) #8
  br label %if.end65

if.end43:                                         ; preds = %do.end37
  %or.i152 = or i32 %and.i136, 327680
  %51 = ptrtoint ptr %result.i135 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i152, ptr %result.i135, align 4
  %sensing.i153 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %52 = ptrtoint ptr %sensing.i153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sensing.i153, align 4
  %cmp.i154 = icmp eq ptr %53, %cmd
  br i1 %cmp.i154, label %if.then.i159, label %if.end43.if.else.sink.split_crit_edge

if.end43.if.else.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.sink.split

if.then.i159:                                     ; preds = %if.end43
  %conv.i.i156 = trunc i32 %44 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i156)
  %cmp2.not.i157 = icmp eq i8 %conv.i.i156, 0
  %ses5.i158 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %cmd, ptr noundef %ses5.i158) #8
  br i1 %cmp2.not.i157, label %if.else.i162, label %if.then.i159.if.end.i163_crit_edge

if.then.i159.if.end.i163_crit_edge:               ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i163

if.else.i162:                                     ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %result.i135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %result.i135, align 4
  %and.i.i160 = and i32 %55, -256
  %or.i.i161 = or i32 %and.i.i160, 2
  store i32 %or.i.i161, ptr %result.i135, align 4
  br label %if.end.i163

if.end.i163:                                      ; preds = %if.else.i162, %if.then.i159.if.end.i163_crit_edge
  %56 = ptrtoint ptr %sensing.i153 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sensing.i153, align 4
  br label %if.else.sink.split

if.end44:                                         ; preds = %if.end31
  %autosense = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 3
  br label %for.cond.i.i171

for.cond.i.i171:                                  ; preds = %for.cond.i.i171.for.cond.i.i171_crit_edge, %if.end44
  %ncmd.0.in.i.i165 = phi ptr [ %autosense, %if.end44 ], [ %ncmd.0.i.i166, %for.cond.i.i171.for.cond.i.i171_crit_edge ]
  %57 = ptrtoint ptr %ncmd.0.in.i.i165 to i32
  call void @__asan_load4_noabort(i32 %57)
  %ncmd.0.i.i166 = load ptr, ptr %ncmd.0.in.i.i165, align 4
  %cmp.not.i.i167 = icmp eq ptr %ncmd.0.i.i166, %autosense
  %add.ptr.i.i.i168 = getelementptr %struct.scsi_cmnd, ptr %ncmd.0.i.i166, i32 -1
  %cmp1.i.i169 = icmp eq ptr %add.ptr.i.i.i168, %cmd
  %or.cond.i.i170 = or i1 %cmp.not.i.i167, %cmp1.i.i169
  br i1 %or.cond.i.i170, label %list_find_cmd.exit.i172, label %for.cond.i.i171.for.cond.i.i171_crit_edge

for.cond.i.i171.for.cond.i.i171_crit_edge:        ; preds = %for.cond.i.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i171

list_find_cmd.exit.i172:                          ; preds = %for.cond.i.i171
  br i1 %cmp.not.i.i167, label %list_find_cmd.exit.i172.if.else_crit_edge, label %if.then.i175

list_find_cmd.exit.i172.if.else_crit_edge:        ; preds = %list_find_cmd.exit.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then.i175:                                     ; preds = %list_find_cmd.exit.i172
  %add.ptr.i.i173 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1
  %call.i.i.i174 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i173) #8
  br i1 %call.i.i.i174, label %if.end.i.i.i178, label %if.then.i175.do.end49_crit_edge

if.then.i175.do.end49_crit_edge:                  ; preds = %if.then.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

if.end.i.i.i178:                                  ; preds = %if.then.i175
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i176 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %prev.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i176, align 4
  %60 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i173, align 4
  %prev1.i.i.i.i177 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i177 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i177, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %do.end49

do.end49:                                         ; preds = %if.end.i.i.i178, %if.then.i175.do.end49_crit_edge
  %64 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i.i173, align 4
  %prev.i.i179 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 4
  %65 = ptrtoint ptr %prev.i.i179 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i179, align 4
  %sensing.i182 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %66 = ptrtoint ptr %sensing.i182 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sensing.i182, align 4
  %cmp.i183 = icmp eq ptr %67, %cmd
  br i1 %cmp.i183, label %if.then.i188, label %do.end49.if.else.sink.split_crit_edge

do.end49.if.else.sink.split_crit_edge:            ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.sink.split

if.then.i188:                                     ; preds = %do.end49
  %result.i.i184 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %68 = ptrtoint ptr %result.i.i184 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %result.i.i184, align 4
  %conv.i.i185 = trunc i32 %69 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i185)
  %cmp2.not.i186 = icmp eq i8 %conv.i.i185, 0
  %ses5.i187 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %cmd, ptr noundef %ses5.i187) #8
  br i1 %cmp2.not.i186, label %if.else.i191, label %if.then.i188.if.end.i192_crit_edge

if.then.i188.if.end.i192_crit_edge:               ; preds = %if.then.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i192

if.else.i191:                                     ; preds = %if.then.i188
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %result.i.i184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %result.i.i184, align 4
  %and.i.i189 = and i32 %71, -256
  %or.i.i190 = or i32 %and.i.i189, 2
  store i32 %or.i.i190, ptr %result.i.i184, align 4
  br label %if.end.i192

if.end.i192:                                      ; preds = %if.else.i191, %if.then.i188.if.end.i192_crit_edge
  %72 = ptrtoint ptr %sensing.i182 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %sensing.i182, align 4
  br label %if.else.sink.split

if.else.sink.split:                               ; preds = %if.end.i192, %do.end49.if.else.sink.split_crit_edge, %if.end.i163, %if.end43.if.else.sink.split_crit_edge, %if.end.i, %do.end22.if.else.sink.split_crit_edge, %do.end15
  tail call void @scsi_done(ptr noundef %cmd) #8
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %list_find_cmd.exit.i172.if.else_crit_edge
  %73 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %74, i32 0, i32 18
  %75 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %lun, align 8
  %sh_prom = trunc i64 %76 to i32
  %shl = shl nuw i32 1, %sh_prom
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %74, i32 0, i32 16
  %77 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id.i, align 8
  %arrayidx = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i, i32 0, i32 19, i32 %78
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx, align 1
  %81 = trunc i32 %shl to i8
  %82 = xor i8 %81, -1
  %conv61 = and i8 %80, %82
  store i8 %conv61, ptr %arrayidx, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.else, %complete_cmd.exit149, %complete_cmd.exit134
  %result.0197 = phi i32 [ 8194, %if.else ], [ 8195, %complete_cmd.exit149 ], [ 8195, %complete_cmd.exit134 ]
  %work_q = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5
  %83 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %work_q, align 4
  %main_task = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %84, ptr noundef %main_task) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %result.0197
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @NCR5380_host_reset(ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %unissued = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 1
  %4 = ptrtoint ptr %unissued to i32
  call void @__asan_load4_noabort(i32 %4)
  %ncmd.033 = load ptr, ptr %unissued, align 4
  %cmp14.not34 = icmp eq ptr %ncmd.033, %unissued
  br i1 %cmp14.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ncmd.035 = phi ptr [ %ncmd.0, %for.body.for.body_crit_edge ], [ %ncmd.033, %entry.for.body_crit_edge ]
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.035, i32 -1
  %result = getelementptr %struct.scsi_cmnd, ptr %ncmd.035, i32 -1, i32 24
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 524288, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %add.ptr.i) #8
  %6 = ptrtoint ptr %ncmd.035 to i32
  call void @__asan_load4_noabort(i32 %6)
  %ncmd.0 = load ptr, ptr %ncmd.035, align 4
  %cmp14.not = icmp eq ptr %ncmd.0, %unissued
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = ptrtoint ptr %unissued to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %unissued, ptr %unissued, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %unissued, ptr %prev.i, align 4
  tail call fastcc void @do_reset(ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i, align 4
  %add.i = add i32 %10, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 4
  %add7.i = add i32 %13, 3
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %14 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i, align 4
  %add15.i = add i32 %16, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %17 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #8, !srcloc !154
  %selecting.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 2
  %18 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %selecting.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %if.then.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.end
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 524288, ptr %result.i, align 4
  %21 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %selecting.i, align 4
  %sensing.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %23 = ptrtoint ptr %sensing.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sensing.i.i, align 4
  %cmp.i.i = icmp eq ptr %24, %22
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.complete_cmd.exit.i_crit_edge

if.then.i.complete_cmd.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %25 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %result.i.i.i, align 4
  %conv.i.i.i = trunc i32 %26 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.i)
  %cmp2.not.i.i = icmp eq i8 %conv.i.i.i, 0
  %ses5.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %22, ptr noundef %ses5.i.i) #8
  br i1 %cmp2.not.i.i, label %if.else.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result.i.i.i, align 4
  %and.i.i.i = and i32 %28, -256
  %or.i.i.i = or i32 %and.i.i.i, 2
  store i32 %or.i.i.i, ptr %result.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %sensing.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %sensing.i.i, align 4
  br label %complete_cmd.exit.i

complete_cmd.exit.i:                              ; preds = %if.end.i.i, %if.then.i.complete_cmd.exit.i_crit_edge
  tail call void @scsi_done(ptr noundef %22) #8
  %30 = ptrtoint ptr %selecting.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %selecting.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %complete_cmd.exit.i, %for.end.if.end.i_crit_edge
  %disconnected.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ncmd.0123.i = load ptr, ptr %disconnected.i, align 4
  %cmp.not124.i = icmp eq ptr %ncmd.0123.i, %disconnected.i
  br i1 %cmp.not124.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %sensing.i94.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %ses5.i99.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %complete_cmd.exit105.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ncmd.0125.i = phi ptr [ %ncmd.0123.i, %for.body.lr.ph.i ], [ %ncmd.0.i, %complete_cmd.exit105.i.for.body.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.0125.i, i32 -1
  %result.i.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.0125.i, i32 -1, i32 24
  %32 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %33, -16711681
  %or.i.i = or i32 %and.i.i, 524288
  store i32 %or.i.i, ptr %result.i.i, align 4
  %34 = ptrtoint ptr %sensing.i94.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sensing.i94.i, align 4
  %cmp.i95.i = icmp eq ptr %35, %add.ptr.i.i
  br i1 %cmp.i95.i, label %if.then.i100.i, label %for.body.i.complete_cmd.exit105.i_crit_edge

for.body.i.complete_cmd.exit105.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit105.i

if.then.i100.i:                                   ; preds = %for.body.i
  %conv.i.i97.i = trunc i32 %33 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i97.i)
  %cmp2.not.i98.i = icmp eq i8 %conv.i.i97.i, 0
  tail call void @scsi_eh_restore_cmnd(ptr noundef %add.ptr.i.i, ptr noundef %ses5.i99.i) #8
  br i1 %cmp2.not.i98.i, label %if.else.i103.i, label %if.then.i100.i.if.end.i104.i_crit_edge

if.then.i100.i.if.end.i104.i_crit_edge:           ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i104.i

if.else.i103.i:                                   ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %result.i.i, align 4
  %and.i.i101.i = and i32 %37, -256
  %or.i.i102.i = or i32 %and.i.i101.i, 2
  store i32 %or.i.i102.i, ptr %result.i.i, align 4
  br label %if.end.i104.i

if.end.i104.i:                                    ; preds = %if.else.i103.i, %if.then.i100.i.if.end.i104.i_crit_edge
  %38 = ptrtoint ptr %sensing.i94.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %sensing.i94.i, align 4
  br label %complete_cmd.exit105.i

complete_cmd.exit105.i:                           ; preds = %if.end.i104.i, %for.body.i.complete_cmd.exit105.i_crit_edge
  tail call void @scsi_done(ptr noundef %add.ptr.i.i) #8
  %39 = ptrtoint ptr %ncmd.0125.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %ncmd.0.i = load ptr, ptr %ncmd.0125.i, align 4
  %cmp.not.i = icmp eq ptr %ncmd.0.i, %disconnected.i
  br i1 %cmp.not.i, label %complete_cmd.exit105.i.for.end.i_crit_edge, label %complete_cmd.exit105.i.for.body.i_crit_edge

complete_cmd.exit105.i.for.body.i_crit_edge:      ; preds = %complete_cmd.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

complete_cmd.exit105.i.for.end.i_crit_edge:       ; preds = %complete_cmd.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %complete_cmd.exit105.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %40 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %disconnected.i, ptr %disconnected.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %disconnected.i, ptr %prev.i.i, align 4
  %autosense.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 3
  %42 = ptrtoint ptr %autosense.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %ncmd.1126.i = load ptr, ptr %autosense.i, align 4
  %cmp37.not127.i = icmp eq ptr %ncmd.1126.i, %autosense.i
  br i1 %cmp37.not127.i, label %for.end.i.for.end48.i_crit_edge, label %for.end.i.for.body39.i_crit_edge

for.end.i.for.body39.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body39.i

for.end.i.for.end48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.end.i.for.body39.i_crit_edge
  %ncmd.1128.i = phi ptr [ %ncmd.1.i, %for.body39.i.for.body39.i_crit_edge ], [ %ncmd.1126.i, %for.end.i.for.body39.i_crit_edge ]
  %add.ptr.i106.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.1128.i, i32 -1
  tail call void @scsi_done(ptr noundef %add.ptr.i106.i) #8
  %43 = ptrtoint ptr %ncmd.1128.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ncmd.1.i = load ptr, ptr %ncmd.1128.i, align 4
  %cmp37.not.i = icmp eq ptr %ncmd.1.i, %autosense.i
  br i1 %cmp37.not.i, label %for.body39.i.for.end48.i_crit_edge, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39.i

for.body39.i.for.end48.i_crit_edge:               ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48.i

for.end48.i:                                      ; preds = %for.body39.i.for.end48.i_crit_edge, %for.end.i.for.end48.i_crit_edge
  %44 = ptrtoint ptr %autosense.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %autosense.i, ptr %autosense.i, align 4
  %prev.i107.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 6
  %45 = ptrtoint ptr %prev.i107.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %autosense.i, ptr %prev.i107.i, align 4
  %connected.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %connected.i, align 4
  %tobool50.not.i = icmp eq ptr %47, null
  br i1 %tobool50.not.i, label %for.end48.i.bus_reset_cleanup.exit_crit_edge, label %if.then51.i

for.end48.i.bus_reset_cleanup.exit_crit_edge:     ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bus_reset_cleanup.exit

if.then51.i:                                      ; preds = %for.end48.i
  %result.i108.i = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %result.i108.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %result.i108.i, align 4
  %and.i109.i = and i32 %49, -16711681
  %or.i110.i = or i32 %and.i109.i, 524288
  store i32 %or.i110.i, ptr %result.i108.i, align 4
  %50 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %connected.i, align 4
  %sensing.i111.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 7
  %52 = ptrtoint ptr %sensing.i111.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sensing.i111.i, align 4
  %cmp.i112.i = icmp eq ptr %53, %51
  br i1 %cmp.i112.i, label %if.then.i117.i, label %if.then51.i.complete_cmd.exit122.i_crit_edge

if.then51.i.complete_cmd.exit122.i_crit_edge:     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit122.i

if.then.i117.i:                                   ; preds = %if.then51.i
  %result.i.i113.i = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 24
  %54 = ptrtoint ptr %result.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %result.i.i113.i, align 4
  %conv.i.i114.i = trunc i32 %55 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i114.i)
  %cmp2.not.i115.i = icmp eq i8 %conv.i.i114.i, 0
  %ses5.i116.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  tail call void @scsi_eh_restore_cmnd(ptr noundef %51, ptr noundef %ses5.i116.i) #8
  br i1 %cmp2.not.i115.i, label %if.else.i120.i, label %if.then.i117.i.if.end.i121.i_crit_edge

if.then.i117.i.if.end.i121.i_crit_edge:           ; preds = %if.then.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i121.i

if.else.i120.i:                                   ; preds = %if.then.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %result.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %result.i.i113.i, align 4
  %and.i.i118.i = and i32 %57, -256
  %or.i.i119.i = or i32 %and.i.i118.i, 2
  store i32 %or.i.i119.i, ptr %result.i.i113.i, align 4
  br label %if.end.i121.i

if.end.i121.i:                                    ; preds = %if.else.i120.i, %if.then.i117.i.if.end.i121.i_crit_edge
  %58 = ptrtoint ptr %sensing.i111.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %sensing.i111.i, align 4
  br label %complete_cmd.exit122.i

complete_cmd.exit122.i:                           ; preds = %if.end.i121.i, %if.then51.i.complete_cmd.exit122.i_crit_edge
  tail call void @scsi_done(ptr noundef %51) #8
  %59 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %connected.i, align 4
  br label %bus_reset_cleanup.exit

bus_reset_cleanup.exit:                           ; preds = %complete_cmd.exit122.i, %for.end48.i.bus_reset_cleanup.exit_crit_edge
  %uglygep.i = getelementptr i8, ptr %3, i32 2692
  %60 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %uglygep.i, align 1
  %dma_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 3
  %61 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %dma_len.i, align 4
  %work_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5
  %62 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %work_q.i, align 4
  %main_task.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 1
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %main_task.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 8194
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_abort(ptr nocapture noundef readonly %instance, i32 noundef %can_sleep) unnamed_addr #2 align 64 {
entry:
  %msgptr = alloca ptr, align 4
  %phase = alloca i8, align 1
  %tmp = alloca i8, align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msgptr) #8
  %0 = ptrtoint ptr %msgptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %msgptr, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %phase) #8
  %1 = ptrtoint ptr %phase to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %phase, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5, i32 5
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add = add i32 %4, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 2) #8, !srcloc !154
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i)
  %cmp.i.not = icmp eq i8 %and41.i, 0
  br i1 %cmp.i.not, label %NCR5380_poll_politely.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

NCR5380_poll_politely.exit:                       ; preds = %entry
  %mul = mul i32 %can_sleep, 1000
  %call7.i = tail call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp = icmp slt i32 %call7.i, 0
  br i1 %cmp, label %NCR5380_poll_politely.exit.do.body53_crit_edge, label %NCR5380_poll_politely.exit.if.end_crit_edge

NCR5380_poll_politely.exit.if.end_crit_edge:      ; preds = %NCR5380_poll_politely.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

NCR5380_poll_politely.exit.do.body53_crit_edge:   ; preds = %NCR5380_poll_politely.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.end:                                           ; preds = %NCR5380_poll_politely.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i85 = phi i32 [ %call7.i, %NCR5380_poll_politely.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add5 = add i32 %11, 4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %12 = inttoptr i32 %add7 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %14 = and i8 %13, 28
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmp, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %16 = lshr exact i8 %14, 2
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %add19 = add i32 %18, 3
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %19 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %14)
  %cmp24.not = icmp eq i8 %14, 24
  br i1 %cmp24.not, label %if.end.if.end49_crit_edge, label %do.body27

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body27:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base, align 4
  %add31 = add i32 %21, 1
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %22 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 18) #8, !srcloc !154
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 4
  %add.i74 = add i32 %24, 4
  %and.i75 = and i32 %add.i74, 1048575
  %add1.i76 = or i32 %and.i75, -18874368
  %25 = inttoptr i32 %add1.i76 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i77 = and i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i77)
  %cmp.i78 = icmp eq i8 %and41.i77, 0
  br i1 %cmp.i78, label %do.body27.do.body41_crit_edge, label %NCR5380_poll_politely.exit82

do.body27.do.body41_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

NCR5380_poll_politely.exit82:                     ; preds = %do.body27
  %mul35 = mul i32 %can_sleep, 300
  %call7.i79 = tail call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 0, i32 noundef %mul35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i79)
  %cmp37 = icmp slt i32 %call7.i79, 0
  br i1 %cmp37, label %NCR5380_poll_politely.exit82.do.body53_crit_edge, label %NCR5380_poll_politely.exit82.do.body41_crit_edge

NCR5380_poll_politely.exit82.do.body41_crit_edge: ; preds = %NCR5380_poll_politely.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

NCR5380_poll_politely.exit82.do.body53_crit_edge: ; preds = %NCR5380_poll_politely.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

do.body41:                                        ; preds = %NCR5380_poll_politely.exit82.do.body41_crit_edge, %do.body27.do.body41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %add45 = add i32 %28, 1
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %29 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 2) #8, !srcloc !154
  br label %if.end49

if.end49:                                         ; preds = %do.body41, %if.end.if.end49_crit_edge
  %rc.0 = phi i32 [ 0, %do.body41 ], [ %retval.0.i85, %if.end.if.end49_crit_edge ]
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %tmp, align 1
  %31 = ptrtoint ptr %msgptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tmp, ptr %msgptr, align 4
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %len, align 4
  %33 = ptrtoint ptr %phase to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 24, ptr %phase, align 1
  call fastcc void @NCR5380_transfer_pio(ptr noundef %instance, ptr noundef nonnull %phase, ptr noundef nonnull %len, ptr noundef nonnull %msgptr, i32 noundef %can_sleep)
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  %spec.select = select i1 %tobool.not, i32 %rc.0, i32 -6
  br label %do.body53

do.body53:                                        ; preds = %if.end49, %NCR5380_poll_politely.exit82.do.body53_crit_edge, %NCR5380_poll_politely.exit.do.body53_crit_edge
  %rc.1 = phi i32 [ %call7.i, %NCR5380_poll_politely.exit.do.body53_crit_edge ], [ %call7.i79, %NCR5380_poll_politely.exit82.do.body53_crit_edge ], [ %spec.select, %if.end49 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %add57 = add i32 %37, 1
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %38 = inttoptr i32 %add59 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 0) #8, !srcloc !154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phase) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msgptr) #8
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_restore_cmnd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NCR5380_transfer_pio(ptr nocapture noundef readonly %instance, ptr nocapture noundef %phase, ptr nocapture noundef %count, ptr nocapture noundef %data, i32 noundef %can_sleep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 0, i32 53
  %0 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phase, align 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %1 to i32
  %6 = lshr i8 %1, 2
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5, i32 5
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add = add i32 %8, 3
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %9 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #8, !srcloc !154
  %mul = mul i32 %can_sleep, 100
  %mul113 = mul i32 %can_sleep, 500
  %and31 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool.not = icmp eq i32 %and31, 0
  %and55 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp ne i32 %and55, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %1)
  %cmp123 = icmp eq i8 %1, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %1)
  %cmp130 = icmp eq i8 %1, 24
  br label %do.body4

do.body4:                                         ; preds = %do.cond155.do.body4_crit_edge, %entry
  %d.0 = phi ptr [ %5, %entry ], [ %incdec.ptr17, %do.cond155.do.body4_crit_edge ]
  %c.0 = phi i32 [ %3, %entry ], [ %dec, %do.cond155.do.body4_crit_edge ]
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add.i = add i32 %11, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i)
  %cmp.i.not = icmp eq i8 %and41.i, 0
  br i1 %cmp.i.not, label %NCR5380_poll_politely.exit, label %do.body4.do.end9_crit_edge

do.body4.do.end9_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

NCR5380_poll_politely.exit:                       ; preds = %do.body4
  %call7.i = tail call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp = icmp slt i32 %call7.i, 0
  br i1 %cmp, label %NCR5380_poll_politely.exit.do.end160_crit_edge, label %NCR5380_poll_politely.exit.do.end9_crit_edge

NCR5380_poll_politely.exit.do.end9_crit_edge:     ; preds = %NCR5380_poll_politely.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

NCR5380_poll_politely.exit.do.end160_crit_edge:   ; preds = %NCR5380_poll_politely.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

do.end9:                                          ; preds = %NCR5380_poll_politely.exit.do.end9_crit_edge, %do.body4.do.end9_crit_edge
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %add11 = add i32 %15, 4
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %16 = inttoptr i32 %add13 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  %18 = and i8 %17, 28
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %1)
  %cmp20.not = icmp eq i8 %18, %1
  br i1 %cmp20.not, label %if.end29, label %do.end9.do.end160_crit_edge

do.end9.do.end160_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

if.end29:                                         ; preds = %do.end9
  br i1 %tobool.not, label %if.then53, label %do.body104

if.then53:                                        ; preds = %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %d.0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %d.0, align 1
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  %and38 = and i32 %22, 1048575
  %add39 = or i32 %and38, -18874368
  %23 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.0)
  %cmp57 = icmp sgt i32 %c.0, 1
  %or.cond = select i1 %tobool56.not, i1 %cmp57, i1 false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base, align 4
  %add84 = add i32 %25, 1
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %26 = inttoptr i32 %add86 to ptr
  br i1 %or.cond, label %do.body80, label %do.body60

do.body60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 1) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %add75 = add i32 %28, 1
  %and76 = and i32 %add75, 1048575
  %add77 = or i32 %and76, -18874368
  %29 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 17) #8, !srcloc !154
  br label %if.end112

do.body80:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 3) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 4
  %add95 = add i32 %31, 1
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %32 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 19) #8, !srcloc !154
  br label %if.end112

do.body104:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base, align 4
  %and44 = and i32 %34, 1048575
  %add45 = or i32 %and44, -18874368
  %35 = inttoptr i32 %add45 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %37 = ptrtoint ptr %d.0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %d.0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base, align 4
  %add108 = add i32 %39, 1
  %and109 = and i32 %add108, 1048575
  %add110 = or i32 %and109, -18874368
  %40 = inttoptr i32 %add110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 16) #8, !srcloc !154
  br label %if.end112

if.end112:                                        ; preds = %do.body104, %do.body80, %do.body60
  %incdec.ptr17 = getelementptr i8, ptr %d.0, i32 1
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base, align 4
  %add.i5 = add i32 %42, 4
  %and.i6 = and i32 %add.i5, 1048575
  %add1.i7 = or i32 %and.i6, -18874368
  %43 = inttoptr i32 %add1.i7 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i8 = and i8 %44, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i8)
  %cmp.i9 = icmp eq i8 %and41.i8, 0
  br i1 %cmp.i9, label %if.end112.do.end121_crit_edge, label %NCR5380_poll_politely.exit13

if.end112.do.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end121

NCR5380_poll_politely.exit13:                     ; preds = %if.end112
  %call7.i10 = tail call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 0, i32 noundef %mul113) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i10)
  %cmp115 = icmp slt i32 %call7.i10, 0
  br i1 %cmp115, label %NCR5380_poll_politely.exit13.do.end160_crit_edge, label %NCR5380_poll_politely.exit13.do.end121_crit_edge

NCR5380_poll_politely.exit13.do.end121_crit_edge: ; preds = %NCR5380_poll_politely.exit13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end121

NCR5380_poll_politely.exit13.do.end160_crit_edge: ; preds = %NCR5380_poll_politely.exit13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

do.end121:                                        ; preds = %NCR5380_poll_politely.exit13.do.end121_crit_edge, %if.end112.do.end121_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.0)
  %cmp126 = icmp eq i32 %c.0, 1
  %or.cond1 = select i1 %cmp123, i1 %cmp126, i1 false
  br i1 %or.cond1, label %do.end121.do.end160_crit_edge, label %if.then128

do.end121.do.end160_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

if.then128:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.0)
  %cmp133 = icmp sgt i32 %c.0, 1
  %or.cond2 = select i1 %cmp130, i1 %cmp133, i1 false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base, align 4
  %add140 = add i32 %46, 1
  %and141 = and i32 %add140, 1048575
  %add142 = or i32 %and141, -18874368
  %47 = inttoptr i32 %add142 to ptr
  br i1 %or.cond2, label %do.body136, label %do.body145

do.body136:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 2) #8, !srcloc !154
  br label %do.cond155

do.body145:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #8, !srcloc !154
  br label %do.cond155

do.cond155:                                       ; preds = %do.body145, %do.body136
  %dec = add i32 %c.0, -1
  %tobool156.not = icmp eq i32 %dec, 0
  br i1 %tobool156.not, label %do.cond155.do.end160_crit_edge, label %do.cond155.do.body4_crit_edge

do.cond155.do.body4_crit_edge:                    ; preds = %do.cond155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.cond155.do.end160_crit_edge:                   ; preds = %do.cond155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

do.end160:                                        ; preds = %do.cond155.do.end160_crit_edge, %do.end121.do.end160_crit_edge, %NCR5380_poll_politely.exit13.do.end160_crit_edge, %do.end9.do.end160_crit_edge, %NCR5380_poll_politely.exit.do.end160_crit_edge
  %d.1 = phi ptr [ %d.0, %NCR5380_poll_politely.exit.do.end160_crit_edge ], [ %d.0, %do.end9.do.end160_crit_edge ], [ %incdec.ptr17, %NCR5380_poll_politely.exit13.do.end160_crit_edge ], [ %incdec.ptr17, %do.cond155.do.end160_crit_edge ], [ %incdec.ptr17, %do.end121.do.end160_crit_edge ]
  %c.1 = phi i32 [ %c.0, %NCR5380_poll_politely.exit.do.end160_crit_edge ], [ %c.0, %do.end9.do.end160_crit_edge ], [ %c.0, %NCR5380_poll_politely.exit13.do.end160_crit_edge ], [ 0, %do.cond155.do.end160_crit_edge ], [ 0, %do.end121.do.end160_crit_edge ]
  %48 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %c.1, ptr %count, align 4
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %d.1, ptr %data, align 4
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base, align 4
  %add163 = add i32 %51, 4
  %and164 = and i32 %add163, 1048575
  %add165 = or i32 %and164, -18874368
  %52 = inttoptr i32 %add165 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %conv169 = zext i8 %53 to i32
  %and170 = and i32 %conv169, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %lor.lhs.false, label %do.end160.if.then178_crit_edge

do.end160.if.then178_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then178

lor.lhs.false:                                    ; preds = %do.end160
  %and173 = and i32 %conv169, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp ne i32 %and173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1)
  %cmp176 = icmp eq i32 %c.1, 0
  %or.cond3 = select i1 %tobool174.not, i1 %cmp176, i1 false
  br i1 %or.cond3, label %lor.lhs.false.if.then178_crit_edge, label %lor.lhs.false.if.end183_crit_edge

lor.lhs.false.if.end183_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

lor.lhs.false.if.then178_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then178

if.then178:                                       ; preds = %lor.lhs.false.if.then178_crit_edge, %do.end160.if.then178_crit_edge
  %and180 = and i8 %53, 28
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %lor.lhs.false.if.end183_crit_edge
  %storemerge = phi i8 [ %and180, %if.then178 ], [ -1, %lor.lhs.false.if.end183_crit_edge ]
  %54 = ptrtoint ptr %phase to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %storemerge, ptr %phase, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @NCR5380_poll_politely2(ptr nocapture noundef readonly %hostdata, i32 noundef %reg1, i8 noundef zeroext %bit1, i8 noundef zeroext %val1, i32 noundef %reg2, i8 noundef zeroext %bit2, i8 noundef zeroext %val2, i32 noundef %wait) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_loops = getelementptr inbounds %struct.NCR5380_hostdata, ptr %hostdata, i32 0, i32 2
  %0 = ptrtoint ptr %poll_loops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_loops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %base = getelementptr inbounds %struct.NCR5380_hostdata, ptr %hostdata, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %n.0 = phi i32 [ %1, %entry ], [ %dec, %do.end.do.body_crit_edge ]
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add1 = add i32 %4, %reg1
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %and583 = and i8 %6, %bit1
  call void @__sanitizer_cov_trace_cmp1(i8 %and583, i8 %val1)
  %cmp = icmp eq i8 %and583, %val1
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add10 = add i32 %8, %reg2
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %9 = inttoptr i32 %add12 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and1884 = and i8 %10, %bit2
  call void @__sanitizer_cov_trace_cmp1(i8 %and1884, i8 %val2)
  %cmp20 = icmp eq i8 %and1884, %val2
  br i1 %cmp20, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !187
  %dec = add i32 %n.0, -1
  %tobool.not = icmp eq i32 %n.0, 0
  br i1 %tobool.not, label %do.end32, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool33.not = icmp eq i32 %wait, 0
  br i1 %tobool33.not, label %do.end32.cleanup_crit_edge, label %while.cond.preheader

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end32
  %11 = add i32 %2, %wait
  br label %while.cond

while.cond:                                       ; preds = %if.end54.while.cond_crit_edge, %while.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call38 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %add41 = add i32 %14, %reg1
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %15 = inttoptr i32 %add43 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  %and4985 = and i8 %16, %bit1
  call void @__sanitizer_cov_trace_cmp1(i8 %and4985, i8 %val1)
  %cmp51 = icmp eq i8 %and4985, %val1
  br i1 %cmp51, label %while.body.cleanup_crit_edge, label %if.end54

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %while.body
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %add57 = add i32 %18, %reg2
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %19 = inttoptr i32 %add59 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %and6586 = and i8 %20, %bit2
  %cmp67 = icmp eq i8 %and6586, %val2
  br i1 %cmp67, label %if.end54.cleanup_crit_edge, label %if.end54.while.cond_crit_edge

if.end54.while.cond_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end32.cleanup_crit_edge ], [ -110, %while.cond.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_reset(ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !190
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %instance, i32 1, i32 5, i32 5
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base, align 4
  %add = add i32 %2, 4
  %and = and i32 %add, 1048575
  %add15 = or i32 %and, -18874368
  %3 = inttoptr i32 %add15 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 7
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add23 = add i32 %8, 3
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %9 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #8, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add31 = add i32 %11, 1
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %12 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -128) #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %add39 = add i32 %15, 1
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %16 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #8, !srcloc !154
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %add45 = add i32 %18, 7
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %19 = inttoptr i32 %add47 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  br i1 %tobool.not, label %if.then60, label %do.body12.do.body62_crit_edge

do.body12.do.body62_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.then60:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body62

do.body62:                                        ; preds = %if.then60, %do.body12.do.body62_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !196
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool70.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool70.not, label %if.then74, label %do.body62.do.end77_crit_edge, !prof !197

do.body62.do.end77_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body62.do.end77_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !198
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @NCR5380_main(ptr noundef %work) #2 align 64 {
entry:
  %msg.i = alloca [3 x i8], align 1
  %len.i157 = alloca i32, align 4
  %data.i158 = alloca ptr, align 4
  %phase.i159 = alloca i8, align 1
  %msgout.i = alloca i8, align 1
  %len.i76 = alloca i32, align 4
  %data.i77 = alloca ptr, align 4
  %phase.i78 = alloca i8, align 1
  %tmp.i79 = alloca i8, align 1
  %extended_msg.i = alloca [10 x i8], align 1
  %tmp.i = alloca [3 x i8], align 1
  %phase.i = alloca i8, align 1
  %data.i = alloca ptr, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %lock = getelementptr i8, ptr %work, i32 -64
  %connected = getelementptr i8, ptr %work, i32 -20
  %selecting = getelementptr i8, ptr %work, i32 72
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %sensing.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 7
  %autosense.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 3
  %ses.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 6
  %unissued.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %tmp.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %tmp.i, i32 0, i32 2
  %irq.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 47
  %selecting.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 2
  %base.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5
  %id_mask.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %id_higher_mask.i = getelementptr inbounds %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 21
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 2
  %connected.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %shost_gendev282.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  %4 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 2
  %poll_loops.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  %disconnected.i180 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %dma_len = getelementptr i8, ptr %work, i32 48
  %6 = getelementptr inbounds [10 x i8], ptr %extended_msg.i, i32 0, i32 1
  %7 = getelementptr inbounds [10 x i8], ptr %extended_msg.i, i32 0, i32 2
  %8 = getelementptr inbounds [10 x i8], ptr %extended_msg.i, i32 0, i32 3
  %last_message299.i = getelementptr inbounds %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 22
  %prev.i.i98 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 6
  %id_mask = getelementptr i8, ptr %work, i32 176
  %base = getelementptr i8, ptr %work, i32 60
  br label %do.body

do.body:                                          ; preds = %if.then32, %entry
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %9 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connected, align 4
  %tobool.not242 = icmp eq ptr %10, null
  br i1 %tobool.not242, label %do.body.land.rhs_crit_edge, label %do.body.land.lhs.true_crit_edge

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %11 = ptrtoint ptr %selecting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %selecting, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sensing.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %while.body.for.cond.i.preheader_crit_edge

while.body.for.cond.i.preheader_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

lor.lhs.false.i:                                  ; preds = %while.body
  %15 = ptrtoint ptr %autosense.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %autosense.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %autosense.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.for.cond.i.preheader_crit_edge, label %if.else.i

lor.lhs.false.i.for.cond.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %lor.lhs.false.i.for.cond.i.preheader_crit_edge, %while.body.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %ncmd.0.in.i = phi ptr [ %ncmd.0.i, %for.body.i.for.cond.i_crit_edge ], [ %unissued.i, %for.cond.i.preheader ]
  %17 = ptrtoint ptr %ncmd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %ncmd.0.i = load ptr, ptr %ncmd.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ncmd.0.i, %unissued.i
  br i1 %cmp.not.i, label %for.cond.i.while.end_crit_edge, label %for.body.i

for.cond.i.while.end_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.body.i:                                       ; preds = %for.cond.i
  %device.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.0.i, i32 -1, i32 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i.i, align 8
  %arrayidx.i = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 18
  %24 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lun.i, align 8
  %sh_prom.i = trunc i64 %25 to i32
  %shl.i = shl nuw i32 1, %sh_prom.i
  %and.i = and i32 %shl.i, %conv.i
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then8.i:                                       ; preds = %for.body.i
  %add.ptr.i.le.i = getelementptr %struct.scsi_cmnd, ptr %ncmd.0.i, i32 -1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ncmd.0.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.list_del.exit.i_crit_edge

if.then8.i.list_del.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ncmd.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %ncmd.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ncmd.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then8.i.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %ncmd.0.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %ncmd.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ncmd.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %dequeue_next_cmd.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call.i.i49.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #8
  br i1 %call.i.i49.i, label %if.end.i.i52.i, label %if.else.i.list_del.exit54.i_crit_edge

if.else.i.list_del.exit54.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit54.i

if.end.i.i52.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i50.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i50.i, align 4
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %16, align 4
  %prev1.i.i.i51.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i51.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit54.i

list_del.exit54.i:                                ; preds = %if.end.i.i52.i, %if.else.i.list_del.exit54.i_crit_edge
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i53.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i53.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53.i, align 4
  %add.ptr.i55.i = getelementptr %struct.scsi_cmnd, ptr %16, i32 -1
  call void @scsi_eh_prep_cmnd(ptr noundef %add.ptr.i55.i, ptr noundef %ses.i, ptr noundef null, i32 noundef 0, i32 noundef -1) #8
  %42 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i55.i, ptr %sensing.i, align 4
  br label %dequeue_next_cmd.exit

dequeue_next_cmd.exit:                            ; preds = %list_del.exit54.i, %list_del.exit.i
  %retval.0.i = phi ptr [ %add.ptr.i.le.i, %list_del.exit.i ], [ %add.ptr.i55.i, %list_del.exit54.i ]
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %dequeue_next_cmd.exit.while.end_crit_edge, label %do.end

dequeue_next_cmd.exit.while.end_crit_edge:        ; preds = %dequeue_next_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %dequeue_next_cmd.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp.i) #8
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %tmp.i, align 1, !annotation !169
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %2, align 1, !annotation !169
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %3, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %phase.i) #8
  %46 = ptrtoint ptr %phase.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %phase.i, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #8
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %data.i, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %len.i, align 4, !annotation !169
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.not.i57 = icmp eq i32 %50, -1
  br i1 %cmp.not.i57, label %do.end.land.end.i_crit_edge, label %land.lhs.true.i

do.end.land.end.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %do.end
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 16
  %51 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmnd.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %54)
  %cmp1.not.i = icmp eq i8 %54, 3
  br i1 %cmp1.not.i, label %land.lhs.true.i.land.end.i_crit_edge, label %land.rhs.i

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = load i32, ptr @disconnect_mask, align 4
  %device.i58 = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %device.i58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device.i58, align 4
  %id.i.i59 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %id.i.i59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i.i59, align 8
  %shl.i60 = shl nuw i32 1, %59
  %and.i61 = and i32 %shl.i60, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  %phi.bo.i = select i1 %tobool.not.i62, i32 128, i32 192
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %do.end.land.end.i_crit_edge
  %60 = phi i32 [ 128, %land.lhs.true.i.land.end.i_crit_edge ], [ 128, %do.end.land.end.i_crit_edge ], [ %phi.bo.i, %land.rhs.i ]
  %61 = ptrtoint ptr %selecting.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i, ptr %selecting.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base.i, align 4
  %add.i = add i32 %63, 3
  %and10.i = and i32 %add.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %64 = inttoptr i32 %add11.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 0) #8, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %id_mask.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id_mask.i, align 4
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base.i, align 4
  %and18.i = and i32 %68, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %69 = inttoptr i32 %add19.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %66) #8, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base.i, align 4
  %add25.i = add i32 %71, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %72 = inttoptr i32 %add27.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 1) #8, !srcloc !154
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  %call29.i = call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i.i, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 64, i8 noundef zeroext 64, i32 noundef 100) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base.i, align 4
  %add32.i = add i32 %74, 2
  %and33.i = and i32 %add32.i, 1048575
  %add34.i = or i32 %and33.i, -18874368
  %75 = inttoptr i32 %add34.i to ptr
  %76 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %77 = and i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool40.not.i = icmp eq i8 %77, 0
  br i1 %tobool40.not.i, label %land.end.i.out.i_crit_edge, label %if.end.i

land.end.i.out.i_crit_edge:                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end.i:                                         ; preds = %land.end.i
  %78 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %selecting.i, align 4
  %tobool42.not.i = icmp eq ptr %79, null
  br i1 %tobool42.not.i, label %do.body44.i, label %if.end52.i

do.body44.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base.i, align 4
  %add48.i = add i32 %81, 2
  %and49.i = and i32 %add48.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %82 = inttoptr i32 %add50.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 0) #8, !srcloc !154
  br label %NCR5380_select.exit.thread

if.end52.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp53.i = icmp slt i32 %call29.i, 0
  br i1 %cmp53.i, label %do.body56.i, label %if.end67.i

do.body56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base.i, align 4
  %add60.i = add i32 %84, 2
  %and61.i = and i32 %add60.i, 1048575
  %add62.i = or i32 %and61.i, -18874368
  %85 = inttoptr i32 %add62.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 0) #8, !srcloc !154
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.15) #11
  br label %out.i

if.end67.i:                                       ; preds = %if.end52.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 644244) #8
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base.i, align 4
  %add71.i = add i32 %88, 1
  %and72.i = and i32 %add71.i, 1048575
  %add73.i = or i32 %and72.i, -18874368
  %89 = inttoptr i32 %add73.i to ptr
  %90 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %89) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %91 = and i8 %90, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool79.not.i = icmp eq i8 %91, 0
  br i1 %tobool79.not.i, label %lor.lhs.false.i63, label %if.end67.i.do.body105.i_crit_edge

if.end67.i.do.body105.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105.i

lor.lhs.false.i63:                                ; preds = %if.end67.i
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base.i, align 4
  %and83.i = and i32 %93, 1048575
  %add84.i = or i32 %and83.i, -18874368
  %94 = inttoptr i32 %add84.i to ptr
  %95 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %94) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %96 = ptrtoint ptr %id_higher_mask.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %id_higher_mask.i, align 1
  %and90421.i = and i8 %97, %95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and90421.i)
  %tobool91.not.i = icmp eq i8 %and90421.i, 0
  br i1 %tobool91.not.i, label %lor.lhs.false92.i, label %lor.lhs.false.i63.do.body105.i_crit_edge

lor.lhs.false.i63.do.body105.i_crit_edge:         ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105.i

lor.lhs.false92.i:                                ; preds = %lor.lhs.false.i63
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %base.i, align 4
  %add95.i = add i32 %99, 1
  %and96.i = and i32 %add95.i, 1048575
  %add97.i = or i32 %and96.i, -18874368
  %100 = inttoptr i32 %add97.i to ptr
  %101 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %102 = and i8 %101, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool103.not.i = icmp eq i8 %102, 0
  br i1 %tobool103.not.i, label %do.body118.i, label %lor.lhs.false92.i.do.body105.i_crit_edge

lor.lhs.false92.i.do.body105.i_crit_edge:         ; preds = %lor.lhs.false92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105.i

do.body105.i:                                     ; preds = %lor.lhs.false92.i.do.body105.i_crit_edge, %lor.lhs.false.i63.do.body105.i_crit_edge, %if.end67.i.do.body105.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %base.i, align 4
  %add109.i = add i32 %104, 2
  %and110.i = and i32 %add109.i, 1048575
  %add111.i = or i32 %and110.i, -18874368
  %105 = inttoptr i32 %add111.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 0) #8, !srcloc !154
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  br label %out.i

do.body118.i:                                     ; preds = %lor.lhs.false92.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base.i, align 4
  %add122.i = add i32 %107, 1
  %and123.i = and i32 %add122.i, 1048575
  %add124.i = or i32 %and123.i, -18874368
  %108 = inttoptr i32 %add124.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 12) #8, !srcloc !154
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i, align 4
  %and126.i = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %..i = select i1 %tobool127.not.i, i32 429496, i32 3221220
  call void %111(i32 noundef %..i) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base.i, align 4
  %add133.i = add i32 %113, 2
  %and134.i = and i32 %add133.i, 1048575
  %add135.i = or i32 %and134.i, -18874368
  %114 = inttoptr i32 %add135.i to ptr
  %115 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %114) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  %116 = and i8 %115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool141.not.i = icmp eq i8 %116, 0
  br i1 %tobool141.not.i, label %do.body118.i.out.i_crit_edge, label %if.end143.i

do.body118.i.out.i_crit_edge:                     ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end143.i:                                      ; preds = %do.body118.i
  %117 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %selecting.i, align 4
  %tobool145.not.i = icmp eq ptr %118, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool145.not.i, label %do.body147.i, label %do.body167.i

do.body147.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %base.i, align 4
  %add151.i = add i32 %120, 2
  %and152.i = and i32 %add151.i, 1048575
  %add153.i = or i32 %and152.i, -18874368
  %121 = inttoptr i32 %add153.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 0) #8, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  call void @arm_heavy_mb() #8
  %122 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %base.i, align 4
  %add159.i = add i32 %123, 1
  %and160.i = and i32 %add159.i, 1048575
  %add161.i = or i32 %and160.i, -18874368
  %124 = inttoptr i32 %add161.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 0) #8, !srcloc !154
  br label %NCR5380_select.exit.thread

do.body167.i:                                     ; preds = %if.end143.i
  %125 = ptrtoint ptr %id_mask.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %id_mask.i, align 4
  %device172.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 1
  %127 = ptrtoint ptr %device172.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device172.i, align 4
  %id.i422.i = getelementptr inbounds %struct.scsi_device, ptr %128, i32 0, i32 16
  %129 = ptrtoint ptr %id.i422.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id.i422.i, align 8
  %shl174.i = shl nuw i32 1, %130
  %131 = trunc i32 %shl174.i to i8
  %conv175.i = or i8 %126, %131
  %132 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %base.i, align 4
  %and178.i = and i32 %133, 1048575
  %add179.i = or i32 %and178.i, -18874368
  %134 = inttoptr i32 %add179.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 %conv175.i) #8, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %base.i, align 4
  %add185.i = add i32 %136, 1
  %and186.i = and i32 %add185.i, 1048575
  %add187.i = or i32 %and186.i, -18874368
  %137 = inttoptr i32 %add187.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 15) #8, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %base.i, align 4
  %add193.i = add i32 %139, 2
  %and194.i = and i32 %add193.i, 1048575
  %add195.i = or i32 %and194.i, -18874368
  %140 = inttoptr i32 %add195.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 0) #8, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  call void @arm_heavy_mb() #8
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %base.i, align 4
  %add201.i = add i32 %142, 4
  %and202.i = and i32 %add201.i, 1048575
  %add203.i = or i32 %and202.i, -18874368
  %143 = inttoptr i32 %add203.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 0) #8, !srcloc !154
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  call void @arm_heavy_mb() #8
  %145 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %base.i, align 4
  %add210.i = add i32 %146, 1
  %and211.i = and i32 %add210.i, 1048575
  %add212.i = or i32 %and211.i, -18874368
  %147 = inttoptr i32 %add212.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %147, i8 7) #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %148(i32 noundef 214748) #8
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %base.i, align 4
  %add.i198 = add i32 %150, 4
  %and.i199 = and i32 %add.i198, 1048575
  %add1.i200 = or i32 %and.i199, -18874368
  %151 = inttoptr i32 %add1.i200 to ptr
  %152 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %151) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i201 = and i8 %152, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i201)
  %cmp.i202.not = icmp eq i8 %and41.i201, 0
  br i1 %cmp.i202.not, label %if.end.i204, label %do.body167.i.NCR5380_poll_politely.exit206_crit_edge

do.body167.i.NCR5380_poll_politely.exit206_crit_edge: ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_poll_politely.exit206

if.end.i204:                                      ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i203 = call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i.i, i32 noundef 4, i8 noundef zeroext 64, i8 noundef zeroext 64, i32 noundef 4, i8 noundef zeroext 64, i8 noundef zeroext 64, i32 noundef 25) #8
  br label %NCR5380_poll_politely.exit206

NCR5380_poll_politely.exit206:                    ; preds = %if.end.i204, %do.body167.i.NCR5380_poll_politely.exit206_crit_edge
  %retval.0.i205 = phi i32 [ %call7.i203, %if.end.i204 ], [ 0, %do.body167.i.NCR5380_poll_politely.exit206_crit_edge ]
  %153 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %base.i, align 4
  %add221.i = add i32 %154, 4
  %and222.i = and i32 %add221.i, 1048575
  %add223.i = or i32 %and222.i, -18874368
  %155 = inttoptr i32 %add223.i to ptr
  %156 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %155) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %157 = and i8 %156, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %157)
  %cmp229.i = icmp eq i8 %157, 6
  br i1 %cmp229.i, label %if.then231.i, label %if.end245.i

if.then231.i:                                     ; preds = %NCR5380_poll_politely.exit206
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  call void @arm_heavy_mb() #8
  %158 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %base.i, align 4
  %add237.i = add i32 %159, 1
  %and238.i = and i32 %add237.i, 1048575
  %add239.i = or i32 %and238.i, -18874368
  %160 = inttoptr i32 %add239.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %160, i8 0) #8, !srcloc !154
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i) #8
  %161 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -1, ptr %msg.i, align 1, !annotation !169
  %162 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -1, ptr %4, align 1, !annotation !169
  %163 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -1, ptr %5, align 1, !annotation !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  call void @arm_heavy_mb() #8
  %164 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %base.i, align 4
  %add.i162 = add i32 %165, 2
  %and.i163 = and i32 %add.i162, 1048575
  %add1.i164 = or i32 %and.i163, -18874368
  %166 = inttoptr i32 %add1.i164 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 0) #8, !srcloc !154
  %167 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %base.i, align 4
  %and5.i = and i32 %168, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %169 = inttoptr i32 %add6.i to ptr
  %170 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %169) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %171 = ptrtoint ptr %id_mask.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %id_mask.i, align 4
  %neg.i = xor i8 %172, -1
  %and11.i = and i8 %170, %neg.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and11.i)
  %tobool.not.i166 = icmp eq i8 %and11.i, 0
  br i1 %tobool.not.i166, label %if.then231.i.do.end19.i_crit_edge, label %lor.lhs.false.i167

if.then231.i.do.end19.i_crit_edge:                ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

lor.lhs.false.i167:                               ; preds = %if.then231.i
  %conv13.i = zext i8 %and11.i to i32
  %sub.i = add nuw nsw i32 %conv13.i, 255
  %and15.i = and i32 %sub.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body21.i, label %lor.lhs.false.i167.do.end19.i_crit_edge

lor.lhs.false.i167.do.end19.i_crit_edge:          ; preds = %lor.lhs.false.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %lor.lhs.false.i167.do.end19.i_crit_edge, %if.then231.i.do.end19.i_crit_edge
  %conv20.pre-phi.i = phi i32 [ %conv13.i, %lor.lhs.false.i167.do.end19.i_crit_edge ], [ 0, %if.then231.i.do.end19.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.25, i32 noundef %conv20.pre-phi.i) #11
  br label %NCR5380_reselect.exit

do.body21.i:                                      ; preds = %lor.lhs.false.i167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  call void @arm_heavy_mb() #8
  %173 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %base.i, align 4
  %add25.i169 = add i32 %174, 1
  %and26.i170 = and i32 %add25.i169, 1048575
  %add27.i171 = or i32 %and26.i170, -18874368
  %175 = inttoptr i32 %add27.i171 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 8) #8, !srcloc !154
  %176 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %base.i, align 4
  %add.i.i172 = add i32 %177, 4
  %and.i.i173 = and i32 %add.i.i172, 1048575
  %add1.i.i174 = or i32 %and.i.i173, -18874368
  %178 = inttoptr i32 %add1.i.i174 to ptr
  %179 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %178) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i.i175 = and i8 %179, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i175)
  %cmp.i.i176 = icmp eq i8 %and41.i.i175, 0
  br i1 %cmp.i.i176, label %do.body21.i.do.body45.i_crit_edge, label %if.end.i.i177

do.body21.i.do.body45.i_crit_edge:                ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45.i

if.end.i.i177:                                    ; preds = %do.body21.i
  %180 = ptrtoint ptr %poll_loops.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %poll_loops.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %182 = load volatile i32, ptr @jiffies, align 128
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %if.end.i.i177
  %n.0.i.i = phi i32 [ %181, %if.end.i.i177 ], [ %dec.i.i, %do.end.i.i.do.body.i.i_crit_edge ]
  %183 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %base.i, align 4
  %add1.i227.i = add i32 %184, 4
  %and.i228.i = and i32 %add1.i227.i, 1048575
  %add2.i.i = or i32 %and.i228.i, -18874368
  %185 = inttoptr i32 %add2.i.i to ptr
  %186 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %185) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %and583.i.i = and i8 %186, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and583.i.i)
  %cmp.i229.i = icmp eq i8 %and583.i.i, 0
  br i1 %cmp.i229.i, label %do.body.i.i.do.body45.i_crit_edge, label %if.end.i230.i

do.body.i.i.do.body45.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45.i

if.end.i230.i:                                    ; preds = %do.body.i.i
  %187 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %base.i, align 4
  %add10.i.i = add i32 %188, 4
  %and11.i.i = and i32 %add10.i.i, 1048575
  %add12.i.i = or i32 %and11.i.i, -18874368
  %189 = inttoptr i32 %add12.i.i to ptr
  %190 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %189) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and1884.i.i = and i8 %190, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1884.i.i)
  %cmp20.i.i = icmp eq i8 %and1884.i.i, 0
  br i1 %cmp20.i.i, label %if.end.i230.i.do.body45.i_crit_edge, label %do.end.i.i

if.end.i230.i.do.body45.i_crit_edge:              ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45.i

do.end.i.i:                                       ; preds = %if.end.i230.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !186
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !187
  %dec.i.i = add i32 %n.0.i.i, -1
  %tobool.not.i.i178 = icmp eq i32 %n.0.i.i, 0
  br i1 %tobool.not.i.i178, label %do.end34.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end34.i:                                       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.29) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  call void @arm_heavy_mb() #8
  %191 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %base.i, align 4
  %add40.i = add i32 %192, 1
  %and41.i179 = and i32 %add40.i, 1048575
  %add42.i = or i32 %and41.i179, -18874368
  %193 = inttoptr i32 %add42.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 0) #8, !srcloc !154
  br label %NCR5380_reselect.exit

do.body45.i:                                      ; preds = %if.end.i230.i.do.body45.i_crit_edge, %do.body.i.i.do.body45.i_crit_edge, %do.body21.i.do.body45.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  call void @arm_heavy_mb() #8
  %194 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %base.i, align 4
  %add49.i = add i32 %195, 1
  %and50.i = and i32 %add49.i, 1048575
  %add51.i = or i32 %and50.i, -18874368
  %196 = inttoptr i32 %add51.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 0) #8, !srcloc !154
  %197 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %base.i, align 4
  %add.i217.i = add i32 %198, 4
  %and.i218.i = and i32 %add.i217.i, 1048575
  %add1.i219.i = or i32 %and.i218.i, -18874368
  %199 = inttoptr i32 %add1.i219.i to ptr
  %200 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %199) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i220.i = and i8 %200, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i220.i)
  %cmp.i221.not.i = icmp eq i8 %and41.i220.i, 0
  br i1 %cmp.i221.not.i, label %if.end.i223.i, label %do.body45.i.if.end76.i_crit_edge

do.body45.i.if.end76.i_crit_edge:                 ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.end.i223.i:                                    ; preds = %do.body45.i
  %201 = ptrtoint ptr %poll_loops.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %poll_loops.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %203 = load volatile i32, ptr @jiffies, align 128
  br label %do.body.i240.i

do.body.i240.i:                                   ; preds = %do.end.i249.i.do.body.i240.i_crit_edge, %if.end.i223.i
  %n.0.i234.i = phi i32 [ %202, %if.end.i223.i ], [ %dec.i247.i, %do.end.i249.i.do.body.i240.i_crit_edge ]
  %204 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %base.i, align 4
  %add1.i235.i = add i32 %205, 4
  %and.i236.i = and i32 %add1.i235.i, 1048575
  %add2.i237.i = or i32 %and.i236.i, -18874368
  %206 = inttoptr i32 %add2.i237.i to ptr
  %207 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %206) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %and583.i238.i = and i8 %207, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and583.i238.i)
  %cmp.i239.not.i = icmp eq i8 %and583.i238.i, 0
  br i1 %cmp.i239.not.i, label %if.end.i246.i, label %do.body.i240.i.if.end76.i_crit_edge

do.body.i240.i.if.end76.i_crit_edge:              ; preds = %do.body.i240.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.end.i246.i:                                    ; preds = %do.body.i240.i
  %208 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %base.i, align 4
  %add10.i241.i = add i32 %209, 4
  %and11.i242.i = and i32 %add10.i241.i, 1048575
  %add12.i243.i = or i32 %and11.i242.i, -18874368
  %210 = inttoptr i32 %add12.i243.i to ptr
  %211 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %210) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and1884.i244.i = and i8 %211, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1884.i244.i)
  %cmp20.i245.not.i = icmp eq i8 %and1884.i244.i, 0
  br i1 %cmp20.i245.not.i, label %do.end.i249.i, label %if.end.i246.i.if.end76.i_crit_edge

if.end.i246.i.if.end76.i_crit_edge:               ; preds = %if.end.i246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

do.end.i249.i:                                    ; preds = %if.end.i246.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !186
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !187
  %dec.i247.i = add i32 %n.0.i234.i, -1
  %tobool.not.i248.i = icmp eq i32 %n.0.i234.i, 0
  br i1 %tobool.not.i248.i, label %if.then56.i, label %do.end.i249.i.do.body.i240.i_crit_edge

do.end.i249.i.do.body.i240.i_crit_edge:           ; preds = %do.end.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i240.i

if.then56.i:                                      ; preds = %do.end.i249.i
  %212 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %base.i, align 4
  %add59.i = add i32 %213, 4
  %and60.i = and i32 %add59.i, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %214 = inttoptr i32 %add61.i to ptr
  %215 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %214) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  %216 = and i8 %215, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %cmp67.i = icmp eq i8 %216, 0
  br i1 %cmp67.i, label %if.then56.i.NCR5380_reselect.exit_crit_edge, label %do.end73.i

if.then56.i.NCR5380_reselect.exit_crit_edge:      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_reselect.exit

do.end73.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.32) #11
  %call75.i = call fastcc i32 @do_abort(ptr noundef %1, i32 noundef 0) #8
  br label %NCR5380_reselect.exit

if.end76.i:                                       ; preds = %if.end.i246.i.if.end76.i_crit_edge, %do.body.i240.i.if.end76.i_crit_edge, %do.body45.i.if.end76.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i157) #8
  %217 = ptrtoint ptr %len.i157 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %len.i157, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i158) #8
  %218 = ptrtoint ptr %data.i158 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %msg.i, ptr %data.i158, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %phase.i159) #8
  %219 = ptrtoint ptr %phase.i159 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 28, ptr %phase.i159, align 1
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i159, ptr noundef nonnull %len.i157, ptr noundef nonnull %data.i158, i32 noundef 0) #8
  %220 = ptrtoint ptr %len.i157 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %len.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool78.not.i = icmp eq i32 %221, 0
  br i1 %tobool78.not.i, label %cleanup.cont.critedge.i, label %if.then79.i

if.then79.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %call80.i = call fastcc i32 @do_abort(ptr noundef %1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phase.i159) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i158) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i157) #8
  br label %NCR5380_reselect.exit

cleanup.cont.critedge.i:                          ; preds = %if.end76.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phase.i159) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i158) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i157) #8
  %222 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %msg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %223)
  %tobool86.not.i = icmp sgt i8 %223, -1
  br i1 %tobool86.not.i, label %do.end90.i, label %if.end100.i

do.end90.i:                                       ; preds = %cleanup.cont.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.35) #11
  %call93.i = call i32 @spi_print_msg(ptr noundef nonnull %msg.i) #8
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  %call99.i = call fastcc i32 @do_abort(ptr noundef %1, i32 noundef 0) #8
  br label %NCR5380_reselect.exit

if.end100.i:                                      ; preds = %cleanup.cont.critedge.i
  %and103.i = and i8 %223, 7
  %224 = ptrtoint ptr %disconnected.i180 to i32
  call void @__asan_load4_noabort(i32 %224)
  %ncmd.0262.i = load ptr, ptr %disconnected.i180, align 4
  %cmp107.not263.i = icmp eq ptr %ncmd.0262.i, %disconnected.i180
  br i1 %cmp107.not263.i, label %if.end100.i.if.else.i195_crit_edge, label %if.end100.i.for.body.i184_crit_edge

if.end100.i.for.body.i184_crit_edge:              ; preds = %if.end100.i
  br label %for.body.i184

if.end100.i.if.else.i195_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i195

for.body.i184:                                    ; preds = %cleanup124.i.for.body.i184_crit_edge, %if.end100.i.for.body.i184_crit_edge
  %ncmd.0264.i = phi ptr [ %ncmd.0.i193, %cleanup124.i.for.body.i184_crit_edge ], [ %ncmd.0262.i, %if.end100.i.for.body.i184_crit_edge ]
  %device.i181 = getelementptr %struct.scsi_cmnd, ptr %ncmd.0264.i, i32 -1, i32 1
  %225 = ptrtoint ptr %device.i181 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %device.i181, align 4
  %id.i.i182 = getelementptr inbounds %struct.scsi_device, ptr %226, i32 0, i32 16
  %227 = ptrtoint ptr %id.i.i182 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %id.i.i182, align 8
  %shl.i183 = shl nuw i32 1, %228
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i183, i32 %conv13.i)
  %cmp112.i = icmp eq i32 %shl.i183, %conv13.i
  br i1 %cmp112.i, label %land.lhs.true.i186, label %for.body.i184.cleanup124.i_crit_edge

for.body.i184.cleanup124.i_crit_edge:             ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124.i

land.lhs.true.i186:                               ; preds = %for.body.i184
  %lun116.i = getelementptr inbounds %struct.scsi_device, ptr %226, i32 0, i32 18
  %229 = ptrtoint ptr %lun116.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %lun116.i, align 8
  %231 = trunc i64 %230 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %and103.i, i8 %231)
  %cmp119.i185 = icmp eq i8 %and103.i, %231
  br i1 %cmp119.i185, label %if.then121.i189, label %land.lhs.true.i186.cleanup124.i_crit_edge

land.lhs.true.i186.cleanup124.i_crit_edge:        ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124.i

if.then121.i189:                                  ; preds = %land.lhs.true.i186
  %add.ptr.i.le.i187 = getelementptr %struct.scsi_cmnd, ptr %ncmd.0264.i, i32 -1
  %call.i.i.i188 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ncmd.0264.i) #8
  br i1 %call.i.i.i188, label %if.end.i.i.i192, label %if.then121.i189.for.end.i_crit_edge

if.then121.i189.for.end.i_crit_edge:              ; preds = %if.then121.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i.i.i192:                                  ; preds = %if.then121.i189
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i190 = getelementptr inbounds %struct.list_head, ptr %ncmd.0264.i, i32 0, i32 1
  %232 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %prev.i.i.i190, align 4
  %234 = ptrtoint ptr %ncmd.0264.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ncmd.0264.i, align 4
  %prev1.i.i.i.i191 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %prev1.i.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %233, ptr %prev1.i.i.i.i191, align 4
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %235, ptr %233, align 4
  br label %for.end.i

cleanup124.i:                                     ; preds = %land.lhs.true.i186.cleanup124.i_crit_edge, %for.body.i184.cleanup124.i_crit_edge
  %238 = ptrtoint ptr %ncmd.0264.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %ncmd.0.i193 = load ptr, ptr %ncmd.0264.i, align 4
  %cmp107.not.i = icmp eq ptr %ncmd.0.i193, %disconnected.i180
  br i1 %cmp107.not.i, label %cleanup124.i.if.else.i195_crit_edge, label %cleanup124.i.for.body.i184_crit_edge

cleanup124.i.for.body.i184_crit_edge:             ; preds = %cleanup124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i184

cleanup124.i.if.else.i195_crit_edge:              ; preds = %cleanup124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i195

for.end.i:                                        ; preds = %if.end.i.i.i192, %if.then121.i189.for.end.i_crit_edge
  %239 = ptrtoint ptr %ncmd.0264.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr inttoptr (i32 256 to ptr), ptr %ncmd.0264.i, align 4
  %prev.i.i194 = getelementptr inbounds %struct.list_head, ptr %ncmd.0264.i, i32 0, i32 1
  %240 = ptrtoint ptr %prev.i.i194 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i194, align 4
  %tobool132.not.i = icmp eq ptr %add.ptr.i.le.i187, null
  br i1 %tobool132.not.i, label %for.end.i.if.else.i195_crit_edge, label %do.body159.i

for.end.i.if.else.i195_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i195

if.else.i195:                                     ; preds = %for.end.i.if.else.i195_crit_edge, %cleanup124.i.if.else.i195_crit_edge, %if.end100.i.if.else.i195_crit_edge
  %conv144.i = zext i8 %and103.i to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.41, i32 noundef %conv13.i, i32 noundef %conv144.i) #11
  %call145.i = call fastcc i32 @do_abort(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %cmp146.i = icmp eq i32 %call145.i, 0
  br i1 %cmp146.i, label %if.then148.i, label %if.else.i195.NCR5380_reselect.exit_crit_edge

if.else.i195.NCR5380_reselect.exit_crit_edge:     ; preds = %if.else.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_reselect.exit

if.then148.i:                                     ; preds = %if.else.i195
  call void @__sanitizer_cov_trace_pc() #10
  %241 = call i32 @llvm.cttz.i32(i32 %conv13.i, i1 true) #8, !range !224
  %shl150.i = shl nuw i8 1, %and103.i
  %neg151.i = xor i8 %shl150.i, -1
  %arrayidx152.i = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 19, i32 %241
  %242 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx152.i, align 1
  %and154.i = and i8 %243, %neg151.i
  store i8 %and154.i, ptr %arrayidx152.i, align 1
  br label %NCR5380_reselect.exit

do.body159.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %244 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %base.i, align 4
  %add163.i = add i32 %245, 1
  %and164.i = and i32 %add163.i, 1048575
  %add165.i = or i32 %and164.i, -18874368
  %246 = inttoptr i32 %add165.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %246, i8 0) #8, !srcloc !154
  %247 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %add.ptr.i.le.i187, ptr %connected.i, align 4
  br label %NCR5380_reselect.exit

NCR5380_reselect.exit:                            ; preds = %do.body159.i, %if.then148.i, %if.else.i195.NCR5380_reselect.exit_crit_edge, %do.end90.i, %if.then79.i, %do.end73.i, %if.then56.i.NCR5380_reselect.exit_crit_edge, %do.end34.i, %do.end19.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i) #8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.20) #11
  br label %out.i

if.end245.i:                                      ; preds = %NCR5380_poll_politely.exit206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i205)
  %cmp246.i = icmp slt i32 %retval.0.i205, 0
  br i1 %cmp246.i, label %if.then248.i, label %if.end265.i

if.then248.i:                                     ; preds = %if.end245.i
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  call void @arm_heavy_mb() #8
  %248 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %base.i, align 4
  %add254.i = add i32 %249, 1
  %and255.i = and i32 %add254.i, 1048575
  %add256.i = or i32 %and255.i, -18874368
  %250 = inttoptr i32 %add256.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %250, i8 0) #8, !srcloc !154
  %251 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %selecting.i, align 4
  %tobool259.not.i = icmp eq ptr %252, null
  br i1 %tobool259.not.i, label %if.then248.i.NCR5380_select.exit.thread_crit_edge, label %if.end261.i

if.then248.i.NCR5380_select.exit.thread_crit_edge: ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_select.exit.thread

if.end261.i:                                      ; preds = %if.then248.i
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 24
  %253 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 262144, ptr %result.i, align 4
  %254 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %sensing.i, align 4
  %cmp.i146 = icmp eq ptr %255, %retval.0.i
  br i1 %cmp.i146, label %if.end.i155, label %if.end261.i.complete_cmd.exit156_crit_edge

if.end261.i.complete_cmd.exit156_crit_edge:       ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit156

if.end.i155:                                      ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_eh_restore_cmnd(ptr noundef nonnull %retval.0.i, ptr noundef %ses.i) #8
  %256 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %result.i, align 4
  %and.i.i152 = and i32 %257, -256
  %or.i.i153 = or i32 %and.i.i152, 2
  store i32 %or.i.i153, ptr %result.i, align 4
  %258 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %sensing.i, align 4
  br label %complete_cmd.exit156

complete_cmd.exit156:                             ; preds = %if.end.i155, %if.end261.i.complete_cmd.exit156_crit_edge
  call void @scsi_done(ptr noundef nonnull %retval.0.i) #8
  br label %out.i

if.end265.i:                                      ; preds = %if.end245.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %259(i32 noundef 214748) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  call void @arm_heavy_mb() #8
  %260 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %base.i, align 4
  %add270.i = add i32 %261, 1
  %and271.i = and i32 %add270.i, 1048575
  %add272.i = or i32 %and271.i, -18874368
  %262 = inttoptr i32 %add272.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %262, i8 2) #8, !srcloc !154
  %263 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %base.i, align 4
  %add.i140 = add i32 %264, 4
  %and.i141 = and i32 %add.i140, 1048575
  %add1.i = or i32 %and.i141, -18874368
  %265 = inttoptr i32 %add1.i to ptr
  %266 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %265) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i = and i8 %266, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i)
  %cmp.i142.not = icmp eq i8 %and41.i, 0
  br i1 %cmp.i142.not, label %NCR5380_poll_politely.exit, label %NCR5380_poll_politely.exit.thread

NCR5380_poll_politely.exit.thread:                ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  br label %if.end291.i

NCR5380_poll_politely.exit:                       ; preds = %if.end265.i
  %call7.i = call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i.i, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 100) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp276.i = icmp slt i32 %call7.i, 0
  br i1 %cmp276.i, label %do.end281.i, label %NCR5380_poll_politely.exit.if.end291.i_crit_edge

NCR5380_poll_politely.exit.if.end291.i_crit_edge: ; preds = %NCR5380_poll_politely.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291.i

do.end281.i:                                      ; preds = %NCR5380_poll_politely.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.23) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @arm_heavy_mb() #8
  %267 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %base.i, align 4
  %add287.i = add i32 %268, 1
  %and288.i = and i32 %add287.i, 1048575
  %add289.i = or i32 %and288.i, -18874368
  %269 = inttoptr i32 %add289.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %269, i8 0) #8, !srcloc !154
  br label %out.i

if.end291.i:                                      ; preds = %NCR5380_poll_politely.exit.if.end291.i_crit_edge, %NCR5380_poll_politely.exit.thread
  %270 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %selecting.i, align 4
  %tobool293.not.i = icmp eq ptr %271, null
  br i1 %tobool293.not.i, label %if.then294.i, label %do.end299.i

if.then294.i:                                     ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #10
  %call295.i = call fastcc i32 @do_abort(ptr noundef %1, i32 noundef 0) #8
  br label %NCR5380_select.exit.thread

do.end299.i:                                      ; preds = %if.end291.i
  %conv303.i = zext i32 %60 to i64
  %272 = ptrtoint ptr %device172.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %device172.i, align 4
  %lun.i64 = getelementptr inbounds %struct.scsi_device, ptr %273, i32 0, i32 18
  %274 = ptrtoint ptr %lun.i64 to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %lun.i64, align 8
  %and305.i = and i64 %275, 7
  %or306.i = or i64 %and305.i, %conv303.i
  %conv307.i = trunc i64 %or306.i to i8
  %276 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv307.i, ptr %tmp.i, align 1
  %277 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 1, ptr %len.i, align 4
  %278 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %tmp.i, ptr %data.i, align 4
  %279 = ptrtoint ptr %phase.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 24, ptr %phase.i, align 1
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i, ptr noundef nonnull %len.i, ptr noundef nonnull %data.i, i32 noundef 0) #8
  %280 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool310.not.i = icmp eq i32 %281, 0
  br i1 %tobool310.not.i, label %do.end327.i, label %do.body312.i

do.body312.i:                                     ; preds = %do.end299.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %282 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %base.i, align 4
  %add316.i = add i32 %283, 1
  %and317.i = and i32 %add316.i, 1048575
  %add318.i = or i32 %and317.i, -18874368
  %284 = inttoptr i32 %add318.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %284, i8 0) #8, !srcloc !154
  %result320.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 24
  %285 = ptrtoint ptr %result320.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 458752, ptr %result320.i, align 4
  %286 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %sensing.i, align 4
  %cmp.i131 = icmp eq ptr %287, %retval.0.i
  br i1 %cmp.i131, label %if.end.i138, label %do.body312.i.complete_cmd.exit_crit_edge

do.body312.i.complete_cmd.exit_crit_edge:         ; preds = %do.body312.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit

if.end.i138:                                      ; preds = %do.body312.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_eh_restore_cmnd(ptr noundef nonnull %retval.0.i, ptr noundef %ses.i) #8
  %288 = ptrtoint ptr %result320.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %result320.i, align 4
  %and.i.i135 = and i32 %289, -256
  %or.i.i136 = or i32 %and.i.i135, 2
  store i32 %or.i.i136, ptr %result320.i, align 4
  %290 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %sensing.i, align 4
  br label %complete_cmd.exit

complete_cmd.exit:                                ; preds = %if.end.i138, %do.body312.i.complete_cmd.exit_crit_edge
  call void @scsi_done(ptr noundef nonnull %retval.0.i) #8
  br label %out.i

do.end327.i:                                      ; preds = %do.end299.i
  %291 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %retval.0.i, ptr %connected.i, align 4
  %292 = ptrtoint ptr %device172.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %device172.i, align 4
  %lun329.i = getelementptr inbounds %struct.scsi_device, ptr %293, i32 0, i32 18
  %294 = ptrtoint ptr %lun329.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %lun329.i, align 8
  %sh_prom.i65 = trunc i64 %295 to i32
  %shl330.i = shl nuw i32 1, %sh_prom.i65
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %293, i32 0, i32 16
  %296 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %id.i, align 8
  %arrayidx332.i = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 19, i32 %297
  %298 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx332.i, align 1
  %300 = trunc i32 %shl330.i to i8
  %conv335.i = or i8 %299, %300
  store i8 %conv335.i, ptr %arrayidx332.i, align 1
  %length.i.i120 = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 17, i32 1
  %301 = ptrtoint ptr %length.i.i120 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %length.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.not.i121 = icmp eq i32 %302, 0
  br i1 %tobool.not.i121, label %if.else.i126, label %if.then.i123

if.then.i123:                                     ; preds = %do.end327.i
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 17
  %303 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %sdb.i.i, align 4
  %buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22, i32 2
  %305 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %304, ptr %buffer.i, align 4
  %306 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %304, align 4
  %and.i.i.i.i122 = and i32 %307, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i122)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i122, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !230

do.body2.i.i.i:                                   ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !231
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #10
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22
  %and.i.i.i124 = and i32 %307, -4
  %308 = inttoptr i32 %and.i.i.i124 to ptr
  %call1.i.i = call ptr @page_address(ptr noundef %308) #8
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %304, i32 0, i32 1
  %309 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %call1.i.i, i32 %310
  %311 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %add.ptr.i.i125, ptr %SCp.i, align 4
  %312 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %buffer.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %313, i32 0, i32 2
  %314 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %length.i, align 4
  br label %initialize_SCp.exit

if.else.i126:                                     ; preds = %do.end327.i
  call void @__sanitizer_cov_trace_pc() #10
  %SCp9.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22
  %buffer10.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22, i32 2
  %316 = ptrtoint ptr %buffer10.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %buffer10.i, align 4
  %317 = ptrtoint ptr %SCp9.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr null, ptr %SCp9.i, align 4
  br label %initialize_SCp.exit

initialize_SCp.exit:                              ; preds = %if.else.i126, %sg_virt.exit.i
  %.sink.i = phi i32 [ 0, %if.else.i126 ], [ %315, %sg_virt.exit.i ]
  %this_residual14.i = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22, i32 1
  %318 = ptrtoint ptr %this_residual14.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %.sink.i, ptr %this_residual14.i, align 4
  %Status.i127 = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22, i32 5
  %319 = ptrtoint ptr %Status.i127 to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile i32 0, ptr %Status.i127, align 4
  %Message.i128 = getelementptr inbounds %struct.scsi_cmnd, ptr %retval.0.i, i32 0, i32 22, i32 6
  %320 = ptrtoint ptr %Message.i128 to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile i32 0, ptr %Message.i128, align 4
  br label %out.i

out.i:                                            ; preds = %initialize_SCp.exit, %complete_cmd.exit, %do.end281.i, %complete_cmd.exit156, %NCR5380_reselect.exit, %do.body118.i.out.i_crit_edge, %do.body105.i, %do.body56.i, %land.end.i.out.i_crit_edge
  %ret.0.off0.i = phi i1 [ true, %do.body56.i ], [ true, %do.body105.i ], [ true, %NCR5380_reselect.exit ], [ false, %complete_cmd.exit156 ], [ true, %do.end281.i ], [ false, %complete_cmd.exit ], [ false, %initialize_SCp.exit ], [ true, %do.body118.i.out.i_crit_edge ], [ true, %land.end.i.out.i_crit_edge ]
  %321 = ptrtoint ptr %selecting.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %selecting.i, align 4
  %tobool337.not.i = icmp eq ptr %322, null
  br i1 %tobool337.not.i, label %out.i.NCR5380_select.exit.thread_crit_edge, label %NCR5380_select.exit

out.i.NCR5380_select.exit.thread_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_select.exit.thread

NCR5380_select.exit.thread:                       ; preds = %out.i.NCR5380_select.exit.thread_crit_edge, %if.then294.i, %if.then248.i.NCR5380_select.exit.thread_crit_edge, %do.body147.i, %do.body44.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phase.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp.i) #8
  br label %cleanup

NCR5380_select.exit:                              ; preds = %out.i
  %323 = ptrtoint ptr %selecting.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr null, ptr %selecting.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phase.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp.i) #8
  br i1 %ret.0.off0.i, label %do.end11, label %NCR5380_select.exit.cleanup_crit_edge

NCR5380_select.exit.cleanup_crit_edge:            ; preds = %NCR5380_select.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11:                                         ; preds = %NCR5380_select.exit
  %add.ptr.i.i = getelementptr %struct.scsi_cmnd, ptr %retval.0.i, i32 1
  %324 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %sensing.i, align 4
  %cmp.i = icmp eq ptr %325, %retval.0.i
  br i1 %cmp.i, label %if.then.i71, label %if.else.i74

if.then.i71:                                      ; preds = %do.end11
  call void @scsi_eh_restore_cmnd(ptr noundef %retval.0.i, ptr noundef %ses.i) #8
  %326 = ptrtoint ptr %autosense.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %autosense.i, align 4
  %call.i.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i.i, ptr noundef %autosense.i, ptr noundef %327) #8
  br i1 %call.i.i.i70, label %if.end.i.i.i72, label %if.then.i71.list_add.exit.i_crit_edge

if.then.i71.list_add.exit.i_crit_edge:            ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i72:                                   ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %327, i32 0, i32 1
  %328 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %add.ptr.i.i, ptr %prev1.i.i.i, align 4
  %329 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %327, ptr %add.ptr.i.i, align 4
  %prev3.i.i.i = getelementptr %struct.scsi_cmnd, ptr %retval.0.i, i32 1, i32 0, i32 0, i32 4
  %330 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %autosense.i, ptr %prev3.i.i.i, align 4
  %331 = ptrtoint ptr %autosense.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store volatile ptr %add.ptr.i.i, ptr %autosense.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i72, %if.then.i71.list_add.exit.i_crit_edge
  %332 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr null, ptr %sensing.i, align 4
  br label %cleanup

if.else.i74:                                      ; preds = %do.end11
  %333 = ptrtoint ptr %unissued.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %unissued.i, align 4
  %call.i.i11.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i.i, ptr noundef %unissued.i, ptr noundef %334) #8
  br i1 %call.i.i11.i, label %if.end.i.i14.i, label %if.else.i74.cleanup_crit_edge

if.else.i74.cleanup_crit_edge:                    ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i14.i:                                   ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i12.i = getelementptr inbounds %struct.list_head, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %prev1.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %add.ptr.i.i, ptr %prev1.i.i12.i, align 4
  %336 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %334, ptr %add.ptr.i.i, align 4
  %prev3.i.i13.i = getelementptr %struct.scsi_cmnd, ptr %retval.0.i, i32 1, i32 0, i32 0, i32 4
  %337 = ptrtoint ptr %prev3.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %unissued.i, ptr %prev3.i.i13.i, align 4
  %338 = ptrtoint ptr %unissued.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store volatile ptr %add.ptr.i.i, ptr %unissued.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i14.i, %if.else.i74.cleanup_crit_edge, %list_add.exit.i, %NCR5380_select.exit.cleanup_crit_edge, %NCR5380_select.exit.thread
  %339 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %connected, align 4
  %tobool.not = icmp eq ptr %340, null
  br i1 %tobool.not, label %cleanup.land.rhs_crit_edge, label %cleanup.land.lhs.true_crit_edge

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %dequeue_next_cmd.exit.while.end_crit_edge, %for.cond.i.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %341 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %341)
  %.pr = load ptr, ptr %connected, align 4
  %tobool14.not = icmp eq ptr %.pr, null
  br i1 %tobool14.not, label %while.end.do.body24_crit_edge, label %while.end.land.lhs.true_crit_edge

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

while.end.do.body24_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %cleanup.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %342 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %dma_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool15.not = icmp eq i32 %343, 0
  br i1 %tobool15.not, label %do.end19, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end19:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msgout.i) #8
  %344 = ptrtoint ptr %msgout.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 8, ptr %msgout.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i76) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i77) #8
  %345 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr inttoptr (i32 -1 to ptr), ptr %data.i77, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %phase.i78) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i79) #8
  %346 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 -1, ptr %tmp.i79, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %extended_msg.i) #8
  %347 = call ptr @memset(ptr %extended_msg.i, i32 255, i32 10)
  %348 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %connected.i, align 4
  %tobool.not516.i = icmp eq ptr %349, null
  br i1 %tobool.not516.i, label %do.end19.NCR5380_information_transfer.exit_crit_edge, label %do.end19.while.body.i_crit_edge

do.end19.while.body.i_crit_edge:                  ; preds = %do.end19
  br label %while.body.i

do.end19.NCR5380_information_transfer.exit_crit_edge: ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_information_transfer.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.end19.while.body.i_crit_edge
  %350 = phi ptr [ %571, %cleanup.i.while.body.i_crit_edge ], [ %349, %do.end19.while.body.i_crit_edge ]
  %351 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %base.i, align 4
  %add.i85 = add i32 %352, 4
  %and.i86 = and i32 %add.i85, 1048575
  %add2.i = or i32 %and.i86, -18874368
  %353 = inttoptr i32 %add2.i to ptr
  %354 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %353) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %355 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %354, ptr %tmp.i79, align 1
  %356 = and i8 %354, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool7.not.i87 = icmp eq i8 %356, 0
  br i1 %tobool7.not.i87, label %if.else337.i, label %if.then.i88

if.then.i88:                                      ; preds = %while.body.i
  %and9.i = and i8 %354, 28
  %357 = ptrtoint ptr %phase.i78 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %and9.i, ptr %phase.i78, align 1
  %358 = lshr exact i8 %and9.i, 2
  %359 = zext i8 %358 to i32
  %360 = zext i32 %359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %360, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %359, label %do.end331.i [
    i32 0, label %if.then.i88.sw.bb.i_crit_edge
    i32 1, label %if.then.i88.sw.bb.i_crit_edge284
    i32 7, label %sw.bb90.i
    i32 6, label %sw.bb298.i
    i32 2, label %sw.bb319.i
    i32 3, label %sw.bb323.i
  ]

if.then.i88.sw.bb.i_crit_edge284:                 ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i88.sw.bb.i_crit_edge:                    ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.i88.sw.bb.i_crit_edge, %if.then.i88.sw.bb.i_crit_edge284
  %SCp.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22
  %buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 2
  %361 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %buffer.i.i, align 4
  %this_residual.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 1
  %363 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %this_residual.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool.not.i.i = icmp ne i32 %364, 0
  %tobool2.not.i.i = icmp eq ptr %362, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %sw.bb.i.if.else.i89_crit_edge, label %land.lhs.true3.i.i

sw.bb.i.if.else.i89_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i89

land.lhs.true3.i.i:                               ; preds = %sw.bb.i
  %365 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %362, align 4
  %and.i.i.i = and i32 %366, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %land.lhs.true3.i.i.if.else.i89_crit_edge

land.lhs.true3.i.i.if.else.i89_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i89

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  %call4.i.i = call ptr @sg_next(ptr noundef nonnull %362) #8
  %367 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call4.i.i, ptr %buffer.i.i, align 4
  %368 = ptrtoint ptr %call4.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %call4.i.i, align 4
  %and.i.i.i.i.i = and i32 %369, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !230

do.body2.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !231
  unreachable

sg_virt.exit.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i.i = and i32 %369, -4
  %370 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = call ptr @page_address(ptr noundef %370) #8
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call4.i.i, i32 0, i32 1
  %371 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %372
  %373 = ptrtoint ptr %SCp.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %add.ptr.i.i.i, ptr %SCp.i.i, align 4
  %374 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %buffer.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %375, i32 0, i32 2
  %376 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %length.i.i, align 4
  %378 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %this_residual.i.i, align 4
  br label %if.else.i89

if.else.i89:                                      ; preds = %sg_virt.exit.i.i, %land.lhs.true3.i.i.if.else.i89_crit_edge, %sw.bb.i.if.else.i89_crit_edge
  %379 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %this_residual.i.i, align 4
  %381 = call i32 @llvm.smin.i32(i32 %380, i32 256) #8
  %382 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %len.i76, align 4
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef %SCp.i.i, i32 noundef 0) #8
  %383 = ptrtoint ptr %len.i76 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %len.i76, align 4
  %sub.neg.i = sub i32 %384, %381
  %385 = ptrtoint ptr %this_residual.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %this_residual.i.i, align 4
  %sub88.i = add i32 %sub.neg.i, %386
  store i32 %sub88.i, ptr %this_residual.i.i, align 4
  br label %NCR5380_information_transfer.exit

sw.bb90.i:                                        ; preds = %if.then.i88
  %387 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 1, ptr %len.i76, align 4
  %388 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %tmp.i79, ptr %data.i77, align 4
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef nonnull %data.i77, i32 noundef 0) #8
  %389 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %tmp.i79, align 1
  %conv92.i = zext i8 %390 to i32
  %Message.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 6
  %391 = ptrtoint ptr %Message.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store volatile i32 %conv92.i, ptr %Message.i, align 4
  %392 = zext i8 %390 to i64
  call void @__sanitizer_cov_trace_switch(i64 %392, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %390, label %sw.bb90.i.sw.default274.i_crit_edge [
    i8 6, label %sw.bb95.i
    i8 0, label %sw.bb90.i.sw.bb96.i_crit_edge
    i8 7, label %do.body147.i105
    i8 4, label %do.body172.i
    i8 2, label %sw.bb90.i.do.body194.i_crit_edge
    i8 3, label %sw.bb90.i.do.body194.i_crit_edge285
    i8 1, label %sw.bb202.i
  ]

sw.bb90.i.do.body194.i_crit_edge285:              ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194.i

sw.bb90.i.do.body194.i_crit_edge:                 ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194.i

sw.bb90.i.sw.bb96.i_crit_edge:                    ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb96.i

sw.bb90.i.sw.default274.i_crit_edge:              ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default274.i

sw.bb95.i:                                        ; preds = %sw.bb90.i
  call void @__sanitizer_cov_trace_pc() #10
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 24
  %393 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %394, -16711681
  %or.i.i = or i32 %and.i.i, 327680
  store i32 %or.i.i, ptr %result.i.i, align 4
  br label %sw.bb96.i

sw.bb96.i:                                        ; preds = %sw.bb95.i, %sw.bb90.i.sw.bb96.i_crit_edge
  %add.ptr.i500.i = getelementptr %struct.scsi_cmnd, ptr %350, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %395 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %base.i, align 4
  %add101.i = add i32 %396, 1
  %and102.i = and i32 %add101.i, 1048575
  %add103.i = or i32 %and102.i, -18874368
  %397 = inttoptr i32 %add103.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %397, i8 0) #8, !srcloc !154
  %398 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr null, ptr %connected.i, align 4
  %device109.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 1
  %399 = ptrtoint ptr %device109.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %device109.i, align 4
  %lun.i90 = getelementptr inbounds %struct.scsi_device, ptr %400, i32 0, i32 18
  %401 = ptrtoint ptr %lun.i90 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %lun.i90, align 8
  %sh_prom.i91 = trunc i64 %402 to i32
  %shl.i92 = shl nuw i32 1, %sh_prom.i91
  %id.i.i93 = getelementptr inbounds %struct.scsi_device, ptr %400, i32 0, i32 16
  %403 = ptrtoint ptr %id.i.i93 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %id.i.i93, align 8
  %arrayidx.i94 = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 19, i32 %404
  %405 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx.i94, align 1
  %407 = trunc i32 %shl.i92 to i8
  %408 = xor i8 %407, -1
  %conv114.i = and i8 %406, %408
  store i8 %conv114.i, ptr %arrayidx.i94, align 1
  %Status.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 5
  %409 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load volatile i32, ptr %Status.i, align 4
  %result.i444.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 24
  %411 = ptrtoint ptr %result.i444.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %result.i444.i, align 4
  %and.i445.i = and i32 %412, -256
  %conv.i.i = and i32 %410, 255
  %or.i446.i = or i32 %and.i445.i, %conv.i.i
  store i32 %or.i446.i, ptr %result.i444.i, align 4
  %this_residual.i447.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 1
  %413 = ptrtoint ptr %this_residual.i447.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %this_residual.i447.i, align 4
  %buffer.i448.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 2
  %415 = ptrtoint ptr %buffer.i448.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %buffer.i448.i, align 4
  %tobool.not.i449.i = icmp eq ptr %416, null
  br i1 %tobool.not.i449.i, label %sw.bb96.i.set_resid_from_SCp.exit.i_crit_edge, label %while.cond.preheader.i.i

sw.bb96.i.set_resid_from_SCp.exit.i_crit_edge:    ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_resid_from_SCp.exit.i

while.cond.preheader.i.i:                         ; preds = %sw.bb96.i
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %416, align 4
  %and.i9.i.i = and i32 %418, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i.i)
  %tobool.i.not10.i.i = icmp eq i32 %and.i9.i.i, 0
  br i1 %tobool.i.not10.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.set_resid_from_SCp.exit.i_crit_edge

while.cond.preheader.i.i.set_resid_from_SCp.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_resid_from_SCp.exit.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %s.012.i.i = phi ptr [ %call2.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %416, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %resid.011.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %414, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %call2.i.i = call ptr @sg_next(ptr noundef %s.012.i.i) #8
  %length.i450.i = getelementptr inbounds %struct.scatterlist, ptr %call2.i.i, i32 0, i32 2
  %419 = ptrtoint ptr %length.i450.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %length.i450.i, align 4
  %add.i.i = add i32 %420, %resid.011.i.i
  %421 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %call2.i.i, align 4
  %and.i.i451.i = and i32 %422, 2
  %tobool.i.not.i452.i = icmp eq i32 %and.i.i451.i, 0
  br i1 %tobool.i.not.i452.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.set_resid_from_SCp.exit.i_crit_edge

while.body.i.i.set_resid_from_SCp.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_resid_from_SCp.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

set_resid_from_SCp.exit.i:                        ; preds = %while.body.i.i.set_resid_from_SCp.exit.i_crit_edge, %while.cond.preheader.i.i.set_resid_from_SCp.exit.i_crit_edge, %sw.bb96.i.set_resid_from_SCp.exit.i_crit_edge
  %resid.1.i.i = phi i32 [ %414, %sw.bb96.i.set_resid_from_SCp.exit.i_crit_edge ], [ %414, %while.cond.preheader.i.i.set_resid_from_SCp.exit.i_crit_edge ], [ %add.i.i, %while.body.i.i.set_resid_from_SCp.exit.i_crit_edge ]
  %resid_len.i.i.i = getelementptr inbounds %struct.scsi_request, ptr %350, i32 0, i32 5
  %423 = ptrtoint ptr %resid_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %resid.1.i.i, ptr %resid_len.i.i.i, align 4
  %cmnd.i95 = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 16
  %424 = ptrtoint ptr %cmnd.i95 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cmnd.i95, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %425, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %427)
  %cmp119.i = icmp eq i8 %427, 3
  br i1 %cmp119.i, label %if.then121.i, label %if.else122.i

if.then121.i:                                     ; preds = %set_resid_from_SCp.exit.i
  %428 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %sensing.i, align 4
  %cmp.i.i = icmp eq ptr %429, %350
  br i1 %cmp.i.i, label %if.then.i453.i, label %if.then121.i.complete_cmd.exit.i_crit_edge

if.then121.i.complete_cmd.exit.i_crit_edge:       ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit.i

if.then.i453.i:                                   ; preds = %if.then121.i
  %430 = ptrtoint ptr %result.i444.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %result.i444.i, align 4
  %conv.i.i.i = trunc i32 %431 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i.i)
  %cmp2.not.i.i = icmp eq i8 %conv.i.i.i, 0
  call void @scsi_eh_restore_cmnd(ptr noundef %350, ptr noundef %ses.i) #8
  br i1 %cmp2.not.i.i, label %if.else.i.i, label %if.then.i453.i.if.end.i.i_crit_edge

if.then.i453.i.if.end.i.i_crit_edge:              ; preds = %if.then.i453.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i453.i
  call void @__sanitizer_cov_trace_pc() #10
  %432 = ptrtoint ptr %result.i444.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %result.i444.i, align 4
  %and.i.i454.i = and i32 %433, -256
  %or.i.i.i = or i32 %and.i.i454.i, 2
  store i32 %or.i.i.i, ptr %result.i444.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i453.i.if.end.i.i_crit_edge
  %434 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr null, ptr %sensing.i, align 4
  br label %complete_cmd.exit.i

complete_cmd.exit.i:                              ; preds = %if.end.i.i, %if.then121.i.complete_cmd.exit.i_crit_edge
  call void @scsi_done(ptr noundef %350) #8
  br label %do.body138.i

if.else122.i:                                     ; preds = %set_resid_from_SCp.exit.i
  %435 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load volatile i32, ptr %Status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %436)
  %cmp125.i = icmp eq i32 %436, 2
  br i1 %cmp125.i, label %if.else122.i.do.end134.i_crit_edge, label %lor.lhs.false.i96

if.else122.i.do.end134.i_crit_edge:               ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134.i

lor.lhs.false.i96:                                ; preds = %if.else122.i
  %437 = ptrtoint ptr %Status.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load volatile i32, ptr %Status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %438)
  %cmp129.i = icmp eq i32 %438, 34
  br i1 %cmp129.i, label %lor.lhs.false.i96.do.end134.i_crit_edge, label %if.else135.i

lor.lhs.false.i96.do.end134.i_crit_edge:          ; preds = %lor.lhs.false.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134.i

do.end134.i:                                      ; preds = %lor.lhs.false.i96.do.end134.i_crit_edge, %if.else122.i.do.end134.i_crit_edge
  %439 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %prev.i.i98, align 4
  %call.i.i.i99 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i500.i, ptr noundef %440, ptr noundef %autosense.i) #8
  br i1 %call.i.i.i99, label %if.end.i.i.i101, label %do.end134.i.do.body138.i_crit_edge

do.end134.i.do.body138.i_crit_edge:               ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138.i

if.end.i.i.i101:                                  ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  %441 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %add.ptr.i500.i, ptr %prev.i.i98, align 4
  %442 = ptrtoint ptr %add.ptr.i500.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %autosense.i, ptr %add.ptr.i500.i, align 4
  %prev3.i.i.i100 = getelementptr %struct.scsi_cmnd, ptr %350, i32 1, i32 0, i32 0, i32 4
  %443 = ptrtoint ptr %prev3.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %440, ptr %prev3.i.i.i100, align 4
  %444 = ptrtoint ptr %440 to i32
  call void @__asan_store4_noabort(i32 %444)
  store volatile ptr %add.ptr.i500.i, ptr %440, align 4
  br label %do.body138.i

if.else135.i:                                     ; preds = %lor.lhs.false.i96
  %445 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %sensing.i, align 4
  %cmp.i456.i = icmp eq ptr %446, %350
  br i1 %cmp.i456.i, label %if.then.i461.i, label %if.else135.i.complete_cmd.exit466.i_crit_edge

if.else135.i.complete_cmd.exit466.i_crit_edge:    ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit466.i

if.then.i461.i:                                   ; preds = %if.else135.i
  %447 = ptrtoint ptr %result.i444.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %result.i444.i, align 4
  %conv.i.i458.i = trunc i32 %448 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i458.i)
  %cmp2.not.i459.i = icmp eq i8 %conv.i.i458.i, 0
  call void @scsi_eh_restore_cmnd(ptr noundef %350, ptr noundef %ses.i) #8
  br i1 %cmp2.not.i459.i, label %if.else.i464.i, label %if.then.i461.i.if.end.i465.i_crit_edge

if.then.i461.i.if.end.i465.i_crit_edge:           ; preds = %if.then.i461.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i465.i

if.else.i464.i:                                   ; preds = %if.then.i461.i
  call void @__sanitizer_cov_trace_pc() #10
  %449 = ptrtoint ptr %result.i444.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %result.i444.i, align 4
  %and.i.i462.i = and i32 %450, -256
  %or.i.i463.i = or i32 %and.i.i462.i, 2
  store i32 %or.i.i463.i, ptr %result.i444.i, align 4
  br label %if.end.i465.i

if.end.i465.i:                                    ; preds = %if.else.i464.i, %if.then.i461.i.if.end.i465.i_crit_edge
  %451 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr null, ptr %sensing.i, align 4
  br label %complete_cmd.exit466.i

complete_cmd.exit466.i:                           ; preds = %if.end.i465.i, %if.else135.i.complete_cmd.exit466.i_crit_edge
  call void @scsi_done(ptr noundef %350) #8
  br label %do.body138.i

do.body138.i:                                     ; preds = %complete_cmd.exit466.i, %if.end.i.i.i101, %do.end134.i.do.body138.i_crit_edge, %complete_cmd.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  call void @arm_heavy_mb() #8
  %452 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %base.i, align 4
  %add142.i = add i32 %453, 3
  %and143.i = and i32 %add142.i, 1048575
  %add144.i = or i32 %and143.i, -18874368
  %454 = inttoptr i32 %add144.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %454, i8 0) #8, !srcloc !154
  br label %NCR5380_information_transfer.exit

do.body147.i105:                                  ; preds = %sw.bb90.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  call void @arm_heavy_mb() #8
  %455 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %base.i, align 4
  %add151.i102 = add i32 %456, 1
  %and152.i103 = and i32 %add151.i102, 1048575
  %add153.i104 = or i32 %and152.i103, -18874368
  %457 = inttoptr i32 %add153.i104 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %457, i8 0) #8, !srcloc !154
  %458 = ptrtoint ptr %last_message299.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %last_message299.i, align 2
  %.off.i = add i8 %459, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %sw.bb156.i, label %do.body147.i105.cleanup.i_crit_edge

do.body147.i105.cleanup.i_crit_edge:              ; preds = %do.body147.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

sw.bb156.i:                                       ; preds = %do.body147.i105
  call void @__sanitizer_cov_trace_pc() #10
  %device157.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 1
  %460 = ptrtoint ptr %device157.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %device157.i, align 4
  %simple_tags.i = getelementptr inbounds %struct.scsi_device, ptr %461, i32 0, i32 41
  %462 = ptrtoint ptr %simple_tags.i to i32
  call void @__asan_loadN_noabort(i32 %462, i32 8)
  %bf.load158.i = load i64, ptr %simple_tags.i, align 4
  %bf.clear159.i = and i64 %bf.load158.i, -2251799813685249
  store i64 %bf.clear159.i, ptr %simple_tags.i, align 4
  %463 = load ptr, ptr %device157.i, align 4
  %lun162.i = getelementptr inbounds %struct.scsi_device, ptr %463, i32 0, i32 18
  %464 = ptrtoint ptr %lun162.i to i32
  call void @__asan_load8_noabort(i32 %464)
  %465 = load i64, ptr %lun162.i, align 8
  %466 = trunc i64 %465 to i32
  %sh_prom164.i = and i32 %466, 255
  %shl165.i = shl nuw i32 1, %sh_prom164.i
  %id.i106 = getelementptr inbounds %struct.scsi_device, ptr %463, i32 0, i32 16
  %467 = ptrtoint ptr %id.i106 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %id.i106, align 8
  %arrayidx168.i = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 19, i32 %468
  %469 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %arrayidx168.i, align 1
  %471 = trunc i32 %shl165.i to i8
  %conv170.i = or i8 %470, %471
  store i8 %conv170.i, ptr %arrayidx168.i, align 1
  br label %cleanup.i

do.body172.i:                                     ; preds = %sw.bb90.i
  %add.ptr.i.le.i107 = getelementptr %struct.scsi_cmnd, ptr %350, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  call void @arm_heavy_mb() #8
  %472 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %base.i, align 4
  %add176.i = add i32 %473, 1
  %and177.i = and i32 %add176.i, 1048575
  %add178.i = or i32 %and177.i, -18874368
  %474 = inttoptr i32 %add178.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %474, i8 0) #8, !srcloc !154
  %475 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr null, ptr %connected.i, align 4
  %476 = ptrtoint ptr %disconnected.i180 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %disconnected.i180, align 4
  %call.i.i467.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i.le.i107, ptr noundef %disconnected.i180, ptr noundef %477) #8
  br i1 %call.i.i467.i, label %if.end.i.i469.i, label %do.body172.i.list_add.exit.i109_crit_edge

do.body172.i.list_add.exit.i109_crit_edge:        ; preds = %do.body172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i109

if.end.i.i469.i:                                  ; preds = %do.body172.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i108 = getelementptr inbounds %struct.list_head, ptr %477, i32 0, i32 1
  %478 = ptrtoint ptr %prev1.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr %add.ptr.i.le.i107, ptr %prev1.i.i.i108, align 4
  %479 = ptrtoint ptr %add.ptr.i.le.i107 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %477, ptr %add.ptr.i.le.i107, align 4
  %prev3.i.i468.i = getelementptr %struct.scsi_cmnd, ptr %350, i32 1, i32 0, i32 0, i32 4
  %480 = ptrtoint ptr %prev3.i.i468.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %disconnected.i180, ptr %prev3.i.i468.i, align 4
  %481 = ptrtoint ptr %disconnected.i180 to i32
  call void @__asan_store4_noabort(i32 %481)
  store volatile ptr %add.ptr.i.le.i107, ptr %disconnected.i180, align 4
  br label %list_add.exit.i109

list_add.exit.i109:                               ; preds = %if.end.i.i469.i, %do.body172.i.list_add.exit.i109_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @arm_heavy_mb() #8
  %482 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %base.i, align 4
  %add189.i = add i32 %483, 3
  %and190.i = and i32 %add189.i, 1048575
  %add191.i = or i32 %and190.i, -18874368
  %484 = inttoptr i32 %add191.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %484, i8 0) #8, !srcloc !154
  br label %NCR5380_information_transfer.exit

do.body194.i:                                     ; preds = %sw.bb90.i.do.body194.i_crit_edge, %sw.bb90.i.do.body194.i_crit_edge285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @arm_heavy_mb() #8
  %485 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %base.i, align 4
  %add198.i = add i32 %486, 1
  %and199.i = and i32 %add198.i, 1048575
  %add200.i = or i32 %and199.i, -18874368
  %487 = inttoptr i32 %add200.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %487, i8 0) #8, !srcloc !154
  br label %cleanup.i

sw.bb202.i:                                       ; preds = %sw.bb90.i
  %488 = ptrtoint ptr %extended_msg.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 1, ptr %extended_msg.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @arm_heavy_mb() #8
  %489 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %base.i, align 4
  %add208.i = add i32 %490, 1
  %and209.i = and i32 %add208.i, 1048575
  %add210.i110 = or i32 %and209.i, -18874368
  %491 = inttoptr i32 %add210.i110 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %491, i8 0) #8, !srcloc !154
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  %492 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 2, ptr %len.i76, align 4
  %493 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %6, ptr %data.i77, align 4
  %494 = ptrtoint ptr %phase.i78 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 28, ptr %phase.i78, align 1
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef nonnull %data.i77, i32 noundef 1) #8
  %495 = ptrtoint ptr %len.i76 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %len.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %496)
  %tobool219.not.i = icmp eq i32 %496, 0
  br i1 %tobool219.not.i, label %land.lhs.true220.i, label %do.end257.i

land.lhs.true220.i:                               ; preds = %sw.bb202.i
  %497 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %6, align 1
  %499 = add i8 %498, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %499)
  %500 = icmp ult i8 %499, 8
  br i1 %500, label %do.body231.i, label %do.end261.i

do.body231.i:                                     ; preds = %land.lhs.true220.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  call void @arm_heavy_mb() #8
  %501 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %base.i, align 4
  %add235.i = add i32 %502, 1
  %and236.i = and i32 %add235.i, 1048575
  %add237.i111 = or i32 %and236.i, -18874368
  %503 = inttoptr i32 %add237.i111 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %503, i8 0) #8, !srcloc !154
  %504 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %6, align 1
  %conv240.i = zext i8 %505 to i32
  %sub241.i = add nsw i32 %conv240.i, -1
  %506 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %sub241.i, ptr %len.i76, align 4
  %507 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %8, ptr %data.i77, align 4
  %508 = ptrtoint ptr %phase.i78 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 28, ptr %phase.i78, align 1
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef nonnull %data.i77, i32 noundef 1) #8
  %509 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %7, align 1
  %511 = zext i8 %510 to i64
  call void @__sanitizer_cov_trace_switch(i64 %511, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %510, label %do.body231.i.if.end268.i_crit_edge [
    i8 1, label %do.body231.i.sw.bb250.i_crit_edge
    i8 3, label %do.body231.i.sw.bb250.i_crit_edge286
  ]

do.body231.i.sw.bb250.i_crit_edge286:             ; preds = %do.body231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb250.i

do.body231.i.sw.bb250.i_crit_edge:                ; preds = %do.body231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb250.i

do.body231.i.if.end268.i_crit_edge:               ; preds = %do.body231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end268.i

sw.bb250.i:                                       ; preds = %do.body231.i.sw.bb250.i_crit_edge, %do.body231.i.sw.bb250.i_crit_edge286
  %512 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 0, ptr %tmp.i79, align 1
  br label %if.end268.i

do.end257.i:                                      ; preds = %sw.bb202.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.45) #11
  %513 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 0, ptr %tmp.i79, align 1
  br label %if.end268.i

do.end261.i:                                      ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #10
  %514 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %7, align 1
  %conv264.i = zext i8 %515 to i32
  %conv266.i = zext i8 %498 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.49, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.48, i32 noundef %conv264.i, i32 noundef %conv266.i) #11
  %516 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 0, ptr %tmp.i79, align 1
  br label %if.end268.i

if.end268.i:                                      ; preds = %do.end261.i, %do.end257.i, %sw.bb250.i, %do.body231.i.if.end268.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %517 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %connected.i, align 4
  %tobool271.not.i = icmp eq ptr %518, null
  br i1 %tobool271.not.i, label %if.end268.i.NCR5380_information_transfer.exit_crit_edge, label %sw.default274thread-pre-split.i

if.end268.i.NCR5380_information_transfer.exit_crit_edge: ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_information_transfer.exit

sw.default274thread-pre-split.i:                  ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #10
  %519 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_load1_noabort(i32 %519)
  %.pr.i = load i8, ptr %tmp.i79, align 1
  br label %sw.default274.i

sw.default274.i:                                  ; preds = %sw.default274thread-pre-split.i, %sw.bb90.i.sw.default274.i_crit_edge
  %520 = phi i8 [ %.pr.i, %sw.default274thread-pre-split.i ], [ %390, %sw.bb90.i.sw.default274.i_crit_edge ]
  %521 = zext i8 %520 to i64
  call void @__sanitizer_cov_trace_switch(i64 %521, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %520, label %if.then285.i [
    i8 1, label %if.then278.i
    i8 0, label %sw.default274.i.if.end288.i_crit_edge
  ]

sw.default274.i.if.end288.i_crit_edge:            ; preds = %sw.default274.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i

if.then278.i:                                     ; preds = %sw.default274.i
  call void @__sanitizer_cov_trace_pc() #10
  %522 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %7, align 1
  %conv280.i = zext i8 %523 to i32
  %524 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %6, align 1
  %conv282.i = zext i8 %525 to i32
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %350, ptr noundef nonnull @.str.51, i32 noundef %conv280.i, i32 noundef %conv282.i) #8
  br label %if.end288.i

if.then285.i:                                     ; preds = %sw.default274.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv275.i = zext i8 %520 to i32
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %350, ptr noundef nonnull @.str.52, i32 noundef %conv275.i) #8
  br label %if.end288.i

if.end288.i:                                      ; preds = %if.then285.i, %if.then278.i, %sw.default274.i.if.end288.i_crit_edge
  %526 = ptrtoint ptr %msgout.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 7, ptr %msgout.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  call void @arm_heavy_mb() #8
  %527 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %base.i, align 4
  %add293.i = add i32 %528, 1
  %and294.i = and i32 %add293.i, 1048575
  %add295.i = or i32 %and294.i, -18874368
  %529 = inttoptr i32 %add295.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %529, i8 2) #8, !srcloc !154
  br label %cleanup.i

sw.bb298.i:                                       ; preds = %if.then.i88
  %530 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 1, ptr %len.i76, align 4
  %531 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %msgout.i, ptr %data.i77, align 4
  %532 = ptrtoint ptr %msgout.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %msgout.i, align 1
  %534 = ptrtoint ptr %last_message299.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %533, ptr %last_message299.i, align 2
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef nonnull %data.i77, i32 noundef 0) #8
  %535 = ptrtoint ptr %msgout.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %msgout.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %536)
  %cmp302.i = icmp eq i8 %536, 6
  br i1 %cmp302.i, label %if.then304.i, label %if.end318.i

if.then304.i:                                     ; preds = %sw.bb298.i
  %537 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr null, ptr %connected.i, align 4
  %device306.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 1
  %538 = ptrtoint ptr %device306.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %device306.i, align 4
  %lun307.i = getelementptr inbounds %struct.scsi_device, ptr %539, i32 0, i32 18
  %540 = ptrtoint ptr %lun307.i to i32
  call void @__asan_load8_noabort(i32 %540)
  %541 = load i64, ptr %lun307.i, align 8
  %sh_prom308.i = trunc i64 %541 to i32
  %shl309.i = shl nuw i32 1, %sh_prom308.i
  %id.i470.i = getelementptr inbounds %struct.scsi_device, ptr %539, i32 0, i32 16
  %542 = ptrtoint ptr %id.i470.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %id.i470.i, align 8
  %arrayidx314.i = getelementptr %struct.NCR5380_hostdata, ptr %hostdata.i.i, i32 0, i32 19, i32 %543
  %544 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx314.i, align 1
  %546 = trunc i32 %shl309.i to i8
  %547 = xor i8 %546, -1
  %conv317.i = and i8 %545, %547
  store i8 %conv317.i, ptr %arrayidx314.i, align 1
  %result.i112 = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 24
  %548 = ptrtoint ptr %result.i112 to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 458752, ptr %result.i112, align 4
  %549 = ptrtoint ptr %sensing.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %sensing.i, align 4
  %cmp.i472.i = icmp eq ptr %550, %350
  br i1 %cmp.i472.i, label %if.end.i481.i, label %if.then304.i.complete_cmd.exit482.i_crit_edge

if.then304.i.complete_cmd.exit482.i_crit_edge:    ; preds = %if.then304.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete_cmd.exit482.i

if.end.i481.i:                                    ; preds = %if.then304.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_eh_restore_cmnd(ptr noundef nonnull %350, ptr noundef %ses.i) #8
  %551 = ptrtoint ptr %result.i112 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %result.i112, align 4
  %and.i.i478.i = and i32 %552, -256
  %or.i.i479.i = or i32 %and.i.i478.i, 2
  store i32 %or.i.i479.i, ptr %result.i112, align 4
  %553 = ptrtoint ptr %sensing.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr null, ptr %sensing.i, align 4
  br label %complete_cmd.exit482.i

complete_cmd.exit482.i:                           ; preds = %if.end.i481.i, %if.then304.i.complete_cmd.exit482.i_crit_edge
  call void @scsi_done(ptr noundef nonnull %350) #8
  br label %NCR5380_information_transfer.exit

if.end318.i:                                      ; preds = %sw.bb298.i
  call void @__sanitizer_cov_trace_pc() #10
  %554 = ptrtoint ptr %msgout.i to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 8, ptr %msgout.i, align 1
  br label %cleanup.i

sw.bb319.i:                                       ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 14
  %555 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %555)
  %556 = load i16, ptr %cmd_len.i, align 4
  %conv320.i = zext i16 %556 to i32
  %557 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 %conv320.i, ptr %len.i76, align 4
  %cmnd321.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 16
  %558 = ptrtoint ptr %cmnd321.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %cmnd321.i, align 4
  %560 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr %559, ptr %data.i77, align 4
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef nonnull %data.i77, i32 noundef 0) #8
  br label %cleanup.i

sw.bb323.i:                                       ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #10
  %561 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 1, ptr %len.i76, align 4
  %562 = ptrtoint ptr %data.i77 to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr %tmp.i79, ptr %data.i77, align 4
  call fastcc void @NCR5380_transfer_pio(ptr noundef %1, ptr noundef nonnull %phase.i78, ptr noundef nonnull %len.i76, ptr noundef nonnull %data.i77, i32 noundef 0) #8
  %563 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %tmp.i79, align 1
  %conv325.i = zext i8 %564 to i32
  %Status327.i = getelementptr inbounds %struct.scsi_cmnd, ptr %350, i32 0, i32 22, i32 5
  %565 = ptrtoint ptr %Status327.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store volatile i32 %conv325.i, ptr %Status327.i, align 4
  br label %cleanup.i

do.end331.i:                                      ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev282.i, ptr noundef nonnull @.str.54) #11
  br label %cleanup.i

if.else337.i:                                     ; preds = %while.body.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  %566 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %base.i, align 4
  %add.i483.i = add i32 %567, 4
  %and.i484.i = and i32 %add.i483.i, 1048575
  %add1.i.i = or i32 %and.i484.i, -18874368
  %568 = inttoptr i32 %add1.i.i to ptr
  %569 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %568) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and41.i.i = and i8 %569, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i.i)
  %cmp.i485.not.i = icmp eq i8 %and41.i.i, 0
  br i1 %cmp.i485.not.i, label %if.end.i486.i, label %if.else337.i.NCR5380_poll_politely.exit.i_crit_edge

if.else337.i.NCR5380_poll_politely.exit.i_crit_edge: ; preds = %if.else337.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_poll_politely.exit.i

if.end.i486.i:                                    ; preds = %if.else337.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = call fastcc i32 @NCR5380_poll_politely2(ptr noundef %hostdata.i.i, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 4, i8 noundef zeroext 32, i8 noundef zeroext 32, i32 noundef 100) #8
  br label %NCR5380_poll_politely.exit.i

NCR5380_poll_politely.exit.i:                     ; preds = %if.end.i486.i, %if.else337.i.NCR5380_poll_politely.exit.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %NCR5380_poll_politely.exit.i, %do.end331.i, %sw.bb323.i, %sw.bb319.i, %if.end318.i, %if.end288.i, %do.body194.i, %sw.bb156.i, %do.body147.i105.cleanup.i_crit_edge
  %570 = ptrtoint ptr %connected.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %connected.i, align 4
  %tobool.not.i113 = icmp eq ptr %571, null
  br i1 %tobool.not.i113, label %cleanup.i.NCR5380_information_transfer.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.NCR5380_information_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NCR5380_information_transfer.exit

NCR5380_information_transfer.exit:                ; preds = %cleanup.i.NCR5380_information_transfer.exit_crit_edge, %complete_cmd.exit482.i, %if.end268.i.NCR5380_information_transfer.exit_crit_edge, %list_add.exit.i109, %do.body138.i, %if.else.i89, %do.end19.NCR5380_information_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %extended_msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i79) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phase.i78) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i77) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i76) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msgout.i) #8
  br label %if.end20

if.end20:                                         ; preds = %NCR5380_information_transfer.exit, %land.lhs.true.if.end20_crit_edge
  %572 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %572)
  %.pr220 = load ptr, ptr %connected, align 4
  %tobool22.not = icmp eq ptr %.pr220, null
  br i1 %tobool22.not, label %if.end20.do.body24_crit_edge, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end20.do.body24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body24:                                        ; preds = %if.end20.do.body24_crit_edge, %while.end.do.body24_crit_edge
  %tobool31.not224 = phi i1 [ %tobool15.not, %if.end20.do.body24_crit_edge ], [ false, %while.end.do.body24_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  call void @arm_heavy_mb() #8
  %573 = ptrtoint ptr %id_mask to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %id_mask, align 4
  %575 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %base, align 4
  %add = add i32 %576, 4
  %and = and i32 %add, 1048575
  %add27 = or i32 %and, -18874368
  %577 = inttoptr i32 %add27 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %577, i8 %574) #8, !srcloc !154
  %578 = ptrtoint ptr %disconnected.i180 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load volatile ptr, ptr %disconnected.i180, align 4
  %cmp.i.not.i115 = icmp eq ptr %579, %disconnected.i180
  br i1 %cmp.i.not.i115, label %land.lhs.true.i117, label %do.body24.if.end29_crit_edge

do.body24.if.end29_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true.i117:                               ; preds = %do.body24
  %580 = ptrtoint ptr %unissued.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load volatile ptr, ptr %unissued.i, align 4
  %cmp.i13.not.i = icmp eq ptr %581, %unissued.i
  br i1 %cmp.i13.not.i, label %land.lhs.true4.i, label %land.lhs.true.i117.if.end29_crit_edge

land.lhs.true.i117.if.end29_crit_edge:            ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i117
  %582 = ptrtoint ptr %autosense.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load volatile ptr, ptr %autosense.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %tobool31.not224, label %land.lhs.true4.i.if.then32_crit_edge, label %land.lhs.true4.i.do.end39.critedge_crit_edge

land.lhs.true4.i.do.end39.critedge_crit_edge:     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.critedge

land.lhs.true4.i.if.then32_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end29:                                         ; preds = %land.lhs.true.i117.if.end29_crit_edge, %do.body24.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %tobool31.not223 = phi i1 [ %tobool15.not, %if.end20.if.end29_crit_edge ], [ %tobool31.not224, %do.body24.if.end29_crit_edge ], [ %tobool31.not224, %land.lhs.true.i117.if.end29_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %tobool31.not223, label %if.end29.if.then32_crit_edge, label %if.end29.do.end39.critedge_crit_edge

if.end29.do.end39.critedge_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.critedge

if.end29.if.then32_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %if.end29.if.then32_crit_edge, %land.lhs.true4.i.if.then32_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.14, i32 noundef 745, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br label %do.body

do.end39.critedge:                                ; preds = %if.end29.do.end39.critedge_crit_edge, %land.lhs.true4.i.do.end39.critedge_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_prep_cmnd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_print_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__param_disconnect_mask, !1, !"__param_disconnect_mask", i1 false, i1 false}
!1 = !{!"../drivers/scsi/NCR5380.c", i32 133, i32 1}
!2 = !{ptr @__UNIQUE_ID_disconnect_masktype287, !1, !"__UNIQUE_ID_disconnect_masktype287", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_dmx3191d__290_144_dmx3191d_pci_driver_init6, !4, !"__initcall__kmod_dmx3191d__290_144_dmx3191d_pci_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/scsi/dmx3191d.c", i32 144, i32 1}
!5 = !{ptr @__exitcall_dmx3191d_pci_driver_exit, !4, !"__exitcall_dmx3191d_pci_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/scsi/dmx3191d.c", i32 146, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/scsi/dmx3191d.c", i32 147, i32 1}
!10 = !{ptr @__UNIQUE_ID_file293, !11, !"__UNIQUE_ID_file293", i1 false, i1 false}
!11 = !{!"../drivers/scsi/dmx3191d.c", i32 148, i32 1}
!12 = !{ptr @__UNIQUE_ID_license294, !11, !"__UNIQUE_ID_license294", i1 false, i1 false}
!13 = !{ptr @__param_str_disconnect_mask, !1, !"__param_str_disconnect_mask", i1 false, i1 false}
!14 = !{ptr @disconnect_mask, !15, !"disconnect_mask", i1 false, i1 false}
!15 = !{!"../drivers/scsi/NCR5380.c", i32 132, i32 21}
!16 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dmx3191d_pci_driver, !18, !"dmx3191d_pci_driver", i1 false, i1 false}
!18 = !{!"../drivers/scsi/dmx3191d.c", i32 137, i32 26}
!19 = !{ptr @dmx3191d_pci_tbl, !20, !"dmx3191d_pci_tbl", i1 false, i1 false}
!20 = !{!"../drivers/scsi/dmx3191d.c", i32 130, i32 29}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/dmx3191d.c", i32 71, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dmx3191d_probe_one._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @dmx3191d_probe_one._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/dmx3191d.c", i32 45, i32 12}
!29 = !{ptr @dmx3191d_driver_template, !30, !"dmx3191d_driver_template", i1 false, i1 false}
!30 = !{!"../drivers/scsi/dmx3191d.c", i32 42, i32 34}
!31 = !{ptr @NCR5380_init.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/scsi/NCR5380.c", i32 411, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @NCR5380_init.__key.6, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/scsi/NCR5380.c", i32 420, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/NCR5380.c", i32 421, i32 37}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/NCR5380.c", i32 428, i32 3}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/NCR5380.c", i32 432, i32 42}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/NCR5380.c", i32 432, i32 61}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/NCR5380.c", i32 433, i32 42}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/NCR5380.c", i32 434, i32 42}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/NCR5380.c", i32 745, i32 4}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/NCR5380.c", i32 1027, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @NCR5380_select._entry, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @NCR5380_select._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/NCR5380.c", i32 1145, i32 3}
!60 = !{ptr @NCR5380_select._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @NCR5380_select._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/NCR5380.c", i32 1187, i32 3}
!64 = !{ptr @NCR5380_select._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @NCR5380_select._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/NCR5380.c", i32 2045, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @NCR5380_reselect._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @NCR5380_reselect._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/NCR5380.c", i32 2062, i32 3}
!74 = !{ptr @NCR5380_reselect._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @NCR5380_reselect._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/NCR5380.c", i32 2077, i32 3}
!78 = !{ptr @NCR5380_reselect._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @NCR5380_reselect._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/NCR5380.c", i32 2104, i32 3}
!82 = !{ptr @NCR5380_reselect._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @NCR5380_reselect._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/NCR5380.c", i32 2106, i32 3}
!86 = !{ptr @NCR5380_reselect._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @NCR5380_reselect._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/NCR5380.c", i32 2141, i32 3}
!90 = !{ptr @NCR5380_reselect._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @NCR5380_reselect._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/NCR5380.c", i32 1787, i32 19}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/NCR5380.c", i32 1788, i32 8}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/NCR5380.c", i32 1942, i32 7}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @NCR5380_information_transfer._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @NCR5380_information_transfer._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/NCR5380.c", i32 1945, i32 7}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @NCR5380_information_transfer._entry.47, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @NCR5380_information_transfer._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/NCR5380.c", i32 1963, i32 19}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/NCR5380.c", i32 1967, i32 19}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/NCR5380.c", i32 2006, i32 5}
!112 = !{ptr @NCR5380_information_transfer._entry.53, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @NCR5380_information_transfer._entry_ptr.55, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/NCR5380.c", i32 1633, i32 5}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @NCR5380_transfer_dma._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @NCR5380_transfer_dma._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/NCR5380.c", i32 1638, i32 5}
!121 = !{ptr @NCR5380_transfer_dma._entry.58, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @NCR5380_transfer_dma._entry_ptr.60, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/NCR5380.c", i32 1650, i32 5}
!125 = !{ptr @NCR5380_transfer_dma._entry.61, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @NCR5380_transfer_dma._entry_ptr.63, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/NCR5380.c", i32 483, i32 4}
!129 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @NCR5380_maybe_reset_bus._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @NCR5380_maybe_reset_bus._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/NCR5380.c", i32 488, i32 4}
!134 = !{ptr @NCR5380_maybe_reset_bus._entry.66, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @NCR5380_maybe_reset_bus._entry_ptr.68, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/NCR5380.c", i32 492, i32 4}
!138 = !{ptr @NCR5380_maybe_reset_bus._entry.69, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @NCR5380_maybe_reset_bus._entry_ptr.71, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/NCR5380.c", i32 504, i32 4}
!142 = !{ptr @NCR5380_maybe_reset_bus._entry.72, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @NCR5380_maybe_reset_bus._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2155100571}
!154 = !{i64 4981353}
!155 = !{i64 2155100967}
!156 = !{i64 2155101361}
!157 = !{i64 2155101755}
!158 = !{i64 2155102161}
!159 = !{i64 2155102003}
!160 = !{i64 4981748}
!161 = !{i64 2155102913}
!162 = !{i64 2155103188}
!163 = !{i64 2155103030}
!164 = !{i64 2155103943}
!165 = !{i64 2155020707}
!166 = !{i64 2155286236}
!167 = !{i64 2155286630}
!168 = !{i64 2155287024}
!169 = !{!"auto-init"}
!170 = !{i64 2155211003}
!171 = !{i64 2155211497}
!172 = !{i64 2155211845}
!173 = !{i64 2155212306}
!174 = !{i64 2155212742}
!175 = !{i64 2155213167}
!176 = !{i64 2155194569}
!177 = !{i64 2155196695}
!178 = !{i64 2155198675}
!179 = !{i64 2155199887}
!180 = !{i64 2155200790}
!181 = !{i64 2155199143}
!182 = !{i64 2155201221}
!183 = !{i64 2155206024}
!184 = !{i64 2155097626}
!185 = !{i64 2155097970}
!186 = !{i64 2155098245}
!187 = !{i64 2155098087}
!188 = !{i64 2155099008}
!189 = !{i64 2155099352}
!190 = !{i64 639978, i64 640039}
!191 = !{i64 2155208104}
!192 = !{i64 2155207884}
!193 = !{i64 2155208519}
!194 = !{i64 2155209457}
!195 = !{i64 2155209925}
!196 = !{i64 642710}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{i64 642995}
!199 = !{i64 2155163577}
!200 = !{i64 2155164003}
!201 = !{i64 2155164408}
!202 = !{i64 2155164909}
!203 = !{i64 2155165179}
!204 = !{i64 2155165575}
!205 = !{i64 2155168194}
!206 = !{i64 2155168536}
!207 = !{i64 2155168873}
!208 = !{i64 2155169143}
!209 = !{i64 2155171479}
!210 = !{i64 2155173029}
!211 = !{i64 2155173695}
!212 = !{i64 2155176350}
!213 = !{i64 2155176746}
!214 = !{i64 2155177140}
!215 = !{i64 2155178129}
!216 = !{i64 2155180913}
!217 = !{i64 2155181198}
!218 = !{i64 2155250163}
!219 = !{i64 2155250631}
!220 = !{i64 2155252594}
!221 = !{i64 2155254572}
!222 = !{i64 2155254968}
!223 = !{i64 2155255448}
!224 = !{i32 0, i32 33}
!225 = !{i64 2155267461}
!226 = !{i64 2155183265}
!227 = !{i64 2155186061}
!228 = !{i64 2155188034}
!229 = !{i64 2155190614}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2154362067, i64 2154362559, i64 2154362104, i64 2154362160, i64 2154362194, i64 2154362218, i64 2154362259, i64 2154362280, i64 2154362308, i64 2154362342}
!232 = !{i64 2155223844}
!233 = !{i64 2155229413}
!234 = !{i64 2155233861}
!235 = !{i64 2155234257}
!236 = !{i64 2155234653}
!237 = !{i64 2155237376}
!238 = !{i64 2155237772}
!239 = !{i64 2155238168}
!240 = !{i64 2155242271}
!241 = !{i64 2155248118}
!242 = !{i64 2155138502}
