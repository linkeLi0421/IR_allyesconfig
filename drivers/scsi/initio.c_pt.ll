; ModuleID = '/llk/IR_all_yes/drivers/scsi/initio.c_pt.bc'
source_filename = "../drivers/scsi/initio.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct._NVRAM = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x %struct._NVRAM_SCSI], [10 x i8], i16 }
%struct._NVRAM_SCSI = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%union.anon.78 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.initio_host = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], [16 x %struct.target_control], %struct.spinlock, %struct.spinlock, ptr }
%struct.target_control = type { i16, i8, i8, i16, i8, i8 }
%struct.scsi_ctrl_blk = type { ptr, i8, i8, i8, i8, i16, i16, [3 x i32], i32, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [12 x i8], i32, i32, ptr, ptr, [32 x %struct.sg_entry] }
%struct.sg_entry = type { i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file287 = internal constant [32 x i8] c"initio.file=drivers/scsi/initio\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [19 x i8] c"initio.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_initio__289_2959_initio_pci_driver_init6 = internal global ptr @initio_pci_driver_init, section ".initcall6.init", align 4
@initio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @initio_pci_tbl, ptr @initio_probe_one, ptr @initio_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_initio_pci_driver_exit = internal global ptr @initio_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"initio.description=Initio INI-9X00U/UW SCSI device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [33 x i8] c"initio.author=Initio Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [32 x i8] c"initio.file=drivers/scsi/initio\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"initio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"initio\00", [25 x i8] zeroinitializer }, align 32
@initio_pci_tbl = internal global { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4353, i32 38144, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4353, i32 37888, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4353, i32 37889, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4353, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4938, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@initio_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014i91u: Could not set 32 bit DMA mask\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"initio_probe_one\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/scsi/initio.c\00", [42 x i8] zeroinitializer }, align 32
@initio_probe_one._entry_ptr = internal global ptr @initio_probe_one._entry, section ".printk_index", align 4
@initio_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @i91u_queuecommand, ptr null, ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i91u_bus_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i91u_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.21, ptr null, i32 32, i32 1, i16 128, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@initio_probe_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014initio: Could not allocate host structure.\0A\00", [50 x i8] zeroinitializer }, align 32
@initio_probe_one._entry_ptr.6 = internal global ptr @initio_probe_one._entry.4, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i91u\00", [27 x i8] zeroinitializer }, align 32
@initio_probe_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 2838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014initio: I/O port range 0x%x is busy.\0A\00", [56 x i8] zeroinitializer }, align 32
@initio_probe_one._entry_ptr.10 = internal global ptr @initio_probe_one._entry.8, section ".printk_index", align 4
@initio_probe_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014initio: Cannot allocate SCB array.\0A\00", [58 x i8] zeroinitializer }, align 32
@initio_probe_one._entry_ptr.13 = internal global ptr @initio_probe_one._entry.11, section ".printk_index", align 4
@initio_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&host->semaph_lock\00", [45 x i8] zeroinitializer }, align 32
@initio_probe_one.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&host->avail_lock\00", [46 x i8] zeroinitializer }, align 32
@initio_probe_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 2898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014initio: Unable to request IRQ %d\0A\00", [60 x i8] zeroinitializer }, align 32
@initio_probe_one._entry_ptr.19 = internal global ptr @initio_probe_one._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Initio INI-9X00U/UW SCSI device driver\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INI9100U\00", [23 x i8] zeroinitializer }, align 32
@i91uSCBPost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 2740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013i91uSCBPost: SRB pointer is empty\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i91uSCBPost\00", [20 x i8] zeroinitializer }, align 32
@i91uSCBPost._entry_ptr = internal global ptr @i91uSCBPost._entry, section ".printk_index", align 4
@i91uSCBPost._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 2779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ini9100u: %x %x\0A\00", [47 x i8] zeroinitializer }, align 32
@i91uSCBPost._entry_ptr.26 = internal global ptr @i91uSCBPost._entry.24, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@initio_bad_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"initio_bad_seg c=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"initio_bad_seq\00", [17 x i8] zeroinitializer }, align 32
@initio_bad_seq._entry_ptr = internal global ptr @initio_bad_seq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@initio_rate_tbl = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0C\12\19\1F%+2>", [24 x i8] zeroinitializer }, align 32
@i91unvramp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@initio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"i91u: PCI Base=0x%04X, IRQ=%d, BIOS=0x%04X0, SCSI ID=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"initio_init\00", [20 x i8] zeroinitializer }, align 32
@initio_init._entry_ptr = internal global ptr @initio_init._entry, section ".printk_index", align 4
@initio_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016i91u: Reset SCSI Bus ... \0A\00", [35 x i8] zeroinitializer }, align 32
@initio_init._entry_ptr.35 = internal global ptr @initio_init._entry.33, section ".printk_index", align 4
@i91unvram = internal global { %struct._NVRAM, [32 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i91udftNvRam = internal global { <{ [52 x i8], [12 x i8] }>, [32 x i8] } { <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"%\C9@\01\95\00\00\01\01\00\00\00\07\13\00\10hhhhhhhhhhhhhhhh\07\13\00\10hhhhhhhhhhhhhhhh", [12 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 10, i64 11, i64 17, i64 20, i64 26]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 35]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 11]
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"initio_pci_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2953, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2959, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"initio_pci_tbl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2943, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2822, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"initio_template\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2790, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2828, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2837, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2838, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2856, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2864, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2879, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2898, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2792, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2791, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2740, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 2779, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 326, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1005, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"initio_rate_tbl\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 213, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"i91unvramp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 171, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 636, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 641, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [10 x i8] c"i91unvram\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 170, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"i91udftNvRam\00", align 1
@___asan_gen_.169 = private constant [25 x i8] c"../drivers/scsi/initio.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 173, i32 11 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_license293, ptr @__exitcall_initio_pci_driver_exit, ptr @__initcall__kmod_initio__289_2959_initio_pci_driver_init6, ptr @i91uSCBPost._entry, ptr @i91uSCBPost._entry.24, ptr @i91uSCBPost._entry_ptr, ptr @i91uSCBPost._entry_ptr.26, ptr @initio_bad_seq._entry, ptr @initio_bad_seq._entry_ptr, ptr @initio_init._entry, ptr @initio_init._entry.33, ptr @initio_init._entry_ptr, ptr @initio_init._entry_ptr.35, ptr @initio_pci_driver_exit, ptr @initio_probe_one._entry, ptr @initio_probe_one._entry.11, ptr @initio_probe_one._entry.17, ptr @initio_probe_one._entry.4, ptr @initio_probe_one._entry.8, ptr @initio_probe_one._entry_ptr, ptr @initio_probe_one._entry_ptr.10, ptr @initio_probe_one._entry_ptr.13, ptr @initio_probe_one._entry_ptr.19, ptr @initio_probe_one._entry_ptr.6, ptr @initio_pci_driver, ptr @.str, ptr @initio_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @initio_template, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @initio_probe_one.__key, ptr @.str.14, ptr @initio_probe_one.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @initio_rate_tbl, ptr @i91unvramp, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @i91unvram, ptr @i91udftNvRam], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_pci_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_probe_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i91uSCBPost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i91uSCBPost._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_bad_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_rate_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i91unvramp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initio_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i91unvram to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i91udftNvRam to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @initio_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @initio_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @initio_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @initio_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @initio_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !100
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 68, ptr noundef nonnull %reg) #8
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %3 = and i32 %2, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %3)
  %cmp = icmp eq i32 %3, 65280
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reg, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %conv = shl i32 %2, 8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %7 = lshr i32 %6, 8
  %conv10 = and i32 %7, 255
  %add = or i32 %conv10, %conv
  %conv11 = trunc i32 %add to i16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call12 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %out_disable_device

if.end17:                                         ; preds = %if.end5
  %call18 = call ptr @scsi_host_alloc(ptr noundef nonnull @initio_template, i32 noundef 340) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %out_disable_device

if.end26:                                         ; preds = %if.end17
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 53
  %8 = call ptr @memset(ptr %hostdata, i32 0, i32 340)
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %conv27 = trunc i32 %10 to i16
  %11 = ptrtoint ptr %hostdata to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv27, ptr %hostdata, align 4
  %bios_addr = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 1
  %12 = ptrtoint ptr %bios_addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv11, ptr %bios_addr, align 2
  %conv29 = and i32 %10, 65535
  %call30 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv29, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef 0) #8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.end35, label %if.end8.i.i

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hostdata, align 4
  %conv38 = zext i16 %14 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv38) #11
  br label %out_host_put

if.end8.i.i:                                      ; preds = %if.end26
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef 10880, i32 noundef 3520) #12
  %tobool47.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool47.not, label %for.inc, label %if.end8.i.i.if.end57_crit_edge

if.end8.i.i.if.end57_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc:                                          ; preds = %if.end8.i.i
  %call9.i.i.1 = call noalias align 128 ptr @__kmalloc(i32 noundef 10540, i32 noundef 3520) #12
  %tobool47.not.1 = icmp eq ptr %call9.i.i.1, null
  br i1 %tobool47.not.1, label %for.inc.1, label %for.inc.if.end57_crit_edge

for.inc.if.end57_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.1:                                        ; preds = %for.inc
  %call9.i.i.2 = call noalias align 128 ptr @__kmalloc(i32 noundef 10200, i32 noundef 3520) #12
  %tobool47.not.2 = icmp eq ptr %call9.i.i.2, null
  br i1 %tobool47.not.2, label %for.inc.2, label %for.inc.1.if.end57_crit_edge

for.inc.1.if.end57_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.2:                                        ; preds = %for.inc.1
  %call9.i.i.3 = call noalias align 128 ptr @__kmalloc(i32 noundef 9860, i32 noundef 3520) #12
  %tobool47.not.3 = icmp eq ptr %call9.i.i.3, null
  br i1 %tobool47.not.3, label %for.inc.3, label %for.inc.2.if.end57_crit_edge

for.inc.2.if.end57_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.3:                                        ; preds = %for.inc.2
  %call9.i.i.4 = call noalias align 128 ptr @__kmalloc(i32 noundef 9520, i32 noundef 3520) #12
  %tobool47.not.4 = icmp eq ptr %call9.i.i.4, null
  br i1 %tobool47.not.4, label %for.inc.4, label %for.inc.3.if.end57_crit_edge

for.inc.3.if.end57_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.4:                                        ; preds = %for.inc.3
  %call9.i.i.5 = call noalias align 128 ptr @__kmalloc(i32 noundef 9180, i32 noundef 3520) #12
  %tobool47.not.5 = icmp eq ptr %call9.i.i.5, null
  br i1 %tobool47.not.5, label %for.inc.5, label %for.inc.4.if.end57_crit_edge

for.inc.4.if.end57_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.5:                                        ; preds = %for.inc.4
  %call9.i.i.6 = call noalias align 128 ptr @__kmalloc(i32 noundef 8840, i32 noundef 3520) #12
  %tobool47.not.6 = icmp eq ptr %call9.i.i.6, null
  br i1 %tobool47.not.6, label %for.inc.6, label %for.inc.5.if.end57_crit_edge

for.inc.5.if.end57_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.6:                                        ; preds = %for.inc.5
  %call9.i.i.7 = call noalias align 128 ptr @__kmalloc(i32 noundef 8500, i32 noundef 3520) #12
  %tobool47.not.7 = icmp eq ptr %call9.i.i.7, null
  br i1 %tobool47.not.7, label %for.inc.7, label %for.inc.6.if.end57_crit_edge

for.inc.6.if.end57_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.7:                                        ; preds = %for.inc.6
  %call9.i.i.8 = call noalias align 128 ptr @__kmalloc(i32 noundef 8160, i32 noundef 3520) #12
  %tobool47.not.8 = icmp eq ptr %call9.i.i.8, null
  br i1 %tobool47.not.8, label %for.inc.8, label %for.inc.7.if.end57_crit_edge

for.inc.7.if.end57_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.8:                                        ; preds = %for.inc.7
  %call9.i.i.9 = call noalias align 128 ptr @__kmalloc(i32 noundef 7820, i32 noundef 3520) #12
  %tobool47.not.9 = icmp eq ptr %call9.i.i.9, null
  br i1 %tobool47.not.9, label %for.inc.9, label %for.inc.8.if.end57_crit_edge

for.inc.8.if.end57_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.9:                                        ; preds = %for.inc.8
  %call9.i.i.10 = call noalias align 128 ptr @__kmalloc(i32 noundef 7480, i32 noundef 3520) #12
  %tobool47.not.10 = icmp eq ptr %call9.i.i.10, null
  br i1 %tobool47.not.10, label %for.inc.10, label %for.inc.9.if.end57_crit_edge

for.inc.9.if.end57_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.10:                                       ; preds = %for.inc.9
  %call9.i.i.11 = call noalias align 128 ptr @__kmalloc(i32 noundef 7140, i32 noundef 3520) #12
  %tobool47.not.11 = icmp eq ptr %call9.i.i.11, null
  br i1 %tobool47.not.11, label %for.inc.11, label %for.inc.10.if.end57_crit_edge

for.inc.10.if.end57_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.11:                                       ; preds = %for.inc.10
  %call9.i.i.12 = call noalias align 128 ptr @__kmalloc(i32 noundef 6800, i32 noundef 3520) #12
  %tobool47.not.12 = icmp eq ptr %call9.i.i.12, null
  br i1 %tobool47.not.12, label %for.inc.12, label %for.inc.11.if.end57_crit_edge

for.inc.11.if.end57_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.12:                                       ; preds = %for.inc.11
  %call9.i.i.13 = call noalias align 128 ptr @__kmalloc(i32 noundef 6460, i32 noundef 3520) #12
  %tobool47.not.13 = icmp eq ptr %call9.i.i.13, null
  br i1 %tobool47.not.13, label %for.inc.13, label %for.inc.12.if.end57_crit_edge

for.inc.12.if.end57_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %out_release_region

if.end57:                                         ; preds = %for.inc.12.if.end57_crit_edge, %for.inc.11.if.end57_crit_edge, %for.inc.10.if.end57_crit_edge, %for.inc.9.if.end57_crit_edge, %for.inc.8.if.end57_crit_edge, %for.inc.7.if.end57_crit_edge, %for.inc.6.if.end57_crit_edge, %for.inc.5.if.end57_crit_edge, %for.inc.4.if.end57_crit_edge, %for.inc.3.if.end57_crit_edge, %for.inc.2.if.end57_crit_edge, %for.inc.1.if.end57_crit_edge, %for.inc.if.end57_crit_edge, %if.end8.i.i.if.end57_crit_edge
  %num_scb.1213.lcssa = phi i32 [ 32, %if.end8.i.i.if.end57_crit_edge ], [ 31, %for.inc.if.end57_crit_edge ], [ 30, %for.inc.1.if.end57_crit_edge ], [ 29, %for.inc.2.if.end57_crit_edge ], [ 28, %for.inc.3.if.end57_crit_edge ], [ 27, %for.inc.4.if.end57_crit_edge ], [ 26, %for.inc.5.if.end57_crit_edge ], [ 25, %for.inc.6.if.end57_crit_edge ], [ 24, %for.inc.7.if.end57_crit_edge ], [ 23, %for.inc.8.if.end57_crit_edge ], [ 22, %for.inc.9.if.end57_crit_edge ], [ 21, %for.inc.10.if.end57_crit_edge ], [ 20, %for.inc.11.if.end57_crit_edge ], [ 19, %for.inc.12.if.end57_crit_edge ]
  %call9.i.i.lcssa = phi ptr [ %call9.i.i, %if.end8.i.i.if.end57_crit_edge ], [ %call9.i.i.1, %for.inc.if.end57_crit_edge ], [ %call9.i.i.2, %for.inc.1.if.end57_crit_edge ], [ %call9.i.i.3, %for.inc.2.if.end57_crit_edge ], [ %call9.i.i.4, %for.inc.3.if.end57_crit_edge ], [ %call9.i.i.5, %for.inc.4.if.end57_crit_edge ], [ %call9.i.i.6, %for.inc.5.if.end57_crit_edge ], [ %call9.i.i.7, %for.inc.6.if.end57_crit_edge ], [ %call9.i.i.8, %for.inc.7.if.end57_crit_edge ], [ %call9.i.i.9, %for.inc.8.if.end57_crit_edge ], [ %call9.i.i.10, %for.inc.9.if.end57_crit_edge ], [ %call9.i.i.11, %for.inc.10.if.end57_crit_edge ], [ %call9.i.i.12, %for.inc.11.if.end57_crit_edge ], [ %call9.i.i.13, %for.inc.12.if.end57_crit_edge ]
  %pci_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 13, i32 13, i32 1
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdev, ptr %pci_dev, align 4
  %semaph = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 11
  %16 = ptrtoint ptr %semaph to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %semaph, align 2
  %semaph_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 13, i32 3
  call void @__raw_spin_lock_init(ptr noundef %semaph_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @initio_probe_one.__key, i16 noundef signext 3) #8
  %conv62 = trunc i32 %num_scb.1213.lcssa to i8
  %num_scbs = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 5
  %17 = ptrtoint ptr %num_scbs to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv62, ptr %num_scbs, align 1
  %scb63 = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %scb63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.lcssa, ptr %scb63, align 4
  %next_pending = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %next_pending to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i.lcssa, ptr %next_pending, align 4
  %next_avail = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %next_avail to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i.lcssa, ptr %next_avail, align 4
  %tagid.peel = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %call9.i.i.lcssa, i32 0, i32 24
  %21 = ptrtoint ptr %tagid.peel to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tagid.peel, align 1
  %incdec.ptr.peel = getelementptr %struct.scsi_ctrl_blk, ptr %call9.i.i.lcssa, i32 1
  br label %if.end72

if.end72:                                         ; preds = %if.end72.if.end72_crit_edge, %if.end57
  %i.0218 = phi i32 [ %inc, %if.end72.if.end72_crit_edge ], [ 1, %if.end57 ]
  %prev.0217 = phi ptr [ %tmp.0216, %if.end72.if.end72_crit_edge ], [ %call9.i.i.lcssa, %if.end57 ]
  %tmp.0216 = phi ptr [ %incdec.ptr, %if.end72.if.end72_crit_edge ], [ %incdec.ptr.peel, %if.end57 ]
  %conv68 = trunc i32 %i.0218 to i8
  %tagid = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.0216, i32 0, i32 24
  %22 = ptrtoint ptr %tagid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv68, ptr %tagid, align 1
  %23 = ptrtoint ptr %prev.0217 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tmp.0216, ptr %prev.0217, align 4
  %inc = add nuw nsw i32 %i.0218, 1
  %incdec.ptr = getelementptr %struct.scsi_ctrl_blk, ptr %tmp.0216, i32 1
  %exitcond.not = icmp eq i32 %inc, %num_scb.1213.lcssa
  br i1 %exitcond.not, label %for.end74, label %if.end72.if.end72_crit_edge, !llvm.loop !101

if.end72.if.end72_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

for.end74:                                        ; preds = %if.end72
  %24 = ptrtoint ptr %tmp.0216 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tmp.0216, align 4
  %scb_end = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %scb_end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr, ptr %scb_end, align 4
  %first_avail = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %first_avail to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i.lcssa, ptr %first_avail, align 4
  %last_avail = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %last_avail to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tmp.0216, ptr %last_avail, align 4
  %avail_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 13
  call void @__raw_spin_lock_init(ptr noundef %avail_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @initio_probe_one.__key.15, i16 noundef signext 3) #8
  %conv80 = shl i32 %add, 4
  %shl81 = and i32 %conv80, 1048560
  %28 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl81, i32 -2130706432, i32 8454144) #13, !srcloc !103
  %29 = inttoptr i32 %28 to ptr
  %30 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hostdata, align 4
  %conv.i = zext i16 %31 to i32
  store ptr @i91unvram, ptr @i91unvramp, align 4
  %add1.i.i = add nuw nsw i32 %conv.i, -18874284
  %32 = inttoptr i32 %add1.i.i to ptr
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #8, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  call void @arm_heavy_mb() #8
  %34 = or i8 %33, 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %34) #8, !srcloc !107
  %call8.i.i = call fastcc i32 @initio_se2_rd_all(i32 noundef %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i.i)
  %cmp.not.i.i = icmp eq i32 %call8.i.i, 1
  br i1 %cmp.not.i.i, label %for.end74.initio_read_eeprom.exit.i_crit_edge, label %if.then.i.i202

for.end74.initio_read_eeprom.exit.i_crit_edge:    ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_read_eeprom.exit.i

if.then.i.i202:                                   ; preds = %for.end74
  store ptr @i91unvram, ptr @i91unvramp, align 4
  %35 = load i16, ptr @i91udftNvRam, align 2
  %36 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 2), align 2
  %add.1.i.i.i = add i16 %36, %35
  %37 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 4), align 2
  %add.2.i.i.i = add i16 %add.1.i.i.i, %37
  %38 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 6), align 2
  %add.3.i.i.i = add i16 %add.2.i.i.i, %38
  %39 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 8), align 2
  %add.4.i.i.i = add i16 %add.3.i.i.i, %39
  %40 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 10), align 2
  %add.5.i.i.i = add i16 %add.4.i.i.i, %40
  %41 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 12), align 2
  %add.6.i.i.i = add i16 %add.5.i.i.i, %41
  %42 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 14), align 2
  %add.7.i.i.i = add i16 %add.6.i.i.i, %42
  %43 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 16), align 2
  %add.8.i.i.i = add i16 %add.7.i.i.i, %43
  %44 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 18), align 2
  %add.9.i.i.i = add i16 %add.8.i.i.i, %44
  %45 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 20), align 2
  %add.10.i.i.i = add i16 %add.9.i.i.i, %45
  %46 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 22), align 2
  %add.11.i.i.i = add i16 %add.10.i.i.i, %46
  %47 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 24), align 2
  %add.12.i.i.i = add i16 %add.11.i.i.i, %47
  %48 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 26), align 2
  %add.13.i.i.i = add i16 %add.12.i.i.i, %48
  %49 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 28), align 2
  %add.14.i.i.i = add i16 %add.13.i.i.i, %49
  %50 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 30), align 2
  %add.15.i.i.i = add i16 %add.14.i.i.i, %50
  %51 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 32), align 2
  %add.16.i.i.i = add i16 %add.15.i.i.i, %51
  %52 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 34), align 2
  %add.17.i.i.i = add i16 %add.16.i.i.i, %52
  %53 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 36), align 2
  %add.18.i.i.i = add i16 %add.17.i.i.i, %53
  %54 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 38), align 2
  %add.19.i.i.i = add i16 %add.18.i.i.i, %54
  %55 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 40), align 2
  %add.20.i.i.i = add i16 %add.19.i.i.i, %55
  %56 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 42), align 2
  %add.21.i.i.i = add i16 %add.20.i.i.i, %56
  %57 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 44), align 2
  %add.22.i.i.i = add i16 %add.21.i.i.i, %57
  %58 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 46), align 2
  %add.23.i.i.i = add i16 %add.22.i.i.i, %58
  %59 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 48), align 2
  %add.24.i.i.i = add i16 %add.23.i.i.i, %59
  %60 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 0, i32 50), align 2
  %add.25.i.i.i = add i16 %add.24.i.i.i, %60
  %61 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 1, i32 0), align 2
  %add.26.i.i.i = add i16 %add.25.i.i.i, %61
  %62 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 1, i32 2), align 2
  %add.27.i.i.i = add i16 %add.26.i.i.i, %62
  %63 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 1, i32 4), align 2
  %add.28.i.i.i = add i16 %add.27.i.i.i, %63
  %64 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 1, i32 6), align 2
  %add.29.i.i.i = add i16 %add.28.i.i.i, %64
  %65 = load i16, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 1, i32 8), align 2
  %add.30.i.i.i = add i16 %add.29.i.i.i, %65
  store i16 %add.30.i.i.i, ptr getelementptr inbounds (<{ [52 x i8], [12 x i8] }>, ptr @i91udftNvRam, i32 0, i32 1, i32 10), align 2
  call fastcc void @initio_se2_instr(i32 noundef %conv.i, i8 noundef zeroext 48) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %add1.i.i.i.i = add nuw nsw i32 %conv.i, -18874275
  %66 = inttoptr i32 %add1.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 6442440) #8
  %68 = load ptr, ptr @i91unvramp, align 4
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.inc12.i.i.i.for.body6.i.i.i_crit_edge, %if.then.i.i202
  %np1.039.i.i.i = phi ptr [ %68, %if.then.i.i202 ], [ %incdec.ptr15.i.i.i, %for.inc12.i.i.i.for.body6.i.i.i_crit_edge ]
  %np.138.i.i.i = phi ptr [ @i91udftNvRam, %if.then.i.i202 ], [ %incdec.ptr14.i.i.i, %for.inc12.i.i.i.for.body6.i.i.i_crit_edge ]
  %i.136.i.i.i = phi i32 [ 0, %if.then.i.i202 ], [ %inc13.i.i.i, %for.inc12.i.i.i.for.body6.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %np.138.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %np.138.i.i.i, align 2
  %71 = ptrtoint ptr %np1.039.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %np1.039.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp9.not.i.i.i = icmp eq i16 %70, %72
  br i1 %cmp9.not.i.i.i, label %for.body6.i.i.i.for.inc12.i.i.i_crit_edge, label %if.then.i.i.i

for.body6.i.i.i.for.inc12.i.i.i_crit_edge:        ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc12.i.i.i

if.then.i.i.i:                                    ; preds = %for.body6.i.i.i
  %conv11.i.i.i = trunc i32 %i.136.i.i.i to i8
  %73 = or i8 %conv11.i.i.i, 64
  call fastcc void @initio_se2_instr(i32 noundef %conv.i, i8 noundef zeroext %73) #8
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i
  %val.addr.089.i.i.i.i = phi i16 [ %70, %if.then.i.i.i ], [ %shl.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.088.i.i.i.i = phi i32 [ 15, %if.then.i.i.i ], [ %dec.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %val.addr.089.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i16 %val.addr.089.i.i.i.i, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i.i.i, label %do.body6.i.i.i.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 10) #8, !srcloc !107
  br label %if.end.i.i.i.i

do.body6.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 8) #8, !srcloc !107
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body6.i.i.i.i, %do.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 6442440) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 12) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 6442440) #8
  %shl.i.i.i.i = shl i16 %val.addr.089.i.i.i.i, 1
  %dec.i.i.i.i = add nsw i32 %i.088.i.i.i.i, -1
  %cmp.not.i.i.i.i = icmp eq i32 %i.088.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.body22.i.i.i.i, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

do.body22.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 8) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 6442440) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 6442440) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 8) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 6442440) #8
  br label %for.cond43.i.i.i.i

for.cond43.i.i.i.i:                               ; preds = %for.cond43.i.i.i.i.for.cond43.i.i.i.i_crit_edge, %do.body22.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 12) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 6442440) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 8) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 6442440) #8
  %81 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #8, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %82 = and i8 %81, 1
  %tobool65.not.i.i.i.i = icmp eq i8 %82, 0
  br i1 %tobool65.not.i.i.i.i, label %for.cond43.i.i.i.i.for.cond43.i.i.i.i_crit_edge, label %initio_se2_wr.exit.i.i.i

for.cond43.i.i.i.i.for.cond43.i.i.i.i_crit_edge:  ; preds = %for.cond43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond43.i.i.i.i

initio_se2_wr.exit.i.i.i:                         ; preds = %for.cond43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #8, !srcloc !107
  br label %for.inc12.i.i.i

for.inc12.i.i.i:                                  ; preds = %initio_se2_wr.exit.i.i.i, %for.body6.i.i.i.for.inc12.i.i.i_crit_edge
  %inc13.i.i.i = add nuw nsw i32 %i.136.i.i.i, 1
  %incdec.ptr14.i.i.i = getelementptr i16, ptr %np.138.i.i.i, i32 1
  %incdec.ptr15.i.i.i = getelementptr i16, ptr %np1.039.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc13.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %initio_se2_update_all.exit.i.i, label %for.inc12.i.i.i.for.body6.i.i.i_crit_edge

for.inc12.i.i.i.for.body6.i.i.i_crit_edge:        ; preds = %for.inc12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i.i.i

initio_se2_update_all.exit.i.i:                   ; preds = %for.inc12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @initio_se2_instr(i32 noundef %conv.i, i8 noundef zeroext 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 6442440) #8
  %call10.i.i = call fastcc i32 @initio_se2_rd_all(i32 noundef %conv.i) #8
  br label %initio_read_eeprom.exit.i

initio_read_eeprom.exit.i:                        ; preds = %initio_se2_update_all.exit.i.i, %for.end74.initio_read_eeprom.exit.i_crit_edge
  %84 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #8, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @arm_heavy_mb() #8
  %85 = and i8 %84, -5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %85) #8, !srcloc !107
  %86 = load ptr, ptr @i91unvramp, align 4
  %NVM_NumOfTarg.i = getelementptr inbounds %struct._NVRAM, ptr %86, i32 0, i32 11, i32 0, i32 3
  %87 = ptrtoint ptr %NVM_NumOfTarg.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %NVM_NumOfTarg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %88)
  %cmp.i = icmp eq i8 %88, 8
  %spec.select.i = select i1 %cmp.i, i8 8, i8 16
  %89 = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %spec.select.i, ptr %89, align 2
  %NVM_ChConfig1.i = getelementptr inbounds %struct._NVRAM, ptr %86, i32 0, i32 11, i32 0, i32 1
  %91 = ptrtoint ptr %NVM_ChConfig1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %NVM_ChConfig1.i, align 1
  %config.i = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 9
  %93 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %config.i, align 1
  %NVM_SCSIInfo6.i = getelementptr inbounds %struct._NVRAM, ptr %86, i32 0, i32 11
  %94 = ptrtoint ptr %NVM_SCSIInfo6.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %NVM_SCSIInfo6.i, align 2
  %scsi_id.i = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 3
  %96 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %scsi_id.i, align 1
  %conv9.i = zext i8 %95 to i32
  %shl.i = shl nuw i32 1, %conv9.i
  %97 = trunc i32 %shl.i to i16
  %conv10.i = xor i16 %97, -1
  %idmask.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 1, i32 1
  %98 = ptrtoint ptr %idmask.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv10.i, ptr %idmask.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hostdata, align 4
  %conv12.i = zext i16 %100 to i32
  %add13.i = add nuw nsw i32 %conv12.i, -18874144
  %101 = inttoptr i32 %add13.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 31) #8, !srcloc !107
  call fastcc void @initio_stop_bm(ptr noundef %hostdata) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %hostdata, align 4
  %conv18.i = zext i16 %103 to i32
  %add21.i = add nuw nsw i32 %conv18.i, -18874235
  %104 = inttoptr i32 %add21.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 2) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %scsi_id.i, align 1
  %shl28.i = shl i8 %106, 4
  %107 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hostdata, align 4
  %conv31.i = zext i16 %108 to i32
  %add34.i = add nuw nsw i32 %conv31.i, -18874231
  %109 = inttoptr i32 %add34.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %shl28.i) #8, !srcloc !107
  %110 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %config.i, align 1
  %112 = and i8 %111, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i = icmp eq i8 %112, 0
  %.sink289.i = select i1 %tobool.not.i, i8 -61, i8 -29
  %113 = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 16
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink289.i, ptr %113, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %113, align 1
  %117 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %hostdata, align 4
  %conv48.i = zext i16 %118 to i32
  %add51.i = add nuw nsw i32 %conv48.i, -18874233
  %119 = inttoptr i32 %add51.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 %116) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %hostdata, align 4
  %conv57.i = zext i16 %121 to i32
  %add60.i = add nuw nsw i32 %conv57.i, -18874234
  %122 = inttoptr i32 %add60.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 4) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  call void @arm_heavy_mb() #8
  %123 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %hostdata, align 4
  %conv66.i = zext i16 %124 to i32
  %add69.i = add nuw nsw i32 %conv66.i, -18874232
  %125 = inttoptr i32 %add69.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 0) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %hostdata, align 4
  %conv75.i = zext i16 %127 to i32
  %add78.i = add nuw nsw i32 %conv75.i, -18874230
  %128 = inttoptr i32 %add78.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 -103) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  %129 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %config.i, align 1
  %131 = and i8 %130, 12
  %132 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %hostdata, align 4
  %conv88.i = zext i16 %133 to i32
  %add91.i = add nuw nsw i32 %conv88.i, -18874140
  %134 = inttoptr i32 %add91.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 %131) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %config.i, align 1
  %137 = lshr i8 %136, 4
  %138 = and i8 %137, 1
  %139 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %hostdata, align 4
  %conv100.i = zext i16 %140 to i32
  %add103.i = add nuw nsw i32 %conv100.i, -18874283
  %141 = inttoptr i32 %add103.i to ptr
  %142 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %141) #8, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %143 = and i8 %142, -2
  %or281.i = or i8 %143, %138
  %144 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %hostdata, align 4
  %conv110.i = zext i16 %145 to i32
  %add113.i = add nuw nsw i32 %conv110.i, -18874283
  %146 = inttoptr i32 %add113.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 %or281.i) #8, !srcloc !107
  %147 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %89, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp119283.not.i = icmp eq i8 %148, 0
  br i1 %cmp119283.not.i, label %initio_read_eeprom.exit.i.do.end177.i_crit_edge, label %for.body.preheader.i

initio_read_eeprom.exit.i.do.end177.i_crit_edge:  ; preds = %initio_read_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end177.i

for.body.preheader.i:                             ; preds = %initio_read_eeprom.exit.i
  %add.ptr.i = getelementptr i8, ptr %29, i32 384
  %149 = load ptr, ptr @i91unvramp, align 4
  %NVM_Targ0Config.i = getelementptr inbounds %struct._NVRAM, ptr %149, i32 0, i32 11, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0286.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %flags.0285.i = phi ptr [ %incdec.ptr174.i, %for.body.i.for.body.i_crit_edge ], [ %NVM_Targ0Config.i, %for.body.preheader.i ]
  %heads.0284.i = phi ptr [ %incdec.ptr163.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %150 = ptrtoint ptr %flags.0285.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %flags.0285.i, align 1
  %conv123.i = zext i8 %151 to i16
  %arrayidx124.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 35, i32 %i.0286.i
  %152 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv123.i, ptr %arrayidx124.i, align 4
  %153 = and i8 %151, 64
  %154 = zext i8 %153 to i16
  %155 = shl nuw nsw i16 %154, 4
  %156 = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 35, i32 %i.0286.i, i32 3
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %155, ptr %156, align 4
  %js_period.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 35, i32 %i.0286.i, i32 1
  %158 = ptrtoint ptr %js_period.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %js_period.i, align 2
  %159 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %113, align 1
  %sconfig0.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 35, i32 %i.0286.i, i32 2
  %161 = ptrtoint ptr %sconfig0.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %sconfig0.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %heads.0284.i, i32 1
  %162 = ptrtoint ptr %heads.0284.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %heads.0284.i, align 1
  %heads147.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 35, i32 %i.0286.i, i32 4
  %164 = ptrtoint ptr %heads147.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %heads147.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %163)
  %cmp152.i = icmp eq i8 %163, -1
  %.sink291.i = select i1 %cmp152.i, i16 1024, i16 0
  %165 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %.sink291.i, ptr %156, align 4
  %incdec.ptr163.i = getelementptr i8, ptr %heads.0284.i, i32 2
  %166 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %incdec.ptr.i, align 1
  %sectors.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 35, i32 %i.0286.i, i32 5
  %168 = ptrtoint ptr %sectors.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %sectors.i, align 1
  %169 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv123.i, ptr %arrayidx124.i, align 4
  %arrayidx172.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 34, i32 %i.0286.i
  %170 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %arrayidx172.i, align 1
  %arrayidx173.i = getelementptr %struct.initio_host, ptr %hostdata, i32 0, i32 33, i32 %i.0286.i
  %171 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -1, ptr %arrayidx173.i, align 1
  %inc.i = add nuw nsw i32 %i.0286.i, 1
  %incdec.ptr174.i = getelementptr i8, ptr %flags.0285.i, i32 1
  %172 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %89, align 2
  %conv118.i = zext i8 %173 to i32
  %cmp119.i = icmp ult i32 %inc.i, %conv118.i
  br i1 %cmp119.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.end177.i_crit_edge

for.body.i.do.end177.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end177.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end177.i:                                      ; preds = %for.body.i.do.end177.i_crit_edge, %initio_read_eeprom.exit.i.do.end177.i_crit_edge
  %174 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %hostdata, align 4
  %conv180.i = zext i16 %175 to i32
  %176 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pci_dev, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %177, i32 0, i32 46
  %178 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %irq.i, align 4
  %180 = ptrtoint ptr %bios_addr to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %bios_addr, align 2
  %conv182.i = zext i16 %181 to i32
  %182 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %scsi_id.i, align 1
  %conv184.i = zext i8 %183 to i32
  %call185.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv180.i, i32 noundef %179, i32 noundef %conv182.i, i32 noundef %conv184.i) #11
  %184 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %config.i, align 1
  %186 = and i8 %185, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool189.not.i = icmp eq i8 %186, 0
  br i1 %tobool189.not.i, label %do.end177.i.initio_init.exit_crit_edge, label %do.end193.i

do.end177.i.initio_init.exit_crit_edge:           ; preds = %do.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_init.exit

do.end193.i:                                      ; preds = %do.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  %call195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  call fastcc void @initio_reset_scsi(ptr noundef %hostdata, i32 noundef 10) #8
  br label %initio_init.exit

initio_init.exit:                                 ; preds = %do.end193.i, %do.end177.i.initio_init.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %187 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %hostdata, align 4
  %conv202.i = zext i16 %188 to i32
  %add205.i = add nuw nsw i32 %conv202.i, -18874220
  %189 = inttoptr i32 %add205.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %189, i8 23) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  %190 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %hostdata, align 4
  %conv211.i = zext i16 %191 to i32
  %add214.i = add nuw nsw i32 %conv211.i, -18874236
  %192 = inttoptr i32 %add214.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 -23) #8, !srcloc !107
  %jsstatus0 = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 2
  %193 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %jsstatus0, align 4
  %194 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %hostdata, align 4
  %conv84 = zext i16 %195 to i32
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 44
  %196 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %conv84, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 45
  %197 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -1, ptr %n_io_port, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 26
  %198 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %num_scb.1213.lcssa, ptr %can_queue, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 23
  %199 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv84, ptr %unique_id, align 8
  %200 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %89, align 2
  %conv87 = zext i8 %201 to i32
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 21
  %202 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv87, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 22
  %203 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 32, ptr %max_lun, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %204 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %irq, align 4
  %irq88 = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 47
  %206 = ptrtoint ptr %irq88 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %irq88, align 8
  %207 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %scsi_id.i, align 1
  %conv89 = zext i8 %208 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 25
  %209 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv89, ptr %this_id, align 8
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 43
  %210 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %conv84, ptr %base, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 28
  %211 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 32, ptr %sg_tablesize, align 2
  %212 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %212, ptr noundef nonnull @i91u_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %call18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp94 = icmp slt i32 %call.i, 0
  br i1 %cmp94, label %do.end99, label %if.end103

do.end99:                                         ; preds = %initio_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %irq, align 4
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %214) #11
  br label %out_free_scbs

if.end103:                                        ; preds = %initio_init.exit
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %215 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call18, ptr %driver_data.i.i, align 4
  %call.i203 = call i32 @scsi_add_host_with_dma(ptr noundef %call18, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool106.not = icmp eq i32 %call.i203, 0
  br i1 %tobool106.not, label %if.end108, label %out_free_irq

if.end108:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_scan_host(ptr noundef %call18) #8
  br label %cleanup

out_free_irq:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %216 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %irq, align 4
  %call110 = call ptr @free_irq(i32 noundef %217, ptr noundef %call18) #8
  br label %out_free_scbs

out_free_scbs:                                    ; preds = %out_free_irq, %do.end99
  %error.0 = phi i32 [ %call.i, %do.end99 ], [ %call.i203, %out_free_irq ]
  %218 = ptrtoint ptr %scb63 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %scb63, align 4
  call void @kfree(ptr noundef %219) #8
  br label %out_release_region

out_release_region:                               ; preds = %out_free_scbs, %for.inc.13
  %error.1 = phi i32 [ %error.0, %out_free_scbs ], [ -12, %for.inc.13 ]
  %220 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %hostdata, align 4
  %conv113 = zext i16 %221 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv113, i32 noundef 256) #8
  br label %out_host_put

out_host_put:                                     ; preds = %out_release_region, %do.end35
  %error.2 = phi i32 [ %error.1, %out_release_region ], [ -19, %do.end35 ]
  call void @scsi_host_put(ptr noundef nonnull %call18) #8
  br label %out_disable_device

out_disable_device:                               ; preds = %out_host_put, %do.end23, %do.end
  %error.3 = phi i32 [ -19, %do.end ], [ %error.2, %out_host_put ], [ -12, %do.end23 ]
  call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.end108, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %out_disable_device ], [ 0, %if.end108 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @initio_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void @scsi_remove_host(ptr noundef %1) #8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #8
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hostdata, align 4
  %conv = zext i16 %5 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 256) #8
  tail call void @scsi_host_put(ptr noundef %1) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i91u_intr(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %dev_id, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hostdata, align 4
  %conv.i = zext i16 %3 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874148
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not.i = icmp sgt i8 %5, -1
  br i1 %tobool.not.i, label %entry._crit_edge, label %if.then.i

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %16

if.then.i:                                        ; preds = %entry
  %semaph.i = getelementptr inbounds %struct.initio_host, ptr %hostdata, i32 0, i32 11
  %6 = ptrtoint ptr %semaph.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %semaph.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %initio_isr.exit, label %if.then.i._crit_edge

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %16

initio_isr.exit:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hostdata, align 4
  %conv9.i = zext i16 %9 to i32
  %add12.i = add nuw nsw i32 %conv9.i, -18874144
  %10 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 31) #8, !srcloc !107
  %11 = ptrtoint ptr %semaph.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %semaph.i, align 2
  tail call fastcc void @tulip_main(ptr noundef %hostdata) #8
  %12 = ptrtoint ptr %semaph.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %semaph.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %hostdata to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hostdata, align 4
  %conv20.i = zext i16 %14 to i32
  %add23.i = add nuw nsw i32 %conv20.i, -18874144
  %15 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 15) #8, !srcloc !107
  br label %16

16:                                               ; preds = %initio_isr.exit, %if.then.i._crit_edge, %entry._crit_edge
  %17 = phi i32 [ 1, %initio_isr.exit ], [ 0, %if.then.i._crit_edge ], [ 0, %entry._crit_edge ]
  %18 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call2) #8
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i91u_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %avail_lock.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %avail_lock.i.i) #8
  %first_avail.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %first_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %first_avail.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %7, null
  br i1 %cmp5.not.i.i, label %initio_alloc_scb.exit.thread.i, label %if.then.i.i

initio_alloc_scb.exit.thread.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %avail_lock.i.i, i32 noundef %call2.i.i) #8
  br label %i91u_queuecommand_lck.exit

if.then.i.i:                                      ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %first_avail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %first_avail.i.i, align 4
  %cmp8.i.i = icmp eq ptr %9, null
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_avail.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %last_avail.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %last_avail.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i.i, %if.then.i.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %7, align 4
  %status.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %status.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %avail_lock.i.i, i32 noundef %call2.i.i) #8
  %post.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 28
  %14 = ptrtoint ptr %post.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @i91uSCBPost, ptr %post.i.i, align 4
  %srb.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 29
  %15 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd, ptr %srb.i.i, align 4
  %opcode.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 11
  %16 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %opcode.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 12
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %flags.i.i, align 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i.i, align 8
  %conv.i.i = trunc i32 %21 to i8
  %target.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 13
  %22 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.i, ptr %target.i.i, align 2
  %23 = load ptr, ptr %device.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lun.i.i, align 8
  %conv2.i.i = trunc i64 %25 to i8
  %lun3.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 14
  %26 = ptrtoint ptr %lun3.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2.i.i, ptr %lun3.i.i, align 1
  %27 = load ptr, ptr %device.i, align 4
  %lun5.i.i = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %lun5.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lun5.i.i, align 8
  %30 = trunc i64 %29 to i8
  %conv6.i.i = or i8 %30, -64
  %ident.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 22
  %31 = ptrtoint ptr %ident.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv6.i.i, ptr %ident.i.i, align 1
  store i8 6, ptr %flags.i.i, align 1
  %pci_dev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 13, i32 1
  %32 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %34 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sense_buffer.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %35) #8
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !135

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #8
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %39, %if.end.i.i.i.i ], [ %37, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #8
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %35, i32 noundef 14) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %35 to i32
  %sub.i.i.i = add i32 %41, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %40, i32 %shr.i.i.i
  %and.i.i.i = and i32 %41, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 14, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %senseptr.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 27
  %42 = ptrtoint ptr %senseptr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i.i, ptr %senseptr.i.i, align 4
  %senselen.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 18
  %43 = ptrtoint ptr %senselen.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 14, ptr %senselen.i.i, align 1
  %44 = inttoptr i32 %retval.0.i.i.i to ptr
  %SCp.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22
  %45 = ptrtoint ptr %SCp.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %SCp.i.i, align 4
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %46 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_len.i.i, align 4
  %conv11.i.i = trunc i16 %47 to i8
  %cdblen.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 21
  %48 = ptrtoint ptr %cdblen.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv11.i.i, ptr %cdblen.i.i, align 4
  %hastat.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 19
  %49 = ptrtoint ptr %hastat.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %hastat.i.i, align 2
  %tastat.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 20
  %50 = ptrtoint ptr %tastat.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %tastat.i.i, align 1
  %cdb.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 25
  %cmnd12.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %51 = ptrtoint ptr %cmnd12.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmnd12.i.i, align 4
  %53 = load i16, ptr %cmd_len.i.i, align 4
  %conv14.i.i = zext i16 %53 to i32
  %54 = call ptr @memcpy(ptr %cdb.i.i, ptr %52, i32 %conv14.i.i)
  %55 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device.i, align 4
  %tagged_supported.i.i = getelementptr inbounds %struct.scsi_device, ptr %56, i32 0, i32 41
  %57 = ptrtoint ptr %tagged_supported.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %bf.load.i.i = load i64, ptr %tagged_supported.i.i, align 4
  %58 = lshr i64 %bf.load.i.i, 47
  %59 = trunc i64 %58 to i8
  %60 = and i8 %59, 32
  %61 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 23
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %60, ptr %61, align 2
  %call17.i.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp.i.i, label %do.body22.i.i, label %do.end28.i.i, !prof !136

do.body22.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/initio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2574, 0\0A.popsection", ""() #8, !srcloc !137
  unreachable

do.end28.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool29.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool29.not.i.i, label %if.else54.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %do.end28.i.i
  %63 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci_dev.i.i, align 4
  %dev32.i.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %sglist33.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 30
  %call.i111.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sglist33.i.i) #8
  br i1 %call.i111.i.i, label %land.rhs.i113.i.i, label %if.end39.i126.i.i

land.rhs.i113.i.i:                                ; preds = %if.then30.i.i
  %.b1.i112.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i112.i.i, label %land.rhs.i113.i.i.dma_map_single_attrs.exit128.i.i_crit_edge, label %if.then.i117.i.i, !prof !135

land.rhs.i113.i.i.dma_map_single_attrs.exit128.i.i_crit_edge: ; preds = %land.rhs.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit128.i.i

if.then.i117.i.i:                                 ; preds = %land.rhs.i113.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i114.i.i = tail call ptr @dev_driver_string(ptr noundef %dev32.i.i) #8
  %init_name.i.i115.i.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i115.i.i, align 8
  %tobool.not.i.i116.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i116.i.i, label %if.end.i.i118.i.i, label %if.then.i117.i.i.dev_name.exit.i120.i.i_crit_edge

if.then.i117.i.i.dev_name.exit.i120.i.i_crit_edge: ; preds = %if.then.i117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i120.i.i

if.end.i.i118.i.i:                                ; preds = %if.then.i117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev32.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev32.i.i, align 4
  br label %dev_name.exit.i120.i.i

dev_name.exit.i120.i.i:                           ; preds = %if.end.i.i118.i.i, %if.then.i117.i.i.dev_name.exit.i120.i.i_crit_edge
  %retval.0.i.i119.i.i = phi ptr [ %68, %if.end.i.i118.i.i ], [ %66, %if.then.i117.i.i.dev_name.exit.i120.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i114.i.i, ptr noundef %retval.0.i.i119.i.i) #8
  br label %dma_map_single_attrs.exit128.i.i

if.end39.i126.i.i:                                ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev32.i.i, ptr noundef %sglist33.i.i, i32 noundef 256) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %sglist33.i.i to i32
  %sub.i121.i.i = add i32 %70, 1073741824
  %shr.i122.i.i = lshr i32 %sub.i121.i.i, 12
  %add.ptr.i123.i.i = getelementptr %struct.page, ptr %69, i32 %shr.i122.i.i
  %and.i124.i.i = and i32 %70, 4095
  %call41.i125.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev32.i.i, ptr noundef %add.ptr.i123.i.i, i32 noundef %and.i124.i.i, i32 noundef 256, i32 noundef 0, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit128.i.i

dma_map_single_attrs.exit128.i.i:                 ; preds = %if.end39.i126.i.i, %dev_name.exit.i120.i.i, %land.rhs.i113.i.i.dma_map_single_attrs.exit128.i.i_crit_edge
  %retval.0.i127.i.i = phi i32 [ %call41.i125.i.i, %if.end39.i126.i.i ], [ -1, %dev_name.exit.i120.i.i ], [ -1, %land.rhs.i113.i.i.dma_map_single_attrs.exit128.i.i_crit_edge ]
  %bufptr.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 15
  %71 = ptrtoint ptr %bufptr.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i127.i.i, ptr %bufptr.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 4
  %72 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i127.i.i, ptr %dma_handle.i.i, align 4
  %conv36.i.i = trunc i32 %call17.i.i to i8
  %sglen.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 17
  %73 = ptrtoint ptr %sglen.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv36.i.i, ptr %sglen.i.i, align 4
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags.i.i, align 1
  %76 = or i8 %75, -128
  store i8 %76, ptr %flags.i.i, align 1
  %conv45130.i.i = and i32 %call17.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv45130.i.i)
  %cmp46131.not.i.i = icmp eq i32 %conv45130.i.i, 0
  br i1 %cmp46131.not.i.i, label %dma_map_single_attrs.exit128.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

dma_map_single_attrs.exit128.i.i.for.end.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %dma_map_single_attrs.exit128.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %77 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %total_len.0135.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.0134.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sg.0133.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sglist33.i.i, %for.body.preheader.i.i ]
  %sglist.0132.i.i = phi ptr [ %call49.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %78, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sglist.0132.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_address.i.i, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  %82 = ptrtoint ptr %sg.0133.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %sg.0133.i.i, align 4
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sglist.0132.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_length.i.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  %len.i.i = getelementptr inbounds %struct.sg_entry, ptr %sg.0133.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %len.i.i, align 4
  %87 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_length.i.i, align 4
  %add.i.i = add i32 %88, %total_len.0135.i.i
  %incdec.ptr.i.i = getelementptr %struct.sg_entry, ptr %sg.0133.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.0134.i.i, 1
  %call49.i.i = tail call ptr @sg_next(ptr noundef %sglist.0132.i.i) #8
  %89 = ptrtoint ptr %sglen.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %sglen.i.i, align 4
  %conv45.i.i = zext i8 %90 to i32
  %cmp46.i.i = icmp ult i32 %inc.i.i, %conv45.i.i
  br i1 %cmp46.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %dma_map_single_attrs.exit128.i.i.for.end.i.i_crit_edge
  %total_len.0.lcssa.i.i = phi i32 [ 0, %dma_map_single_attrs.exit128.i.i.for.end.i.i_crit_edge ], [ %add.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %91 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length.i.i.i, align 4
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 %total_len.0.lcssa.i.i) #8
  %buflen.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 16
  %94 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %buflen.i.i, align 4
  br label %initio_build_scb.exit.i

if.else54.i.i:                                    ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %buflen55.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 16
  %95 = ptrtoint ptr %buflen55.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %buflen55.i.i, align 4
  %sglen56.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 17
  %96 = ptrtoint ptr %sglen56.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %sglen56.i.i, align 4
  br label %initio_build_scb.exit.i

initio_build_scb.exit.i:                          ; preds = %if.else54.i.i, %for.end.i.i
  %mode.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 3
  %97 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %mode.i.i, align 2
  %sgidx.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 5
  %98 = ptrtoint ptr %sgidx.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %sgidx.i.i, align 4
  %sglen.i8.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 17
  %99 = ptrtoint ptr %sglen.i8.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sglen.i8.i, align 4
  %conv.i9.i = zext i8 %100 to i16
  %sgmax.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %7, i32 0, i32 6
  %101 = ptrtoint ptr %sgmax.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i9.i, ptr %sgmax.i.i, align 2
  %semaph_lock.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %semaph_lock.i.i) #8
  %102 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %status.i.i, align 4
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %7, align 4
  %last_pending.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 4
  %104 = ptrtoint ptr %last_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %last_pending.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %105, null
  %first_pending.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 3, i32 0, i32 0, i32 4, i32 7
  %first_pending.sink.i.i.i = select i1 %cmp.not.i.i.i, ptr %first_pending.i.i.i, ptr %105
  %106 = ptrtoint ptr %first_pending.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %7, ptr %first_pending.sink.i.i.i, align 4
  store ptr %7, ptr %last_pending.i.i.i, align 4
  %semaph.i.i = getelementptr inbounds %struct.initio_host, ptr %hostdata.i, i32 0, i32 11
  %107 = ptrtoint ptr %semaph.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %semaph.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp7.i.i = icmp eq i8 %108, 1
  br i1 %cmp7.i.i, label %do.body9.i.i, label %initio_build_scb.exit.i.initio_exec_scb.exit.i_crit_edge

initio_build_scb.exit.i.initio_exec_scb.exit.i_crit_edge: ; preds = %initio_build_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_exec_scb.exit.i

do.body9.i.i:                                     ; preds = %initio_build_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %hostdata.i, align 4
  %conv12.i.i = zext i16 %110 to i32
  %add13.i.i = add nuw nsw i32 %conv12.i.i, -18874144
  %111 = inttoptr i32 %add13.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 31) #8, !srcloc !107
  %112 = ptrtoint ptr %semaph.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %semaph.i.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %semaph_lock.i.i, i32 noundef %call3.i.i) #8
  tail call fastcc void @tulip_main(ptr noundef %hostdata.i) #8
  %call27.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %semaph_lock.i.i) #8
  %113 = ptrtoint ptr %semaph.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %semaph.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %hostdata.i, align 4
  %conv37.i.i = zext i16 %115 to i32
  %add40.i.i = add nuw nsw i32 %conv37.i.i, -18874144
  %116 = inttoptr i32 %add40.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 15) #8, !srcloc !107
  br label %initio_exec_scb.exit.i

initio_exec_scb.exit.i:                           ; preds = %do.body9.i.i, %initio_build_scb.exit.i.initio_exec_scb.exit.i_crit_edge
  %flags.0.i.i = phi i32 [ %call27.i.i, %do.body9.i.i ], [ %call3.i.i, %initio_build_scb.exit.i.initio_exec_scb.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %semaph_lock.i.i, i32 noundef %flags.0.i.i) #8
  br label %i91u_queuecommand_lck.exit

i91u_queuecommand_lck.exit:                       ; preds = %initio_exec_scb.exit.i, %initio_alloc_scb.exit.thread.i
  %retval.0.i = phi i32 [ 0, %initio_exec_scb.exit.i ], [ 4181, %initio_alloc_scb.exit.thread.i ]
  %117 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %118, i32 noundef %call2) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i91u_bus_reset(ptr nocapture noundef readonly %cmnd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmnd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #8
  tail call fastcc void @initio_reset_scsi(ptr noundef %hostdata, i32 noundef 0)
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_lock6 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock6, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #8
  ret i32 8194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i91u_biosparam(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readnone %dev, i64 noundef %capacity, ptr nocapture noundef writeonly %info_array) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %targets = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 2
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %heads = getelementptr [16 x %struct.target_control], ptr %targets, i32 0, i32 %3, i32 4
  %4 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %heads, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %info_array, align 4
  %sectors = getelementptr [16 x %struct.target_control], ptr %targets, i32 0, i32 %3, i32 5
  %7 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sectors, align 1
  %conv4 = zext i8 %8 to i32
  %arrayidx5 = getelementptr i32, ptr %info_array, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %arrayidx5, align 4
  %conv6 = trunc i64 %capacity to i32
  %10 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %heads, align 2
  %conv8 = zext i8 %11 to i32
  %div = udiv i32 %conv6, %conv8
  %12 = load i8, ptr %sectors, align 1
  %conv10 = zext i8 %12 to i32
  %div11 = udiv i32 %div, %conv10
  br label %if.end27

if.else:                                          ; preds = %entry
  %drv_flags = getelementptr [16 x %struct.target_control], ptr %targets, i32 0, i32 %3, i32 3
  %13 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %drv_flags, align 2
  %15 = and i16 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool14.not = icmp eq i16 %15, 0
  br i1 %tobool14.not, label %if.else22, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %info_array, align 4
  %arrayidx17 = getelementptr i32, ptr %info_array, i32 1
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 63, ptr %arrayidx17, align 4
  %conv18 = trunc i64 %capacity to i32
  %div20 = udiv i32 %conv18, 16065
  br label %if.end27

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %info_array to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %info_array, align 4
  %arrayidx24 = getelementptr i32, ptr %info_array, i32 1
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %arrayidx24, align 4
  %conv25 = trunc i64 %capacity to i32
  %shr = lshr i32 %conv25, 11
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then15, %if.then
  %div20.sink = phi i32 [ %div20, %if.then15 ], [ %shr, %if.else22 ], [ %div11, %if.then ]
  %arrayidx21 = getelementptr i32, ptr %info_array, i32 2
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div20.sink, ptr %arrayidx21, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i91uSCBPost(ptr noundef %host_mem, ptr noundef %cblk_mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %srb = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %cblk_mem, i32 0, i32 29
  %0 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srb, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2741, i32 noundef 9, ptr noundef null) #8
  %avail_lock.i = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 36
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %avail_lock.i) #8
  %2 = ptrtoint ptr %srb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %srb, align 4
  %status.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %cblk_mem, i32 0, i32 1
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %status.i, align 4
  %4 = ptrtoint ptr %cblk_mem to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cblk_mem, align 4
  %last_avail.i = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 26
  %5 = ptrtoint ptr %last_avail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last_avail.i, align 4
  %cmp5.not.i = icmp eq ptr %6, null
  %first_avail.i = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 25
  %first_avail.sink.i = select i1 %cmp5.not.i, ptr %first_avail.i, ptr %6
  %7 = ptrtoint ptr %first_avail.sink.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cblk_mem, ptr %first_avail.sink.i, align 4
  store ptr %cblk_mem, ptr %last_avail.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %avail_lock.i, i32 noundef %call2.i) #8
  br label %cleanup

if.end20:                                         ; preds = %entry
  %hastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %cblk_mem, i32 0, i32 19
  %8 = ptrtoint ptr %hastat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hastat, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.end31 [
    i8 0, label %if.end20.sw.epilog_crit_edge
    i8 10, label %if.end20.sw.epilog_crit_edge69
    i8 11, label %if.end20.sw.epilog_crit_edge70
    i8 17, label %sw.bb22
    i8 20, label %sw.bb24
    i8 26, label %sw.bb26
  ]

if.end20.sw.epilog_crit_edge70:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end20.sw.epilog_crit_edge69:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %9 to i32
  %tastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %cblk_mem, i32 0, i32 20
  %11 = ptrtoint ptr %tastat to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tastat, align 1
  %conv35 = zext i8 %12 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv35) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %sw.bb26, %sw.bb24, %sw.bb22, %if.end20.sw.epilog_crit_edge, %if.end20.sw.epilog_crit_edge69, %if.end20.sw.epilog_crit_edge70
  %.sink = phi i8 [ 7, %do.end31 ], [ 5, %sw.bb26 ], [ 8, %sw.bb24 ], [ 3, %sw.bb22 ], [ 0, %if.end20.sw.epilog_crit_edge ], [ 0, %if.end20.sw.epilog_crit_edge69 ], [ 0, %if.end20.sw.epilog_crit_edge70 ]
  %13 = ptrtoint ptr %hastat to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %hastat, align 2
  %tastat38 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %cblk_mem, i32 0, i32 20
  %14 = ptrtoint ptr %tastat38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tastat38, align 1
  %conv39 = zext i8 %15 to i32
  %conv41 = zext i8 %.sink to i32
  %shl = shl nuw nsw i32 %conv41, 16
  %or = or i32 %shl, %conv39
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %result, align 4
  %pci_dev = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 38
  %17 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %SCp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %SCp.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %21 = ptrtoint ptr %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef 14, i32 noundef 2, i32 noundef 0) #8
  %22 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %SCp.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %23 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.i = icmp eq i32 %24, 0
  br i1 %tobool5.not.i, label %if.end.i.i91u_unmap_scb.exit_crit_edge, label %if.then6.i

if.end.i.i91u_unmap_scb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i91u_unmap_scb.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %dma_handle.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 4
  %25 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev7.i, i32 noundef %26, i32 noundef 256, i32 noundef 0, i32 noundef 0) #8
  tail call void @scsi_dma_unmap(ptr noundef nonnull %1) #8
  br label %i91u_unmap_scb.exit

i91u_unmap_scb.exit:                              ; preds = %if.then6.i, %if.end.i.i91u_unmap_scb.exit_crit_edge
  tail call void @scsi_done(ptr noundef nonnull %1) #8
  %avail_lock.i61 = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 36
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %avail_lock.i61) #8
  %27 = ptrtoint ptr %srb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %srb, align 4
  %status.i64 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %cblk_mem, i32 0, i32 1
  %28 = ptrtoint ptr %status.i64 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %status.i64, align 4
  %29 = ptrtoint ptr %cblk_mem to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cblk_mem, align 4
  %last_avail.i65 = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 26
  %30 = ptrtoint ptr %last_avail.i65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %last_avail.i65, align 4
  %cmp5.not.i66 = icmp eq ptr %31, null
  %first_avail.i67 = getelementptr inbounds %struct.initio_host, ptr %host_mem, i32 0, i32 25
  %first_avail.sink.i68 = select i1 %cmp5.not.i66, ptr %first_avail.i67, ptr %31
  %32 = ptrtoint ptr %first_avail.sink.i68 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cblk_mem, ptr %first_avail.sink.i68, align 4
  store ptr %cblk_mem, ptr %last_avail.i65, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %avail_lock.i61, i32 noundef %call2.i62) #8
  br label %cleanup

cleanup:                                          ; preds = %i91u_unmap_scb.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_main(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jsstatus0.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %phase.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %jsstatus1.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 15
  %jsint.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 14
  %active.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %first_pending.i134 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 27
  %scsi_id.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 3
  %semaph_lock.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 37
  %semaph.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 11
  %last_pending66.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 28
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %last_busy118.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %avail_lock.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 36
  %last_avail.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 26
  %first_avail.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 25
  %active_tc.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %last_done.i23 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %first_done.i25 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv.i = zext i16 %1 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874235
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %4 = ptrtoint ptr %jsstatus0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %jsstatus0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not.i = icmp sgt i8 %3, -1
  br i1 %tobool.not.i, label %for.cond.if.end69.i_crit_edge, label %if.then.i

for.cond.if.end69.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then.i:                                        ; preds = %for.cond
  %and7.i = and i8 %3, 7
  %5 = ptrtoint ptr %phase.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and7.i, ptr %phase.i, align 1
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %host, align 4
  %conv11.i = zext i16 %7 to i32
  %add14.i = add nuw nsw i32 %conv11.i, -18874234
  %8 = inttoptr i32 %add14.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %10 = ptrtoint ptr %jsstatus1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %jsstatus1.i, align 2
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %host, align 4
  %conv20.i = zext i16 %12 to i32
  %add23.i = add nuw nsw i32 %conv20.i, -18874236
  %13 = inttoptr i32 %add23.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %15 = ptrtoint ptr %jsint.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %jsint.i, align 1
  %conv28.i = zext i8 %14 to i32
  %and29.i = and i32 %conv28.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_scsi_rst(ptr noundef %host) #8
  br label %tulip_scsi.exit

if.end.i:                                         ; preds = %if.then.i
  %and35.i = and i32 %conv28.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end43.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end.i
  %call38.i = tail call fastcc i32 @int_initio_resel(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp.i = icmp eq i32 %call38.i, 0
  br i1 %cmp.i, label %if.then40.i, label %if.then37.i.tulip_scsi.exit_crit_edge

if.then37.i.tulip_scsi.exit_crit_edge:            ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

if.then40.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = tail call fastcc i32 @initio_next_state(ptr noundef %host) #8
  br label %tulip_scsi.exit

if.end43.i:                                       ; preds = %if.end.i
  %and46.i = and i32 %conv28.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end50.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_busfree(ptr noundef %host) #8
  br label %tulip_scsi.exit

if.end50.i:                                       ; preds = %if.end43.i
  %and53.i = and i32 %conv28.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end57.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_busfree(ptr noundef %host) #8
  br label %tulip_scsi.exit

if.end57.i:                                       ; preds = %if.end50.i
  %and60.i = and i32 %conv28.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end57.i.if.end69.i_crit_edge, label %if.then62.i

if.end57.i.if.end69.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then62.i:                                      ; preds = %if.end57.i
  %16 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active.i, align 4
  %cmp63.not.i = icmp eq ptr %17, null
  br i1 %cmp63.not.i, label %if.then62.i.tulip_scsi.exit_crit_edge, label %if.then65.i

if.then62.i.tulip_scsi.exit_crit_edge:            ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

if.then65.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %call66.i = tail call fastcc i32 @initio_next_state(ptr noundef %host) #8
  br label %tulip_scsi.exit

if.end69.i:                                       ; preds = %if.end57.i.if.end69.i_crit_edge, %for.cond.if.end69.i_crit_edge
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active.i, align 4
  %cmp71.not.i = icmp eq ptr %19, null
  br i1 %cmp71.not.i, label %if.end74.i, label %if.end69.i.tulip_scsi.exit_crit_edge

if.end69.i.tulip_scsi.exit_crit_edge:             ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

if.end74.i:                                       ; preds = %if.end69.i
  %20 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_load4_noabort(i32 %20)
  %first.057.i135 = load ptr, ptr %first_pending.i134, align 4
  %cmp.not58.i136 = icmp eq ptr %first.057.i135, null
  br i1 %cmp.not58.i136, label %if.end74.i.tulip_scsi.exit_crit_edge, label %if.end74.i.while.body.i140_crit_edge

if.end74.i.while.body.i140_crit_edge:             ; preds = %if.end74.i
  br label %while.body.i140

if.end74.i.tulip_scsi.exit_crit_edge:             ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

while.body.i140:                                  ; preds = %while.cond.backedge.i162.while.body.i140_crit_edge, %if.end74.i.while.body.i140_crit_edge
  %first.059.i137 = phi ptr [ %first.0.i160, %while.cond.backedge.i162.while.body.i140_crit_edge ], [ %first.057.i135, %if.end74.i.while.body.i140_crit_edge ]
  %opcode.i138 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 11
  %21 = ptrtoint ptr %opcode.i138 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %opcode.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp1.not.i139 = icmp eq i8 %22, 1
  br i1 %cmp1.not.i139, label %if.end.i146, label %while.body.i140.do.body.i_crit_edge

while.body.i140.do.body.i_crit_edge:              ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i146:                                      ; preds = %while.body.i140
  %tagmsg.i141 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 23
  %23 = ptrtoint ptr %tagmsg.i141 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tagmsg.i141, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp4.i142 = icmp eq i8 %24, 0
  %target.i143 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 13
  %25 = ptrtoint ptr %target.i143 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %target.i143, align 2
  %idxprom.i144 = zext i8 %26 to i32
  %arrayidx.i145 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom.i144
  %27 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i145, align 1
  br i1 %cmp4.i142, label %if.then6.i148, label %if.else.i159

if.then6.i148:                                    ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp8.i147 = icmp eq i8 %28, 0
  br i1 %cmp8.i147, label %land.lhs.true.i151, label %if.then6.i148.while.cond.backedge.i162_crit_edge

if.then6.i148.while.cond.backedge.i162_crit_edge: ; preds = %if.then6.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i162

land.lhs.true.i151:                               ; preds = %if.then6.i148
  %arrayidx12.i149 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i144
  %29 = ptrtoint ptr %arrayidx12.i149 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx12.i149, align 4
  %31 = and i16 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i150 = icmp eq i16 %31, 0
  br i1 %tobool.not.i150, label %land.lhs.true.i151.do.body.i_crit_edge, label %land.lhs.true.i151.while.cond.backedge.i162_crit_edge

land.lhs.true.i151.while.cond.backedge.i162_crit_edge: ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i162

land.lhs.true.i151.do.body.i_crit_edge:           ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.else.i159:                                     ; preds = %if.end.i146
  %arrayidx23.i152 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 33, i32 %idxprom.i144
  %32 = ptrtoint ptr %arrayidx23.i152 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23.i152, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %33)
  %cmp25.i153 = icmp uge i8 %28, %33
  %conv26.i154 = zext i1 %cmp25.i153 to i32
  %arrayidx30.i155 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i144
  %34 = ptrtoint ptr %arrayidx30.i155 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx30.i155, align 4
  %36 = and i16 %35, 1024
  %and33.i156 = zext i16 %36 to i32
  %or.i157 = or i32 %and33.i156, %conv26.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i157)
  %tobool34.not.i158 = icmp eq i32 %or.i157, 0
  br i1 %tobool34.not.i158, label %if.else.i159.do.body.i_crit_edge, label %if.else.i159.while.cond.backedge.i162_crit_edge

if.else.i159.while.cond.backedge.i162_crit_edge:  ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i162

if.else.i159.do.body.i_crit_edge:                 ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

while.cond.backedge.i162:                         ; preds = %if.else.i159.while.cond.backedge.i162_crit_edge, %land.lhs.true.i151.while.cond.backedge.i162_crit_edge, %if.then6.i148.while.cond.backedge.i162_crit_edge
  %37 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_load4_noabort(i32 %37)
  %first.0.i160 = load ptr, ptr %first.059.i137, align 4
  %cmp.not.i161 = icmp eq ptr %first.0.i160, null
  br i1 %cmp.not.i161, label %while.cond.backedge.i162.tulip_scsi.exit_crit_edge, label %while.cond.backedge.i162.while.body.i140_crit_edge

while.cond.backedge.i162.while.body.i140_crit_edge: ; preds = %while.cond.backedge.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i140

while.cond.backedge.i162.tulip_scsi.exit_crit_edge: ; preds = %while.cond.backedge.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

do.body.i:                                        ; preds = %if.else.i159.do.body.i_crit_edge, %land.lhs.true.i151.do.body.i_crit_edge, %while.body.i140.do.body.i_crit_edge
  %opcode.i138.le = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %scsi_id.i, align 1
  %shl.i = shl i8 %39, 4
  %target.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 13
  %40 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %target.i, align 2
  %42 = and i8 %41, 15
  %or.i = or i8 %42, %shl.i
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %host, align 4
  %conv85.i = zext i16 %44 to i32
  %add88.i = add nuw nsw i32 %conv85.i, -18874231
  %45 = inttoptr i32 %add88.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %or.i) #8, !srcloc !107
  %46 = ptrtoint ptr %opcode.i138.le to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %opcode.i138.le, align 4
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %47, label %if.else185.i [
    i8 1, label %if.then93.i
    i8 2, label %if.then153.i
    i8 3, label %if.then176.i
  ]

if.then93.i:                                      ; preds = %do.body.i
  %49 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %target.i, align 2
  %idxprom.i = zext i8 %50 to i32
  %arrayidx.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i
  %tagmsg.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 23
  %51 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool95.not.i = icmp eq i8 %52, 0
  %drv_flags100.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i, i32 3
  %53 = ptrtoint ptr %drv_flags100.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %drv_flags100.i, align 2
  %55 = and i16 %54, -2049
  %masksel = select i1 %tobool95.not.i, i16 0, i16 2048
  %.sink = or i16 %55, %masksel
  store i16 %.sink, ptr %drv_flags100.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %js_period.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i, i32 1
  %56 = ptrtoint ptr %js_period.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %js_period.i, align 2
  %58 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %host, align 4
  %conv109.i = zext i16 %59 to i32
  %add112.i = add nuw nsw i32 %conv109.i, -18874232
  %60 = inttoptr i32 %add112.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %57) #8, !srcloc !107
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i, align 2
  %conv114.i = zext i16 %62 to i32
  %and115.i = and i32 %conv114.i, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %cmp116.i = icmp eq i32 %and115.i, 0
  br i1 %cmp116.i, label %if.then118.i, label %if.else119.i

if.then118.i:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i125 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %63 = ptrtoint ptr %status.i125 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %status.i125, align 4
  %65 = or i8 %64, 8
  store i8 %65, ptr %status.i125, align 4
  %next_state.i126 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 2
  %66 = ptrtoint ptr %next_state.i126 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %next_state.i126, align 1
  %67 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %first.059.i137, ptr %active.i, align 4
  %68 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %target.i, align 2
  %idxprom.i129 = zext i8 %69 to i32
  %arrayidx.i130 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i129
  %70 = ptrtoint ptr %active_tc.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx.i130, ptr %active_tc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %host, align 4
  %conv2.i132 = zext i16 %72 to i32
  %add3.i133 = add nuw nsw i32 %conv2.i132, -18874223
  %73 = inttoptr i32 %add3.i133 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 30) #8, !srcloc !107
  br label %if.end133.i

if.else119.i:                                     ; preds = %if.then93.i
  %and122.i = and i32 %conv114.i, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %cmp123.i = icmp eq i32 %and122.i, 0
  br i1 %cmp123.i, label %if.then125.i, label %if.else126.i

if.then125.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i116 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %74 = ptrtoint ptr %status.i116 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %status.i116, align 4
  %76 = or i8 %75, 8
  store i8 %76, ptr %status.i116, align 4
  %next_state.i117 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 2
  %77 = ptrtoint ptr %next_state.i117 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %next_state.i117, align 1
  %78 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %first.059.i137, ptr %active.i, align 4
  %79 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %target.i, align 2
  %idxprom.i120 = zext i8 %80 to i32
  %arrayidx.i121 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i120
  %81 = ptrtoint ptr %active_tc.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx.i121, ptr %active_tc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %host, align 4
  %conv2.i123 = zext i16 %83 to i32
  %add3.i124 = add nuw nsw i32 %conv2.i123, -18874223
  %84 = inttoptr i32 %add3.i124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 30) #8, !srcloc !107
  br label %if.end133.i

if.else126.i:                                     ; preds = %if.else119.i
  %85 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool128.not.i = icmp eq i8 %86, 0
  %status.i87 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %87 = ptrtoint ptr %status.i87 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %status.i87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %status.i87, align 4
  %next_state.i88 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 2
  %90 = ptrtoint ptr %next_state.i88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %next_state.i88, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %ident.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 22
  %91 = ptrtoint ptr %ident.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ident.i, align 1
  %93 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %host, align 4
  %conv2.i89 = zext i16 %94 to i32
  %add3.i90 = add nuw nsw i32 %conv2.i89, -18874228
  %95 = inttoptr i32 %add3.i90 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %92) #8
  br i1 %tobool128.not.i, label %if.else130.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.else126.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tagmsg.i, align 2
  %98 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %host, align 4
  %conv8.i = zext i16 %99 to i32
  %add11.i = add nuw nsw i32 %conv8.i, -18874228
  %100 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 %97) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %tagid.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 24
  %101 = ptrtoint ptr %tagid.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %tagid.i, align 1
  %103 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %host, align 4
  %conv17.i = zext i16 %104 to i32
  %add20.i = add nuw nsw i32 %conv17.i, -18874228
  %105 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 %102) #8, !srcloc !107
  %cdblen.i105 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 21
  %106 = ptrtoint ptr %cdblen.i105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %cdblen.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp61.not.i = icmp eq i8 %107, 0
  br i1 %cmp61.not.i, label %if.then129.i.initio_select_atn3.exit_crit_edge, label %if.then129.i.do.body24.i_crit_edge

if.then129.i.do.body24.i_crit_edge:               ; preds = %if.then129.i
  br label %do.body24.i

if.then129.i.initio_select_atn3.exit_crit_edge:   ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_select_atn3.exit

do.body24.i:                                      ; preds = %do.body24.i.do.body24.i_crit_edge, %if.then129.i.do.body24.i_crit_edge
  %i.062.i = phi i32 [ %inc.i108, %do.body24.i.do.body24.i_crit_edge ], [ 0, %if.then129.i.do.body24.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %arrayidx.i106 = getelementptr %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 25, i32 %i.062.i
  %108 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i106, align 1
  %110 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %host, align 4
  %conv28.i107 = zext i16 %111 to i32
  %add31.i = add nuw nsw i32 %conv28.i107, -18874228
  %112 = inttoptr i32 %add31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %109) #8, !srcloc !107
  %inc.i108 = add nuw nsw i32 %i.062.i, 1
  %113 = ptrtoint ptr %cdblen.i105 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cdblen.i105, align 4
  %conv22.i = zext i8 %114 to i32
  %cmp.i109 = icmp ult i32 %inc.i108, %conv22.i
  br i1 %cmp.i109, label %do.body24.i.do.body24.i_crit_edge, label %do.body24.i.initio_select_atn3.exit_crit_edge

do.body24.i.initio_select_atn3.exit_crit_edge:    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_select_atn3.exit

do.body24.i.do.body24.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24.i

initio_select_atn3.exit:                          ; preds = %do.body24.i.initio_select_atn3.exit_crit_edge, %if.then129.i.initio_select_atn3.exit_crit_edge
  %115 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %target.i, align 2
  %idxprom.i111 = zext i8 %116 to i32
  %arrayidx33.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i111
  %117 = ptrtoint ptr %active_tc.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx33.i, ptr %active_tc.i, align 4
  %118 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %first.059.i137, ptr %active.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %host, align 4
  %conv38.i114 = zext i16 %120 to i32
  %add41.i115 = add nuw nsw i32 %conv38.i114, -18874223
  %121 = inttoptr i32 %add41.i115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 49) #8, !srcloc !107
  br label %if.end133.i

if.else130.i:                                     ; preds = %if.else126.i
  %cdblen.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 21
  %122 = ptrtoint ptr %cdblen.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %cdblen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp39.not.i = icmp eq i8 %123, 0
  br i1 %cmp39.not.i, label %if.else130.i.initio_select_atn.exit_crit_edge, label %if.else130.i.do.body6.i_crit_edge

if.else130.i.do.body6.i_crit_edge:                ; preds = %if.else130.i
  br label %do.body6.i

if.else130.i.initio_select_atn.exit_crit_edge:    ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_select_atn.exit

do.body6.i:                                       ; preds = %do.body6.i.do.body6.i_crit_edge, %if.else130.i.do.body6.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %do.body6.i.do.body6.i_crit_edge ], [ 0, %if.else130.i.do.body6.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %arrayidx.i91 = getelementptr %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 25, i32 %i.040.i
  %124 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i91, align 1
  %126 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %host, align 4
  %conv10.i = zext i16 %127 to i32
  %add13.i = add nuw nsw i32 %conv10.i, -18874228
  %128 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 %125) #8, !srcloc !107
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %129 = ptrtoint ptr %cdblen.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %cdblen.i, align 4
  %conv4.i = zext i8 %130 to i32
  %cmp.i92 = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp.i92, label %do.body6.i.do.body6.i_crit_edge, label %do.body6.i.initio_select_atn.exit_crit_edge

do.body6.i.initio_select_atn.exit_crit_edge:      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_select_atn.exit

do.body6.i.do.body6.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i

initio_select_atn.exit:                           ; preds = %do.body6.i.initio_select_atn.exit_crit_edge, %if.else130.i.initio_select_atn.exit_crit_edge
  %131 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %target.i, align 2
  %idxprom.i94 = zext i8 %132 to i32
  %arrayidx15.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i94
  %133 = ptrtoint ptr %active_tc.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx15.i, ptr %active_tc.i, align 4
  %134 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %first.059.i137, ptr %active.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %host, align 4
  %conv20.i97 = zext i16 %136 to i32
  %add23.i98 = add nuw nsw i32 %conv20.i97, -18874223
  %137 = inttoptr i32 %add23.i98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 17) #8, !srcloc !107
  br label %if.end133.i

if.end133.i:                                      ; preds = %initio_select_atn.exit, %initio_select_atn3.exit, %if.then125.i, %if.then118.i
  %flags134.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 12
  %138 = ptrtoint ptr %flags134.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %flags134.i, align 1
  %140 = and i8 %139, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool137.not.i = icmp eq i8 %140, 0
  br i1 %tobool137.not.i, label %if.end133.i.tulip_scsi.exit_crit_edge, label %if.end133.i.while.cond.i_crit_edge

if.end133.i.while.cond.i_crit_edge:               ; preds = %if.end133.i
  br label %while.cond.i

if.end133.i.tulip_scsi.exit_crit_edge:            ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end133.i.while.cond.i_crit_edge
  %call139.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call139.i)
  %cmp140.not.i = icmp eq i32 %call139.i, -1
  br i1 %cmp140.not.i, label %while.cond.i.tulip_scsi.exit_crit_edge, label %while.body.i

while.cond.i.tulip_scsi.exit_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

while.body.i:                                     ; preds = %while.cond.i
  %call142.i = tail call fastcc i32 @initio_next_state(ptr noundef %host) #8
  %cmp143.i = icmp eq i32 %call142.i, -1
  br i1 %cmp143.i, label %while.body.i.tulip_scsi.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.tulip_scsi.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

if.then153.i:                                     ; preds = %do.body.i
  %status.i78 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %141 = ptrtoint ptr %status.i78 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %status.i78, align 4
  %143 = or i8 %142, 8
  store i8 %143, ptr %status.i78, align 4
  %next_state.i79 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 2
  %144 = ptrtoint ptr %next_state.i79 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %next_state.i79, align 1
  %145 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %first.059.i137, ptr %active.i, align 4
  %146 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %target.i, align 2
  %idxprom.i82 = zext i8 %147 to i32
  %arrayidx.i83 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i82
  %148 = ptrtoint ptr %active_tc.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %arrayidx.i83, ptr %active_tc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %149 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %host, align 4
  %conv2.i85 = zext i16 %150 to i32
  %add3.i86 = add nuw nsw i32 %conv2.i85, -18874223
  %151 = inttoptr i32 %add3.i86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 30) #8, !srcloc !107
  %152 = ptrtoint ptr %next_state.i79 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 8, ptr %next_state.i79, align 1
  %flags154.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 12
  %153 = ptrtoint ptr %flags154.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %flags154.i, align 1
  %155 = and i8 %154, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool157.not.i = icmp eq i8 %155, 0
  br i1 %tobool157.not.i, label %if.then153.i.tulip_scsi.exit_crit_edge, label %if.then153.i.while.cond159.i_crit_edge

if.then153.i.while.cond159.i_crit_edge:           ; preds = %if.then153.i
  br label %while.cond159.i

if.then153.i.tulip_scsi.exit_crit_edge:           ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

while.cond159.i:                                  ; preds = %while.body163.i.while.cond159.i_crit_edge, %if.then153.i.while.cond159.i_crit_edge
  %call160.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call160.i)
  %cmp161.not.i = icmp eq i32 %call160.i, -1
  br i1 %cmp161.not.i, label %while.cond159.i.tulip_scsi.exit_crit_edge, label %while.body163.i

while.cond159.i.tulip_scsi.exit_crit_edge:        ; preds = %while.cond159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

while.body163.i:                                  ; preds = %while.cond159.i
  %call164.i = tail call fastcc i32 @initio_next_state(ptr noundef %host) #8
  %cmp165.i = icmp eq i32 %call164.i, -1
  br i1 %cmp165.i, label %while.body163.i.tulip_scsi.exit_crit_edge, label %while.body163.i.while.cond159.i_crit_edge

while.body163.i.while.cond159.i_crit_edge:        ; preds = %while.body163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond159.i

while.body163.i.tulip_scsi.exit_crit_edge:        ; preds = %while.body163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tulip_scsi.exit

if.then176.i:                                     ; preds = %do.body.i
  %srb.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 29
  %156 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %srb.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %semaph_lock.i) #8
  %158 = ptrtoint ptr %semaph.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %semaph.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp7.i = icmp eq i8 %159, 0
  br i1 %cmp7.i, label %land.lhs.true.i62, label %if.then176.i.if.end.i64_crit_edge

if.then176.i.if.end.i64_crit_edge:                ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i64

land.lhs.true.i62:                                ; preds = %if.then176.i
  %160 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %active.i, align 4
  %cmp9.i = icmp eq ptr %161, null
  br i1 %cmp9.i, label %if.else181.i, label %land.lhs.true.i62.if.end.i64_crit_edge

land.lhs.true.i62.if.end.i64_crit_edge:           ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i64

if.end.i64:                                       ; preds = %land.lhs.true.i62.if.end.i64_crit_edge, %if.then176.i.if.end.i64_crit_edge
  %162 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %first_pending.i134, align 4
  %cmp44.not.i189 = icmp eq ptr %163, null
  br i1 %cmp44.not.i189, label %if.end.i64.while.end.i_crit_edge, label %while.body.i67.preheader

if.end.i64.while.end.i_crit_edge:                 ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i67.preheader:                         ; preds = %if.end.i64
  %srb.i66264 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %163, i32 0, i32 29
  %164 = ptrtoint ptr %srb.i66264 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %srb.i66264, align 4
  %cmp46.i265 = icmp eq ptr %165, %157
  br i1 %cmp46.i265, label %while.body.i67.preheader.if.then48.i68_crit_edge, label %while.body.i67.preheader.if.end83.i_crit_edge

while.body.i67.preheader.if.end83.i_crit_edge:    ; preds = %while.body.i67.preheader
  br label %if.end83.i

while.body.i67.preheader.if.then48.i68_crit_edge: ; preds = %while.body.i67.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i68

while.body.i67:                                   ; preds = %if.end83.i
  %srb.i66 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %185, i32 0, i32 29
  %166 = ptrtoint ptr %srb.i66 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %srb.i66, align 4
  %cmp46.i = icmp eq ptr %167, %157
  br i1 %cmp46.i, label %while.body.i67.if.then48.i68_crit_edge, label %while.body.i67.if.end83.i_crit_edge

while.body.i67.if.end83.i_crit_edge:              ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

while.body.i67.if.then48.i68_crit_edge:           ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i68

if.then48.i68:                                    ; preds = %while.body.i67.if.then48.i68_crit_edge, %while.body.i67.preheader.if.then48.i68_crit_edge
  %prev.0.i191.lcssa = phi ptr [ %163, %while.body.i67.preheader.if.then48.i68_crit_edge ], [ %tmp.0.i190266, %while.body.i67.if.then48.i68_crit_edge ]
  %tmp.0.i190.lcssa = phi ptr [ %163, %while.body.i67.preheader.if.then48.i68_crit_edge ], [ %185, %while.body.i67.if.then48.i68_crit_edge ]
  %168 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %active.i, align 4
  %cmp50.i = icmp eq ptr %tmp.0.i190.lcssa, %169
  br i1 %cmp50.i, label %if.then48.i68.if.then180.i_crit_edge, label %if.else.i69

if.then48.i68.if.then180.i_crit_edge:             ; preds = %if.then48.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

if.else.i69:                                      ; preds = %if.then48.i68
  %cmp55.i = icmp eq ptr %tmp.0.i190.lcssa, %163
  br i1 %cmp55.i, label %if.then57.i, label %if.else63.i

if.then57.i:                                      ; preds = %if.else.i69
  %170 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %163, align 4
  %172 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %first_pending.i134, align 4
  %cmp59.i = icmp eq ptr %171, null
  br i1 %cmp59.i, label %if.then57.i.if.end73.i.sink.split_crit_edge, label %if.then57.i.if.end73.i_crit_edge

if.then57.i.if.end73.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then57.i.if.end73.i.sink.split_crit_edge:      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i.sink.split

if.else63.i:                                      ; preds = %if.else.i69
  %173 = ptrtoint ptr %tmp.0.i190.lcssa to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tmp.0.i190.lcssa, align 4
  %175 = ptrtoint ptr %prev.0.i191.lcssa to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %prev.0.i191.lcssa, align 4
  %176 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %last_pending66.i, align 4
  %cmp67.i = icmp eq ptr %tmp.0.i190.lcssa, %177
  br i1 %cmp67.i, label %if.else63.i.if.end73.i.sink.split_crit_edge, label %if.else63.i.if.end73.i_crit_edge

if.else63.i.if.end73.i_crit_edge:                 ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.else63.i.if.end73.i.sink.split_crit_edge:      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i.sink.split

if.end73.i.sink.split:                            ; preds = %if.else63.i.if.end73.i.sink.split_crit_edge, %if.then57.i.if.end73.i.sink.split_crit_edge
  %prev.0.i191.lcssa.sink = phi ptr [ null, %if.then57.i.if.end73.i.sink.split_crit_edge ], [ %prev.0.i191.lcssa, %if.else63.i.if.end73.i.sink.split_crit_edge ]
  %tmp.0.i190207.ph = phi ptr [ %163, %if.then57.i.if.end73.i.sink.split_crit_edge ], [ %tmp.0.i190.lcssa, %if.else63.i.if.end73.i.sink.split_crit_edge ]
  %178 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %prev.0.i191.lcssa.sink, ptr %last_pending66.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end73.i.sink.split, %if.else63.i.if.end73.i_crit_edge, %if.then57.i.if.end73.i_crit_edge
  %tmp.0.i190207 = phi ptr [ %tmp.0.i190.lcssa, %if.else63.i.if.end73.i_crit_edge ], [ %163, %if.then57.i.if.end73.i_crit_edge ], [ %tmp.0.i190207.ph, %if.end73.i.sink.split ]
  %hastat.i71 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.0.i190.lcssa, i32 0, i32 19
  %179 = ptrtoint ptr %hastat.i71 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 26, ptr %hastat.i71, align 2
  %flags74.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.0.i190207, i32 0, i32 12
  %180 = ptrtoint ptr %flags74.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %flags74.i, align 1
  %182 = or i8 %181, 1
  store i8 %182, ptr %flags74.i, align 1
  %183 = and i8 %181, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i72 = icmp eq i8 %183, 0
  br i1 %tobool.not.i72, label %if.end73.i.if.then180.i_crit_edge, label %if.end73.i.if.then180.i.sink.split_crit_edge

if.end73.i.if.then180.i.sink.split_crit_edge:     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i.sink.split

if.end73.i.if.then180.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

if.end83.i:                                       ; preds = %while.body.i67.if.end83.i_crit_edge, %while.body.i67.preheader.if.end83.i_crit_edge
  %tmp.0.i190266 = phi ptr [ %185, %while.body.i67.if.end83.i_crit_edge ], [ %163, %while.body.i67.preheader.if.end83.i_crit_edge ]
  %184 = ptrtoint ptr %tmp.0.i190266 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tmp.0.i190266, align 4
  %cmp44.not.i = icmp eq ptr %185, null
  br i1 %cmp44.not.i, label %if.end83.i.while.end.i_crit_edge, label %while.body.i67

if.end83.i.while.end.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end83.i.while.end.i_crit_edge, %if.end.i64.while.end.i_crit_edge
  %186 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %first_busy.i, align 4
  %cmp86.not.i192 = icmp eq ptr %187, null
  br i1 %cmp86.not.i192, label %while.end.i.if.then180.i_crit_edge, label %while.body88.i.preheader

while.end.i.if.then180.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

while.body88.i.preheader:                         ; preds = %while.end.i
  %srb89.i268 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %187, i32 0, i32 29
  %188 = ptrtoint ptr %srb89.i268 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %srb89.i268, align 4
  %cmp90.i269 = icmp eq ptr %189, %157
  br i1 %cmp90.i269, label %while.body88.i.preheader.if.then92.i_crit_edge, label %while.body88.i.preheader.if.end139.i_crit_edge

while.body88.i.preheader.if.end139.i_crit_edge:   ; preds = %while.body88.i.preheader
  br label %if.end139.i

while.body88.i.preheader.if.then92.i_crit_edge:   ; preds = %while.body88.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92.i

while.body88.i:                                   ; preds = %if.end139.i
  %srb89.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %216, i32 0, i32 29
  %190 = ptrtoint ptr %srb89.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %srb89.i, align 4
  %cmp90.i = icmp eq ptr %191, %157
  br i1 %cmp90.i, label %while.body88.i.if.then92.i_crit_edge, label %while.body88.i.if.end139.i_crit_edge

while.body88.i.if.end139.i_crit_edge:             ; preds = %while.body88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.i

while.body88.i.if.then92.i_crit_edge:             ; preds = %while.body88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92.i

if.then92.i:                                      ; preds = %while.body88.i.if.then92.i_crit_edge, %while.body88.i.preheader.if.then92.i_crit_edge
  %prev.1.i194.lcssa = phi ptr [ %187, %while.body88.i.preheader.if.then92.i_crit_edge ], [ %tmp.1.i193270, %while.body88.i.if.then92.i_crit_edge ]
  %tmp.1.i193.lcssa = phi ptr [ %187, %while.body88.i.preheader.if.then92.i_crit_edge ], [ %216, %while.body88.i.if.then92.i_crit_edge ]
  %192 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %active.i, align 4
  %cmp94.i = icmp eq ptr %tmp.1.i193.lcssa, %193
  br i1 %cmp94.i, label %if.then92.i.if.then180.i_crit_edge, label %if.else98.i

if.then92.i.if.then180.i_crit_edge:               ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

if.else98.i:                                      ; preds = %if.then92.i
  %tagmsg.i74 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.1.i193.lcssa, i32 0, i32 23
  %194 = ptrtoint ptr %tagmsg.i74 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %tagmsg.i74, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %cmp100.i = icmp eq i8 %195, 0
  br i1 %cmp100.i, label %if.else98.i.if.then180.i_crit_edge, label %if.else104.i

if.else98.i.if.then180.i_crit_edge:               ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

if.else104.i:                                     ; preds = %if.else98.i
  %target.i75 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.1.i193.lcssa, i32 0, i32 13
  %196 = ptrtoint ptr %target.i75 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %target.i75, align 2
  %idxprom.i76 = zext i8 %197 to i32
  %arrayidx.i77 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom.i76
  %198 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.i77, align 1
  %dec.i = add i8 %199, -1
  store i8 %dec.i, ptr %arrayidx.i77, align 1
  %cmp106.i = icmp eq ptr %tmp.1.i193.lcssa, %187
  br i1 %cmp106.i, label %if.then108.i, label %if.else115.i

if.then108.i:                                     ; preds = %if.else104.i
  %200 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %187, align 4
  %202 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %first_busy.i, align 4
  %cmp111.i = icmp eq ptr %201, null
  br i1 %cmp111.i, label %if.then108.i.if.end124.i.sink.split_crit_edge, label %if.then108.i.if.end124.i_crit_edge

if.then108.i.if.end124.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i

if.then108.i.if.end124.i.sink.split_crit_edge:    ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i.sink.split

if.else115.i:                                     ; preds = %if.else104.i
  %203 = ptrtoint ptr %tmp.1.i193.lcssa to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %tmp.1.i193.lcssa, align 4
  %205 = ptrtoint ptr %prev.1.i194.lcssa to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %prev.1.i194.lcssa, align 4
  %206 = ptrtoint ptr %last_busy118.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %last_busy118.i, align 4
  %cmp119.i = icmp eq ptr %tmp.1.i193.lcssa, %207
  br i1 %cmp119.i, label %if.else115.i.if.end124.i.sink.split_crit_edge, label %if.else115.i.if.end124.i_crit_edge

if.else115.i.if.end124.i_crit_edge:               ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i

if.else115.i.if.end124.i.sink.split_crit_edge:    ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i.sink.split

if.end124.i.sink.split:                           ; preds = %if.else115.i.if.end124.i.sink.split_crit_edge, %if.then108.i.if.end124.i.sink.split_crit_edge
  %prev.1.i194.lcssa.sink = phi ptr [ null, %if.then108.i.if.end124.i.sink.split_crit_edge ], [ %prev.1.i194.lcssa, %if.else115.i.if.end124.i.sink.split_crit_edge ]
  %tmp.1.i193210.ph = phi ptr [ %187, %if.then108.i.if.end124.i.sink.split_crit_edge ], [ %tmp.1.i193.lcssa, %if.else115.i.if.end124.i.sink.split_crit_edge ]
  %208 = ptrtoint ptr %last_busy118.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %prev.1.i194.lcssa.sink, ptr %last_busy118.i, align 4
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.end124.i.sink.split, %if.else115.i.if.end124.i_crit_edge, %if.then108.i.if.end124.i_crit_edge
  %tmp.1.i193210 = phi ptr [ %tmp.1.i193.lcssa, %if.else115.i.if.end124.i_crit_edge ], [ %187, %if.then108.i.if.end124.i_crit_edge ], [ %tmp.1.i193210.ph, %if.end124.i.sink.split ]
  %209 = ptrtoint ptr %tmp.1.i193.lcssa to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %tmp.1.i193.lcssa, align 4
  %hastat126.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.1.i193.lcssa, i32 0, i32 19
  %210 = ptrtoint ptr %hastat126.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 26, ptr %hastat126.i, align 2
  %flags127.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.1.i193210, i32 0, i32 12
  %211 = ptrtoint ptr %flags127.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %flags127.i, align 1
  %213 = or i8 %212, 1
  store i8 %213, ptr %flags127.i, align 1
  %214 = and i8 %212, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool134.not.i = icmp eq i8 %214, 0
  br i1 %tobool134.not.i, label %if.end124.i.if.then180.i_crit_edge, label %if.end124.i.if.then180.i.sink.split_crit_edge

if.end124.i.if.then180.i.sink.split_crit_edge:    ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i.sink.split

if.end124.i.if.then180.i_crit_edge:               ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

if.end139.i:                                      ; preds = %while.body88.i.if.end139.i_crit_edge, %while.body88.i.preheader.if.end139.i_crit_edge
  %tmp.1.i193270 = phi ptr [ %216, %while.body88.i.if.end139.i_crit_edge ], [ %187, %while.body88.i.preheader.if.end139.i_crit_edge ]
  %215 = ptrtoint ptr %tmp.1.i193270 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %tmp.1.i193270, align 4
  %cmp86.not.i = icmp eq ptr %216, null
  br i1 %cmp86.not.i, label %if.end139.i.if.then180.i_crit_edge, label %while.body88.i

if.end139.i.if.then180.i_crit_edge:               ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then180.i

if.then180.i.sink.split:                          ; preds = %if.end124.i.if.then180.i.sink.split_crit_edge, %if.end73.i.if.then180.i.sink.split_crit_edge
  %tmp.1.i193210.sink245 = phi ptr [ %tmp.0.i190207, %if.end73.i.if.then180.i.sink.split_crit_edge ], [ %tmp.1.i193210, %if.end124.i.if.then180.i.sink.split_crit_edge ]
  %post136.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.1.i193210.sink245, i32 0, i32 28
  %217 = ptrtoint ptr %post136.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %post136.i, align 4
  tail call void %218(ptr noundef %host, ptr noundef nonnull %tmp.1.i193210.sink245) #8
  br label %if.then180.i

if.then180.i:                                     ; preds = %if.then180.i.sink.split, %if.end139.i.if.then180.i_crit_edge, %if.end124.i.if.then180.i_crit_edge, %if.else98.i.if.then180.i_crit_edge, %if.then92.i.if.then180.i_crit_edge, %while.end.i.if.then180.i_crit_edge, %if.end73.i.if.then180.i_crit_edge, %if.then48.i68.if.then180.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %semaph_lock.i, i32 noundef %call3.i) #8
  %219 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %first_pending.i134, align 4
  %cmp.not36.i42 = icmp eq ptr %220, null
  br i1 %cmp.not36.i42, label %if.then180.i.initio_unlink_pend_scb.exit60_crit_edge, label %while.body.i46.preheader

if.then180.i.initio_unlink_pend_scb.exit60_crit_edge: ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit60

while.body.i46.preheader:                         ; preds = %if.then180.i
  %cmp1.i45195 = icmp eq ptr %220, %first.059.i137
  br i1 %cmp1.i45195, label %if.then4.i50, label %while.body.i46.preheader.if.end17.i59_crit_edge

while.body.i46.preheader.if.end17.i59_crit_edge:  ; preds = %while.body.i46.preheader
  br label %if.end17.i59

while.body.i46:                                   ; preds = %if.end17.i59
  %cmp1.i45 = icmp eq ptr %232, %first.059.i137
  br i1 %cmp1.i45, label %if.else.i55, label %while.body.i46.if.end17.i59_crit_edge

while.body.i46.if.end17.i59_crit_edge:            ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i59

if.then4.i50:                                     ; preds = %while.body.i46.preheader
  %221 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %first.059.i137, align 4
  %223 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %first_pending.i134, align 4
  %cmp6.i49 = icmp eq ptr %222, null
  br i1 %cmp6.i49, label %if.then4.i50.if.end15.i57.sink.split_crit_edge, label %if.then4.i50.if.end15.i57_crit_edge

if.then4.i50.if.end15.i57_crit_edge:              ; preds = %if.then4.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i57

if.then4.i50.if.end15.i57.sink.split_crit_edge:   ; preds = %if.then4.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i57.sink.split

if.else.i55:                                      ; preds = %while.body.i46
  %224 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %first.059.i137, align 4
  %226 = ptrtoint ptr %tmp.037.i44196 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %225, ptr %tmp.037.i44196, align 4
  %227 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %last_pending66.i, align 4
  %cmp11.i54 = icmp eq ptr %228, %first.059.i137
  br i1 %cmp11.i54, label %if.else.i55.if.end15.i57.sink.split_crit_edge, label %if.else.i55.if.end15.i57_crit_edge

if.else.i55.if.end15.i57_crit_edge:               ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i57

if.else.i55.if.end15.i57.sink.split_crit_edge:    ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i57.sink.split

if.end15.i57.sink.split:                          ; preds = %if.else.i55.if.end15.i57.sink.split_crit_edge, %if.then4.i50.if.end15.i57.sink.split_crit_edge
  %tmp.037.i44196.lcssa236.sink = phi ptr [ null, %if.then4.i50.if.end15.i57.sink.split_crit_edge ], [ %tmp.037.i44196, %if.else.i55.if.end15.i57.sink.split_crit_edge ]
  %229 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %tmp.037.i44196.lcssa236.sink, ptr %last_pending66.i, align 4
  br label %if.end15.i57

if.end15.i57:                                     ; preds = %if.end15.i57.sink.split, %if.else.i55.if.end15.i57_crit_edge, %if.then4.i50.if.end15.i57_crit_edge
  %230 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %first.059.i137, align 4
  br label %initio_unlink_pend_scb.exit60

if.end17.i59:                                     ; preds = %while.body.i46.if.end17.i59_crit_edge, %while.body.i46.preheader.if.end17.i59_crit_edge
  %tmp.037.i44196 = phi ptr [ %232, %while.body.i46.if.end17.i59_crit_edge ], [ %220, %while.body.i46.preheader.if.end17.i59_crit_edge ]
  %231 = ptrtoint ptr %tmp.037.i44196 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %tmp.037.i44196, align 4
  %cmp.not.i58 = icmp eq ptr %232, null
  br i1 %cmp.not.i58, label %if.end17.i59.initio_unlink_pend_scb.exit60_crit_edge, label %while.body.i46

if.end17.i59.initio_unlink_pend_scb.exit60_crit_edge: ; preds = %if.end17.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit60

initio_unlink_pend_scb.exit60:                    ; preds = %if.end17.i59.initio_unlink_pend_scb.exit60_crit_edge, %if.end15.i57, %if.then180.i.initio_unlink_pend_scb.exit60_crit_edge
  %call2.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %avail_lock.i) #8
  %233 = ptrtoint ptr %srb.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %srb.i, align 4
  %status.i40 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %234 = ptrtoint ptr %status.i40 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %status.i40, align 4
  %235 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr null, ptr %first.059.i137, align 4
  %236 = ptrtoint ptr %last_avail.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %last_avail.i, align 4
  %cmp5.not.i = icmp eq ptr %237, null
  %first_avail.sink.i = select i1 %cmp5.not.i, ptr %first_avail.i, ptr %237
  %238 = ptrtoint ptr %first_avail.sink.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %first.059.i137, ptr %first_avail.sink.i, align 4
  store ptr %first.059.i137, ptr %last_avail.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %avail_lock.i, i32 noundef %call2.i38) #8
  br label %tulip_scsi.exit

if.else181.i:                                     ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %239 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %host, align 4
  %conv14.i = zext i16 %240 to i32
  %add15.i = add nuw nsw i32 %conv14.i, -18874144
  %241 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 31) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %semaph_lock.i, i32 noundef %call3.i) #8
  tail call fastcc void @tulip_main(ptr noundef %host) #8
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %semaph_lock.i) #8
  %242 = ptrtoint ptr %semaph.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %semaph.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %243 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %host, align 4
  %conv38.i = zext i16 %244 to i32
  %add41.i = add nuw nsw i32 %conv38.i, -18874144
  %245 = inttoptr i32 %add41.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %245, i8 15) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %semaph_lock.i, i32 noundef %call28.i) #8
  %246 = ptrtoint ptr %opcode.i138.le to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 2, ptr %opcode.i138.le, align 4
  %status.i32 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %247 = ptrtoint ptr %status.i32 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %status.i32, align 4
  %249 = or i8 %248, 8
  store i8 %249, ptr %status.i32, align 4
  %next_state.i33 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 2
  %250 = ptrtoint ptr %next_state.i33 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %next_state.i33, align 1
  %251 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %first.059.i137, ptr %active.i, align 4
  %252 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %target.i, align 2
  %idxprom.i36 = zext i8 %253 to i32
  %arrayidx.i37 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i36
  %254 = ptrtoint ptr %active_tc.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %arrayidx.i37, ptr %active_tc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %255 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %host, align 4
  %conv2.i = zext i16 %256 to i32
  %add3.i = add nuw nsw i32 %conv2.i, -18874223
  %257 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %257, i8 30) #8, !srcloc !107
  %258 = ptrtoint ptr %next_state.i33 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 8, ptr %next_state.i33, align 1
  br label %tulip_scsi.exit

if.else185.i:                                     ; preds = %do.body.i
  %259 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %first_pending.i134, align 4
  %cmp.not36.i = icmp eq ptr %260, null
  br i1 %cmp.not36.i, label %if.else185.i.initio_unlink_pend_scb.exit_crit_edge, label %while.body.i27.preheader

if.else185.i.initio_unlink_pend_scb.exit_crit_edge: ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit

while.body.i27.preheader:                         ; preds = %if.else185.i
  %cmp1.i197 = icmp eq ptr %260, %first.059.i137
  br i1 %cmp1.i197, label %if.then4.i, label %while.body.i27.preheader.if.end17.i_crit_edge

while.body.i27.preheader.if.end17.i_crit_edge:    ; preds = %while.body.i27.preheader
  br label %if.end17.i

while.body.i27:                                   ; preds = %if.end17.i
  %cmp1.i = icmp eq ptr %271, %first.059.i137
  br i1 %cmp1.i, label %if.else.i30, label %while.body.i27.if.end17.i_crit_edge

while.body.i27.if.end17.i_crit_edge:              ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then4.i:                                       ; preds = %while.body.i27.preheader
  %261 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %first.059.i137, align 4
  %263 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %262, ptr %first_pending.i134, align 4
  %cmp6.i = icmp eq ptr %262, null
  br i1 %cmp6.i, label %if.then4.i.if.end15.i.sink.split_crit_edge, label %if.then4.i.initio_unlink_pend_scb.exit_crit_edge

if.then4.i.initio_unlink_pend_scb.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit

if.then4.i.if.end15.i.sink.split_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.sink.split

if.else.i30:                                      ; preds = %while.body.i27
  %264 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %first.059.i137, align 4
  %266 = ptrtoint ptr %tmp.037.i198 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %265, ptr %tmp.037.i198, align 4
  %267 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %last_pending66.i, align 4
  %cmp11.i = icmp eq ptr %268, %first.059.i137
  br i1 %cmp11.i, label %if.else.i30.if.end15.i.sink.split_crit_edge, label %if.else.i30.initio_unlink_pend_scb.exit_crit_edge

if.else.i30.initio_unlink_pend_scb.exit_crit_edge: ; preds = %if.else.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit

if.else.i30.if.end15.i.sink.split_crit_edge:      ; preds = %if.else.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.sink.split

if.end15.i.sink.split:                            ; preds = %if.else.i30.if.end15.i.sink.split_crit_edge, %if.then4.i.if.end15.i.sink.split_crit_edge
  %tmp.037.i198.lcssa237.sink = phi ptr [ null, %if.then4.i.if.end15.i.sink.split_crit_edge ], [ %tmp.037.i198, %if.else.i30.if.end15.i.sink.split_crit_edge ]
  %269 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %tmp.037.i198.lcssa237.sink, ptr %last_pending66.i, align 4
  br label %initio_unlink_pend_scb.exit

if.end17.i:                                       ; preds = %while.body.i27.if.end17.i_crit_edge, %while.body.i27.preheader.if.end17.i_crit_edge
  %tmp.037.i198 = phi ptr [ %271, %while.body.i27.if.end17.i_crit_edge ], [ %260, %while.body.i27.preheader.if.end17.i_crit_edge ]
  %270 = ptrtoint ptr %tmp.037.i198 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %tmp.037.i198, align 4
  %cmp.not.i31 = icmp eq ptr %271, null
  br i1 %cmp.not.i31, label %if.end17.i.initio_unlink_pend_scb.exit_crit_edge, label %while.body.i27

if.end17.i.initio_unlink_pend_scb.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit

initio_unlink_pend_scb.exit:                      ; preds = %if.end17.i.initio_unlink_pend_scb.exit_crit_edge, %if.end15.i.sink.split, %if.else.i30.initio_unlink_pend_scb.exit_crit_edge, %if.then4.i.initio_unlink_pend_scb.exit_crit_edge, %if.else185.i.initio_unlink_pend_scb.exit_crit_edge
  %hastat.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 19
  %272 = ptrtoint ptr %hastat.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 22, ptr %hastat.i, align 2
  %status.i22 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i137, i32 0, i32 1
  %273 = ptrtoint ptr %status.i22 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 32, ptr %status.i22, align 4
  %274 = ptrtoint ptr %first.059.i137 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %first.059.i137, align 4
  %275 = ptrtoint ptr %last_done.i23 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %last_done.i23, align 4
  %cmp.not.i24 = icmp eq ptr %276, null
  %first_done.sink.i = select i1 %cmp.not.i24, ptr %first_done.i25, ptr %276
  %277 = ptrtoint ptr %first_done.sink.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %first.059.i137, ptr %first_done.sink.i, align 4
  store ptr %first.059.i137, ptr %last_done.i23, align 4
  br label %tulip_scsi.exit

tulip_scsi.exit:                                  ; preds = %initio_unlink_pend_scb.exit, %if.else181.i, %initio_unlink_pend_scb.exit60, %while.body163.i.tulip_scsi.exit_crit_edge, %while.cond159.i.tulip_scsi.exit_crit_edge, %if.then153.i.tulip_scsi.exit_crit_edge, %while.body.i.tulip_scsi.exit_crit_edge, %while.cond.i.tulip_scsi.exit_crit_edge, %if.end133.i.tulip_scsi.exit_crit_edge, %while.cond.backedge.i162.tulip_scsi.exit_crit_edge, %if.end74.i.tulip_scsi.exit_crit_edge, %if.end69.i.tulip_scsi.exit_crit_edge, %if.then65.i, %if.then62.i.tulip_scsi.exit_crit_edge, %if.then55.i, %if.then48.i, %if.then40.i, %if.then37.i.tulip_scsi.exit_crit_edge, %if.then31.i
  %278 = ptrtoint ptr %first_done.i25 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %first_done.i25, align 4
  %cmp.not.i201 = icmp eq ptr %279, null
  br i1 %cmp.not.i201, label %tulip_scsi.exit.while.end_crit_edge, label %tulip_scsi.exit.if.then.i1_crit_edge

tulip_scsi.exit.if.then.i1_crit_edge:             ; preds = %tulip_scsi.exit
  br label %if.then.i1

tulip_scsi.exit.while.end_crit_edge:              ; preds = %tulip_scsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then.i1:                                       ; preds = %while.cond.backedge.if.then.i1_crit_edge, %tulip_scsi.exit.if.then.i1_crit_edge
  %280 = phi ptr [ %300, %while.cond.backedge.if.then.i1_crit_edge ], [ %279, %tulip_scsi.exit.if.then.i1_crit_edge ]
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %283 = ptrtoint ptr %first_done.i25 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %282, ptr %first_done.i25, align 4
  %cmp2.i = icmp eq ptr %282, null
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i1.while.body_crit_edge

if.then.i1.while.body_crit_edge:                  ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then3.i:                                       ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %last_done.i23 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %last_done.i23, align 4
  br label %while.body

while.body:                                       ; preds = %if.then3.i, %if.then.i1.while.body_crit_edge
  %285 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %280, align 4
  %tastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 20
  %286 = ptrtoint ptr %tastat to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %tastat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %287)
  %cmp1 = icmp eq i8 %287, 40
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %target = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 13
  %288 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %target, align 2
  %idxprom = zext i8 %289 to i32
  %arrayidx = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom
  %290 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx, align 1
  %sub = add i8 %291, -1
  %arrayidx7 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 33, i32 %idxprom
  %292 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %sub, ptr %arrayidx7, align 1
  %293 = ptrtoint ptr %tastat to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %tastat, align 1
  %status.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 1
  %294 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 2, ptr %status.i, align 4
  %295 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr null, ptr %280, align 4
  %296 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %last_pending66.i, align 4
  %cmp.not.i3 = icmp eq ptr %297, null
  %first_pending.sink.i = select i1 %cmp.not.i3, ptr %first_pending.i134, ptr %297
  %298 = ptrtoint ptr %first_pending.sink.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %280, ptr %first_pending.sink.i, align 4
  store ptr %280, ptr %last_pending66.i, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then64, %if.end56.while.cond.backedge_crit_edge, %if.then
  %299 = ptrtoint ptr %first_done.i25 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %first_done.i25, align 4
  %cmp.not.i = icmp eq ptr %300, null
  br i1 %cmp.not.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.then.i1_crit_edge

while.cond.backedge.if.then.i1_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %mode = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 3
  %301 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %mode, align 2
  %303 = and i8 %302, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool.not = icmp eq i8 %303, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %287)
  %cmp13 = icmp eq i8 %287, 2
  br i1 %tobool.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  br i1 %cmp13, label %if.then15, label %if.then10.if.end56_crit_edge

if.then10.if.end56_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then15:                                        ; preds = %if.then10
  %flags = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 12
  %304 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %flags, align 1
  %306 = and i8 %305, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool18.not = icmp eq i8 %306, 0
  br i1 %tobool18.not, label %if.then15.if.end56_crit_edge, label %if.then19

if.then15.if.end56_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then19:                                        ; preds = %if.then15
  %mode.le = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 3
  %flags.le = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 12
  %senselen = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 18
  %307 = ptrtoint ptr %senselen to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %senselen, align 1
  %conv20 = zext i8 %308 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %cmp21 = icmp eq i8 %308, 0
  %spec.store.select = select i1 %cmp21, i8 1, i8 %308
  %buflen = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 16
  %309 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %conv20, ptr %buflen, align 4
  %senseptr = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 27
  %310 = ptrtoint ptr %senseptr to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %senseptr, align 4
  %bufptr = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 15
  %312 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %bufptr, align 4
  %313 = and i8 %305, 103
  %314 = ptrtoint ptr %flags.le to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %313, ptr %flags.le, align 1
  %315 = ptrtoint ptr %mode.le to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 1, ptr %mode.le, align 2
  %ident = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 22
  %316 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %ident, align 1
  %318 = and i8 %317, -65
  store i8 %318, ptr %ident, align 1
  %tagmsg = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 23
  %319 = ptrtoint ptr %tagmsg to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 0, ptr %tagmsg, align 2
  %320 = ptrtoint ptr %tastat to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %tastat, align 1
  %cdblen = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 21
  %321 = ptrtoint ptr %cdblen to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 6, ptr %cdblen, align 4
  %cdb = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 25
  %322 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 3, ptr %cdb, align 4
  %arrayidx38 = getelementptr %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 25, i32 1
  %323 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 0, ptr %arrayidx38, align 1
  %arrayidx40 = getelementptr %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 25, i32 2
  %324 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 0, ptr %arrayidx40, align 2
  %arrayidx42 = getelementptr %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 25, i32 3
  %325 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 0, ptr %arrayidx42, align 1
  %arrayidx44 = getelementptr %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 25, i32 4
  %326 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %spec.store.select, ptr %arrayidx44, align 4
  %arrayidx46 = getelementptr %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 25, i32 5
  %327 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 0, ptr %arrayidx46, align 1
  %status.i4 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 1
  %328 = ptrtoint ptr %status.i4 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 2, ptr %status.i4, align 4
  %329 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %first_pending.i134, align 4
  %331 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %330, ptr %280, align 4
  %cmp.not.i6 = icmp eq ptr %330, null
  store ptr %280, ptr %first_pending.i134, align 4
  br i1 %cmp.not.i6, label %if.else.i8, label %if.then19.while.end_crit_edge

if.then19.while.end_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.i8:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %last_pending66.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %280, ptr %last_pending66.i, align 4
  br label %while.end

if.else:                                          ; preds = %if.end
  br i1 %cmp13, label %if.then53, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %hastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 19
  %333 = ptrtoint ptr %hastat to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 20, ptr %hastat, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.else.if.end54_crit_edge
  %334 = ptrtoint ptr %tastat to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 2, ptr %tastat, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.then15.if.end56_crit_edge, %if.then10.if.end56_crit_edge
  %flags57 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 12
  %335 = ptrtoint ptr %flags57 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %flags57, align 1
  %337 = or i8 %336, 1
  store i8 %337, ptr %flags57, align 1
  %338 = and i8 %336, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool63.not = icmp eq i8 %338, 0
  br i1 %tobool63.not, label %if.end56.while.cond.backedge_crit_edge, label %if.then64

if.end56.while.cond.backedge_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then64:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %post = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %280, i32 0, i32 28
  %339 = ptrtoint ptr %post to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %post, align 4
  tail call void %340(ptr noundef %host, ptr noundef nonnull %280) #8
  br label %while.cond.backedge

while.end:                                        ; preds = %if.else.i8, %if.then19.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %tulip_scsi.exit.while.end_crit_edge
  %341 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %host, align 4
  %conv66 = zext i16 %342 to i32
  %add68 = add nuw nsw i32 %conv66, -18874235
  %343 = inttoptr i32 %add68 to ptr
  %344 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %343) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %344)
  %tobool73.not = icmp sgt i8 %344, -1
  br i1 %tobool73.not, label %if.end75, label %while.end.for.cond.backedge_crit_edge

while.end.for.cond.backedge_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else.i20.for.cond.backedge_crit_edge, %land.lhs.true.i.for.cond.backedge_crit_edge, %while.body.i12.for.cond.backedge_crit_edge, %while.end.for.cond.backedge_crit_edge
  br label %for.cond

if.end75:                                         ; preds = %while.end
  %345 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %active.i, align 4
  %tobool76.not = icmp eq ptr %346, null
  br i1 %tobool76.not, label %if.end78, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end75
  %347 = ptrtoint ptr %first_pending.i134 to i32
  call void @__asan_load4_noabort(i32 %347)
  %first.057.i = load ptr, ptr %first_pending.i134, align 4
  %cmp.not58.i = icmp eq ptr %first.057.i, null
  br i1 %cmp.not58.i, label %if.end78.cleanup_crit_edge, label %if.end78.while.body.i12_crit_edge

if.end78.while.body.i12_crit_edge:                ; preds = %if.end78
  br label %while.body.i12

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i12:                                   ; preds = %while.cond.backedge.i.while.body.i12_crit_edge, %if.end78.while.body.i12_crit_edge
  %first.059.i = phi ptr [ %first.0.i, %while.cond.backedge.i.while.body.i12_crit_edge ], [ %first.057.i, %if.end78.while.body.i12_crit_edge ]
  %opcode.i11 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i, i32 0, i32 11
  %348 = ptrtoint ptr %opcode.i11 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %opcode.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %349)
  %cmp1.not.i = icmp eq i8 %349, 1
  br i1 %cmp1.not.i, label %if.end.i17, label %while.body.i12.for.cond.backedge_crit_edge

while.body.i12.for.cond.backedge_crit_edge:       ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end.i17:                                       ; preds = %while.body.i12
  %tagmsg.i13 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i, i32 0, i32 23
  %350 = ptrtoint ptr %tagmsg.i13 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %tagmsg.i13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %cmp4.i = icmp eq i8 %351, 0
  %target.i14 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %first.059.i, i32 0, i32 13
  %352 = ptrtoint ptr %target.i14 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %target.i14, align 2
  %idxprom.i15 = zext i8 %353 to i32
  %arrayidx.i16 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom.i15
  %354 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx.i16, align 1
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i20

if.then6.i:                                       ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %cmp8.i = icmp eq i8 %355, 0
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.then6.i.while.cond.backedge.i_crit_edge

if.then6.i.while.cond.backedge.i_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

land.lhs.true.i:                                  ; preds = %if.then6.i
  %arrayidx12.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i15
  %356 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %arrayidx12.i, align 4
  %358 = and i16 %357, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %358)
  %tobool.not.i18 = icmp eq i16 %358, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i.for.cond.backedge_crit_edge, label %land.lhs.true.i.while.cond.backedge.i_crit_edge

land.lhs.true.i.while.cond.backedge.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

land.lhs.true.i.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.else.i20:                                      ; preds = %if.end.i17
  %arrayidx23.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 33, i32 %idxprom.i15
  %359 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %355, i8 %360)
  %cmp25.i = icmp uge i8 %355, %360
  %conv26.i = zext i1 %cmp25.i to i32
  %arrayidx30.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom.i15
  %361 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %arrayidx30.i, align 4
  %363 = and i16 %362, 1024
  %and33.i = zext i16 %363 to i32
  %or.i19 = or i32 %and33.i, %conv26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i19)
  %tobool34.not.i = icmp eq i32 %or.i19, 0
  br i1 %tobool34.not.i, label %if.else.i20.for.cond.backedge_crit_edge, label %if.else.i20.while.cond.backedge.i_crit_edge

if.else.i20.while.cond.backedge.i_crit_edge:      ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

if.else.i20.for.cond.backedge_crit_edge:          ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

while.cond.backedge.i:                            ; preds = %if.else.i20.while.cond.backedge.i_crit_edge, %land.lhs.true.i.while.cond.backedge.i_crit_edge, %if.then6.i.while.cond.backedge.i_crit_edge
  %364 = ptrtoint ptr %first.059.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %first.0.i = load ptr, ptr %first.059.i, align 4
  %cmp.not.i21 = icmp eq ptr %first.0.i, null
  br i1 %cmp.not.i21, label %while.cond.backedge.i.cleanup_crit_edge, label %while.cond.backedge.i.while.body.i12_crit_edge

while.cond.backedge.i.while.body.i12_crit_edge:   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i12

while.cond.backedge.i.cleanup_crit_edge:          ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.i.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end75.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @int_initio_scsi_rst(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874147
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %host, align 4
  %conv6 = zext i16 %6 to i32
  %add9 = add nuw nsw i32 %conv6, -18874152
  %7 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 12) #8, !srcloc !107
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %host, align 4
  %conv132 = zext i16 %9 to i32
  %add163 = add nuw nsw i32 %conv132, -18874148
  %10 = inttoptr i32 %add163 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp4 = icmp eq i8 %12, 0
  br i1 %cmp4, label %do.body.do.end27_crit_edge, label %do.body.do.body32_crit_edge

do.body.do.body32_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.body.do.end27_crit_edge:                       ; preds = %do.body
  br label %do.end27

do.end27:                                         ; preds = %do.end27.do.end27_crit_edge, %do.body.do.end27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !159
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %host, align 4
  %conv13 = zext i16 %14 to i32
  %add16 = add nuw nsw i32 %conv13, -18874148
  %15 = inttoptr i32 %add16 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %17 = and i8 %16, 4
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %do.end27.do.end27_crit_edge, label %do.end27.do.body32_crit_edge

do.end27.do.body32_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.end27.do.end27_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.body32:                                        ; preds = %do.end27.do.body32_crit_edge, %do.body.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %host, align 4
  %conv36 = zext i16 %19 to i32
  %add39 = add nuw nsw i32 %conv36, -18874235
  %20 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 16) #8, !srcloc !107
  br label %if.end

if.end:                                           ; preds = %do.body32, %entry.if.end_crit_edge
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %21 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %first_busy.i, align 4
  %cmp.not.i5 = icmp eq ptr %22, null
  br i1 %cmp.not.i5, label %if.end.while.end46_crit_edge, label %if.then.i.lr.ph

if.end.while.end46_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46

if.then.i.lr.ph:                                  ; preds = %if.end
  %last_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %last_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %first_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  br label %if.then.i

if.then.i:                                        ; preds = %while.body45.if.then.i_crit_edge, %if.then.i.lr.ph
  %23 = phi ptr [ %22, %if.then.i.lr.ph ], [ %45, %while.body45.if.then.i_crit_edge ]
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %first_busy.i, align 4
  %cmp2.i = icmp eq ptr %25, null
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %last_busy.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %23, align 4
  %tagmsg.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %23, i32 0, i32 23
  %29 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %target6.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %target6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %target6.i, align 2
  %idxprom7.i = zext i8 %32 to i32
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom7.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %dec.i = add i8 %34, -1
  store i8 %dec.i, ptr %arrayidx.i, align 1
  br label %while.body45

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom7.i
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx8.i, align 4
  %37 = and i16 %36, -1025
  store i16 %37, ptr %arrayidx8.i, align 4
  br label %while.body45

while.body45:                                     ; preds = %if.else.i, %if.then5.i
  %hastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %23, i32 0, i32 19
  %38 = ptrtoint ptr %hastat to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 20, ptr %hastat, align 2
  %status.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %23, i32 0, i32 1
  %39 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 32, ptr %status.i, align 4
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %23, align 4
  %41 = ptrtoint ptr %last_done.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %last_done.i, align 4
  %cmp.not.i1 = icmp eq ptr %42, null
  %first_done.sink.i = select i1 %cmp.not.i1, ptr %first_done.i, ptr %42
  %43 = ptrtoint ptr %first_done.sink.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %23, ptr %first_done.sink.i, align 4
  store ptr %23, ptr %last_done.i, align 4
  %44 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %first_busy.i, align 4
  %cmp.not.i = icmp eq ptr %45, null
  br i1 %cmp.not.i, label %while.body45.while.end46_crit_edge, label %while.body45.if.then.i_crit_edge

while.body45.if.then.i_crit_edge:                 ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

while.body45.while.end46_crit_edge:               ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46

while.end46:                                      ; preds = %while.body45.while.end46_crit_edge, %if.end.while.end46_crit_edge
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %46 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %active, align 4
  %active_tc = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %47 = ptrtoint ptr %active_tc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %active_tc, align 4
  %max_tar = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 4
  %48 = ptrtoint ptr %max_tar to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %max_tar, align 2
  %conv47 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp486.not = icmp eq i8 %49, 0
  br i1 %cmp486.not, label %while.end46.for.end_crit_edge, label %while.end46.for.body_crit_edge

while.end46.for.body_crit_edge:                   ; preds = %while.end46
  br label %for.body

while.end46.for.end_crit_edge:                    ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end46.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.end46.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %i.07
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx, align 4
  %52 = and i16 %51, -769
  store i16 %52, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %conv47
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.end46.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @int_initio_resel(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i8 %3, -9
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and4, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %active, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %host, align 4
  %conv8 = zext i16 %8 to i32
  %add10 = add nuw nsw i32 %conv8, -18874231
  %9 = inttoptr i32 %add10 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %host, align 4
  %conv14 = zext i16 %12 to i32
  %add17 = add nuw nsw i32 %conv14, -18874230
  %13 = inttoptr i32 %add17 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %15 = and i8 %14, 15
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom
  %active_tc24 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %16 = ptrtoint ptr %active_tc24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %active_tc24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %sconfig0 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom, i32 2
  %17 = ptrtoint ptr %sconfig0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sconfig0, align 1
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %host, align 4
  %conv26 = zext i16 %20 to i32
  %add29 = add nuw nsw i32 %conv26, -18874233
  %21 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %18) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %js_period = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %js_period to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %js_period, align 2
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %host, align 4
  %conv35 = zext i16 %25 to i32
  %add38 = add nuw nsw i32 %conv35, -18874232
  %26 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %23) #8, !srcloc !107
  %drv_flags = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom, i32 3
  %27 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %drv_flags, align 2
  %29 = and i16 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool42.not = icmp eq i16 %29, 0
  br i1 %tobool42.not, label %if.end7.no_tag_crit_edge, label %if.then43

if.end7.no_tag_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_tag

if.then43:                                        ; preds = %if.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %host, align 4
  %conv.i = zext i16 %31 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874223
  %32 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 15) #8, !srcloc !107
  %call2.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp45 = icmp eq i32 %call2.i, -1
  br i1 %cmp45, label %if.then43.cleanup_crit_edge, label %if.end48

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.then43
  %phase = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %33 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %phase, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp50.not = icmp eq i8 %34, 7
  br i1 %cmp50.not, label %do.body54, label %if.end48.no_tag_crit_edge

if.end48.no_tag_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_tag

do.body54:                                        ; preds = %if.end48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %host, align 4
  %conv58 = zext i16 %36 to i32
  %add61 = add nuw nsw i32 %conv58, -18874240
  %37 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 16777216) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %host, align 4
  %conv67 = zext i16 %39 to i32
  %add70 = add nuw nsw i32 %conv67, -18874223
  %40 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -125) #8, !srcloc !107
  %call72 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call72)
  %cmp73 = icmp eq i32 %call72, -1
  br i1 %cmp73, label %do.body54.cleanup_crit_edge, label %if.end76

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %do.body54
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %host, align 4
  %conv79 = zext i16 %42 to i32
  %add82 = add nuw nsw i32 %conv79, -18874228
  %43 = inttoptr i32 %add82 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %45 = add i8 %44, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %45)
  %46 = icmp ult i8 %45, -3
  br i1 %46, label %if.end76.no_tag_crit_edge, label %if.end93

if.end76.no_tag_crit_edge:                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_tag

if.end93:                                         ; preds = %if.end76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %host, align 4
  %conv.i234 = zext i16 %48 to i32
  %add1.i235 = add nuw nsw i32 %conv.i234, -18874223
  %49 = inttoptr i32 %add1.i235 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 15) #8, !srcloc !107
  %call2.i237 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i237)
  %cmp95 = icmp eq i32 %call2.i237, -1
  br i1 %cmp95, label %if.end93.cleanup_crit_edge, label %if.end98

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %50 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %phase, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %51)
  %cmp101.not = icmp eq i8 %51, 7
  br i1 %cmp101.not, label %do.body105, label %if.end98.no_tag_crit_edge

if.end98.no_tag_crit_edge:                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_tag

do.body105:                                       ; preds = %if.end98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %host, align 4
  %conv109 = zext i16 %53 to i32
  %add112 = add nuw nsw i32 %conv109, -18874240
  %54 = inttoptr i32 %add112 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 16777216) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %host, align 4
  %conv118 = zext i16 %56 to i32
  %add121 = add nuw nsw i32 %conv118, -18874223
  %57 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 -125) #8, !srcloc !107
  %call123 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call123)
  %cmp124 = icmp eq i32 %call123, -1
  br i1 %cmp124, label %do.body105.cleanup_crit_edge, label %if.end127

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end127:                                        ; preds = %do.body105
  %58 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %host, align 4
  %conv130 = zext i16 %59 to i32
  %add133 = add nuw nsw i32 %conv130, -18874228
  %60 = inttoptr i32 %add133 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %scb137 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 19
  %62 = ptrtoint ptr %scb137 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scb137, align 4
  %conv138 = zext i8 %61 to i32
  %add.ptr = getelementptr %struct.scsi_ctrl_blk, ptr %63, i32 %conv138
  %target = getelementptr %struct.scsi_ctrl_blk, ptr %63, i32 %conv138, i32 13
  %64 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %target, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %10)
  %cmp141.not = icmp eq i8 %65, %10
  br i1 %cmp141.not, label %lor.lhs.false143, label %if.end127.if.then149_crit_edge

if.end127.if.then149_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then149

lor.lhs.false143:                                 ; preds = %if.end127
  %lun144 = getelementptr %struct.scsi_ctrl_blk, ptr %63, i32 %conv138, i32 14
  %66 = ptrtoint ptr %lun144 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %lun144, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %15)
  %cmp147.not = icmp eq i8 %67, %15
  br i1 %cmp147.not, label %if.end151, label %lor.lhs.false143.if.then149_crit_edge

lor.lhs.false143.if.then149_crit_edge:            ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then149

if.then149:                                       ; preds = %lor.lhs.false143.if.then149_crit_edge, %if.end127.if.then149_crit_edge
  tail call fastcc void @initio_msgout_abort_tag(ptr noundef %host)
  br label %cleanup

if.end151:                                        ; preds = %lor.lhs.false143
  %status152 = getelementptr %struct.scsi_ctrl_blk, ptr %63, i32 %conv138, i32 1
  %68 = ptrtoint ptr %status152 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %status152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %69)
  %cmp154.not = icmp eq i8 %69, 16
  br i1 %cmp154.not, label %if.end158, label %if.then156

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_msgout_abort_tag(ptr noundef %host)
  br label %cleanup

if.end158:                                        ; preds = %if.end151
  %70 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr, ptr %active, align 4
  %call160 = tail call fastcc i32 @initio_msgin_accept(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call160)
  %cmp161 = icmp eq i32 %call160, -1
  br i1 %cmp161, label %if.end158.cleanup_crit_edge, label %if.end158.if.end186_crit_edge

if.end158.if.end186_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

no_tag:                                           ; preds = %if.end98.no_tag_crit_edge, %if.end76.no_tag_crit_edge, %if.end48.no_tag_crit_edge, %if.end7.no_tag_crit_edge
  %conv166 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv166, 8
  %or = or i32 %shl, %idxprom
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %no_tag
  %tmp.0.in.i = phi ptr [ %first_busy.i, %no_tag ], [ %tmp.0.i, %while.body.i.while.cond.i_crit_edge ]
  %71 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, null
  br i1 %cmp.not.i, label %if.then171, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %lun.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.0.i, i32 0, i32 14
  %72 = ptrtoint ptr %lun.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lun.i, align 1
  %conv.i238 = zext i8 %73 to i32
  %shl.i = shl nuw nsw i32 %conv.i238, 8
  %target.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.0.i, i32 0, i32 13
  %74 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %target.i, align 2
  %conv1.i = zext i8 %75 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %cmp5.i = icmp eq i32 %or.i, %or
  br i1 %cmp5.i, label %if.end173, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then171:                                       ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %host, align 4
  %conv.i239 = zext i16 %77 to i32
  %add1.i240 = add nuw nsw i32 %conv.i239, -18874224
  %78 = inttoptr i32 %add1.i240 to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  %80 = and i8 %79, 71
  %81 = or i8 %80, 8
  %82 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %host, align 4
  %conv7.i = zext i16 %83 to i32
  %add10.i = add nuw nsw i32 %conv7.i, -18874224
  %84 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %81) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %host, align 4
  %conv.i247 = zext i16 %86 to i32
  %add1.i248 = add nuw nsw i32 %conv.i247, -18874223
  %87 = inttoptr i32 %add1.i248 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 15) #8, !srcloc !107
  %call2.i249 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i249)
  %cmp.i = icmp eq i32 %call2.i249, -1
  br i1 %cmp.i, label %if.then171.cleanup_crit_edge, label %if.end.i

if.then171.cleanup_crit_edge:                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then171
  %phase.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %88 = ptrtoint ptr %phase.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %phase.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %89)
  %cmp15.not.i = icmp eq i8 %89, 6
  br i1 %cmp15.not.i, label %do.body20.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host) #8
  br label %cleanup

do.body20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %host, align 4
  %conv23.i = zext i16 %91 to i32
  %add26.i = add nuw nsw i32 %conv23.i, -18874228
  %92 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 6) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %host, align 4
  %conv31.i = zext i16 %94 to i32
  %add34.i = add nuw nsw i32 %conv31.i, -18874223
  %95 = inttoptr i32 %add34.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 3) #8, !srcloc !107
  tail call fastcc void @initio_wait_disc(ptr noundef %host) #8
  br label %cleanup

if.end173:                                        ; preds = %while.body.i
  %96 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %tmp.0.i, ptr %active, align 4
  %97 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %drv_flags, align 2
  %99 = and i16 %98, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool178.not = icmp eq i16 %99, 0
  br i1 %tobool178.not, label %if.then179, label %if.end173.if.end186_crit_edge

if.end173.if.end186_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

if.then179:                                       ; preds = %if.end173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %host, align 4
  %conv.i243 = zext i16 %101 to i32
  %add1.i244 = add nuw nsw i32 %conv.i243, -18874223
  %102 = inttoptr i32 %add1.i244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 15) #8, !srcloc !107
  %call2.i246 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i246)
  %cmp181 = icmp eq i32 %call2.i246, -1
  br i1 %cmp181, label %if.then179.cleanup_crit_edge, label %if.then179.if.end186_crit_edge

if.then179.if.end186_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

if.then179.cleanup_crit_edge:                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end186:                                        ; preds = %if.then179.if.end186_crit_edge, %if.end173.if.end186_crit_edge, %if.end158.if.end186_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %if.then179.cleanup_crit_edge, %do.body20.i, %if.then17.i, %if.then171.cleanup_crit_edge, %if.end158.cleanup_crit_edge, %if.then156, %if.then149, %do.body105.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %do.body54.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end186 ], [ -1, %if.then149 ], [ -1, %if.then156 ], [ -1, %if.then43.cleanup_crit_edge ], [ -1, %do.body54.cleanup_crit_edge ], [ -1, %if.end93.cleanup_crit_edge ], [ -1, %do.body105.cleanup_crit_edge ], [ -1, %if.end158.cleanup_crit_edge ], [ -1, %if.then179.cleanup_crit_edge ], [ -1, %if.then171.cleanup_crit_edge ], [ -1, %if.then17.i ], [ -1, %do.body20.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initio_next_state(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  %next_state = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %next_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %next_state, align 1
  %phase.i144 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %active_tc1.i41.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %jsstatus0.i96 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %first_pending.i.i30 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 27
  %last_pending10.i.i41 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 28
  %last_busy.i.i57 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %first_busy.i.i58 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %jsstatus1.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %next.0 = phi i8 [ %3, %entry ], [ %next.0.be, %for.cond.backedge ]
  %4 = zext i8 %next.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %next.0, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb3
    i8 4, label %sw.bb5
    i8 5, label %sw.bb7
    i8 6, label %sw.bb9
    i8 7, label %sw.bb11
    i8 8, label %sw.bb13
  ]

sw.bb:                                            ; preds = %for.cond
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active, align 4
  %7 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_tc1.i41.i, align 4
  %9 = ptrtoint ptr %first_pending.i.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %first_pending.i.i30, align 4
  %cmp.not36.i.i = icmp eq ptr %10, null
  br i1 %cmp.not36.i.i, label %sw.bb.initio_unlink_pend_scb.exit.i_crit_edge, label %while.body.i.preheader.i

sw.bb.initio_unlink_pend_scb.exit.i_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit.i

while.body.i.preheader.i:                         ; preds = %sw.bb
  %cmp1.i228.i = icmp eq ptr %10, %6
  br i1 %cmp1.i228.i, label %if.then4.i.i, label %while.body.i.preheader.i.if.end17.i.i_crit_edge

while.body.i.preheader.i.if.end17.i.i_crit_edge:  ; preds = %while.body.i.preheader.i
  br label %if.end17.i.i

while.body.i.i:                                   ; preds = %if.end17.i.i
  %cmp1.i.i = icmp eq ptr %22, %6
  br i1 %cmp1.i.i, label %if.else.i.i, label %while.body.i.i.if.end17.i.i_crit_edge

while.body.i.i.if.end17.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then4.i.i:                                     ; preds = %while.body.i.preheader.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %13 = ptrtoint ptr %first_pending.i.i30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %first_pending.i.i30, align 4
  %cmp6.i.i = icmp eq ptr %12, null
  br i1 %cmp6.i.i, label %if.then4.i.i.if.end15.i.i.sink.split_crit_edge, label %if.then4.i.i.if.end15.i.i_crit_edge

if.then4.i.i.if.end15.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then4.i.i.if.end15.i.i.sink.split_crit_edge:   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i.sink.split

if.else.i.i:                                      ; preds = %while.body.i.i
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  %16 = ptrtoint ptr %tmp.037.i229.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %tmp.037.i229.i, align 4
  %17 = ptrtoint ptr %last_pending10.i.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_pending10.i.i41, align 4
  %cmp11.i.i = icmp eq ptr %18, %6
  br i1 %cmp11.i.i, label %if.else.i.i.if.end15.i.i.sink.split_crit_edge, label %if.else.i.i.if.end15.i.i_crit_edge

if.else.i.i.if.end15.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.else.i.i.if.end15.i.i.sink.split_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i.sink.split

if.end15.i.i.sink.split:                          ; preds = %if.else.i.i.if.end15.i.i.sink.split_crit_edge, %if.then4.i.i.if.end15.i.i.sink.split_crit_edge
  %tmp.037.i229.i.lcssa237.sink = phi ptr [ null, %if.then4.i.i.if.end15.i.i.sink.split_crit_edge ], [ %tmp.037.i229.i, %if.else.i.i.if.end15.i.i.sink.split_crit_edge ]
  %19 = ptrtoint ptr %last_pending10.i.i41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tmp.037.i229.i.lcssa237.sink, ptr %last_pending10.i.i41, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end15.i.i.sink.split, %if.else.i.i.if.end15.i.i_crit_edge, %if.then4.i.i.if.end15.i.i_crit_edge
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %6, align 4
  br label %initio_unlink_pend_scb.exit.i

if.end17.i.i:                                     ; preds = %while.body.i.i.if.end17.i.i_crit_edge, %while.body.i.preheader.i.if.end17.i.i_crit_edge
  %tmp.037.i229.i = phi ptr [ %22, %while.body.i.i.if.end17.i.i_crit_edge ], [ %10, %while.body.i.preheader.i.if.end17.i.i_crit_edge ]
  %21 = ptrtoint ptr %tmp.037.i229.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp.037.i229.i, align 4
  %cmp.not.i.i = icmp eq ptr %22, null
  br i1 %cmp.not.i.i, label %if.end17.i.i.initio_unlink_pend_scb.exit.i_crit_edge, label %while.body.i.i

if.end17.i.i.initio_unlink_pend_scb.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit.i

initio_unlink_pend_scb.exit.i:                    ; preds = %if.end17.i.i.initio_unlink_pend_scb.exit.i_crit_edge, %if.end15.i.i, %sw.bb.initio_unlink_pend_scb.exit.i_crit_edge
  %tagmsg.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %6, i32 0, i32 23
  %23 = ptrtoint ptr %tagmsg.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tagmsg.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  %target1.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %6, i32 0, i32 13
  %25 = ptrtoint ptr %target1.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %target1.i.i, align 2
  %idxprom2.i.i = zext i8 %26 to i32
  br i1 %tobool.not.i.i, label %if.else.i225.i, label %if.then.i224.i

if.then.i224.i:                                   ; preds = %initio_unlink_pend_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom2.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i8 %28, 1
  store i8 %inc.i.i, ptr %arrayidx.i.i, align 1
  br label %initio_append_busy_scb.exit.i

if.else.i225.i:                                   ; preds = %initio_unlink_pend_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom2.i.i
  %29 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx3.i.i, align 4
  %31 = or i16 %30, 1024
  store i16 %31, ptr %arrayidx3.i.i, align 4
  br label %initio_append_busy_scb.exit.i

initio_append_busy_scb.exit.i:                    ; preds = %if.else.i225.i, %if.then.i224.i
  %status.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %6, i32 0, i32 1
  %32 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 16, ptr %status.i.i, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %6, align 4
  %34 = ptrtoint ptr %last_busy.i.i57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %last_busy.i.i57, align 4
  %cmp.not.i226.i = icmp eq ptr %35, null
  %first_busy.sink.i.i = select i1 %cmp.not.i226.i, ptr %first_busy.i.i58, ptr %35
  %36 = ptrtoint ptr %first_busy.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %6, ptr %first_busy.sink.i.i, align 4
  store ptr %6, ptr %last_busy.i.i57, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %sconfig0.i = getelementptr inbounds %struct.target_control, ptr %8, i32 0, i32 2
  %37 = ptrtoint ptr %sconfig0.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sconfig0.i, align 1
  %39 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %host, align 4
  %conv.i = zext i16 %40 to i32
  %add2.i = add nuw nsw i32 %conv.i, -18874233
  %41 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %38) #8, !srcloc !107
  %42 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %phase.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %43)
  %cmp.i = icmp eq i8 %43, 6
  br i1 %cmp.i, label %do.body5.i, label %initio_append_busy_scb.exit.i.do.body162.i_crit_edge

initio_append_busy_scb.exit.i.do.body162.i_crit_edge: ; preds = %initio_append_busy_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body162.i

do.body5.i:                                       ; preds = %initio_append_busy_scb.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %host, align 4
  %conv9.i = zext i16 %45 to i32
  %add12.i = add nuw nsw i32 %conv9.i, -18874234
  %46 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 5) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %ident.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %6, i32 0, i32 22
  %47 = ptrtoint ptr %ident.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ident.i, align 1
  %49 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %host, align 4
  %conv18.i = zext i16 %50 to i32
  %add21.i = add nuw nsw i32 %conv18.i, -18874228
  %51 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #8, !srcloc !107
  %52 = ptrtoint ptr %tagmsg.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tagmsg.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %do.body5.i.if.end.i_crit_edge, label %do.body24.i

do.body5.i.if.end.i_crit_edge:                    ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body24.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %tagmsg.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tagmsg.i.i, align 2
  %56 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %host, align 4
  %conv29.i = zext i16 %57 to i32
  %add32.i = add nuw nsw i32 %conv29.i, -18874228
  %58 = inttoptr i32 %add32.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %55) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %tagid.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %6, i32 0, i32 24
  %59 = ptrtoint ptr %tagid.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tagid.i, align 1
  %61 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %host, align 4
  %conv38.i = zext i16 %62 to i32
  %add41.i = add nuw nsw i32 %conv38.i, -18874228
  %63 = inttoptr i32 %add41.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %60) #8, !srcloc !107
  br label %if.end.i

if.end.i:                                         ; preds = %do.body24.i, %do.body5.i.if.end.i_crit_edge
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %8, align 2
  %conv43.i = zext i16 %65 to i32
  %and44.i = and i32 %conv43.i, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %cmp45.i = icmp eq i32 %and44.i, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.else.i

if.then47.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i16 %65, 256
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %or.i, ptr %8, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %host, align 4
  %conv55.i = zext i16 %68 to i32
  %add58.i = add nuw nsw i32 %conv55.i, -18874228
  %69 = inttoptr i32 %add58.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %host, align 4
  %conv64.i = zext i16 %71 to i32
  %add67.i = add nuw nsw i32 %conv64.i, -18874228
  %72 = inttoptr i32 %add67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 2) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %host, align 4
  %conv73.i = zext i16 %74 to i32
  %add76.i = add nuw nsw i32 %conv73.i, -18874228
  %75 = inttoptr i32 %add76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %host, align 4
  %conv82.i = zext i16 %77 to i32
  %add85.i = add nuw nsw i32 %conv82.i, -18874228
  %78 = inttoptr i32 %add85.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 1) #8, !srcloc !107
  br label %do.body147.i

if.else.i:                                        ; preds = %if.end.i
  %and89.i = and i32 %conv43.i, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %cmp90.i = icmp eq i32 %and89.i, 0
  br i1 %cmp90.i, label %if.then92.i, label %if.else.i.do.body147.i_crit_edge

if.else.i.do.body147.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body147.i

if.then92.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %or95.i = or i16 %65, 512
  %79 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %or95.i, ptr %8, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %host, align 4
  %conv101.i = zext i16 %81 to i32
  %add104.i = add nuw nsw i32 %conv101.i, -18874228
  %82 = inttoptr i32 %add104.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %host, align 4
  %conv110.i = zext i16 %84 to i32
  %add113.i = add nuw nsw i32 %conv110.i, -18874228
  %85 = inttoptr i32 %add113.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 3) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %host, align 4
  %conv119.i = zext i16 %87 to i32
  %add122.i = add nuw nsw i32 %conv119.i, -18874228
  %88 = inttoptr i32 %add122.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %8, align 2
  %91 = and i16 %90, 7
  %and129.i = zext i16 %91 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @initio_rate_tbl, i32 0, i32 %and129.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i, align 1
  %94 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %host, align 4
  %conv131.i = zext i16 %95 to i32
  %add134.i = add nuw nsw i32 %conv131.i, -18874228
  %96 = inttoptr i32 %add134.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %93) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %97 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %host, align 4
  %conv140.i = zext i16 %98 to i32
  %add143.i = add nuw nsw i32 %conv140.i, -18874228
  %99 = inttoptr i32 %add143.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 15) #8, !srcloc !107
  br label %do.body147.i

do.body147.i:                                     ; preds = %if.then92.i, %if.else.i.do.body147.i_crit_edge, %if.then47.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %host, align 4
  %conv151.i = zext i16 %101 to i32
  %add154.i = add nuw nsw i32 %conv151.i, -18874223
  %102 = inttoptr i32 %add154.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 3) #8, !srcloc !107
  %call156.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call156.i)
  %cmp157.i = icmp eq i32 %call156.i, -1
  br i1 %cmp157.i, label %do.body147.i.cleanup_crit_edge, label %do.body147.i.do.body162.i_crit_edge

do.body147.i.do.body162.i_crit_edge:              ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body162.i

do.body147.i.cleanup_crit_edge:                   ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body162.i:                                     ; preds = %do.body147.i.do.body162.i_crit_edge, %initio_append_busy_scb.exit.i.do.body162.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %host, align 4
  %conv166.i = zext i16 %104 to i32
  %add169.i = add nuw nsw i32 %conv166.i, -18874235
  %105 = inttoptr i32 %add169.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %host, align 4
  %conv175.i = zext i16 %107 to i32
  %add178.i = add nuw nsw i32 %conv175.i, -18874224
  %108 = inttoptr i32 %add178.i to ptr
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %108) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %110 = and i8 %109, 71
  %111 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %host, align 4
  %conv185.i = zext i16 %112 to i32
  %add188.i = add nuw nsw i32 %conv185.i, -18874224
  %113 = inttoptr i32 %add188.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 %110) #8, !srcloc !107
  br label %for.cond.backedge

sw.bb1:                                           ; preds = %for.cond
  %114 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %active, align 4
  %116 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %active_tc1.i41.i, align 4
  %118 = ptrtoint ptr %first_pending.i.i30 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %first_pending.i.i30, align 4
  %cmp.not36.i.i31 = icmp eq ptr %119, null
  br i1 %cmp.not36.i.i31, label %sw.bb1.initio_unlink_pend_scb.exit.i52_crit_edge, label %while.body.i.preheader.i32

sw.bb1.initio_unlink_pend_scb.exit.i52_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit.i52

while.body.i.preheader.i32:                       ; preds = %sw.bb1
  %cmp1.i47.i = icmp eq ptr %119, %115
  br i1 %cmp1.i47.i, label %if.then4.i.i38, label %while.body.i.preheader.i32.if.end17.i.i47_crit_edge

while.body.i.preheader.i32.if.end17.i.i47_crit_edge: ; preds = %while.body.i.preheader.i32
  br label %if.end17.i.i47

while.body.i.i35:                                 ; preds = %if.end17.i.i47
  %cmp1.i.i34 = icmp eq ptr %131, %115
  br i1 %cmp1.i.i34, label %if.else.i.i43, label %while.body.i.i35.if.end17.i.i47_crit_edge

while.body.i.i35.if.end17.i.i47_crit_edge:        ; preds = %while.body.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i47

if.then4.i.i38:                                   ; preds = %while.body.i.preheader.i32
  %120 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %115, align 4
  %122 = ptrtoint ptr %first_pending.i.i30 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %first_pending.i.i30, align 4
  %cmp6.i.i37 = icmp eq ptr %121, null
  br i1 %cmp6.i.i37, label %if.then4.i.i38.if.end15.i.i45.sink.split_crit_edge, label %if.then4.i.i38.if.end15.i.i45_crit_edge

if.then4.i.i38.if.end15.i.i45_crit_edge:          ; preds = %if.then4.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i45

if.then4.i.i38.if.end15.i.i45.sink.split_crit_edge: ; preds = %if.then4.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i45.sink.split

if.else.i.i43:                                    ; preds = %while.body.i.i35
  %123 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %115, align 4
  %125 = ptrtoint ptr %tmp.037.i48.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %tmp.037.i48.i, align 4
  %126 = ptrtoint ptr %last_pending10.i.i41 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %last_pending10.i.i41, align 4
  %cmp11.i.i42 = icmp eq ptr %127, %115
  br i1 %cmp11.i.i42, label %if.else.i.i43.if.end15.i.i45.sink.split_crit_edge, label %if.else.i.i43.if.end15.i.i45_crit_edge

if.else.i.i43.if.end15.i.i45_crit_edge:           ; preds = %if.else.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i45

if.else.i.i43.if.end15.i.i45.sink.split_crit_edge: ; preds = %if.else.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i45.sink.split

if.end15.i.i45.sink.split:                        ; preds = %if.else.i.i43.if.end15.i.i45.sink.split_crit_edge, %if.then4.i.i38.if.end15.i.i45.sink.split_crit_edge
  %tmp.037.i48.i.lcssa236.sink = phi ptr [ null, %if.then4.i.i38.if.end15.i.i45.sink.split_crit_edge ], [ %tmp.037.i48.i, %if.else.i.i43.if.end15.i.i45.sink.split_crit_edge ]
  %128 = ptrtoint ptr %last_pending10.i.i41 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %tmp.037.i48.i.lcssa236.sink, ptr %last_pending10.i.i41, align 4
  br label %if.end15.i.i45

if.end15.i.i45:                                   ; preds = %if.end15.i.i45.sink.split, %if.else.i.i43.if.end15.i.i45_crit_edge, %if.then4.i.i38.if.end15.i.i45_crit_edge
  %129 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %115, align 4
  br label %initio_unlink_pend_scb.exit.i52

if.end17.i.i47:                                   ; preds = %while.body.i.i35.if.end17.i.i47_crit_edge, %while.body.i.preheader.i32.if.end17.i.i47_crit_edge
  %tmp.037.i48.i = phi ptr [ %131, %while.body.i.i35.if.end17.i.i47_crit_edge ], [ %119, %while.body.i.preheader.i32.if.end17.i.i47_crit_edge ]
  %130 = ptrtoint ptr %tmp.037.i48.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tmp.037.i48.i, align 4
  %cmp.not.i.i46 = icmp eq ptr %131, null
  br i1 %cmp.not.i.i46, label %if.end17.i.i47.initio_unlink_pend_scb.exit.i52_crit_edge, label %while.body.i.i35

if.end17.i.i47.initio_unlink_pend_scb.exit.i52_crit_edge: ; preds = %if.end17.i.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit.i52

initio_unlink_pend_scb.exit.i52:                  ; preds = %if.end17.i.i47.initio_unlink_pend_scb.exit.i52_crit_edge, %if.end15.i.i45, %sw.bb1.initio_unlink_pend_scb.exit.i52_crit_edge
  %tagmsg.i.i48 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %115, i32 0, i32 23
  %132 = ptrtoint ptr %tagmsg.i.i48 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %tagmsg.i.i48, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i.i49 = icmp eq i8 %133, 0
  %target1.i.i50 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %115, i32 0, i32 13
  %134 = ptrtoint ptr %target1.i.i50 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %target1.i.i50, align 2
  %idxprom2.i.i51 = zext i8 %135 to i32
  br i1 %tobool.not.i.i49, label %if.else.i44.i, label %if.then.i43.i

if.then.i43.i:                                    ; preds = %initio_unlink_pend_scb.exit.i52
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i53 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom2.i.i51
  %136 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i.i53, align 1
  %inc.i.i54 = add i8 %137, 1
  store i8 %inc.i.i54, ptr %arrayidx.i.i53, align 1
  br label %initio_append_busy_scb.exit.i64

if.else.i44.i:                                    ; preds = %initio_unlink_pend_scb.exit.i52
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i.i55 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom2.i.i51
  %138 = ptrtoint ptr %arrayidx3.i.i55 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx3.i.i55, align 4
  %140 = or i16 %139, 1024
  store i16 %140, ptr %arrayidx3.i.i55, align 4
  br label %initio_append_busy_scb.exit.i64

initio_append_busy_scb.exit.i64:                  ; preds = %if.else.i44.i, %if.then.i43.i
  %status.i.i56 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %115, i32 0, i32 1
  %141 = ptrtoint ptr %status.i.i56 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 16, ptr %status.i.i56, align 4
  %142 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %115, align 4
  %143 = ptrtoint ptr %last_busy.i.i57 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %last_busy.i.i57, align 4
  %cmp.not.i45.i = icmp eq ptr %144, null
  %first_busy.sink.i.i59 = select i1 %cmp.not.i45.i, ptr %first_busy.i.i58, ptr %144
  %145 = ptrtoint ptr %first_busy.sink.i.i59 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %115, ptr %first_busy.sink.i.i59, align 4
  store ptr %115, ptr %last_busy.i.i57, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %sconfig0.i60 = getelementptr inbounds %struct.target_control, ptr %117, i32 0, i32 2
  %146 = ptrtoint ptr %sconfig0.i60 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %sconfig0.i60, align 1
  %148 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %host, align 4
  %conv.i61 = zext i16 %149 to i32
  %add2.i62 = add nuw nsw i32 %conv.i61, -18874233
  %150 = inttoptr i32 %add2.i62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 %147) #8, !srcloc !107
  %151 = ptrtoint ptr %jsstatus1.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %jsstatus1.i, align 2
  %153 = and i8 %152, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i63 = icmp eq i8 %153, 0
  br i1 %tobool.not.i63, label %do.body5.i69, label %initio_append_busy_scb.exit.i64.for.cond.backedge_crit_edge

initio_append_busy_scb.exit.i64.for.cond.backedge_crit_edge: ; preds = %initio_append_busy_scb.exit.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

do.body5.i69:                                     ; preds = %initio_append_busy_scb.exit.i64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %154 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %host, align 4
  %conv9.i65 = zext i16 %155 to i32
  %add12.i66 = add nuw nsw i32 %conv9.i65, -18874235
  %156 = inttoptr i32 %add12.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %157 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %host, align 4
  %conv18.i67 = zext i16 %158 to i32
  %add21.i68 = add nuw nsw i32 %conv18.i67, -18874224
  %159 = inttoptr i32 %add21.i68 to ptr
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  %161 = and i8 %160, 71
  %162 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %host, align 4
  %conv28.i = zext i16 %163 to i32
  %add31.i = add nuw nsw i32 %conv28.i, -18874224
  %164 = inttoptr i32 %add31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 %161) #8, !srcloc !107
  br label %for.cond.backedge

sw.bb3:                                           ; preds = %for.cond
  %165 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %active, align 4
  %167 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %active_tc1.i41.i, align 4
  %next_state.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %166, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %sw.bb3
  %169 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %phase.i144, align 1
  %171 = zext i8 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %170, label %for.cond.i.cleanup.sink.split.i_crit_edge [
    i8 2, label %for.cond2.preheader.i
    i8 7, label %sw.bb26.i
    i8 3, label %sw.bb32.i
    i8 6, label %sw.bb38.i
  ]

for.cond.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

for.cond2.preheader.i:                            ; preds = %for.cond.i
  %cdblen.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %166, i32 0, i32 21
  %172 = ptrtoint ptr %cdblen.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %cdblen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp195.not.i = icmp eq i8 %173, 0
  br i1 %cmp195.not.i, label %for.cond2.preheader.i.do.body7.i_crit_edge, label %for.cond2.preheader.i.do.body.i_crit_edge

for.cond2.preheader.i.do.body.i_crit_edge:        ; preds = %for.cond2.preheader.i
  br label %do.body.i

for.cond2.preheader.i.do.body7.i_crit_edge:       ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond2.preheader.i.do.body.i_crit_edge
  %i.0196.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %for.cond2.preheader.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %arrayidx.i74 = getelementptr %struct.scsi_ctrl_blk, ptr %166, i32 0, i32 25, i32 %i.0196.i
  %174 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.i74, align 1
  %176 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %host, align 4
  %conv5.i = zext i16 %177 to i32
  %add6.i = add nuw nsw i32 %conv5.i, -18874228
  %178 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 %175) #8, !srcloc !107
  %inc.i = add nuw nsw i32 %i.0196.i, 1
  %179 = ptrtoint ptr %cdblen.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %cdblen.i, align 4
  %conv3.i = zext i8 %180 to i32
  %cmp.i75 = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp.i75, label %do.body.i.do.body.i_crit_edge, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body7.i:                                       ; preds = %do.body.i.do.body7.i_crit_edge, %for.cond2.preheader.i.do.body7.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  %181 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %host, align 4
  %conv11.i = zext i16 %182 to i32
  %add14.i = add nuw nsw i32 %conv11.i, -18874223
  %183 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 3) #8, !srcloc !107
  %call16.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp17.i = icmp eq i32 %call16.i, -1
  br i1 %cmp17.i, label %do.body7.i.cleanup_crit_edge, label %if.end.i76

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i76:                                       ; preds = %do.body7.i
  %184 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %phase.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %185)
  %cmp21.i = icmp eq i8 %185, 2
  br i1 %cmp21.i, label %if.end.i76.cleanup.sink.split.i_crit_edge, label %if.end.i76.for.cond.backedge_crit_edge

if.end.i76.for.cond.backedge_crit_edge:           ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end.i76.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

sw.bb26.i:                                        ; preds = %for.cond.i
  %186 = ptrtoint ptr %next_state.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 3, ptr %next_state.i, align 1
  %call27.i = tail call fastcc i32 @initio_msgin(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, -1
  br i1 %cmp28.i, label %sw.bb26.i.cleanup_crit_edge, label %sw.bb26.i.for.cond.i.backedge_crit_edge

sw.bb26.i.for.cond.i.backedge_crit_edge:          ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.backedge

sw.bb26.i.cleanup_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb32.i:                                        ; preds = %for.cond.i
  %call33.i = tail call fastcc i32 @initio_status_msg(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33.i)
  %cmp34.i = icmp eq i32 %call33.i, -1
  br i1 %cmp34.i, label %sw.bb32.i.cleanup_crit_edge, label %sw.bb32.i.for.cond.i.backedge_crit_edge

sw.bb32.i.for.cond.i.backedge_crit_edge:          ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.backedge

sw.bb32.i.cleanup_crit_edge:                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb38.i:                                        ; preds = %for.cond.i
  %187 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %168, align 2
  %189 = and i16 %188, 528
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool.not.i77 = icmp eq i16 %189, 0
  br i1 %tobool.not.i77, label %if.else.i81, label %do.body42.i

do.body42.i:                                      ; preds = %sw.bb38.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %190 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %host, align 4
  %conv46.i = zext i16 %191 to i32
  %add49.i = add nuw nsw i32 %conv46.i, -18874228
  %192 = inttoptr i32 %add49.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 8) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %193 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %host, align 4
  %conv55.i78 = zext i16 %194 to i32
  %add58.i79 = add nuw nsw i32 %conv55.i78, -18874223
  %195 = inttoptr i32 %add58.i79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 3) #8, !srcloc !107
  %call60.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call60.i)
  %cmp61.i = icmp eq i32 %call60.i, -1
  br i1 %cmp61.i, label %do.body42.i.cleanup_crit_edge, label %do.body42.i.for.cond.i.backedge_crit_edge

do.body42.i.for.cond.i.backedge_crit_edge:        ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.backedge

do.body42.i.cleanup_crit_edge:                    ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i81:                                      ; preds = %sw.bb38.i
  %or.i80 = or i16 %188, 512
  %196 = ptrtoint ptr %168 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %or.i80, ptr %168, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %197 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %host, align 4
  %conv72.i = zext i16 %198 to i32
  %add75.i = add nuw nsw i32 %conv72.i, -18874228
  %199 = inttoptr i32 %add75.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %200 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %host, align 4
  %conv81.i = zext i16 %201 to i32
  %add84.i = add nuw nsw i32 %conv81.i, -18874228
  %202 = inttoptr i32 %add84.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 3) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %203 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %host, align 4
  %conv90.i = zext i16 %204 to i32
  %add93.i = add nuw nsw i32 %conv90.i, -18874228
  %205 = inttoptr i32 %add93.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  %206 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %168, align 2
  %208 = and i16 %207, 7
  %and100.i = zext i16 %208 to i32
  %arrayidx101.i = getelementptr [8 x i8], ptr @initio_rate_tbl, i32 0, i32 %and100.i
  %209 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx101.i, align 1
  %211 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %host, align 4
  %conv103.i = zext i16 %212 to i32
  %add106.i = add nuw nsw i32 %conv103.i, -18874228
  %213 = inttoptr i32 %add106.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %213, i8 %210) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %214 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %host, align 4
  %conv112.i = zext i16 %215 to i32
  %add115.i = add nuw nsw i32 %conv112.i, -18874228
  %216 = inttoptr i32 %add115.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 15) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %217 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %host, align 4
  %conv121.i = zext i16 %218 to i32
  %add124.i = add nuw nsw i32 %conv121.i, -18874223
  %219 = inttoptr i32 %add124.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %219, i8 3) #8, !srcloc !107
  %call126.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call126.i)
  %cmp127.i = icmp eq i32 %call126.i, -1
  br i1 %cmp127.i, label %if.else.i81.cleanup_crit_edge, label %do.body131.i

if.else.i81.cleanup_crit_edge:                    ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body131.i:                                     ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %220 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %host, align 4
  %conv135.i = zext i16 %221 to i32
  %add138.i = add nuw nsw i32 %conv135.i, -18874235
  %222 = inttoptr i32 %add138.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %223 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %host, align 4
  %conv144.i = zext i16 %224 to i32
  %add147.i = add nuw nsw i32 %conv144.i, -18874224
  %225 = inttoptr i32 %add147.i to ptr
  %226 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %225) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  %227 = and i8 %226, 71
  %228 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %host, align 4
  %conv154.i = zext i16 %229 to i32
  %add157.i = add nuw nsw i32 %conv154.i, -18874224
  %230 = inttoptr i32 %add157.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %230, i8 %227) #8, !srcloc !107
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %do.body131.i, %do.body42.i.for.cond.i.backedge_crit_edge, %sw.bb32.i.for.cond.i.backedge_crit_edge, %sw.bb26.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

cleanup.sink.split.i:                             ; preds = %if.end.i76.cleanup.sink.split.i_crit_edge, %for.cond.i.cleanup.sink.split.i_crit_edge
  tail call fastcc void @initio_bad_seq(ptr noundef %host) #8
  br label %cleanup

sw.bb5:                                           ; preds = %for.cond
  %231 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %active, align 4
  %flags.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %232, i32 0, i32 12
  %233 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %flags.i, align 1
  %235 = and i8 %234, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %235)
  %cmp.i84 = icmp eq i8 %235, 24
  br i1 %cmp.i84, label %sw.bb5.for.cond.backedge_crit_edge, label %for.cond.preheader.i

sw.bb5.for.cond.backedge_crit_edge:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.preheader.i:                             ; preds = %sw.bb5
  %buflen.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %232, i32 0, i32 16
  %236 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %buflen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp2112.i = icmp eq i32 %237, 0
  br i1 %cmp2112.i, label %for.cond.preheader.i.for.cond.backedge_crit_edge, label %if.end5.lr.ph.i

for.cond.preheader.i.for.cond.backedge_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end5.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %next_state.i86 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %232, i32 0, i32 2
  %hastat.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %232, i32 0, i32 19
  br label %if.end5.i

if.end5.i:                                        ; preds = %sw.epilog.i91.if.end5.i_crit_edge, %if.end5.lr.ph.i
  %238 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %phase.i144, align 1
  %240 = zext i8 %239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %239, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 7, label %sw.bb18.i
    i8 6, label %sw.bb24.i
    i8 1, label %sw.bb54.i
    i8 0, label %sw.bb56.i
  ]

sw.bb.i:                                          ; preds = %if.end5.i
  %241 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %flags.i, align 1
  %243 = and i8 %242, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %cmp10.not.i = icmp eq i8 %243, 0
  br i1 %cmp10.not.i, label %sw.bb.i.if.end13.i_crit_edge, label %if.then12.i

sw.bb.i.if.end13.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then12.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = ptrtoint ptr %hastat.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 18, ptr %hastat.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %sw.bb.i.if.end13.i_crit_edge
  %call.i = tail call fastcc i32 @initio_status_msg(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp14.i = icmp eq i32 %call.i, -1
  br i1 %cmp14.i, label %if.end13.i.cleanup_crit_edge, label %if.end13.i.sw.epilog.i91_crit_edge

if.end13.i.sw.epilog.i91_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i91

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb18.i:                                        ; preds = %if.end5.i
  %245 = ptrtoint ptr %next_state.i86 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 4, ptr %next_state.i86, align 1
  %call19.i = tail call fastcc i32 @initio_msgin(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i)
  %cmp20.i = icmp eq i32 %call19.i, -1
  br i1 %cmp20.i, label %sw.bb18.i.cleanup_crit_edge, label %sw.bb18.i.sw.epilog.i91_crit_edge

sw.bb18.i.sw.epilog.i91_crit_edge:                ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i91

sw.bb18.i.cleanup_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb24.i:                                        ; preds = %if.end5.i
  %246 = ptrtoint ptr %jsstatus0.i96 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %jsstatus0.i96, align 4
  %248 = and i8 %247, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool.not.i87 = icmp eq i8 %248, 0
  br i1 %tobool.not.i87, label %do.body.i89, label %if.then27.i

if.then27.i:                                      ; preds = %sw.bb24.i
  %249 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %buflen.i, align 4
  %250 = ptrtoint ptr %hastat.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 18, ptr %hastat.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  tail call void @arm_heavy_mb() #8
  %251 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %host, align 4
  %conv.i.i = zext i16 %252 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, -18874228
  %253 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %253, i8 5) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %254 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %host, align 4
  %conv5.i.i = zext i16 %255 to i32
  %add8.i.i = add nuw nsw i32 %conv5.i.i, -18874223
  %256 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %256, i8 3) #8, !srcloc !107
  %call10.i.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i.i)
  %cmp31.i = icmp eq i32 %call10.i.i, -1
  br i1 %cmp31.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.for.cond.backedge_crit_edge

if.then27.i.for.cond.backedge_crit_edge:          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.backedge:                                ; preds = %if.end.i145.for.cond.backedge_crit_edge, %do.body46.i.i135, %do.body37.i.i, %if.else247.i, %for.inc.i.for.cond.backedge_crit_edge, %if.then228.i, %if.then219.i.for.cond.backedge_crit_edge, %if.then212.i, %sw.epilog.i91.for.cond.backedge_crit_edge, %sw.bb56.i.for.cond.backedge_crit_edge, %sw.bb54.i.for.cond.backedge_crit_edge, %if.then27.i.for.cond.backedge_crit_edge, %for.cond.preheader.i.for.cond.backedge_crit_edge, %sw.bb5.for.cond.backedge_crit_edge, %if.end.i76.for.cond.backedge_crit_edge, %do.body5.i69, %initio_append_busy_scb.exit.i64.for.cond.backedge_crit_edge, %do.body162.i
  %next.0.be = phi i8 [ 3, %do.body162.i ], [ 3, %do.body5.i69 ], [ 4, %initio_append_busy_scb.exit.i64.for.cond.backedge_crit_edge ], [ 4, %if.end.i76.for.cond.backedge_crit_edge ], [ 6, %sw.bb5.for.cond.backedge_crit_edge ], [ 6, %if.then27.i.for.cond.backedge_crit_edge ], [ 6, %sw.bb54.i.for.cond.backedge_crit_edge ], [ 6, %sw.bb56.i.for.cond.backedge_crit_edge ], [ 6, %for.cond.preheader.i.for.cond.backedge_crit_edge ], [ 6, %if.then212.i ], [ 4, %if.else247.i ], [ 4, %if.then228.i ], [ 6, %if.then219.i.for.cond.backedge_crit_edge ], [ 6, %do.body37.i.i ], [ 6, %do.body46.i.i135 ], [ 6, %if.end.i145.for.cond.backedge_crit_edge ], [ 6, %sw.epilog.i91.for.cond.backedge_crit_edge ], [ 6, %for.inc.i.for.cond.backedge_crit_edge ]
  br label %for.cond

do.body.i89:                                      ; preds = %sw.bb24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %257 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %host, align 4
  %conv35.i = zext i16 %258 to i32
  %add37.i = add nuw nsw i32 %conv35.i, -18874228
  %259 = inttoptr i32 %add37.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 8) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %260 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %host, align 4
  %conv43.i88 = zext i16 %261 to i32
  %add46.i = add nuw nsw i32 %conv43.i88, -18874223
  %262 = inttoptr i32 %add46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %262, i8 3) #8, !srcloc !107
  %call48.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call48.i)
  %cmp49.i = icmp eq i32 %call48.i, -1
  br i1 %cmp49.i, label %do.body.i89.cleanup_crit_edge, label %do.body.i89.sw.epilog.i91_crit_edge

do.body.i89.sw.epilog.i91_crit_edge:              ; preds = %do.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i91

do.body.i89.cleanup_crit_edge:                    ; preds = %do.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb54.i:                                        ; preds = %if.end5.i
  %263 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %active, align 4
  %flags.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 12
  %265 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %flags.i.i, align 1
  %267 = and i8 %266, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %267)
  %cmp.i.i = icmp eq i8 %267, 16
  br i1 %cmp.i.i, label %sw.bb54.i.for.cond.backedge_crit_edge, label %do.body.i.i

sw.bb54.i.for.cond.backedge_crit_edge:            ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

do.body.i.i:                                      ; preds = %sw.bb54.i
  %flags.i.i.le = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %buflen.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 16
  %268 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %buflen.i.i, align 4
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #8
  %271 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %host, align 4
  %conv2.i.i = zext i16 %272 to i32
  %add4.i.i = add nuw nsw i32 %conv2.i.i, -18874240
  %273 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %273, i32 %270) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %274 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %host, align 4
  %conv9.i.i = zext i16 %275 to i32
  %add12.i.i = add nuw nsw i32 %conv9.i.i, -18874223
  %276 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %276, i8 -61) #8, !srcloc !107
  %277 = ptrtoint ptr %flags.i.i.le to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %flags.i.i.le, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %278)
  %tobool.not.i.i90 = icmp sgt i8 %278, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i90, label %do.body46.i.i, label %do.body18.i.i

do.body18.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sglen.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 17
  %279 = ptrtoint ptr %sglen.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %sglen.i.i, align 4
  %conv21.i.i = zext i8 %280 to i32
  %shl.i.i = shl nuw nsw i32 %conv21.i.i, 3
  %281 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #8
  %282 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %host, align 4
  %conv23.i.i = zext i16 %283 to i32
  %add26.i.i = add nuw nsw i32 %conv23.i.i, -18874160
  %284 = inttoptr i32 %add26.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %284, i32 %281) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %bufptr.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 15
  %285 = ptrtoint ptr %bufptr.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %bufptr.i.i, align 4
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #8
  %288 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %host, align 4
  %conv32.i.i = zext i16 %289 to i32
  %add35.i.i = add nuw nsw i32 %conv32.i.i, -18874176
  %290 = inttoptr i32 %add35.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %290, i32 %287) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %291 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %host, align 4
  %conv41.i.i = zext i16 %292 to i32
  %add44.i.i = add nuw nsw i32 %conv41.i.i, -18874152
  %293 = inttoptr i32 %add44.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %293, i8 -95) #8, !srcloc !107
  br label %if.end75.i.i

do.body46.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %294 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %buflen.i.i, align 4
  %296 = tail call i32 @llvm.bswap.i32(i32 %295) #8
  %297 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %host, align 4
  %conv51.i.i = zext i16 %298 to i32
  %add54.i.i = add nuw nsw i32 %conv51.i.i, -18874160
  %299 = inttoptr i32 %add54.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %299, i32 %296) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %bufptr59.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 15
  %300 = ptrtoint ptr %bufptr59.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %bufptr59.i.i, align 4
  %302 = tail call i32 @llvm.bswap.i32(i32 %301) #8
  %303 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %host, align 4
  %conv61.i.i = zext i16 %304 to i32
  %add64.i.i = add nuw nsw i32 %conv61.i.i, -18874176
  %305 = inttoptr i32 %add64.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %305, i32 %302) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %306 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %host, align 4
  %conv70.i.i = zext i16 %307 to i32
  %add73.i.i = add nuw nsw i32 %conv70.i.i, -18874152
  %308 = inttoptr i32 %add73.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %308, i8 33) #8, !srcloc !107
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %do.body46.i.i, %do.body18.i.i
  %next_state.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %264, i32 0, i32 2
  %309 = ptrtoint ptr %next_state.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 5, ptr %next_state.i.i, align 1
  br label %cleanup

sw.bb56.i:                                        ; preds = %if.end5.i
  %310 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %active, align 4
  %flags.i77.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 12
  %312 = ptrtoint ptr %flags.i77.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %flags.i77.i, align 1
  %314 = and i8 %313, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %314)
  %cmp.i78.i = icmp eq i8 %314, 8
  br i1 %cmp.i78.i, label %sw.bb56.i.for.cond.backedge_crit_edge, label %do.body.i85.i

sw.bb56.i.for.cond.backedge_crit_edge:            ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

do.body.i85.i:                                    ; preds = %sw.bb56.i
  %flags.i77.i.le = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %buflen.i79.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 16
  %315 = ptrtoint ptr %buflen.i79.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %buflen.i79.i, align 4
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #8
  %318 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %host, align 4
  %conv2.i80.i = zext i16 %319 to i32
  %add4.i81.i = add nuw nsw i32 %conv2.i80.i, -18874240
  %320 = inttoptr i32 %add4.i81.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %320, i32 %317) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %321 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %host, align 4
  %conv9.i82.i = zext i16 %322 to i32
  %add12.i83.i = add nuw nsw i32 %conv9.i82.i, -18874223
  %323 = inttoptr i32 %add12.i83.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %323, i8 67) #8, !srcloc !107
  %324 = ptrtoint ptr %flags.i77.i.le to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %flags.i77.i.le, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %325)
  %tobool.not.i84.i = icmp sgt i8 %325, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i84.i, label %do.body46.i104.i, label %do.body18.i96.i

do.body18.i96.i:                                  ; preds = %do.body.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  %sglen.i86.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 17
  %326 = ptrtoint ptr %sglen.i86.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %sglen.i86.i, align 4
  %conv21.i87.i = zext i8 %327 to i32
  %shl.i88.i = shl nuw nsw i32 %conv21.i87.i, 3
  %328 = tail call i32 @llvm.bswap.i32(i32 %shl.i88.i) #8
  %329 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %host, align 4
  %conv23.i89.i = zext i16 %330 to i32
  %add26.i90.i = add nuw nsw i32 %conv23.i89.i, -18874160
  %331 = inttoptr i32 %add26.i90.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %331, i32 %328) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %bufptr.i91.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 15
  %332 = ptrtoint ptr %bufptr.i91.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %bufptr.i91.i, align 4
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #8
  %335 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %host, align 4
  %conv32.i92.i = zext i16 %336 to i32
  %add35.i93.i = add nuw nsw i32 %conv32.i92.i, -18874176
  %337 = inttoptr i32 %add35.i93.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %337, i32 %334) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %338 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %host, align 4
  %conv41.i94.i = zext i16 %339 to i32
  %add44.i95.i = add nuw nsw i32 %conv41.i94.i, -18874152
  %340 = inttoptr i32 %add44.i95.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %340, i8 -127) #8, !srcloc !107
  br label %if.end75.i106.i

do.body46.i104.i:                                 ; preds = %do.body.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  %341 = ptrtoint ptr %buflen.i79.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %buflen.i79.i, align 4
  %343 = tail call i32 @llvm.bswap.i32(i32 %342) #8
  %344 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %host, align 4
  %conv51.i97.i = zext i16 %345 to i32
  %add54.i98.i = add nuw nsw i32 %conv51.i97.i, -18874160
  %346 = inttoptr i32 %add54.i98.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %346, i32 %343) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  tail call void @arm_heavy_mb() #8
  %bufptr59.i99.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 15
  %347 = ptrtoint ptr %bufptr59.i99.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %bufptr59.i99.i, align 4
  %349 = tail call i32 @llvm.bswap.i32(i32 %348) #8
  %350 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %host, align 4
  %conv61.i100.i = zext i16 %351 to i32
  %add64.i101.i = add nuw nsw i32 %conv61.i100.i, -18874176
  %352 = inttoptr i32 %add64.i101.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %352, i32 %349) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %353 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %host, align 4
  %conv70.i102.i = zext i16 %354 to i32
  %add73.i103.i = add nuw nsw i32 %conv70.i102.i, -18874152
  %355 = inttoptr i32 %add73.i103.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %355, i8 1) #8, !srcloc !107
  br label %if.end75.i106.i

if.end75.i106.i:                                  ; preds = %do.body46.i104.i, %do.body18.i96.i
  %next_state.i105.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %311, i32 0, i32 2
  %356 = ptrtoint ptr %next_state.i105.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 5, ptr %next_state.i105.i, align 1
  br label %cleanup

sw.default.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host) #8
  br label %cleanup

sw.epilog.i91:                                    ; preds = %do.body.i89.sw.epilog.i91_crit_edge, %sw.bb18.i.sw.epilog.i91_crit_edge, %if.end13.i.sw.epilog.i91_crit_edge
  %357 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %buflen.i, align 4
  %cmp2.i = icmp eq i32 %358, 0
  br i1 %cmp2.i, label %sw.epilog.i91.for.cond.backedge_crit_edge, label %sw.epilog.i91.if.end5.i_crit_edge

sw.epilog.i91.if.end5.i_crit_edge:                ; preds = %sw.epilog.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

sw.epilog.i91.for.cond.backedge_crit_edge:        ; preds = %sw.epilog.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

sw.bb7:                                           ; preds = %for.cond
  %359 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %active, align 4
  %361 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %host, align 4
  %conv.i94 = zext i16 %362 to i32
  %add1.i = add nuw nsw i32 %conv.i94, -18874240
  %363 = inttoptr i32 %add1.i to ptr
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %363) #8, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  %365 = and i32 %364, -256
  %366 = tail call i32 @llvm.bswap.i32(i32 %365) #8
  %367 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %host, align 4
  %conv6.i = zext i16 %368 to i32
  %add9.i = add nuw nsw i32 %conv6.i, -18874152
  %369 = inttoptr i32 %add9.i to ptr
  %370 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %369) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %371 = and i8 %370, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %tobool.not.i95 = icmp eq i8 %371, 0
  br i1 %tobool.not.i95, label %if.else.i104, label %if.then.i

if.then.i:                                        ; preds = %sw.bb7
  %372 = ptrtoint ptr %jsstatus0.i96 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %jsstatus0.i96, align 4
  %374 = and i8 %373, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool17.not.i = icmp eq i8 %374, 0
  br i1 %tobool17.not.i, label %if.then.i.if.end.i98_crit_edge, label %if.then18.i

if.then.i.if.end.i98_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i98

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %hastat.i97 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 19
  %375 = ptrtoint ptr %hastat.i97 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 18, ptr %hastat.i97, align 2
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then18.i, %if.then.i.if.end.i98_crit_edge
  %376 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %host, align 4
  %conv21.i = zext i16 %377 to i32
  %add24.i = add nuw nsw i32 %conv21.i, -18874147
  %378 = inttoptr i32 %add24.i to ptr
  %379 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %378) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %380 = and i8 %379, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool30.not.i = icmp eq i8 %380, 0
  br i1 %tobool30.not.i, label %if.end.i98.if.end209.i_crit_edge, label %do.body.i100

if.end.i98.if.end209.i_crit_edge:                 ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i

do.body.i100:                                     ; preds = %if.end.i98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  %381 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %host, align 4
  %conv34.i = zext i16 %382 to i32
  %add37.i99 = add nuw nsw i32 %conv34.i, -18874140
  %383 = inttoptr i32 %add37.i99 to ptr
  %384 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %383) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  %385 = or i8 %384, -128
  %386 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %host, align 4
  %conv44.i = zext i16 %387 to i32
  %add47.i = add nuw nsw i32 %conv44.i, -18874140
  %388 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %388, i8 %385) #8, !srcloc !107
  %389 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %host, align 4
  %conv51311.i = zext i16 %390 to i32
  %add54312.i = add nuw nsw i32 %conv51311.i, -18874147
  %391 = inttoptr i32 %add54312.i to ptr
  %392 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %391) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %393 = and i8 %392, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %393)
  %tobool60.not313.i = icmp eq i8 %393, 0
  br i1 %tobool60.not313.i, label %do.body.i100.if.end209.i_crit_edge, label %do.body.i100.do.end65.i_crit_edge

do.body.i100.do.end65.i_crit_edge:                ; preds = %do.body.i100
  br label %do.end65.i

do.body.i100.if.end209.i_crit_edge:               ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i

do.end65.i:                                       ; preds = %do.end65.i.do.end65.i_crit_edge, %do.body.i100.do.end65.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !236
  %394 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %host, align 4
  %conv51.i = zext i16 %395 to i32
  %add54.i = add nuw nsw i32 %conv51.i, -18874147
  %396 = inttoptr i32 %add54.i to ptr
  %397 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %396) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %398 = and i8 %397, 1
  %tobool60.not.i = icmp eq i8 %398, 0
  br i1 %tobool60.not.i, label %do.end65.i.if.end209.i_crit_edge, label %do.end65.i.do.end65.i_crit_edge

do.end65.i.do.end65.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65.i

do.end65.i.if.end209.i_crit_edge:                 ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i

if.else.i104:                                     ; preds = %sw.bb7
  %399 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %host, align 4
  %conv73.i101 = zext i16 %400 to i32
  %add76.i102 = add nuw nsw i32 %conv73.i101, -18874234
  %401 = inttoptr i32 %add76.i102 to ptr
  %402 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %401) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %403 = and i8 %402, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %403)
  %cmp.i103 = icmp eq i8 %403, 0
  br i1 %cmp.i103, label %if.then83.i, label %if.else.i104.if.end114.i_crit_edge

if.else.i104.if.end114.i_crit_edge:               ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

if.then83.i:                                      ; preds = %if.else.i104
  %404 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %active_tc1.i41.i, align 4
  %js_period.i = getelementptr inbounds %struct.target_control, ptr %405, i32 0, i32 1
  %406 = ptrtoint ptr %js_period.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %js_period.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %407)
  %tobool86.not.i = icmp sgt i8 %407, -1
  %408 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %host, align 4
  %conv103.i105 = zext i16 %409 to i32
  %add106.i106 = add nuw nsw i32 %conv103.i105, -18874237
  %410 = inttoptr i32 %add106.i106 to ptr
  %411 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %410) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool86.not.i, label %if.else100.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #10
  %412 = shl i8 %411, 1
  %413 = and i8 %412, 62
  %shl.i = zext i8 %413 to i32
  %add99.i = add nuw nsw i32 %366, %shl.i
  br label %if.end114.i

if.else100.i:                                     ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #10
  %414 = and i8 %411, 31
  %and111.i = zext i8 %414 to i32
  %add112.i = add nuw nsw i32 %366, %and111.i
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.else100.i, %if.then87.i, %if.else.i104.if.end114.i_crit_edge
  %cnt.0.i = phi i32 [ %add99.i, %if.then87.i ], [ %add112.i, %if.else100.i ], [ %366, %if.else.i104.if.end114.i_crit_edge ]
  %415 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %host, align 4
  %conv117.i = zext i16 %416 to i32
  %add120.i = add nuw nsw i32 %conv117.i, -18874147
  %417 = inttoptr i32 %add120.i to ptr
  %418 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %417) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %419 = and i8 %418, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool126.not.i = icmp eq i8 %419, 0
  br i1 %tobool126.not.i, label %if.end114.i.if.end162.i_crit_edge, label %do.body128.i

if.end114.i.if.end162.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162.i

do.body128.i:                                     ; preds = %if.end114.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %420 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %host, align 4
  %conv132.i = zext i16 %421 to i32
  %add135.i = add nuw nsw i32 %conv132.i, -18874152
  %422 = inttoptr i32 %add135.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %422, i8 4) #8, !srcloc !107
  %423 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %host, align 4
  %conv140314.i = zext i16 %424 to i32
  %add143315.i = add nuw nsw i32 %conv140314.i, -18874148
  %425 = inttoptr i32 %add143315.i to ptr
  %426 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %425) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  %427 = and i8 %426, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %cmp149316.i = icmp eq i8 %427, 0
  br i1 %cmp149316.i, label %do.body128.i.do.end156.i_crit_edge, label %do.body128.i.if.end162.i_crit_edge

do.body128.i.if.end162.i_crit_edge:               ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162.i

do.body128.i.do.end156.i_crit_edge:               ; preds = %do.body128.i
  br label %do.end156.i

do.end156.i:                                      ; preds = %do.end156.i.do.end156.i_crit_edge, %do.body128.i.do.end156.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !242
  %428 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %host, align 4
  %conv140.i107 = zext i16 %429 to i32
  %add143.i108 = add nuw nsw i32 %conv140.i107, -18874148
  %430 = inttoptr i32 %add143.i108 to ptr
  %431 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %430) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  %432 = and i8 %431, 4
  %cmp149.i = icmp eq i8 %432, 0
  br i1 %cmp149.i, label %do.end156.i.do.end156.i_crit_edge, label %do.end156.i.if.end162.i_crit_edge

do.end156.i.if.end162.i_crit_edge:                ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162.i

do.end156.i.do.end156.i_crit_edge:                ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156.i

if.end162.i:                                      ; preds = %do.end156.i.if.end162.i_crit_edge, %do.body128.i.if.end162.i_crit_edge, %if.end114.i.if.end162.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.0.i)
  %cmp163.i = icmp eq i32 %cnt.0.i, 1
  br i1 %cmp163.i, label %land.lhs.true.i, label %if.end162.i.if.else183.i_crit_edge

if.end162.i.if.else183.i_crit_edge:               ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else183.i

land.lhs.true.i:                                  ; preds = %if.end162.i
  %433 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %phase.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %cmp166.i = icmp eq i8 %434, 0
  br i1 %cmp166.i, label %do.body169.i, label %land.lhs.true.i.if.else183.i_crit_edge

land.lhs.true.i.if.else183.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else183.i

do.body169.i:                                     ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  tail call void @arm_heavy_mb() #8
  %435 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %host, align 4
  %conv173.i = zext i16 %436 to i32
  %add176.i = add nuw nsw i32 %conv173.i, -18874223
  %437 = inttoptr i32 %add176.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %437, i8 3) #8, !srcloc !107
  %call178.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call178.i)
  %cmp179.i = icmp eq i32 %call178.i, -1
  br i1 %cmp179.i, label %do.body169.i.cleanup_crit_edge, label %do.body169.i.if.then212.i_crit_edge

do.body169.i.if.then212.i_crit_edge:              ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then212.i

do.body169.i.cleanup_crit_edge:                   ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else183.i:                                     ; preds = %land.lhs.true.i.if.else183.i_crit_edge, %if.end162.i.if.else183.i_crit_edge
  %438 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %host, align 4
  %conv186.i = zext i16 %439 to i32
  %add189.i = add nuw nsw i32 %conv186.i, -18874234
  %440 = inttoptr i32 %add189.i to ptr
  %441 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %440) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %442 = and i8 %441, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %442)
  %cmp195.i = icmp eq i8 %442, 0
  br i1 %cmp195.i, label %do.body198.i, label %if.else183.i.if.end209.i_crit_edge

if.else183.i.if.end209.i_crit_edge:               ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i

do.body198.i:                                     ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  %443 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %443)
  %444 = load i16, ptr %host, align 4
  %conv202.i = zext i16 %444 to i32
  %add205.i = add nuw nsw i32 %conv202.i, -18874235
  %445 = inttoptr i32 %add205.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %445, i8 16) #8, !srcloc !107
  br label %if.end209.i

if.end209.i:                                      ; preds = %do.body198.i, %if.else183.i.if.end209.i_crit_edge, %do.end65.i.if.end209.i_crit_edge, %do.body.i100.if.end209.i_crit_edge, %if.end.i98.if.end209.i_crit_edge
  %cnt.1.i = phi i32 [ %366, %if.end.i98.if.end209.i_crit_edge ], [ %cnt.0.i, %do.body198.i ], [ %cnt.0.i, %if.else183.i.if.end209.i_crit_edge ], [ %366, %do.body.i100.if.end209.i_crit_edge ], [ %366, %do.end65.i.if.end209.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1.i)
  %cmp210.i = icmp eq i32 %cnt.1.i, 0
  br i1 %cmp210.i, label %if.end209.i.if.then212.i_crit_edge, label %if.end213.i

if.end209.i.if.then212.i_crit_edge:               ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then212.i

if.then212.i:                                     ; preds = %if.end209.i.if.then212.i_crit_edge, %do.body169.i.if.then212.i_crit_edge
  %buflen.i110 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 16
  %446 = ptrtoint ptr %buflen.i110 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 0, ptr %buflen.i110, align 4
  br label %for.cond.backedge

if.end213.i:                                      ; preds = %if.end209.i
  %buflen214.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 16
  %447 = ptrtoint ptr %buflen214.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %buflen214.i, align 4
  %sub.i = sub i32 %448, %cnt.1.i
  store i32 %cnt.1.i, ptr %buflen214.i, align 4
  %flags.i111 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 12
  %449 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %flags.i111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %450)
  %tobool218.not.i = icmp sgt i8 %450, -1
  br i1 %tobool218.not.i, label %if.else247.i, label %if.then219.i

if.then219.i:                                     ; preds = %if.end213.i
  %sgidx.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 5
  %451 = ptrtoint ptr %sgidx.i to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %sgidx.i, align 4
  %sgmax.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 6
  %453 = ptrtoint ptr %sgmax.i to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %sgmax.i, align 2
  %conv222.i = zext i16 %454 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %452, i16 %454)
  %cmp223317.i = icmp ult i16 %452, %454
  br i1 %cmp223317.i, label %for.body.preheader.i, label %if.then219.i.for.cond.backedge_crit_edge

if.then219.i.for.cond.backedge_crit_edge:         ; preds = %if.then219.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.body.preheader.i:                             ; preds = %if.then219.i
  %idxprom.i = zext i16 %452 to i32
  %arrayidx.i112 = getelementptr %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 30, i32 %idxprom.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0320.i = phi i32 [ %inc.i113, %for.inc.i.for.body.i_crit_edge ], [ %idxprom.i, %for.body.preheader.i ]
  %sgp.0319.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %arrayidx.i112, %for.body.preheader.i ]
  %xcnt.0318.i = phi i32 [ %sub225.i, %for.inc.i.for.body.i_crit_edge ], [ %sub.i, %for.body.preheader.i ]
  %len.i = getelementptr inbounds %struct.sg_entry, ptr %sgp.0319.i, i32 0, i32 1
  %455 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %len.i, align 4
  %sub225.i = sub i32 %xcnt.0318.i, %456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub225.i)
  %cmp226.i = icmp slt i32 %sub225.i, 0
  br i1 %cmp226.i, label %if.then228.i, label %for.inc.i

if.then228.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %len.i.le = getelementptr inbounds %struct.sg_entry, ptr %sgp.0319.i, i32 0, i32 1
  %457 = ptrtoint ptr %sgp.0319.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %sgp.0319.i, align 4
  %add231.i = add i32 %458, %xcnt.0318.i
  store i32 %add231.i, ptr %sgp.0319.i, align 4
  %sub233.i = sub i32 %456, %xcnt.0318.i
  %459 = ptrtoint ptr %len.i.le to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %sub233.i, ptr %len.i.le, align 4
  %460 = ptrtoint ptr %sgidx.i to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %sgidx.i, align 4
  %conv235.i = zext i16 %461 to i32
  %sub236.i = sub nsw i32 %i.0320.i, %conv235.i
  %shl237.i = shl i32 %sub236.i, 3
  %bufptr.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 15
  %462 = ptrtoint ptr %bufptr.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %bufptr.i, align 4
  %add238.i = add i32 %shl237.i, %463
  store i32 %add238.i, ptr %bufptr.i, align 4
  %464 = ptrtoint ptr %sgmax.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %sgmax.i, align 2
  %conv240.i = zext i16 %465 to i32
  %sub241.i = sub nsw i32 %conv240.i, %i.0320.i
  %conv242.i = trunc i32 %sub241.i to i8
  %sglen.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 17
  %466 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %conv242.i, ptr %sglen.i, align 4
  %conv243.i = trunc i32 %i.0320.i to i16
  store i16 %conv243.i, ptr %sgidx.i, align 4
  br label %for.cond.backedge

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.sg_entry, ptr %sgp.0319.i, i32 1
  %inc.i113 = add nuw nsw i32 %i.0320.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i113, %conv222.i
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.backedge_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.cond.backedge_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.else247.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #10
  %bufptr248.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %360, i32 0, i32 15
  %467 = ptrtoint ptr %bufptr248.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %bufptr248.i, align 4
  %add249.i = add i32 %468, %sub.i
  store i32 %add249.i, ptr %bufptr248.i, align 4
  br label %for.cond.backedge

sw.bb9:                                           ; preds = %for.cond
  %469 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %active, align 4
  %next_state.i116 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %470, i32 0, i32 2
  br label %for.cond.i117

for.cond.i117:                                    ; preds = %for.cond.i117.backedge, %sw.bb9
  %471 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %phase.i144, align 1
  %473 = zext i8 %472 to i64
  call void @__sanitizer_cov_trace_switch(i64 %473, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %472, label %sw.default.i136 [
    i8 3, label %sw.bb.i120
    i8 7, label %sw.bb2.i
    i8 6, label %do.body.i122
    i8 1, label %sw.bb26.i125
    i8 0, label %sw.bb28.i
  ]

sw.bb.i120:                                       ; preds = %for.cond.i117
  %call.i118 = tail call fastcc i32 @initio_status_msg(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i118)
  %cmp.i119 = icmp eq i32 %call.i118, -1
  br i1 %cmp.i119, label %sw.bb.i120.cleanup_crit_edge, label %sw.bb.i120.for.cond.i117.backedge_crit_edge

sw.bb.i120.for.cond.i117.backedge_crit_edge:      ; preds = %sw.bb.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i117.backedge

sw.bb.i120.cleanup_crit_edge:                     ; preds = %sw.bb.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2.i:                                         ; preds = %for.cond.i117
  %474 = ptrtoint ptr %next_state.i116 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 6, ptr %next_state.i116, align 1
  %call3.i = tail call fastcc i32 @initio_msgin(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, -1
  br i1 %cmp4.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.for.cond.i117.backedge_crit_edge

sw.bb2.i.for.cond.i117.backedge_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i117.backedge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i122:                                     ; preds = %for.cond.i117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void @arm_heavy_mb() #8
  %475 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %host, align 4
  %conv9.i121 = zext i16 %476 to i32
  %add10.i = add nuw nsw i32 %conv9.i121, -18874228
  %477 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %477, i8 8) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  tail call void @arm_heavy_mb() #8
  %478 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %host, align 4
  %conv16.i = zext i16 %479 to i32
  %add19.i = add nuw nsw i32 %conv16.i, -18874223
  %480 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %480, i8 3) #8, !srcloc !107
  %call21.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, -1
  br i1 %cmp22.i, label %do.body.i122.cleanup_crit_edge, label %do.body.i122.for.cond.i117.backedge_crit_edge

do.body.i122.for.cond.i117.backedge_crit_edge:    ; preds = %do.body.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i117.backedge

do.body.i122.cleanup_crit_edge:                   ; preds = %do.body.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i117.backedge:                           ; preds = %do.body.i122.for.cond.i117.backedge_crit_edge, %sw.bb2.i.for.cond.i117.backedge_crit_edge, %sw.bb.i120.for.cond.i117.backedge_crit_edge
  br label %for.cond.i117

sw.bb26.i125:                                     ; preds = %for.cond.i117
  %481 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %active, align 4
  %483 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %active_tc1.i41.i, align 4
  %flags.i.i123 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %482, i32 0, i32 12
  %485 = ptrtoint ptr %flags.i.i123 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %flags.i.i123, align 1
  %487 = and i8 %486, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %487)
  %cmp.not.i.i124 = icmp eq i8 %487, 0
  br i1 %cmp.not.i.i124, label %sw.bb26.i125.if.end.i.i_crit_edge, label %if.then.i.i126

sw.bb26.i125.if.end.i.i_crit_edge:                ; preds = %sw.bb26.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i126:                                   ; preds = %sw.bb26.i125
  call void @__sanitizer_cov_trace_pc() #10
  %hastat.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %482, i32 0, i32 19
  %488 = ptrtoint ptr %hastat.i.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 18, ptr %hastat.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i126, %sw.bb26.i125.if.end.i.i_crit_edge
  %js_period.i.i = getelementptr inbounds %struct.target_control, ptr %484, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end46.i.i, %if.end.i.i
  %489 = ptrtoint ptr %js_period.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %js_period.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %490)
  %tobool.not.i.i127 = icmp sgt i8 %490, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %491 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %host, align 4
  %conv13.i.i = zext i16 %492 to i32
  %add16.i.i = add nuw nsw i32 %conv13.i.i, -18874240
  %493 = inttoptr i32 %add16.i.i to ptr
  br i1 %tobool.not.i.i127, label %do.body9.i.i, label %do.body.i.i128

do.body.i.i128:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %493, i32 33554432) #8, !srcloc !167
  br label %do.body19.i.i

do.body9.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %493, i32 16777216) #8, !srcloc !167
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %do.body9.i.i, %do.body.i.i128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  tail call void @arm_heavy_mb() #8
  %494 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %host, align 4
  %conv23.i.i129 = zext i16 %495 to i32
  %add26.i.i130 = add nuw nsw i32 %conv23.i.i129, -18874223
  %496 = inttoptr i32 %add26.i.i130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %496, i8 -125) #8, !srcloc !107
  %call28.i.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28.i.i)
  %cmp29.i.i = icmp eq i32 %call28.i.i, -1
  br i1 %cmp29.i.i, label %do.body19.i.i.cleanup_crit_edge, label %if.end32.i.i

do.body19.i.i.cleanup_crit_edge:                  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32.i.i:                                     ; preds = %do.body19.i.i
  %497 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %phase.i144, align 1
  %cmp34.not.i.i = icmp eq i8 %498, 1
  br i1 %cmp34.not.i.i, label %if.end46.i.i, label %do.body37.i.i

do.body37.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  %499 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %host, align 4
  %conv41.i.i131 = zext i16 %500 to i32
  %add44.i.i132 = add nuw nsw i32 %conv41.i.i131, -18874235
  %501 = inttoptr i32 %add44.i.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %501, i8 16) #8, !srcloc !107
  br label %for.cond.backedge

if.end46.i.i:                                     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %502 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %host, align 4
  %conv48.i.i = zext i16 %503 to i32
  %add51.i.i = add nuw nsw i32 %conv48.i.i, -18874228
  %504 = inttoptr i32 %add51.i.i to ptr
  %505 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %504) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  br label %for.cond.i.i

sw.bb28.i:                                        ; preds = %for.cond.i117
  %506 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %active, align 4
  %508 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %active_tc1.i41.i, align 4
  %flags.i42.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %507, i32 0, i32 12
  %510 = ptrtoint ptr %flags.i42.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %flags.i42.i, align 1
  %512 = and i8 %511, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %512)
  %cmp.not.i43.i = icmp eq i8 %512, 0
  br i1 %cmp.not.i43.i, label %sw.bb28.i.if.end.i48.i_crit_edge, label %if.then.i45.i

sw.bb28.i.if.end.i48.i_crit_edge:                 ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i48.i

if.then.i45.i:                                    ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  %hastat.i44.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %507, i32 0, i32 19
  %513 = ptrtoint ptr %hastat.i44.i to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 18, ptr %hastat.i44.i, align 2
  br label %if.end.i48.i

if.end.i48.i:                                     ; preds = %if.then.i45.i, %sw.bb28.i.if.end.i48.i_crit_edge
  %js_period.i46.i = getelementptr inbounds %struct.target_control, ptr %509, i32 0, i32 1
  br label %for.cond.i52.i

for.cond.i52.i:                                   ; preds = %if.end41.i.i.for.cond.i52.i_crit_edge, %if.end.i48.i
  %514 = ptrtoint ptr %js_period.i46.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %js_period.i46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %515)
  %tobool.not.i49.i = icmp sgt i8 %515, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %516 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %host, align 4
  %conv13.i50.i = zext i16 %517 to i32
  %add16.i51.i = add nuw nsw i32 %conv13.i50.i, -18874240
  %518 = inttoptr i32 %add16.i51.i to ptr
  br i1 %tobool.not.i49.i, label %do.body9.i54.i, label %do.body.i53.i

do.body.i53.i:                                    ; preds = %for.cond.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %518, i32 33554432) #8, !srcloc !167
  br label %do.body19.i57.i

do.body9.i54.i:                                   ; preds = %for.cond.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %518, i32 16777216) #8, !srcloc !167
  br label %do.body19.i57.i

do.body19.i57.i:                                  ; preds = %do.body9.i54.i, %do.body.i53.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  tail call void @arm_heavy_mb() #8
  %519 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %host, align 4
  %conv23.i55.i = zext i16 %520 to i32
  %add26.i56.i = add nuw nsw i32 %conv23.i55.i, -18874228
  %521 = inttoptr i32 %add26.i56.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %521, i8 0) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %522 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %host, align 4
  %conv32.i.i133 = zext i16 %523 to i32
  %add35.i.i134 = add nuw nsw i32 %conv32.i.i133, -18874223
  %524 = inttoptr i32 %add35.i.i134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %524, i8 3) #8, !srcloc !107
  %call37.i.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37.i.i)
  %cmp38.i.i = icmp eq i32 %call37.i.i, -1
  br i1 %cmp38.i.i, label %do.body19.i57.i.cleanup_crit_edge, label %if.end41.i.i

do.body19.i57.i.cleanup_crit_edge:                ; preds = %do.body19.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41.i.i:                                     ; preds = %do.body19.i57.i
  %525 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %phase.i144, align 1
  %cmp43.not.i.i = icmp eq i8 %526, 0
  br i1 %cmp43.not.i.i, label %if.end41.i.i.for.cond.i52.i_crit_edge, label %do.body46.i.i135

if.end41.i.i.for.cond.i52.i_crit_edge:            ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i52.i

do.body46.i.i135:                                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %527 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %527)
  %528 = load i16, ptr %host, align 4
  %conv50.i.i = zext i16 %528 to i32
  %add53.i.i = add nuw nsw i32 %conv50.i.i, -18874234
  %529 = inttoptr i32 %add53.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %529, i8 4) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  tail call void @arm_heavy_mb() #8
  %530 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %host, align 4
  %conv59.i.i = zext i16 %531 to i32
  %add62.i.i = add nuw nsw i32 %conv59.i.i, -18874235
  %532 = inttoptr i32 %add62.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %532, i8 16) #8, !srcloc !107
  br label %for.cond.backedge

sw.default.i136:                                  ; preds = %for.cond.i117
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host) #8
  br label %cleanup

sw.bb11:                                          ; preds = %for.cond
  %533 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %533)
  %534 = load i16, ptr %host, align 4
  %conv.i139 = zext i16 %534 to i32
  %add1.i140 = add nuw nsw i32 %conv.i139, -18874237
  %535 = inttoptr i32 %add1.i140 to ptr
  %536 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %535) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %537 = and i8 %536, 31
  %and4.i = zext i8 %537 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %537)
  %tobool.not.not.i = icmp eq i8 %537, 0
  br i1 %tobool.not.not.i, label %sw.bb11.if.end.i145_crit_edge, label %sw.bb11.for.body.i143_crit_edge

sw.bb11.for.body.i143_crit_edge:                  ; preds = %sw.bb11
  br label %for.body.i143

sw.bb11.if.end.i145_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i145

for.body.i143:                                    ; preds = %for.body.i143.for.body.i143_crit_edge, %sw.bb11.for.body.i143_crit_edge
  %i.024.i = phi i32 [ %inc.i141, %for.body.i143.for.body.i143_crit_edge ], [ 0, %sw.bb11.for.body.i143_crit_edge ]
  %538 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %538)
  %539 = load i16, ptr %host, align 4
  %conv8.i = zext i16 %539 to i32
  %add11.i = add nuw nsw i32 %conv8.i, -18874228
  %540 = inttoptr i32 %add11.i to ptr
  %541 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %540) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  %inc.i141 = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i142 = icmp eq i32 %inc.i141, %and4.i
  br i1 %exitcond.not.i142, label %for.body.i143.if.end.i145_crit_edge, label %for.body.i143.for.body.i143_crit_edge

for.body.i143.for.body.i143_crit_edge:            ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i143

for.body.i143.if.end.i145_crit_edge:              ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i145

if.end.i145:                                      ; preds = %for.body.i143.if.end.i145_crit_edge, %sw.bb11.if.end.i145_crit_edge
  %542 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %phase.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %543)
  %switch.i = icmp ult i8 %543, 2
  br i1 %switch.i, label %sw.bb.i146, label %if.end.i145.for.cond.backedge_crit_edge

if.end.i145.for.cond.backedge_crit_edge:          ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

sw.bb.i146:                                       ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host) #8
  br label %cleanup

sw.bb13:                                          ; preds = %for.cond
  %544 = ptrtoint ptr %phase.i144 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %phase.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %545)
  %cmp.not.i = icmp eq i8 %545, 6
  br i1 %cmp.not.i, label %if.end.i159, label %if.then.i149

if.then.i149:                                     ; preds = %sw.bb13
  tail call fastcc void @initio_reset_scsi(ptr noundef %host, i32 noundef 10) #8
  %546 = ptrtoint ptr %first_busy.i.i58 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %first_busy.i.i58, align 4
  %cmp.not.i2.i.i = icmp eq ptr %547, null
  br i1 %cmp.not.i2.i.i, label %if.then.i149.for.cond.preheader.i.i_crit_edge, label %if.then.i.lr.ph.i.i

if.then.i149.for.cond.preheader.i.i_crit_edge:    ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

if.then.i.lr.ph.i.i:                              ; preds = %if.then.i149
  %last_done.i.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %first_done.i.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  br label %if.then.i.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i.i152.for.cond.preheader.i.i_crit_edge, %if.then.i149.for.cond.preheader.i.i_crit_edge
  %max_tar.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 4
  %548 = ptrtoint ptr %max_tar.i.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %max_tar.i.i, align 2
  %conv.i.i150 = zext i8 %549 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %549)
  %cmp23.not.i.i = icmp eq i8 %549, 0
  br i1 %cmp23.not.i.i, label %for.cond.preheader.i.i.cleanup_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cleanup_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %while.body.i.i152.if.then.i.i.i_crit_edge, %if.then.i.lr.ph.i.i
  %550 = phi ptr [ %547, %if.then.i.lr.ph.i.i ], [ %572, %while.body.i.i152.if.then.i.i.i_crit_edge ]
  %551 = ptrtoint ptr %550 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %550, align 4
  %553 = ptrtoint ptr %first_busy.i.i58 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %552, ptr %first_busy.i.i58, align 4
  %cmp2.i.i.i = icmp eq ptr %552, null
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %554 = ptrtoint ptr %last_busy.i.i57 to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr null, ptr %last_busy.i.i57, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then3.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %555 = ptrtoint ptr %550 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr null, ptr %550, align 4
  %tagmsg.i.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %550, i32 0, i32 23
  %556 = ptrtoint ptr %tagmsg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %tagmsg.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %557)
  %tobool.not.i.i.i = icmp eq i8 %557, 0
  %target6.i.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %550, i32 0, i32 13
  %558 = ptrtoint ptr %target6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %target6.i.i.i, align 2
  %idxprom7.i.i.i = zext i8 %559 to i32
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom7.i.i.i
  %560 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %arrayidx.i.i.i, align 1
  %dec.i.i.i = add i8 %561, -1
  store i8 %dec.i.i.i, ptr %arrayidx.i.i.i, align 1
  br label %while.body.i.i152

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i.i.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom7.i.i.i
  %562 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %arrayidx8.i.i.i, align 4
  %564 = and i16 %563, -1025
  store i16 %564, ptr %arrayidx8.i.i.i, align 4
  br label %while.body.i.i152

while.body.i.i152:                                ; preds = %if.else.i.i.i, %if.then5.i.i.i
  %hastat.i.i151 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %550, i32 0, i32 19
  %565 = ptrtoint ptr %hastat.i.i151 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 20, ptr %hastat.i.i151, align 2
  %status.i.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %550, i32 0, i32 1
  %566 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 32, ptr %status.i.i.i, align 4
  %567 = ptrtoint ptr %550 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr null, ptr %550, align 4
  %568 = ptrtoint ptr %last_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %last_done.i.i.i, align 4
  %cmp.not.i1.i.i = icmp eq ptr %569, null
  %first_done.sink.i.i.i = select i1 %cmp.not.i1.i.i, ptr %first_done.i.i.i, ptr %569
  %570 = ptrtoint ptr %first_done.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr %550, ptr %first_done.sink.i.i.i, align 4
  store ptr %550, ptr %last_done.i.i.i, align 4
  %571 = ptrtoint ptr %first_busy.i.i58 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %first_busy.i.i58, align 4
  %cmp.not.i.i.i = icmp eq ptr %572, null
  br i1 %cmp.not.i.i.i, label %while.body.i.i152.for.cond.preheader.i.i_crit_edge, label %while.body.i.i152.if.then.i.i.i_crit_edge

while.body.i.i152.if.then.i.i.i_crit_edge:        ; preds = %while.body.i.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

while.body.i.i152.for.cond.preheader.i.i_crit_edge: ; preds = %while.body.i.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i154, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i153 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %i.04.i.i
  %573 = ptrtoint ptr %arrayidx.i.i153 to i32
  call void @__asan_load2_noabort(i32 %573)
  %574 = load i16, ptr %arrayidx.i.i153, align 4
  %575 = and i16 %574, -769
  store i16 %575, ptr %arrayidx.i.i153, align 4
  %inc.i.i154 = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i154, %conv.i.i150
  br i1 %exitcond.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i159:                                      ; preds = %sw.bb13
  %576 = ptrtoint ptr %active_tc1.i41.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %active_tc1.i41.i, align 4
  %578 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %active, align 4
  %580 = ptrtoint ptr %first_pending.i.i30 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %first_pending.i.i30, align 4
  %cmp.not36.i.i158 = icmp eq ptr %581, null
  br i1 %cmp.not36.i.i158, label %if.end.i159.initio_unlink_pend_scb.exit.i175_crit_edge, label %while.body.i1.preheader.i

if.end.i159.initio_unlink_pend_scb.exit.i175_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit.i175

while.body.i1.preheader.i:                        ; preds = %if.end.i159
  %cmp1.i5.i = icmp eq ptr %581, %579
  br i1 %cmp1.i5.i, label %if.then4.i.i164, label %while.body.i1.preheader.i.if.end17.i.i173_crit_edge

while.body.i1.preheader.i.if.end17.i.i173_crit_edge: ; preds = %while.body.i1.preheader.i
  br label %if.end17.i.i173

while.body.i1.i:                                  ; preds = %if.end17.i.i173
  %cmp1.i.i161 = icmp eq ptr %593, %579
  br i1 %cmp1.i.i161, label %if.else.i.i169, label %while.body.i1.i.if.end17.i.i173_crit_edge

while.body.i1.i.if.end17.i.i173_crit_edge:        ; preds = %while.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i173

if.then4.i.i164:                                  ; preds = %while.body.i1.preheader.i
  %582 = ptrtoint ptr %579 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %579, align 4
  %584 = ptrtoint ptr %first_pending.i.i30 to i32
  call void @__asan_store4_noabort(i32 %584)
  store ptr %583, ptr %first_pending.i.i30, align 4
  %cmp6.i.i163 = icmp eq ptr %583, null
  br i1 %cmp6.i.i163, label %if.then4.i.i164.if.end15.i.i171.sink.split_crit_edge, label %if.then4.i.i164.if.end15.i.i171_crit_edge

if.then4.i.i164.if.end15.i.i171_crit_edge:        ; preds = %if.then4.i.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i171

if.then4.i.i164.if.end15.i.i171.sink.split_crit_edge: ; preds = %if.then4.i.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i171.sink.split

if.else.i.i169:                                   ; preds = %while.body.i1.i
  %585 = ptrtoint ptr %579 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %579, align 4
  %587 = ptrtoint ptr %tmp.037.i6.i to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %586, ptr %tmp.037.i6.i, align 4
  %588 = ptrtoint ptr %last_pending10.i.i41 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %last_pending10.i.i41, align 4
  %cmp11.i.i168 = icmp eq ptr %589, %579
  br i1 %cmp11.i.i168, label %if.else.i.i169.if.end15.i.i171.sink.split_crit_edge, label %if.else.i.i169.if.end15.i.i171_crit_edge

if.else.i.i169.if.end15.i.i171_crit_edge:         ; preds = %if.else.i.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i171

if.else.i.i169.if.end15.i.i171.sink.split_crit_edge: ; preds = %if.else.i.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i171.sink.split

if.end15.i.i171.sink.split:                       ; preds = %if.else.i.i169.if.end15.i.i171.sink.split_crit_edge, %if.then4.i.i164.if.end15.i.i171.sink.split_crit_edge
  %tmp.037.i6.i.lcssa230.sink = phi ptr [ null, %if.then4.i.i164.if.end15.i.i171.sink.split_crit_edge ], [ %tmp.037.i6.i, %if.else.i.i169.if.end15.i.i171.sink.split_crit_edge ]
  %590 = ptrtoint ptr %last_pending10.i.i41 to i32
  call void @__asan_store4_noabort(i32 %590)
  store ptr %tmp.037.i6.i.lcssa230.sink, ptr %last_pending10.i.i41, align 4
  br label %if.end15.i.i171

if.end15.i.i171:                                  ; preds = %if.end15.i.i171.sink.split, %if.else.i.i169.if.end15.i.i171_crit_edge, %if.then4.i.i164.if.end15.i.i171_crit_edge
  %591 = ptrtoint ptr %579 to i32
  call void @__asan_store4_noabort(i32 %591)
  store ptr null, ptr %579, align 4
  br label %initio_unlink_pend_scb.exit.i175

if.end17.i.i173:                                  ; preds = %while.body.i1.i.if.end17.i.i173_crit_edge, %while.body.i1.preheader.i.if.end17.i.i173_crit_edge
  %tmp.037.i6.i = phi ptr [ %593, %while.body.i1.i.if.end17.i.i173_crit_edge ], [ %581, %while.body.i1.preheader.i.if.end17.i.i173_crit_edge ]
  %592 = ptrtoint ptr %tmp.037.i6.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %tmp.037.i6.i, align 4
  %cmp.not.i.i172 = icmp eq ptr %593, null
  br i1 %cmp.not.i.i172, label %if.end17.i.i173.initio_unlink_pend_scb.exit.i175_crit_edge, label %while.body.i1.i

if.end17.i.i173.initio_unlink_pend_scb.exit.i175_crit_edge: ; preds = %if.end17.i.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_pend_scb.exit.i175

initio_unlink_pend_scb.exit.i175:                 ; preds = %if.end17.i.i173.initio_unlink_pend_scb.exit.i175_crit_edge, %if.end15.i.i171, %if.end.i159.initio_unlink_pend_scb.exit.i175_crit_edge
  %avail_lock.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 36
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %avail_lock.i.i) #8
  %srb.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %579, i32 0, i32 29
  %594 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_store4_noabort(i32 %594)
  store ptr null, ptr %srb.i.i, align 4
  %status.i.i174 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %579, i32 0, i32 1
  %595 = ptrtoint ptr %status.i.i174 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 0, ptr %status.i.i174, align 4
  %596 = ptrtoint ptr %579 to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr null, ptr %579, align 4
  %last_avail.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 26
  %597 = ptrtoint ptr %last_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %last_avail.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %598, null
  %first_avail.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 25
  %first_avail.sink.i.i = select i1 %cmp5.not.i.i, ptr %first_avail.i.i, ptr %598
  %599 = ptrtoint ptr %first_avail.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr %579, ptr %first_avail.sink.i.i, align 4
  store ptr %579, ptr %last_avail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %avail_lock.i.i, i32 noundef %call2.i.i) #8
  %target.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %579, i32 0, i32 13
  %600 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %target.i, align 2
  %602 = ptrtoint ptr %577 to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %577, align 2
  %604 = and i16 %603, -1793
  store i16 %604, ptr %577, align 2
  %605 = ptrtoint ptr %first_busy.i.i58 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %first_busy.i.i58, align 4
  %cmp5.not7.i = icmp eq ptr %606, null
  br i1 %cmp5.not7.i, label %initio_unlink_pend_scb.exit.i175.do.body.i181_crit_edge, label %while.body.lr.ph.i

initio_unlink_pend_scb.exit.i175.do.body.i181_crit_edge: ; preds = %initio_unlink_pend_scb.exit.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i181

while.body.lr.ph.i:                               ; preds = %initio_unlink_pend_scb.exit.i175
  %last_done.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %first_done.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %prev.010.i = phi ptr [ %606, %while.body.lr.ph.i ], [ %prev.1.i, %if.end32.i.while.body.i_crit_edge ]
  %tmp.08.i = phi ptr [ %606, %while.body.lr.ph.i ], [ %625, %if.end32.i.while.body.i_crit_edge ]
  %target7.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.08.i, i32 0, i32 13
  %607 = ptrtoint ptr %target7.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %target7.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %608, i8 %601)
  %cmp10.i = icmp eq i8 %608, %601
  br i1 %cmp10.i, label %if.then12.i177, label %while.body.i.if.end32.i_crit_edge

while.body.i.if.end32.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then12.i177:                                   ; preds = %while.body.i
  %609 = ptrtoint ptr %first_busy.i.i58 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %first_busy.i.i58, align 4
  %cmp14.i176 = icmp eq ptr %tmp.08.i, %610
  %611 = ptrtoint ptr %tmp.08.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %tmp.08.i, align 4
  br i1 %cmp14.i176, label %if.then16.i, label %if.else.i178

if.then16.i:                                      ; preds = %if.then12.i177
  %613 = ptrtoint ptr %first_busy.i.i58 to i32
  call void @__asan_store4_noabort(i32 %613)
  store ptr %612, ptr %first_busy.i.i58, align 4
  %cmp18.i = icmp eq ptr %612, null
  br i1 %cmp18.i, label %if.then16.i.if.end30.sink.split.i_crit_edge, label %if.then16.i.if.end30.i_crit_edge

if.then16.i.if.end30.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then16.i.if.end30.sink.split.i_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split.i

if.else.i178:                                     ; preds = %if.then12.i177
  %614 = ptrtoint ptr %prev.010.i to i32
  call void @__asan_store4_noabort(i32 %614)
  store ptr %612, ptr %prev.010.i, align 4
  %615 = ptrtoint ptr %last_busy.i.i57 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %last_busy.i.i57, align 4
  %cmp25.i = icmp eq ptr %tmp.08.i, %616
  br i1 %cmp25.i, label %if.else.i178.if.end30.sink.split.i_crit_edge, label %if.else.i178.if.end30.i_crit_edge

if.else.i178.if.end30.i_crit_edge:                ; preds = %if.else.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.else.i178.if.end30.sink.split.i_crit_edge:     ; preds = %if.else.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %if.else.i178.if.end30.sink.split.i_crit_edge, %if.then16.i.if.end30.sink.split.i_crit_edge
  %prev.010.sink.i = phi ptr [ null, %if.then16.i.if.end30.sink.split.i_crit_edge ], [ %prev.010.i, %if.else.i178.if.end30.sink.split.i_crit_edge ]
  %617 = ptrtoint ptr %last_busy.i.i57 to i32
  call void @__asan_store4_noabort(i32 %617)
  store ptr %prev.010.sink.i, ptr %last_busy.i.i57, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.sink.split.i, %if.else.i178.if.end30.i_crit_edge, %if.then16.i.if.end30.i_crit_edge
  %hastat.i179 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.08.i, i32 0, i32 19
  %618 = ptrtoint ptr %hastat.i179 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 26, ptr %hastat.i179, align 2
  %status.i2.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %tmp.08.i, i32 0, i32 1
  %619 = ptrtoint ptr %status.i2.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 32, ptr %status.i2.i, align 4
  %620 = ptrtoint ptr %tmp.08.i to i32
  call void @__asan_store4_noabort(i32 %620)
  store ptr null, ptr %tmp.08.i, align 4
  %621 = ptrtoint ptr %last_done.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %last_done.i.i, align 4
  %cmp.not.i3.i = icmp eq ptr %622, null
  %first_done.sink.i.i = select i1 %cmp.not.i3.i, ptr %first_done.i.i, ptr %622
  %623 = ptrtoint ptr %first_done.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr %tmp.08.i, ptr %first_done.sink.i.i, align 4
  store ptr %tmp.08.i, ptr %last_done.i.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end30.i, %while.body.i.if.end32.i_crit_edge
  %prev.1.i = phi ptr [ %prev.010.i, %if.end30.i ], [ %tmp.08.i, %while.body.i.if.end32.i_crit_edge ]
  %624 = ptrtoint ptr %tmp.08.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %tmp.08.i, align 4
  %cmp5.not.i = icmp eq ptr %625, null
  br i1 %cmp5.not.i, label %if.end32.i.do.body.i181_crit_edge, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end32.i.do.body.i181_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i181

do.body.i181:                                     ; preds = %if.end32.i.do.body.i181_crit_edge, %initio_unlink_pend_scb.exit.i175.do.body.i181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %626 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %host, align 4
  %conv34.i180 = zext i16 %627 to i32
  %add36.i = add nuw nsw i32 %conv34.i180, -18874228
  %628 = inttoptr i32 %add36.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %628, i8 12) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  %629 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %host, align 4
  %conv42.i = zext i16 %630 to i32
  %add45.i = add nuw nsw i32 %conv42.i, -18874223
  %631 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %631, i8 3) #8, !srcloc !107
  tail call fastcc void @initio_wait_disc(ptr noundef %host) #8
  br label %cleanup

sw.default:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.body.i181, %for.body.i.i.cleanup_crit_edge, %for.cond.preheader.i.i.cleanup_crit_edge, %sw.bb.i146, %sw.default.i136, %do.body19.i57.i.cleanup_crit_edge, %do.body19.i.i.cleanup_crit_edge, %do.body.i122.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i120.cleanup_crit_edge, %do.body169.i.cleanup_crit_edge, %sw.default.i, %if.end75.i106.i, %if.end75.i.i, %do.body.i89.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %sw.bb18.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %cleanup.sink.split.i, %if.else.i81.cleanup_crit_edge, %do.body42.i.cleanup_crit_edge, %sw.bb32.i.cleanup_crit_edge, %sw.bb26.i.cleanup_crit_edge, %do.body7.i.cleanup_crit_edge, %do.body147.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %for.cond.preheader.i.i.cleanup_crit_edge ], [ -1, %do.body.i181 ], [ -1, %sw.bb.i146 ], [ -1, %sw.default.i136 ], [ 0, %if.end75.i106.i ], [ 0, %if.end75.i.i ], [ -1, %sw.default.i ], [ -1, %cleanup.sink.split.i ], [ -1, %for.body.i.i.cleanup_crit_edge ], [ -1, %sw.bb26.i.cleanup_crit_edge ], [ -1, %sw.bb32.i.cleanup_crit_edge ], [ -1, %do.body42.i.cleanup_crit_edge ], [ -1, %if.else.i81.cleanup_crit_edge ], [ -1, %if.end13.i.cleanup_crit_edge ], [ -1, %sw.bb18.i.cleanup_crit_edge ], [ -1, %do.body.i89.cleanup_crit_edge ], [ -1, %do.body19.i.i.cleanup_crit_edge ], [ -1, %do.body19.i57.i.cleanup_crit_edge ], [ -1, %sw.bb.i120.cleanup_crit_edge ], [ -1, %sw.bb2.i.cleanup_crit_edge ], [ -1, %do.body.i122.cleanup_crit_edge ], [ -1, %do.body147.i.cleanup_crit_edge ], [ -1, %do.body7.i.cleanup_crit_edge ], [ -1, %do.body169.i.cleanup_crit_edge ], [ -1, %if.then27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @int_initio_busfree(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %first_pending.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 27
  %5 = ptrtoint ptr %first_pending.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %first_pending.i, align 4
  %cmp.not36.i = icmp eq ptr %6, null
  br i1 %cmp.not36.i, label %if.then1.if.end_crit_edge, label %while.body.i.preheader

if.then1.if.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i.preheader:                           ; preds = %if.then1
  %cmp1.i21 = icmp eq ptr %6, %1
  br i1 %cmp1.i21, label %if.then.i.thread, label %while.body.i.preheader.if.end17.i_crit_edge

while.body.i.preheader.if.end17.i_crit_edge:      ; preds = %while.body.i.preheader
  br label %if.end17.i

if.then.i.thread:                                 ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  br label %if.then4.i

while.body.i:                                     ; preds = %if.end17.i
  %cmp1.i = icmp eq ptr %19, %1
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end17.i_crit_edge

while.body.i.if.end17.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then.i:                                        ; preds = %while.body.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br i1 %cmp1.i21, label %if.then.i.if.then4.i_crit_edge, label %if.else.i

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i.if.then4.i_crit_edge, %if.then.i.thread
  %11 = phi ptr [ %8, %if.then.i.thread ], [ %10, %if.then.i.if.then4.i_crit_edge ]
  %12 = ptrtoint ptr %first_pending.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %first_pending.i, align 4
  %cmp6.i = icmp eq ptr %11, null
  br i1 %cmp6.i, label %if.then7.i, label %if.then4.i.if.end_crit_edge

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_pending.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 28
  %13 = ptrtoint ptr %last_pending.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %last_pending.i, align 4
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  %14 = ptrtoint ptr %tmp.037.i22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %tmp.037.i22, align 4
  %last_pending10.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 28
  %15 = ptrtoint ptr %last_pending10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %last_pending10.i, align 4
  %cmp11.i = icmp eq ptr %16, %1
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %last_pending10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tmp.037.i22, ptr %last_pending10.i, align 4
  br label %if.end

if.end17.i:                                       ; preds = %while.body.i.if.end17.i_crit_edge, %while.body.i.preheader.if.end17.i_crit_edge
  %tmp.037.i22 = phi ptr [ %19, %while.body.i.if.end17.i_crit_edge ], [ %6, %while.body.i.preheader.if.end17.i_crit_edge ]
  %18 = ptrtoint ptr %tmp.037.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tmp.037.i22, align 4
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %if.end17.i.if.end_crit_edge, label %while.body.i

if.end17.i.if.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %if.then
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %20 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %first_busy.i, align 4
  %cmp.not48.i = icmp eq ptr %21, null
  br i1 %cmp.not48.i, label %if.else.if.end_crit_edge, label %while.body.i3.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i3.preheader:                          ; preds = %if.else
  %cmp1.i223 = icmp eq ptr %21, %1
  br i1 %cmp1.i223, label %if.then.i5.thread, label %while.body.i3.preheader.if.end24.i_crit_edge

while.body.i3.preheader.if.end24.i_crit_edge:     ; preds = %while.body.i3.preheader
  br label %if.end24.i

if.then.i5.thread:                                ; preds = %while.body.i3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  br label %if.then4.i7

while.body.i3:                                    ; preds = %if.end24.i
  %cmp1.i2 = icmp eq ptr %44, %1
  br i1 %cmp1.i2, label %if.then.i5, label %while.body.i3.if.end24.i_crit_edge

while.body.i3.if.end24.i_crit_edge:               ; preds = %while.body.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then.i5:                                       ; preds = %while.body.i3
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  br i1 %cmp1.i223, label %if.then.i5.if.then4.i7_crit_edge, label %if.else.i10

if.then.i5.if.then4.i7_crit_edge:                 ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i7

if.then4.i7:                                      ; preds = %if.then.i5.if.then4.i7_crit_edge, %if.then.i5.thread
  %26 = phi ptr [ %23, %if.then.i5.thread ], [ %25, %if.then.i5.if.then4.i7_crit_edge ]
  %27 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %first_busy.i, align 4
  %cmp6.i6 = icmp eq ptr %26, null
  br i1 %cmp6.i6, label %if.then7.i8, label %if.then4.i7.if.end15.i12_crit_edge

if.then4.i7.if.end15.i12_crit_edge:               ; preds = %if.then4.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i12

if.then7.i8:                                      ; preds = %if.then4.i7
  call void @__sanitizer_cov_trace_pc() #10
  %last_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %last_busy.i, align 4
  br label %if.end15.i12

if.else.i10:                                      ; preds = %if.then.i5
  %29 = ptrtoint ptr %tmp.049.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %tmp.049.i24, align 4
  %last_busy10.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %30 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %last_busy10.i, align 4
  %cmp11.i9 = icmp eq ptr %31, %1
  br i1 %cmp11.i9, label %if.then12.i11, label %if.else.i10.if.end15.i12_crit_edge

if.else.i10.if.end15.i12_crit_edge:               ; preds = %if.else.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i12

if.then12.i11:                                    ; preds = %if.else.i10
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tmp.049.i24, ptr %last_busy10.i, align 4
  br label %if.end15.i12

if.end15.i12:                                     ; preds = %if.then12.i11, %if.else.i10.if.end15.i12_crit_edge, %if.then7.i8, %if.then4.i7.if.end15.i12_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %1, align 4
  %tagmsg.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 23
  %34 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %target19.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %target19.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %target19.i, align 2
  %idxprom20.i = zext i8 %37 to i32
  br i1 %tobool.not.i, label %if.else18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i12
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom20.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %dec.i = add i8 %39, -1
  store i8 %dec.i, ptr %arrayidx.i, align 1
  br label %if.end

if.else18.i:                                      ; preds = %if.end15.i12
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom20.i
  %40 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx21.i, align 4
  %42 = and i16 %41, -1025
  store i16 %42, ptr %arrayidx21.i, align 4
  br label %if.end

if.end24.i:                                       ; preds = %while.body.i3.if.end24.i_crit_edge, %while.body.i3.preheader.if.end24.i_crit_edge
  %tmp.049.i24 = phi ptr [ %44, %while.body.i3.if.end24.i_crit_edge ], [ %21, %while.body.i3.preheader.if.end24.i_crit_edge ]
  %43 = ptrtoint ptr %tmp.049.i24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tmp.049.i24, align 4
  %cmp.not.i13 = icmp eq ptr %44, null
  br i1 %cmp.not.i13, label %if.end24.i.if.end_crit_edge, label %while.body.i3

if.end24.i.if.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end24.i.if.end_crit_edge, %if.else18.i, %if.then17.i, %if.else.if.end_crit_edge, %if.end17.i.if.end_crit_edge, %if.then12.i, %if.else.i.if.end_crit_edge, %if.then7.i, %if.then4.i.if.end_crit_edge, %if.then1.if.end_crit_edge
  %.sink = phi i8 [ 17, %if.then4.i.if.end_crit_edge ], [ 17, %if.then7.i ], [ 17, %if.else.i.if.end_crit_edge ], [ 17, %if.then12.i ], [ 17, %if.then1.if.end_crit_edge ], [ 19, %if.else.if.end_crit_edge ], [ 19, %if.then17.i ], [ 19, %if.else18.i ], [ 19, %if.end24.i.if.end_crit_edge ], [ 17, %if.end17.i.if.end_crit_edge ]
  %hastat2 = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %hastat2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %hastat2, align 2
  %46 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %status, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %1, align 4
  %last_done.i15 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %48 = ptrtoint ptr %last_done.i15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %last_done.i15, align 4
  %cmp.not.i16 = icmp eq ptr %49, null
  %first_done.i17 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  %first_done.sink.i18 = select i1 %cmp.not.i16, ptr %first_done.i17, ptr %49
  %50 = ptrtoint ptr %first_done.sink.i18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %first_done.sink.i18, align 4
  store ptr %1, ptr %last_done.i15, align 4
  %51 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %active, align 4
  %active_tc = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %52 = ptrtoint ptr %active_tc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %active_tc, align 4
  br label %do.body

do.body:                                          ; preds = %if.end, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %host, align 4
  %conv5 = zext i16 %54 to i32
  %add7 = add nuw nsw i32 %conv5, -18874235
  %55 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %host, align 4
  %conv12 = zext i16 %57 to i32
  %add15 = add nuw nsw i32 %conv12, -18874233
  %58 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 -61) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %host, align 4
  %conv21 = zext i16 %60 to i32
  %add24 = add nuw nsw i32 %conv21, -18874234
  %61 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 4) #8, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_tulip(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv178 = zext i16 %1 to i32
  %add1179 = add nuw nsw i32 %conv178, -18874235
  %2 = inttoptr i32 %add1179 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  %jsstatus0 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %4 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %jsstatus0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not180 = icmp sgt i8 %3, -1
  br i1 %tobool.not180, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !264
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %host, align 4
  %conv = zext i16 %6 to i32
  %add1 = add nuw nsw i32 %conv, -18874235
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  %9 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %jsstatus0, align 4
  %tobool.not = icmp sgt i8 %8, -1
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %host, align 4
  %conv11 = zext i16 %11 to i32
  %add14 = add nuw nsw i32 %conv11, -18874236
  %12 = inttoptr i32 %add14 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  %jsint = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 14
  %14 = ptrtoint ptr %jsint to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %jsint, align 1
  %15 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %jsstatus0, align 4
  %17 = and i8 %16, 7
  %phase = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %18 = ptrtoint ptr %phase to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %phase, align 1
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %host, align 4
  %conv24 = zext i16 %20 to i32
  %add27 = add nuw nsw i32 %conv24, -18874234
  %21 = inttoptr i32 %add27 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  %jsstatus1 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 15
  %23 = ptrtoint ptr %jsstatus1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %jsstatus1, align 2
  %24 = ptrtoint ptr %jsint to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %jsint, align 1
  %conv32 = zext i8 %25 to i32
  %and33 = and i32 %conv32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call fastcc i32 @int_initio_resel(ptr noundef %host)
  br label %return

if.end:                                           ; preds = %while.end
  %and38 = and i32 %conv32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_busfree(ptr noundef %host)
  br label %return

if.end42:                                         ; preds = %if.end
  %and45 = and i32 %conv32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_scsi_rst(ptr noundef %host)
  br label %return

if.end49:                                         ; preds = %if.end42
  %and52 = and i32 %conv32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end128, label %if.then54

if.then54:                                        ; preds = %if.end49
  %flags = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 4
  %conv55 = zext i8 %27 to i32
  %and56 = and i32 %conv55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end90, label %do.body59

do.body59:                                        ; preds = %if.then54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %host, align 4
  %conv62 = zext i16 %29 to i32
  %add65 = add nuw nsw i32 %conv62, -18874235
  %30 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 16) #8, !srcloc !107
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %31 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %active, align 4
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %33 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %first_busy.i, align 4
  %cmp.not48.i = icmp eq ptr %34, null
  br i1 %cmp.not48.i, label %do.body59.initio_unlink_busy_scb.exit_crit_edge, label %while.body.i.preheader

do.body59.initio_unlink_busy_scb.exit_crit_edge:  ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_busy_scb.exit

while.body.i.preheader:                           ; preds = %do.body59
  %cmp1.i181 = icmp eq ptr %34, %32
  br i1 %cmp1.i181, label %if.then4.i, label %while.body.i.preheader.if.end24.i_crit_edge

while.body.i.preheader.if.end24.i_crit_edge:      ; preds = %while.body.i.preheader
  br label %if.end24.i

while.body.i:                                     ; preds = %if.end24.i
  %cmp1.i = icmp eq ptr %56, %32
  br i1 %cmp1.i, label %if.else.i, label %while.body.i.if.end24.i_crit_edge

while.body.i.if.end24.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then4.i:                                       ; preds = %while.body.i.preheader
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %37 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %first_busy.i, align 4
  %cmp6.i = icmp eq ptr %36, null
  br i1 %cmp6.i, label %if.then7.i, label %if.then4.i.if.end15.i_crit_edge

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %38 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %last_busy.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %while.body.i
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %32, align 4
  %41 = ptrtoint ptr %tmp.049.i182 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %tmp.049.i182, align 4
  %last_busy10.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %42 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %last_busy10.i, align 4
  %cmp11.i = icmp eq ptr %43, %32
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tmp.049.i182, ptr %last_busy10.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.else.i.if.end15.i_crit_edge, %if.then7.i, %if.then4.i.if.end15.i_crit_edge
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %32, align 4
  %tagmsg.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %32, i32 0, i32 23
  %46 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  %target19.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %32, i32 0, i32 13
  %48 = ptrtoint ptr %target19.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %target19.i, align 2
  %idxprom20.i = zext i8 %49 to i32
  br i1 %tobool.not.i, label %if.else18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom20.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %dec.i = add i8 %51, -1
  store i8 %dec.i, ptr %arrayidx.i, align 1
  br label %initio_unlink_busy_scb.exit

if.else18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom20.i
  %52 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx21.i, align 4
  %54 = and i16 %53, -1025
  store i16 %54, ptr %arrayidx21.i, align 4
  br label %initio_unlink_busy_scb.exit

if.end24.i:                                       ; preds = %while.body.i.if.end24.i_crit_edge, %while.body.i.preheader.if.end24.i_crit_edge
  %tmp.049.i182 = phi ptr [ %56, %while.body.i.if.end24.i_crit_edge ], [ %34, %while.body.i.preheader.if.end24.i_crit_edge ]
  %55 = ptrtoint ptr %tmp.049.i182 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tmp.049.i182, align 4
  %cmp.not.i = icmp eq ptr %56, null
  br i1 %cmp.not.i, label %if.end24.i.initio_unlink_busy_scb.exit_crit_edge, label %while.body.i

if.end24.i.initio_unlink_busy_scb.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_busy_scb.exit

initio_unlink_busy_scb.exit:                      ; preds = %if.end24.i.initio_unlink_busy_scb.exit_crit_edge, %if.else18.i, %if.then17.i, %do.body59.initio_unlink_busy_scb.exit_crit_edge
  %57 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %active, align 4
  %hastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %58, i32 0, i32 19
  %59 = ptrtoint ptr %hastat to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %hastat, align 2
  %60 = load ptr, ptr %active, align 4
  %status.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %status.i, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %60, align 4
  %last_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %63 = ptrtoint ptr %last_done.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %last_done.i, align 4
  %cmp.not.i176 = icmp eq ptr %64, null
  %first_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  %first_done.sink.i = select i1 %cmp.not.i176, ptr %first_done.i, ptr %64
  %65 = ptrtoint ptr %first_done.sink.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %60, ptr %first_done.sink.i, align 4
  store ptr %60, ptr %last_done.i, align 4
  store ptr null, ptr %active, align 4
  %active_tc = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %66 = ptrtoint ptr %active_tc to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %active_tc, align 4
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags, align 4
  %69 = and i8 %68, -33
  store i8 %69, ptr %flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %host, align 4
  %conv77 = zext i16 %71 to i32
  %add80 = add nuw nsw i32 %conv77, -18874233
  %72 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 -61) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %host, align 4
  %conv85 = zext i16 %74 to i32
  %add88 = add nuw nsw i32 %conv85, -18874234
  %75 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 4) #8, !srcloc !107
  br label %return

if.end90:                                         ; preds = %if.then54
  %and93 = and i32 %conv55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end126, label %do.body96

do.body96:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %host, align 4
  %conv99 = zext i16 %77 to i32
  %add102 = add nuw nsw i32 %conv99, -18874235
  %78 = inttoptr i32 %add102 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 16) #8, !srcloc !107
  %active104 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %79 = ptrtoint ptr %active104 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %active104, align 4
  %active_tc105 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %80 = ptrtoint ptr %active_tc105 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %active_tc105, align 4
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags, align 4
  %83 = and i8 %82, -2
  store i8 %83, ptr %flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %host, align 4
  %conv113 = zext i16 %85 to i32
  %add116 = add nuw nsw i32 %conv113, -18874233
  %86 = inttoptr i32 %add116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 -61) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %host, align 4
  %conv121 = zext i16 %88 to i32
  %add124 = add nuw nsw i32 %conv121, -18874234
  %89 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 4) #8, !srcloc !107
  br label %return

if.end126:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_busfree(ptr noundef %host)
  br label %return

if.end128:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %phase, align 1
  %conv138 = zext i8 %91 to i32
  br label %return

return:                                           ; preds = %if.end128, %if.end126, %do.body96, %initio_unlink_busy_scb.exit, %if.then47, %if.then40, %if.then
  %retval.0 = phi i32 [ %call35, %if.then ], [ -1, %if.then40 ], [ -1, %if.then47 ], [ -1, %initio_unlink_busy_scb.exit ], [ -1, %do.body96 ], [ -1, %if.end126 ], [ %conv138, %if.end128 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initio_msgin_accept(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874223
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 15) #8, !srcloc !107
  %call2 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_msgout_abort_tag(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874224
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  %4 = and i8 %3, 71
  %5 = or i8 %4, 8
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %host, align 4
  %conv7 = zext i16 %7 to i32
  %add10 = add nuw nsw i32 %conv7, -18874224
  %8 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %host, align 4
  %conv.i = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874223
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 15) #8, !srcloc !107
  %call2.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp = icmp eq i32 %call2.i, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %phase = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %12 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phase, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp15.not = icmp eq i8 %13, 6
  br i1 %cmp15.not, label %do.body20, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %return

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %host, align 4
  %conv23 = zext i16 %15 to i32
  %add26 = add nuw nsw i32 %conv23, -18874228
  %16 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 13) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %host, align 4
  %conv31 = zext i16 %18 to i32
  %add34 = add nuw nsw i32 %conv31, -18874223
  %19 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 3) #8, !srcloc !107
  tail call fastcc void @initio_wait_disc(ptr noundef %host)
  br label %return

return:                                           ; preds = %do.body20, %if.then17, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_bad_seq(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv) #11
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %4 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first_busy.i, align 4
  %cmp.not48.i = icmp eq ptr %5, null
  br i1 %cmp.not48.i, label %if.then.initio_unlink_busy_scb.exit_crit_edge, label %while.body.i.preheader

if.then.initio_unlink_busy_scb.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_busy_scb.exit

while.body.i.preheader:                           ; preds = %if.then
  %cmp1.i4 = icmp eq ptr %5, %3
  br i1 %cmp1.i4, label %if.then.i.thread, label %while.body.i.preheader.if.end24.i_crit_edge

while.body.i.preheader.if.end24.i_crit_edge:      ; preds = %while.body.i.preheader
  br label %if.end24.i

if.then.i.thread:                                 ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %if.then4.i

while.body.i:                                     ; preds = %if.end24.i
  %cmp1.i = icmp eq ptr %28, %3
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end24.i_crit_edge

while.body.i.if.end24.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then.i:                                        ; preds = %while.body.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  br i1 %cmp1.i4, label %if.then.i.if.then4.i_crit_edge, label %if.else.i

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i.if.then4.i_crit_edge, %if.then.i.thread
  %10 = phi ptr [ %7, %if.then.i.thread ], [ %9, %if.then.i.if.then4.i_crit_edge ]
  %11 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %first_busy.i, align 4
  %cmp6.i = icmp eq ptr %10, null
  br i1 %cmp6.i, label %if.then7.i, label %if.then4.i.if.end15.i_crit_edge

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %last_busy.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.then.i
  %13 = ptrtoint ptr %tmp.049.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %tmp.049.i5, align 4
  %last_busy10.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %14 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %last_busy10.i, align 4
  %cmp11.i = icmp eq ptr %15, %3
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tmp.049.i5, ptr %last_busy10.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.else.i.if.end15.i_crit_edge, %if.then7.i, %if.then4.i.if.end15.i_crit_edge
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %3, align 4
  %tagmsg.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %3, i32 0, i32 23
  %18 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %target19.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %target19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %target19.i, align 2
  %idxprom20.i = zext i8 %21 to i32
  br i1 %tobool.not.i, label %if.else18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom20.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %dec.i = add i8 %23, -1
  store i8 %dec.i, ptr %arrayidx.i, align 1
  br label %initio_unlink_busy_scb.exit

if.else18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom20.i
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx21.i, align 4
  %26 = and i16 %25, -1025
  store i16 %26, ptr %arrayidx21.i, align 4
  br label %initio_unlink_busy_scb.exit

if.end24.i:                                       ; preds = %while.body.i.if.end24.i_crit_edge, %while.body.i.preheader.if.end24.i_crit_edge
  %tmp.049.i5 = phi ptr [ %28, %while.body.i.if.end24.i_crit_edge ], [ %5, %while.body.i.preheader.if.end24.i_crit_edge ]
  %27 = ptrtoint ptr %tmp.049.i5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tmp.049.i5, align 4
  %cmp.not.i = icmp eq ptr %28, null
  br i1 %cmp.not.i, label %if.end24.i.initio_unlink_busy_scb.exit_crit_edge, label %while.body.i

if.end24.i.initio_unlink_busy_scb.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_busy_scb.exit

initio_unlink_busy_scb.exit:                      ; preds = %if.end24.i.initio_unlink_busy_scb.exit_crit_edge, %if.else18.i, %if.then17.i, %if.then.initio_unlink_busy_scb.exit_crit_edge
  %hastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %3, i32 0, i32 19
  %29 = ptrtoint ptr %hastat to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 20, ptr %hastat, align 2
  %tastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %3, i32 0, i32 20
  %30 = ptrtoint ptr %tastat to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %tastat, align 1
  %status.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 32, ptr %status.i, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %3, align 4
  %last_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %33 = ptrtoint ptr %last_done.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %last_done.i, align 4
  %cmp.not.i1 = icmp eq ptr %34, null
  %first_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  %first_done.sink.i = select i1 %cmp.not.i1, ptr %first_done.i, ptr %34
  %35 = ptrtoint ptr %first_done.sink.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %first_done.sink.i, align 4
  store ptr %3, ptr %last_done.i, align 4
  br label %if.end

if.end:                                           ; preds = %initio_unlink_busy_scb.exit, %entry.if.end_crit_edge
  tail call fastcc void @initio_stop_bm(ptr noundef %host)
  tail call fastcc void @initio_reset_scsi(ptr noundef %host, i32 noundef 8)
  %36 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %active, align 4
  %active_tc1.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %37 = ptrtoint ptr %active_tc1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %active_tc1.i, align 4
  %flags.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 6
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %flags.i, align 4
  %first_busy.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %39 = ptrtoint ptr %first_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %first_busy.i.i, align 4
  %cmp.not.i2.i = icmp eq ptr %40, null
  br i1 %cmp.not.i2.i, label %if.end.while.end.i_crit_edge, label %if.then.i.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then.i.lr.ph.i:                                ; preds = %if.end
  %last_busy.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %last_done.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %first_done.i.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i2.if.then.i.i_crit_edge, %if.then.i.lr.ph.i
  %41 = phi ptr [ %40, %if.then.i.lr.ph.i ], [ %63, %while.body.i2.if.then.i.i_crit_edge ]
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %first_busy.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %first_busy.i.i, align 4
  %cmp2.i.i = icmp eq ptr %43, null
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %last_busy.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %41, align 4
  %tagmsg.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %41, i32 0, i32 23
  %47 = ptrtoint ptr %tagmsg.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tagmsg.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  %target6.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %41, i32 0, i32 13
  %49 = ptrtoint ptr %target6.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %target6.i.i, align 2
  %idxprom7.i.i = zext i8 %50 to i32
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom7.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i, align 1
  %dec.i.i = add i8 %52, -1
  store i8 %dec.i.i, ptr %arrayidx.i.i, align 1
  br label %while.body.i2

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom7.i.i
  %53 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx8.i.i, align 4
  %55 = and i16 %54, -1025
  store i16 %55, ptr %arrayidx8.i.i, align 4
  br label %while.body.i2

while.body.i2:                                    ; preds = %if.else.i.i, %if.then5.i.i
  %hastat.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %41, i32 0, i32 19
  %56 = ptrtoint ptr %hastat.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 20, ptr %hastat.i, align 2
  %status.i.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %41, i32 0, i32 1
  %57 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 32, ptr %status.i.i, align 4
  %58 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %41, align 4
  %59 = ptrtoint ptr %last_done.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %last_done.i.i, align 4
  %cmp.not.i1.i = icmp eq ptr %60, null
  %first_done.sink.i.i = select i1 %cmp.not.i1.i, ptr %first_done.i.i, ptr %60
  %61 = ptrtoint ptr %first_done.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %41, ptr %first_done.sink.i.i, align 4
  store ptr %41, ptr %last_done.i.i, align 4
  %62 = ptrtoint ptr %first_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %first_busy.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %63, null
  br i1 %cmp.not.i.i, label %while.body.i2.while.end.i_crit_edge, label %while.body.i2.if.then.i.i_crit_edge

while.body.i2.if.then.i.i_crit_edge:              ; preds = %while.body.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

while.body.i2.while.end.i_crit_edge:              ; preds = %while.body.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i2.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %max_tar.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 4
  %64 = ptrtoint ptr %max_tar.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %max_tar.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp24.not.i = icmp eq i8 %65, 0
  br i1 %cmp24.not.i, label %while.end.i.initio_post_scsi_rst.exit_crit_edge, label %for.body.lr.ph.i

while.end.i.initio_post_scsi_rst.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_post_scsi_rst.exit

for.body.lr.ph.i:                                 ; preds = %while.end.i
  %targets.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 35
  %sconf1.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 16
  %act_tags.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %active_tc.05.i = phi ptr [ %targets.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %active_tc.05.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %active_tc.05.i, align 2
  %68 = and i16 %67, -769
  store i16 %68, ptr %active_tc.05.i, align 2
  %js_period.i = getelementptr inbounds %struct.target_control, ptr %active_tc.05.i, i32 0, i32 1
  %69 = ptrtoint ptr %js_period.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %js_period.i, align 2
  %70 = ptrtoint ptr %sconf1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sconf1.i, align 1
  %sconfig0.i = getelementptr inbounds %struct.target_control, ptr %active_tc.05.i, i32 0, i32 2
  %72 = ptrtoint ptr %sconfig0.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %sconfig0.i, align 1
  %73 = ptrtoint ptr %act_tags.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %act_tags.i, align 4
  %arrayidx9.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %i.06.i
  %74 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx9.i, align 4
  %76 = and i16 %75, -1025
  store i16 %76, ptr %arrayidx9.i, align 4
  %incdec.ptr.i = getelementptr %struct.target_control, ptr %active_tc.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %77 = ptrtoint ptr %max_tar.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %max_tar.i, align 2
  %conv.i = zext i8 %78 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.initio_post_scsi_rst.exit_crit_edge

for.body.i.initio_post_scsi_rst.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_post_scsi_rst.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

initio_post_scsi_rst.exit:                        ; preds = %for.body.i.initio_post_scsi_rst.exit_crit_edge, %while.end.i.initio_post_scsi_rst.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_wait_disc(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv1 = zext i16 %1 to i32
  %add12 = add nuw nsw i32 %conv1, -18874235
  %2 = inttoptr i32 %add12 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  %jsstatus0 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %4 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %jsstatus0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not3 = icmp sgt i8 %3, -1
  br i1 %tobool.not3, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !278
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !279
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %host, align 4
  %conv = zext i16 %6 to i32
  %add1 = add nuw nsw i32 %conv, -18874235
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  %9 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %jsstatus0, align 4
  %tobool.not = icmp sgt i8 %8, -1
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %host, align 4
  %conv11 = zext i16 %11 to i32
  %add14 = add nuw nsw i32 %conv11, -18874236
  %12 = inttoptr i32 %add14 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  %jsint = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 14
  %14 = ptrtoint ptr %jsint to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %jsint, align 1
  %conv19 = zext i8 %13 to i32
  %and20 = and i32 %conv19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_scsi_rst(ptr noundef %host)
  br label %return

if.end:                                           ; preds = %while.end
  %and25 = and i32 %conv19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end52, label %do.body28

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host, align 4
  %conv31 = zext i16 %16 to i32
  %add34 = add nuw nsw i32 %conv31, -18874235
  %17 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %host, align 4
  %conv39 = zext i16 %19 to i32
  %add42 = add nuw nsw i32 %conv39, -18874233
  %20 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -61) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %host, align 4
  %conv47 = zext i16 %22 to i32
  %add50 = add nuw nsw i32 %conv47, -18874234
  %23 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 4) #8, !srcloc !107
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %24 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %active, align 4
  br label %return

if.end52:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %return

return:                                           ; preds = %if.end52, %do.body28, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_stop_bm(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874147
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.body29_crit_edge, label %do.body

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %host, align 4
  %conv6 = zext i16 %6 to i32
  %add9 = add nuw nsw i32 %conv6, -18874152
  %7 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 12) #8, !srcloc !107
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %host, align 4
  %conv1340 = zext i16 %9 to i32
  %add1641 = add nuw nsw i32 %conv1340, -18874148
  %10 = inttoptr i32 %add1641 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp42 = icmp eq i8 %12, 0
  br i1 %cmp42, label %do.body.do.end26_crit_edge, label %do.body.do.body29_crit_edge

do.body.do.body29_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.body.do.end26_crit_edge:                       ; preds = %do.body
  br label %do.end26

do.end26:                                         ; preds = %do.end26.do.end26_crit_edge, %do.body.do.end26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !287
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !288
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %host, align 4
  %conv13 = zext i16 %14 to i32
  %add16 = add nuw nsw i32 %conv13, -18874148
  %15 = inttoptr i32 %add16 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  %17 = and i8 %16, 4
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %do.end26.do.end26_crit_edge, label %do.end26.do.body29_crit_edge

do.end26.do.body29_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.end26.do.end26_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.body29:                                        ; preds = %do.end26.do.body29_crit_edge, %do.body.do.body29_crit_edge, %entry.do.body29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %host, align 4
  %conv32 = zext i16 %19 to i32
  %add35 = add nuw nsw i32 %conv32, -18874235
  %20 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 16) #8, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_reset_scsi(ptr nocapture noundef %host, i32 noundef %seconds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874235
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #8, !srcloc !107
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %host, align 4
  %conv31 = zext i16 %4 to i32
  %add62 = add nuw nsw i32 %conv31, -18874236
  %5 = inttoptr i32 %add62 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %jsint = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 14
  %7 = ptrtoint ptr %jsint to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %jsint, align 1
  %8 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not3 = icmp eq i8 %8, 0
  br i1 %tobool.not3, label %entry.do.end14_crit_edge, label %entry.do.body17_crit_edge

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

entry.do.end14_crit_edge:                         ; preds = %entry
  br label %do.end14

do.end14:                                         ; preds = %do.end14.do.end14_crit_edge, %entry.do.end14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !293
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %host, align 4
  %conv3 = zext i16 %10 to i32
  %add6 = add nuw nsw i32 %conv3, -18874236
  %11 = inttoptr i32 %add6 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %13 = ptrtoint ptr %jsint to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %jsint, align 1
  %14 = and i8 %12, 16
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %do.end14.do.end14_crit_edge, label %do.end14.do.body17_crit_edge

do.end14.do.body17_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.end14.do.end14_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body17:                                        ; preds = %do.end14.do.body17_crit_edge, %entry.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host, align 4
  %conv20 = zext i16 %16 to i32
  %add23 = add nuw nsw i32 %conv20, -18874224
  %17 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #8, !srcloc !107
  %mul = mul i32 %seconds, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %18, %mul
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub8.i = sub i32 %add.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub8.i)
  %cmp9.i = icmp sgt i32 %sub8.i, -1
  br i1 %cmp9.i, label %do.body17.do.end.i_crit_edge, label %do.body17.initio_do_pause.exit_crit_edge

do.body17.initio_do_pause.exit_crit_edge:         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_do_pause.exit

do.body17.do.end.i_crit_edge:                     ; preds = %do.body17
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body17.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %20
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.initio_do_pause.exit_crit_edge

do.end.i.initio_do_pause.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_do_pause.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

initio_do_pause.exit:                             ; preds = %do.end.i.initio_do_pause.exit_crit_edge, %do.body17.initio_do_pause.exit_crit_edge
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %host, align 4
  %conv27 = zext i16 %22 to i32
  %add30 = add nuw nsw i32 %conv27, -18874236
  %23 = inttoptr i32 %add30 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initio_msgin(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 17
  %arrayidx70.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 1
  %active_tc212.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %arrayidx222.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 2
  %arrayidx87.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 3
  %phase = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874235
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %host, align 4
  %conv6 = zext i16 %4 to i32
  %add9 = add nuw nsw i32 %conv6, -18874240
  %5 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 16777216) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %host, align 4
  %conv15 = zext i16 %7 to i32
  %add18 = add nuw nsw i32 %conv15, -18874223
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -125) #8, !srcloc !107
  %call20 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp = icmp eq i32 %call20, -1
  br i1 %cmp, label %for.cond.cleanup_crit_edge, label %if.end

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %host, align 4
  %conv23 = zext i16 %10 to i32
  %add26 = add nuw nsw i32 %conv23, -18874228
  %11 = inttoptr i32 %add26 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %12, label %sw.default [
    i8 4, label %do.body30
    i8 2, label %if.end.sw.bb40_crit_edge
    i8 3, label %if.end.sw.bb40_crit_edge163
    i8 8, label %if.end.sw.bb40_crit_edge164
    i8 7, label %do.body43
    i8 1, label %sw.bb93
    i8 35, label %sw.bb95
    i8 0, label %do.body98
  ]

if.end.sw.bb40_crit_edge164:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

if.end.sw.bb40_crit_edge163:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

if.end.sw.bb40_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

do.body30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %host, align 4
  %conv34 = zext i16 %15 to i32
  %add37 = add nuw nsw i32 %conv34, -18874223
  %16 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 15) #8, !srcloc !107
  tail call fastcc void @initio_wait_disc(ptr noundef %host)
  br label %cleanup

sw.bb40:                                          ; preds = %if.end.sw.bb40_crit_edge, %if.end.sw.bb40_crit_edge163, %if.end.sw.bb40_crit_edge164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %host, align 4
  %conv.i = zext i16 %18 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874223
  %19 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 15) #8, !srcloc !107
  %call2.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  br label %sw.epilog

do.body43:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %host, align 4
  %conv48 = zext i16 %21 to i32
  %add51 = add nuw nsw i32 %conv48, -18874224
  %22 = inttoptr i32 %add51 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  %24 = and i8 %23, 71
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %host, align 4
  %conv59 = zext i16 %26 to i32
  %add62 = add nuw nsw i32 %conv59, -18874224
  %27 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %24) #8, !srcloc !107
  %28 = ptrtoint ptr %active_tc212.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_tc212.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %32 = and i16 %31, 528
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp67 = icmp eq i16 %32, 0
  br i1 %cmp67, label %do.body70, label %do.body43.if.end91_crit_edge

do.body43.if.end91_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.body70:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %host, align 4
  %conv75 = zext i16 %34 to i32
  %add78 = add nuw nsw i32 %conv75, -18874224
  %35 = inttoptr i32 %add78 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %37 = and i8 %36, 71
  %38 = or i8 %37, 8
  %39 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %host, align 4
  %conv86 = zext i16 %40 to i32
  %add89 = add nuw nsw i32 %conv86, -18874224
  %41 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %38) #8, !srcloc !107
  br label %if.end91

if.end91:                                         ; preds = %do.body70, %do.body43.if.end91_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %host, align 4
  %conv.i146 = zext i16 %43 to i32
  %add1.i147 = add nuw nsw i32 %conv.i146, -18874223
  %44 = inttoptr i32 %add1.i147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 15) #8, !srcloc !107
  %call2.i148 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %host, align 4
  %conv.i.i = zext i16 %46 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, -18874223
  %47 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 15) #8, !srcloc !107
  %call2.i.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i.i)
  %cmp.not.i = icmp eq i32 %call2.i.i, 7
  br i1 %cmp.not.i, label %do.body.i, label %sw.bb93.sw.epilog_crit_edge

sw.bb93.sw.epilog_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %host, align 4
  %conv1.i = zext i16 %49 to i32
  %add2.i = add nuw nsw i32 %conv1.i, -18874240
  %50 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 16777216) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %host, align 4
  %conv8.i = zext i16 %52 to i32
  %add11.i = add nuw nsw i32 %conv8.i, -18874223
  %53 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 -125) #8, !srcloc !107
  %call13.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, -1
  br i1 %cmp14.i, label %do.body.i.sw.epilog_crit_edge, label %if.end17.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end17.i:                                       ; preds = %do.body.i
  %54 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %host, align 4
  %conv19.i = zext i16 %55 to i32
  %add22.i = add nuw nsw i32 %conv19.i, -18874228
  %56 = inttoptr i32 %add22.i to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  %58 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %msg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp26.not7.i = icmp eq i8 %57, 0
  br i1 %cmp26.not7.i, label %for.end.i.thread, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end57.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %if.end57.i.for.body.i_crit_edge ], [ 1, %if.end17.i.for.body.i_crit_edge ]
  %len.09.i = phi i8 [ %dec.i, %if.end57.i.for.body.i_crit_edge ], [ %57, %if.end17.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %host, align 4
  %conv.i1.i = zext i16 %60 to i32
  %add1.i2.i = add nuw nsw i32 %conv.i1.i, -18874223
  %61 = inttoptr i32 %add1.i2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 15) #8, !srcloc !107
  %call2.i3.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i3.i)
  %cmp29.not.i = icmp eq i32 %call2.i3.i, 7
  br i1 %cmp29.not.i, label %do.body35.i, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body35.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %host, align 4
  %conv39.i = zext i16 %63 to i32
  %add42.i = add nuw nsw i32 %conv39.i, -18874240
  %64 = inttoptr i32 %add42.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 16777216) #8, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %host, align 4
  %conv48.i = zext i16 %66 to i32
  %add51.i = add nuw nsw i32 %conv48.i, -18874223
  %67 = inttoptr i32 %add51.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 -125) #8, !srcloc !107
  %call53.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53.i)
  %cmp54.i = icmp eq i32 %call53.i, -1
  br i1 %cmp54.i, label %do.body35.i.sw.epilog_crit_edge, label %if.end57.i

do.body35.i.sw.epilog_crit_edge:                  ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end57.i:                                       ; preds = %do.body35.i
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %host, align 4
  %conv60.i = zext i16 %69 to i32
  %add63.i = add nuw nsw i32 %conv60.i, -18874228
  %70 = inttoptr i32 %add63.i to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  %arrayidx68.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 %indvars.iv.i
  %72 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx68.i, align 1
  %dec.i = add i8 %len.09.i, -1
  %cmp26.not.i = icmp eq i8 %dec.i, 0
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  br i1 %cmp26.not.i, label %for.end.i, label %if.end57.i.for.body.i_crit_edge

if.end57.i.for.body.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end57.i
  %73 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %.pr = load i8, ptr %msg.i, align 4
  %74 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp72.i = icmp eq i8 %75, 1
  br i1 %cmp72.i, label %if.then74.i, label %if.end198.i

for.end.i.thread:                                 ; preds = %if.end17.i
  %76 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp72.i158 = icmp eq i8 %77, 1
  br i1 %cmp72.i158, label %for.end.i.thread.if.then80.i_crit_edge, label %for.end.i.thread.if.then209.i_crit_edge

for.end.i.thread.if.then209.i_crit_edge:          ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209.i

for.end.i.thread.if.then80.i_crit_edge:           ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80.i

if.then74.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp78.not.i = icmp eq i8 %.pr, 3
  br i1 %cmp78.not.i, label %if.end82.i, label %if.then74.i.if.then80.i_crit_edge

if.then74.i.if.then80.i_crit_edge:                ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80.i

if.then80.i:                                      ; preds = %if.then74.i.if.then80.i_crit_edge, %for.end.i.thread.if.then80.i_crit_edge
  %call81.i = tail call fastcc i32 @initio_msgout_reject(ptr noundef %host) #8
  br label %sw.epilog

if.end82.i:                                       ; preds = %if.then74.i
  %78 = ptrtoint ptr %active_tc212.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %active_tc212.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 2
  %82 = and i16 %81, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i = icmp eq i16 %82, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx87.i, align 1
  br label %if.end100.i

if.else.i:                                        ; preds = %if.end82.i
  %84 = and i16 %81, 7
  %and.i = zext i16 %84 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @initio_rate_tbl, i32 0, i32 %and.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i, align 1
  %87 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx87.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %88)
  %cmp.i = icmp ugt i8 %88, 15
  br i1 %cmp.i, label %if.then.i, label %if.end24.i

if.then.i:                                        ; preds = %if.else.i
  %89 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 15, ptr %arrayidx87.i, align 1
  %90 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx222.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %86)
  %cmp10.i = icmp ult i8 %91, %86
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %86, ptr %arrayidx222.i, align 2
  br label %if.end100.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %91)
  %cmp18.i = icmp ugt i8 %91, 58
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i.if.end100.i_crit_edge

if.end.i.if.end100.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx87.i, align 1
  br label %if.end100.i

if.end24.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp28.i = icmp eq i8 %88, 0
  br i1 %cmp28.i, label %if.end24.i.land.lhs.true.i_crit_edge, label %if.end31.i

if.end24.i.land.lhs.true.i_crit_edge:             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end31.i:                                       ; preds = %if.end24.i
  %94 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx222.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %86)
  %cmp36.i = icmp ult i8 %95, %86
  br i1 %cmp36.i, label %if.then38.i, label %if.end41.i

if.then38.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %86, ptr %arrayidx222.i, align 2
  br label %if.end100.i

if.end41.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %95)
  %cmp45.i = icmp ugt i8 %95, 58
  br i1 %cmp45.i, label %if.then47.i, label %if.end41.i.land.lhs.true.i_crit_edge

if.end41.i.land.lhs.true.i_crit_edge:             ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then47.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx87.i, align 1
  br label %if.end100.i

land.lhs.true.i:                                  ; preds = %if.end41.i.land.lhs.true.i_crit_edge, %if.end24.i.land.lhs.true.i_crit_edge
  %98 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %79, align 2
  %100 = and i16 %99, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool95.not.i = icmp eq i16 %100, 0
  br i1 %tobool95.not.i, label %land.lhs.true.i.if.end100.i_crit_edge, label %if.then96.i

land.lhs.true.i.if.end100.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

if.then96.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_sync_done(ptr noundef %host) #8
  %call98.i = tail call fastcc i32 @initio_msgin_accept(ptr noundef %host) #8
  br label %sw.epilog

if.end100.i:                                      ; preds = %land.lhs.true.i.if.end100.i_crit_edge, %if.then47.i, %if.then38.i, %if.then20.i, %if.end.i.if.end100.i_crit_edge, %if.then12.i, %if.then85.i
  %101 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %host, align 4
  %conv103.i = zext i16 %102 to i32
  %add106.i = add nuw nsw i32 %conv103.i, -18874224
  %103 = inttoptr i32 %add106.i to ptr
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  tail call void @arm_heavy_mb() #8
  %105 = and i8 %104, 71
  %106 = or i8 %105, 8
  %107 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %host, align 4
  %conv117.i = zext i16 %108 to i32
  %add120.i = add nuw nsw i32 %conv117.i, -18874224
  %109 = inttoptr i32 %add120.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %106) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %110 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %host, align 4
  %conv.i4.i = zext i16 %111 to i32
  %add1.i5.i = add nuw nsw i32 %conv.i4.i, -18874223
  %112 = inttoptr i32 %add1.i5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 15) #8, !srcloc !107
  %call2.i6.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2.i6.i)
  %cmp123.not.i = icmp eq i32 %call2.i6.i, 6
  br i1 %cmp123.not.i, label %do.body129.i, label %if.end100.i.sw.epilog_crit_edge

if.end100.i.sw.epilog_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body129.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  %113 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %host, align 4
  %conv133.i = zext i16 %114 to i32
  %add136.i = add nuw nsw i32 %conv133.i, -18874235
  %115 = inttoptr i32 %add136.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 16) #8, !srcloc !107
  tail call fastcc void @initio_sync_done(ptr noundef %host) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  tail call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %host, align 4
  %conv143.i = zext i16 %117 to i32
  %add146.i = add nuw nsw i32 %conv143.i, -18874228
  %118 = inttoptr i32 %add146.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %host, align 4
  %conv152.i = zext i16 %120 to i32
  %add155.i = add nuw nsw i32 %conv152.i, -18874228
  %121 = inttoptr i32 %add155.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 3) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %122 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %host, align 4
  %conv161.i = zext i16 %123 to i32
  %add164.i = add nuw nsw i32 %conv161.i, -18874228
  %124 = inttoptr i32 %add164.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @arm_heavy_mb() #8
  %125 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx222.i, align 2
  %127 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %host, align 4
  %conv172.i = zext i16 %128 to i32
  %add175.i = add nuw nsw i32 %conv172.i, -18874228
  %129 = inttoptr i32 %add175.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %126) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx87.i, align 1
  %132 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %host, align 4
  %conv183.i = zext i16 %133 to i32
  %add186.i = add nuw nsw i32 %conv183.i, -18874228
  %134 = inttoptr i32 %add186.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 %131) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %host, align 4
  %conv192.i = zext i16 %136 to i32
  %add195.i = add nuw nsw i32 %conv192.i, -18874223
  %137 = inttoptr i32 %add195.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 3) #8, !srcloc !107
  %call197.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  br label %sw.epilog

if.end198.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp202.not.i = icmp eq i8 %.pr, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %75)
  %cmp207.not.i = icmp eq i8 %75, 3
  %or.cond.i = select i1 %cmp202.not.i, i1 %cmp207.not.i, i1 false
  br i1 %or.cond.i, label %if.end211.i, label %if.end198.i.if.then209.i_crit_edge

if.end198.i.if.then209.i_crit_edge:               ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209.i

if.then209.i:                                     ; preds = %if.end198.i.if.then209.i_crit_edge, %for.end.i.thread.if.then209.i_crit_edge
  %call210.i = tail call fastcc i32 @initio_msgout_reject(ptr noundef %host) #8
  br label %sw.epilog

if.end211.i:                                      ; preds = %if.end198.i
  %138 = ptrtoint ptr %active_tc212.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %active_tc212.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %139, align 2
  %142 = and i16 %141, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool216.not.i = icmp eq i16 %142, 0
  br i1 %tobool216.not.i, label %if.else220.i, label %if.end211.i.do.body280.i_crit_edge

if.end211.i.do.body280.i_crit_edge:               ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body280.i

if.else220.i:                                     ; preds = %if.end211.i
  %143 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx222.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %144)
  %cmp224.i = icmp ugt i8 %144, 2
  br i1 %cmp224.i, label %if.then226.i, label %if.end228.i

if.then226.i:                                     ; preds = %if.else220.i
  call void @__sanitizer_cov_trace_pc() #10
  %call227.i = tail call fastcc i32 @initio_msgout_reject(ptr noundef %host) #8
  br label %sw.epilog

if.end228.i:                                      ; preds = %if.else220.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %144)
  %cmp232.i = icmp eq i8 %144, 2
  br i1 %cmp232.i, label %if.end228.i.do.body280.i_crit_edge, label %if.then244.i

if.end228.i.do.body280.i_crit_edge:               ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body280.i

if.then244.i:                                     ; preds = %if.end228.i
  tail call fastcc void @wdtr_done(ptr noundef %host) #8
  %145 = ptrtoint ptr %active_tc212.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %active_tc212.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %146, align 2
  %149 = and i16 %148, 528
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp250.i = icmp eq i16 %149, 0
  br i1 %cmp250.i, label %do.body253.i, label %if.then244.i.if.end275.i_crit_edge

if.then244.i.if.end275.i_crit_edge:               ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.i

do.body253.i:                                     ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  tail call void @arm_heavy_mb() #8
  %150 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %host, align 4
  %conv258.i = zext i16 %151 to i32
  %add261.i = add nuw nsw i32 %conv258.i, -18874224
  %152 = inttoptr i32 %add261.i to ptr
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %152) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  %154 = and i8 %153, 71
  %155 = or i8 %154, 8
  %156 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %host, align 4
  %conv270.i = zext i16 %157 to i32
  %add273.i = add nuw nsw i32 %conv270.i, -18874224
  %158 = inttoptr i32 %add273.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 %155) #8, !srcloc !107
  br label %if.end275.i

if.end275.i:                                      ; preds = %do.body253.i, %if.then244.i.if.end275.i_crit_edge
  %call276.i = tail call fastcc i32 @initio_msgin_accept(ptr noundef %host) #8
  br label %sw.epilog

do.body280.i:                                     ; preds = %if.end228.i.do.body280.i_crit_edge, %if.end211.i.do.body280.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.end211.i.do.body280.i_crit_edge ], [ 1, %if.end228.i.do.body280.i_crit_edge ]
  %159 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %.sink.i, ptr %arrayidx222.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %host, align 4
  %conv285.i = zext i16 %161 to i32
  %add288.i = add nuw nsw i32 %conv285.i, -18874224
  %162 = inttoptr i32 %add288.i to ptr
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %162) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  %164 = and i8 %163, 71
  %165 = or i8 %164, 8
  %166 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %host, align 4
  %conv297.i = zext i16 %167 to i32
  %add300.i = add nuw nsw i32 %conv297.i, -18874224
  %168 = inttoptr i32 %add300.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %168, i8 %165) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %169 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %host, align 4
  %conv.i152 = zext i16 %170 to i32
  %add1.i153 = add nuw nsw i32 %conv.i152, -18874223
  %171 = inttoptr i32 %add1.i153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 15) #8, !srcloc !107
  %call2.i154 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2.i154)
  %cmp303.not.i = icmp eq i32 %call2.i154, 6
  br i1 %cmp303.not.i, label %do.body309.i, label %do.body280.i.sw.epilog_crit_edge

do.body280.i.sw.epilog_crit_edge:                 ; preds = %do.body280.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body309.i:                                     ; preds = %do.body280.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @arm_heavy_mb() #8
  %172 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %host, align 4
  %conv313.i = zext i16 %173 to i32
  %add316.i = add nuw nsw i32 %conv313.i, -18874228
  %174 = inttoptr i32 %add316.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 1) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void @arm_heavy_mb() #8
  %175 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %host, align 4
  %conv322.i = zext i16 %176 to i32
  %add325.i = add nuw nsw i32 %conv322.i, -18874228
  %177 = inttoptr i32 %add325.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 2) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  tail call void @arm_heavy_mb() #8
  %178 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %host, align 4
  %conv331.i = zext i16 %179 to i32
  %add334.i = add nuw nsw i32 %conv331.i, -18874228
  %180 = inttoptr i32 %add334.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 3) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void @arm_heavy_mb() #8
  %181 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx222.i, align 2
  %183 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %host, align 4
  %conv342.i = zext i16 %184 to i32
  %add345.i = add nuw nsw i32 %conv342.i, -18874228
  %185 = inttoptr i32 %add345.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 %182) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  tail call void @arm_heavy_mb() #8
  %186 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %host, align 4
  %conv351.i = zext i16 %187 to i32
  %add354.i = add nuw nsw i32 %conv351.i, -18874223
  %188 = inttoptr i32 %add354.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 3) #8, !srcloc !107
  %call356.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #8
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %189 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %host, align 4
  %conv.i149 = zext i16 %190 to i32
  %add1.i150 = add nuw nsw i32 %conv.i149, -18874223
  %191 = inttoptr i32 %add1.i150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 15) #8, !srcloc !107
  %call2.i151 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  br label %sw.epilog

do.body98:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  tail call void @arm_heavy_mb() #8
  %192 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %host, align 4
  %conv102 = zext i16 %193 to i32
  %add105 = add nuw nsw i32 %conv102, -18874235
  %194 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void @arm_heavy_mb() #8
  %195 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %host, align 4
  %conv111 = zext i16 %196 to i32
  %add114 = add nuw nsw i32 %conv111, -18874223
  %197 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 15) #8, !srcloc !107
  tail call fastcc void @initio_wait_done_disc(ptr noundef %host)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call117 = tail call fastcc i32 @initio_msgout_reject(ptr noundef %host)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb95, %do.body309.i, %do.body280.i.sw.epilog_crit_edge, %if.end275.i, %if.then226.i, %if.then209.i, %do.body129.i, %if.end100.i.sw.epilog_crit_edge, %if.then96.i, %if.then80.i, %do.body35.i.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %do.body.i.sw.epilog_crit_edge, %sw.bb93.sw.epilog_crit_edge, %if.end91, %sw.bb40
  %198 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %phase, align 1
  %cmp119.not = icmp eq i8 %199, 7
  br i1 %cmp119.not, label %sw.epilog.for.cond_crit_edge, label %if.then121

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then121:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv118 = zext i8 %199 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %do.body98, %do.body30, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv118, %if.then121 ], [ -1, %do.body98 ], [ -1, %do.body30 ], [ -1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initio_status_msg(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %host, align 4
  %conv = zext i16 %3 to i32
  %add1 = add nuw nsw i32 %conv, -18874223
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -124) #8, !srcloc !107
  %call2 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %host, align 4
  %conv5 = zext i16 %6 to i32
  %add8 = add nuw nsw i32 %conv5, -18874228
  %7 = inttoptr i32 %add8 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %tastat = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %tastat to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %tastat, align 1
  %phase = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %10 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phase, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %11, label %if.end.if.end147_crit_edge [
    i8 6, label %if.then14
    i8 7, label %if.then52
  ]

if.end.if.end147_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then14:                                        ; preds = %if.end
  %jsstatus0 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %13 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %jsstatus0, align 4
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %host, align 4
  %conv31 = zext i16 %17 to i32
  %add34 = add nuw nsw i32 %conv31, -18874228
  %18 = inttoptr i32 %add34 to ptr
  br i1 %tobool.not, label %do.body27, label %do.body18

do.body18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 9) #8, !srcloc !107
  br label %do.body37

do.body27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 8) #8, !srcloc !107
  br label %do.body37

do.body37:                                        ; preds = %do.body27, %do.body18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %host, align 4
  %conv41 = zext i16 %20 to i32
  %add44 = add nuw nsw i32 %conv41, -18874223
  %21 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 3) #8, !srcloc !107
  %call46 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  br label %cleanup

if.then52:                                        ; preds = %if.end
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %host, align 4
  %conv55 = zext i16 %23 to i32
  %add58 = add nuw nsw i32 %conv55, -18874228
  %24 = inttoptr i32 %add58 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !336
  %jsstatus062 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %26 = ptrtoint ptr %jsstatus062 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %jsstatus062, align 4
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool65.not = icmp eq i8 %28, 0
  br i1 %tobool65.not, label %if.end98, label %if.then66

if.then66:                                        ; preds = %if.then52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %host, align 4
  %conv.i = zext i16 %30 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874223
  %31 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 15) #8, !srcloc !107
  %call2.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp68 = icmp eq i32 %call2.i, -1
  br i1 %cmp68, label %if.then66.cleanup_crit_edge, label %if.end71

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.then66
  %32 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %phase, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %33)
  %cmp74.not = icmp eq i8 %33, 6
  br i1 %cmp74.not, label %do.body79, label %if.then76

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %cleanup

do.body79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %host, align 4
  %conv83 = zext i16 %35 to i32
  %add86 = add nuw nsw i32 %conv83, -18874228
  %36 = inttoptr i32 %add86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 9) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %host, align 4
  %conv92 = zext i16 %38 to i32
  %add95 = add nuw nsw i32 %conv92, -18874223
  %39 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 3) #8, !srcloc !107
  %call97 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  br label %cleanup

if.end98:                                         ; preds = %if.then52
  %40 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %25, label %if.end98.if.end147_crit_edge [
    i8 0, label %if.then102
    i8 10, label %if.end98.if.then137_crit_edge
    i8 11, label %if.end98.if.then137_crit_edge181
  ]

if.end98.if.then137_crit_edge181:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

if.end98.if.then137_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

if.end98.if.end147_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then102:                                       ; preds = %if.end98
  %41 = ptrtoint ptr %tastat to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tastat, align 1
  %43 = and i8 %42, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %43)
  %cmp106 = icmp eq i8 %43, 16
  br i1 %cmp106, label %if.then108, label %do.body111

if.then108:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %cleanup

do.body111:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %host, align 4
  %conv115 = zext i16 %45 to i32
  %add118 = add nuw nsw i32 %conv115, -18874235
  %46 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %host, align 4
  %conv124 = zext i16 %48 to i32
  %add127 = add nuw nsw i32 %conv124, -18874223
  %49 = inttoptr i32 %add127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 15) #8, !srcloc !107
  tail call fastcc void @initio_wait_done_disc(ptr noundef %host)
  br label %cleanup

if.then137:                                       ; preds = %if.end98.if.then137_crit_edge, %if.end98.if.then137_crit_edge181
  %50 = ptrtoint ptr %tastat to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tastat, align 1
  %52 = and i8 %51, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %52)
  %cmp141 = icmp eq i8 %52, 16
  br i1 %cmp141, label %if.then143, label %if.then137.if.end147_crit_edge

if.then137.if.end147_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then143:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %host, align 4
  %conv.i178 = zext i16 %54 to i32
  %add1.i179 = add nuw nsw i32 %conv.i178, -18874223
  %55 = inttoptr i32 %add1.i179 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 15) #8, !srcloc !107
  %call2.i180 = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  br label %cleanup

if.end147:                                        ; preds = %if.then137.if.end147_crit_edge, %if.end98.if.end147_crit_edge, %if.end.if.end147_crit_edge
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.then143, %do.body111, %if.then108, %do.body79, %if.then76, %if.then66.cleanup_crit_edge, %do.body37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %do.body37 ], [ -1, %if.then76 ], [ %call97, %do.body79 ], [ -1, %if.then108 ], [ -1, %do.body111 ], [ %call2.i180, %if.then143 ], [ -1, %if.end147 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_wait_done_disc(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv3 = zext i16 %1 to i32
  %add15 = add nuw nsw i32 %conv3, -18874235
  %2 = inttoptr i32 %add15 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  %jsstatus0 = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 13
  %4 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %jsstatus0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not6 = icmp sgt i8 %3, -1
  br i1 %tobool.not6, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !342
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !343
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %host, align 4
  %conv = zext i16 %6 to i32
  %add1 = add nuw nsw i32 %conv, -18874235
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  %9 = ptrtoint ptr %jsstatus0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %jsstatus0, align 4
  %tobool.not = icmp sgt i8 %8, -1
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %host, align 4
  %conv11 = zext i16 %11 to i32
  %add14 = add nuw nsw i32 %conv11, -18874236
  %12 = inttoptr i32 %add14 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !344
  %jsint = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 14
  %14 = ptrtoint ptr %jsint to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %jsint, align 1
  %conv19 = zext i8 %13 to i32
  %and20 = and i32 %conv19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @int_initio_scsi_rst(ptr noundef %host)
  br label %return

if.end:                                           ; preds = %while.end
  %and25 = and i32 %conv19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end54, label %do.body28

do.body28:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host, align 4
  %conv31 = zext i16 %16 to i32
  %add34 = add nuw nsw i32 %conv31, -18874235
  %17 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 16) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !346
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %host, align 4
  %conv39 = zext i16 %19 to i32
  %add42 = add nuw nsw i32 %conv39, -18874233
  %20 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -61) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %host, align 4
  %conv47 = zext i16 %22 to i32
  %add50 = add nuw nsw i32 %conv47, -18874234
  %23 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 4) #8, !srcloc !107
  %active = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 23
  %24 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active, align 4
  %first_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 29
  %26 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %first_busy.i, align 4
  %cmp.not48.i = icmp eq ptr %27, null
  br i1 %cmp.not48.i, label %do.body28.initio_unlink_busy_scb.exit_crit_edge, label %while.body.i.preheader

do.body28.initio_unlink_busy_scb.exit_crit_edge:  ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_busy_scb.exit

while.body.i.preheader:                           ; preds = %do.body28
  %cmp1.i7 = icmp eq ptr %27, %25
  br i1 %cmp1.i7, label %if.then.i.thread, label %while.body.i.preheader.if.end24.i_crit_edge

while.body.i.preheader.if.end24.i_crit_edge:      ; preds = %while.body.i.preheader
  br label %if.end24.i

if.then.i.thread:                                 ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %if.then4.i

while.body.i:                                     ; preds = %if.end24.i
  %cmp1.i = icmp eq ptr %50, %25
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end24.i_crit_edge

while.body.i.if.end24.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then.i:                                        ; preds = %while.body.i
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  br i1 %cmp1.i7, label %if.then.i.if.then4.i_crit_edge, label %if.else.i

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i.if.then4.i_crit_edge, %if.then.i.thread
  %32 = phi ptr [ %29, %if.then.i.thread ], [ %31, %if.then.i.if.then4.i_crit_edge ]
  %33 = ptrtoint ptr %first_busy.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %first_busy.i, align 4
  %cmp6.i = icmp eq ptr %32, null
  br i1 %cmp6.i, label %if.then7.i, label %if.then4.i.if.end15.i_crit_edge

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_busy.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %last_busy.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.then.i
  %35 = ptrtoint ptr %tmp.049.i8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %tmp.049.i8, align 4
  %last_busy10.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 30
  %36 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last_busy10.i, align 4
  %cmp11.i = icmp eq ptr %37, %25
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %last_busy10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tmp.049.i8, ptr %last_busy10.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.else.i.if.end15.i_crit_edge, %if.then7.i, %if.then4.i.if.end15.i_crit_edge
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %25, align 4
  %tagmsg.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %25, i32 0, i32 23
  %40 = ptrtoint ptr %tagmsg.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tagmsg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  %target19.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %25, i32 0, i32 13
  %42 = ptrtoint ptr %target19.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %target19.i, align 2
  %idxprom20.i = zext i8 %43 to i32
  br i1 %tobool.not.i, label %if.else18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 34, i32 %idxprom20.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %dec.i = add i8 %45, -1
  store i8 %dec.i, ptr %arrayidx.i, align 1
  br label %initio_unlink_busy_scb.exit

if.else18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr %struct.initio_host, ptr %host, i32 0, i32 35, i32 %idxprom20.i
  %46 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx21.i, align 4
  %48 = and i16 %47, -1025
  store i16 %48, ptr %arrayidx21.i, align 4
  br label %initio_unlink_busy_scb.exit

if.end24.i:                                       ; preds = %while.body.i.if.end24.i_crit_edge, %while.body.i.preheader.if.end24.i_crit_edge
  %tmp.049.i8 = phi ptr [ %50, %while.body.i.if.end24.i_crit_edge ], [ %27, %while.body.i.preheader.if.end24.i_crit_edge ]
  %49 = ptrtoint ptr %tmp.049.i8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tmp.049.i8, align 4
  %cmp.not.i = icmp eq ptr %50, null
  br i1 %cmp.not.i, label %if.end24.i.initio_unlink_busy_scb.exit_crit_edge, label %while.body.i

if.end24.i.initio_unlink_busy_scb.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %initio_unlink_busy_scb.exit

initio_unlink_busy_scb.exit:                      ; preds = %if.end24.i.initio_unlink_busy_scb.exit_crit_edge, %if.else18.i, %if.then17.i, %do.body28.initio_unlink_busy_scb.exit_crit_edge
  %51 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %active, align 4
  %status.i = getelementptr inbounds %struct.scsi_ctrl_blk, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 32, ptr %status.i, align 4
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %52, align 4
  %last_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 32
  %55 = ptrtoint ptr %last_done.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %last_done.i, align 4
  %cmp.not.i1 = icmp eq ptr %56, null
  %first_done.i = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 31
  %first_done.sink.i = select i1 %cmp.not.i1, ptr %first_done.i, ptr %56
  %57 = ptrtoint ptr %first_done.sink.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %52, ptr %first_done.sink.i, align 4
  store ptr %52, ptr %last_done.i, align 4
  store ptr null, ptr %active, align 4
  br label %return

if.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @initio_bad_seq(ptr noundef %host)
  br label %return

return:                                           ; preds = %if.end54, %initio_unlink_busy_scb.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initio_msgout_reject(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %host, align 4
  %conv = zext i16 %1 to i32
  %add1 = add nuw nsw i32 %conv, -18874224
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !349
  %4 = and i8 %3, 71
  %5 = or i8 %4, 8
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %host, align 4
  %conv7 = zext i16 %7 to i32
  %add10 = add nuw nsw i32 %conv7, -18874224
  %8 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %host, align 4
  %conv.i = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874223
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 15) #8, !srcloc !107
  %call2.i = tail call fastcc i32 @wait_tulip(ptr noundef %host) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp = icmp eq i32 %call2.i, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %phase = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 12
  %12 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phase, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp15 = icmp eq i8 %13, 6
  br i1 %cmp15, label %do.body18, label %if.end35

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %host, align 4
  %conv21 = zext i16 %15 to i32
  %add24 = add nuw nsw i32 %conv21, -18874228
  %16 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 7) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %host, align 4
  %conv29 = zext i16 %18 to i32
  %add32 = add nuw nsw i32 %conv29, -18874223
  %19 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 3) #8, !srcloc !107
  %call34 = tail call fastcc i32 @wait_tulip(ptr noundef %host)
  br label %return

if.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv14 = zext i8 %13 to i32
  br label %return

return:                                           ; preds = %if.end35, %do.body18, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call34, %do.body18 ], [ %conv14, %if.end35 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_sync_done(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_tc = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_tc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = or i16 %3, 512
  store i16 %4, ptr %1, align 2
  %arrayidx = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_tc, align 4
  %js_period = getelementptr inbounds %struct.target_control, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %js_period to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %js_period, align 2
  %or71 = or i8 %10, %6
  store i8 %or71, ptr %js_period, align 2
  %arrayidx13 = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %12)
  %cmp15.not = icmp ugt i8 %12, 12
  br i1 %cmp15.not, label %for.inc, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %12)
  %cmp15.not.1 = icmp ugt i8 %12, 18
  br i1 %cmp15.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %12)
  %cmp15.not.2 = icmp ugt i8 %12, 25
  br i1 %cmp15.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp15.not.3 = icmp ugt i8 %12, 31
  br i1 %cmp15.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %12)
  %cmp15.not.4 = icmp ugt i8 %12, 37
  br i1 %cmp15.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %12)
  %cmp15.not.5 = icmp ugt i8 %12, 43
  br i1 %cmp15.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %12)
  %cmp15.not.6 = icmp ugt i8 %12, 50
  br i1 %cmp15.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %12)
  %cmp15.not.7 = icmp ugt i8 %12, 62
  %spec.select = select i1 %cmp15.not.7, i8 -128, i8 112
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %if.then.for.end_crit_edge ], [ 16, %for.inc.for.end_crit_edge ], [ 32, %for.inc.1.for.end_crit_edge ], [ 48, %for.inc.2.for.end_crit_edge ], [ 64, %for.inc.3.for.end_crit_edge ], [ 80, %for.inc.4.for.end_crit_edge ], [ 96, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %13 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active_tc, align 4
  %js_period19 = getelementptr inbounds %struct.target_control, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %js_period19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %js_period19, align 2
  %conv22 = or i8 %16, %i.0.lcssa
  store i8 %conv22, ptr %js_period19, align 2
  %17 = load ptr, ptr %active_tc, align 4
  %sconfig0 = getelementptr inbounds %struct.target_control, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %sconfig0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sconfig0, align 1
  %20 = or i8 %19, 2
  store i8 %20, ptr %sconfig0, align 1
  br label %do.body

do.body:                                          ; preds = %for.end, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_tc, align 4
  %sconfig029 = getelementptr inbounds %struct.target_control, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %sconfig029 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sconfig029, align 1
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %host, align 4
  %conv30 = zext i16 %26 to i32
  %add31 = add nuw nsw i32 %conv30, -18874233
  %27 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %24) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_tc, align 4
  %js_period36 = getelementptr inbounds %struct.target_control, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %js_period36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %js_period36, align 2
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %host, align 4
  %conv38 = zext i16 %33 to i32
  %add41 = add nuw nsw i32 %conv38, -18874232
  %34 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #8, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdtr_done(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_tc = getelementptr inbounds %struct.initio_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_tc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, -513
  store i16 %4, ptr %1, align 2
  %5 = load ptr, ptr %active_tc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = or i16 %7, 256
  store i16 %8, ptr %5, align 2
  %9 = load ptr, ptr %active_tc, align 4
  %js_period = getelementptr inbounds %struct.target_control, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %js_period to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %js_period, align 2
  %arrayidx = getelementptr %struct.initio_host, ptr %host, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active_tc, align 4
  %js_period8 = getelementptr inbounds %struct.target_control, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %js_period8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %js_period8, align 2
  %17 = or i8 %16, -128
  store i8 %17, ptr %js_period8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_tc, align 4
  %sconfig0 = getelementptr inbounds %struct.target_control, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %sconfig0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sconfig0, align 1
  %22 = and i8 %21, -3
  store i8 %22, ptr %sconfig0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active_tc, align 4
  %sconfig017 = getelementptr inbounds %struct.target_control, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %sconfig017 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sconfig017, align 1
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %host, align 4
  %conv18 = zext i16 %28 to i32
  %add20 = add nuw nsw i32 %conv18, -18874233
  %29 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %26) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !355
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %active_tc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %active_tc, align 4
  %js_period24 = getelementptr inbounds %struct.target_control, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %js_period24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %js_period24, align 2
  %34 = ptrtoint ptr %host to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %host, align 4
  %conv26 = zext i16 %35 to i32
  %add29 = add nuw nsw i32 %conv26, -18874232
  %36 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %33) #8, !srcloc !107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initio_se2_rd_all(i32 noundef %base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @i91unvram, ptr @i91unvramp, align 4
  %add.i = add i32 %base, 93
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add3.i to ptr
  br label %for.body

for.body:                                         ; preds = %initio_se2_rd.exit.for.body_crit_edge, %entry
  %np.030 = phi ptr [ @i91unvram, %entry ], [ %incdec.ptr, %initio_se2_rd.exit.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %initio_se2_rd.exit.for.body_crit_edge ]
  %conv = trunc i32 %i.029 to i8
  %1 = or i8 %conv, -128
  tail call fastcc void @initio_se2_instr(i32 noundef %base, i8 noundef zeroext %1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body
  %val.039.i = phi i16 [ 0, %for.body ], [ %conv22.i, %do.body.i.do.body.i_crit_edge ]
  %i.038.i = phi i32 [ 15, %for.body ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 12) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 6442440) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !357
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 8) #8, !srcloc !107
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %4 = and i8 %3, 1
  %conv19.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 %conv19.i, %i.038.i
  %5 = trunc i32 %shl.i to i16
  %conv22.i = add i16 %val.039.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 6442440) #8
  %dec.i = add nsw i32 %i.038.i, -1
  %cmp.not.i = icmp eq i32 %i.038.i, 0
  br i1 %cmp.not.i, label %initio_se2_rd.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

initio_se2_rd.exit:                               ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 6442440) #8
  %incdec.ptr = getelementptr i16, ptr %np.030, i32 1
  %8 = ptrtoint ptr %np.030 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv22.i, ptr %np.030, align 2
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %initio_se2_rd.exit.for.body_crit_edge

initio_se2_rd.exit.for.body_crit_edge:            ; preds = %initio_se2_rd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %initio_se2_rd.exit
  %9 = load ptr, ptr @i91unvramp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14043, i16 %11)
  %cmp2.not = icmp eq i16 %11, -14043
  br i1 %cmp2.not, label %for.body7.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body7.preheader:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr8 = getelementptr i16, ptr %9, i32 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %9, align 2
  %incdec.ptr8.1 = getelementptr i16, ptr %9, i32 2
  %14 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %incdec.ptr8, align 2
  %add.1 = add i16 %13, %15
  %incdec.ptr8.2 = getelementptr i16, ptr %9, i32 3
  %16 = ptrtoint ptr %incdec.ptr8.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr8.1, align 2
  %add.2 = add i16 %add.1, %17
  %incdec.ptr8.3 = getelementptr i16, ptr %9, i32 4
  %18 = ptrtoint ptr %incdec.ptr8.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %incdec.ptr8.2, align 2
  %add.3 = add i16 %add.2, %19
  %incdec.ptr8.4 = getelementptr i16, ptr %9, i32 5
  %20 = ptrtoint ptr %incdec.ptr8.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %incdec.ptr8.3, align 2
  %add.4 = add i16 %add.3, %21
  %incdec.ptr8.5 = getelementptr i16, ptr %9, i32 6
  %22 = ptrtoint ptr %incdec.ptr8.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %incdec.ptr8.4, align 2
  %add.5 = add i16 %add.4, %23
  %incdec.ptr8.6 = getelementptr i16, ptr %9, i32 7
  %24 = ptrtoint ptr %incdec.ptr8.5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %incdec.ptr8.5, align 2
  %add.6 = add i16 %add.5, %25
  %incdec.ptr8.7 = getelementptr i16, ptr %9, i32 8
  %26 = ptrtoint ptr %incdec.ptr8.6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %incdec.ptr8.6, align 2
  %add.7 = add i16 %add.6, %27
  %incdec.ptr8.8 = getelementptr i16, ptr %9, i32 9
  %28 = ptrtoint ptr %incdec.ptr8.7 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %incdec.ptr8.7, align 2
  %add.8 = add i16 %add.7, %29
  %incdec.ptr8.9 = getelementptr i16, ptr %9, i32 10
  %30 = ptrtoint ptr %incdec.ptr8.8 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %incdec.ptr8.8, align 2
  %add.9 = add i16 %add.8, %31
  %incdec.ptr8.10 = getelementptr i16, ptr %9, i32 11
  %32 = ptrtoint ptr %incdec.ptr8.9 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %incdec.ptr8.9, align 2
  %add.10 = add i16 %add.9, %33
  %incdec.ptr8.11 = getelementptr i16, ptr %9, i32 12
  %34 = ptrtoint ptr %incdec.ptr8.10 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %incdec.ptr8.10, align 2
  %add.11 = add i16 %add.10, %35
  %incdec.ptr8.12 = getelementptr i16, ptr %9, i32 13
  %36 = ptrtoint ptr %incdec.ptr8.11 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %incdec.ptr8.11, align 2
  %add.12 = add i16 %add.11, %37
  %incdec.ptr8.13 = getelementptr i16, ptr %9, i32 14
  %38 = ptrtoint ptr %incdec.ptr8.12 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %incdec.ptr8.12, align 2
  %add.13 = add i16 %add.12, %39
  %incdec.ptr8.14 = getelementptr i16, ptr %9, i32 15
  %40 = ptrtoint ptr %incdec.ptr8.13 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %incdec.ptr8.13, align 2
  %add.14 = add i16 %add.13, %41
  %incdec.ptr8.15 = getelementptr i16, ptr %9, i32 16
  %42 = ptrtoint ptr %incdec.ptr8.14 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr8.14, align 2
  %add.15 = add i16 %add.14, %43
  %incdec.ptr8.16 = getelementptr i16, ptr %9, i32 17
  %44 = ptrtoint ptr %incdec.ptr8.15 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %incdec.ptr8.15, align 2
  %add.16 = add i16 %add.15, %45
  %incdec.ptr8.17 = getelementptr i16, ptr %9, i32 18
  %46 = ptrtoint ptr %incdec.ptr8.16 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %incdec.ptr8.16, align 2
  %add.17 = add i16 %add.16, %47
  %incdec.ptr8.18 = getelementptr i16, ptr %9, i32 19
  %48 = ptrtoint ptr %incdec.ptr8.17 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %incdec.ptr8.17, align 2
  %add.18 = add i16 %add.17, %49
  %incdec.ptr8.19 = getelementptr i16, ptr %9, i32 20
  %50 = ptrtoint ptr %incdec.ptr8.18 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr8.18, align 2
  %add.19 = add i16 %add.18, %51
  %incdec.ptr8.20 = getelementptr i16, ptr %9, i32 21
  %52 = ptrtoint ptr %incdec.ptr8.19 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %incdec.ptr8.19, align 2
  %add.20 = add i16 %add.19, %53
  %incdec.ptr8.21 = getelementptr i16, ptr %9, i32 22
  %54 = ptrtoint ptr %incdec.ptr8.20 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %incdec.ptr8.20, align 2
  %add.21 = add i16 %add.20, %55
  %incdec.ptr8.22 = getelementptr i16, ptr %9, i32 23
  %56 = ptrtoint ptr %incdec.ptr8.21 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %incdec.ptr8.21, align 2
  %add.22 = add i16 %add.21, %57
  %incdec.ptr8.23 = getelementptr i16, ptr %9, i32 24
  %58 = ptrtoint ptr %incdec.ptr8.22 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %incdec.ptr8.22, align 2
  %add.23 = add i16 %add.22, %59
  %incdec.ptr8.24 = getelementptr i16, ptr %9, i32 25
  %60 = ptrtoint ptr %incdec.ptr8.23 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %incdec.ptr8.23, align 2
  %add.24 = add i16 %add.23, %61
  %incdec.ptr8.25 = getelementptr i16, ptr %9, i32 26
  %62 = ptrtoint ptr %incdec.ptr8.24 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %incdec.ptr8.24, align 2
  %add.25 = add i16 %add.24, %63
  %incdec.ptr8.26 = getelementptr i16, ptr %9, i32 27
  %64 = ptrtoint ptr %incdec.ptr8.25 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %incdec.ptr8.25, align 2
  %add.26 = add i16 %add.25, %65
  %incdec.ptr8.27 = getelementptr i16, ptr %9, i32 28
  %66 = ptrtoint ptr %incdec.ptr8.26 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %incdec.ptr8.26, align 2
  %add.27 = add i16 %add.26, %67
  %incdec.ptr8.28 = getelementptr i16, ptr %9, i32 29
  %68 = ptrtoint ptr %incdec.ptr8.27 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %incdec.ptr8.27, align 2
  %add.28 = add i16 %add.27, %69
  %incdec.ptr8.29 = getelementptr i16, ptr %9, i32 30
  %70 = ptrtoint ptr %incdec.ptr8.28 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %incdec.ptr8.28, align 2
  %add.29 = add i16 %add.28, %71
  %72 = ptrtoint ptr %incdec.ptr8.29 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %incdec.ptr8.29, align 2
  %add.30 = add i16 %add.29, %73
  %NVM_CheckSum = getelementptr inbounds %struct._NVRAM, ptr %9, i32 0, i32 13
  %74 = ptrtoint ptr %NVM_CheckSum to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %NVM_CheckSum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %add.30)
  %cmp17.not = icmp eq i16 %75, %add.30
  %. = select i1 %cmp17.not, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %for.body7.preheader, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.end.cleanup_crit_edge ], [ %., %for.body7.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initio_se2_instr(i32 noundef %base, i8 noundef zeroext %instr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !360
  tail call void @arm_heavy_mb() #8
  %add = add i32 %base, 93
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 10) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 6442440) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !361
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 14) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 6442440) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %instr.addr.042 = phi i8 [ %instr, %entry ], [ %shl, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %instr.addr.042)
  %tobool.not = icmp sgt i8 %instr.addr.042, -1
  %. = select i1 %tobool.not, i8 8, i8 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %.) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 6442440) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  tail call void @arm_heavy_mb() #8
  %4 = or i8 %., 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %4) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 6442440) #8
  %shl = shl i8 %instr.addr.042, 1
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.body28, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !364
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 8) #8, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 6442440) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind "function-inline-cost-multiplier"="2" }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__UNIQUE_ID_file287, !1, !"__UNIQUE_ID_file287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/initio.c", i32 2941, i32 1}
!2 = !{ptr @__UNIQUE_ID_license288, !1, !"__UNIQUE_ID_license288", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_initio__289_2959_initio_pci_driver_init6, !4, !"__initcall__kmod_initio__289_2959_initio_pci_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/scsi/initio.c", i32 2959, i32 1}
!5 = !{ptr @__exitcall_initio_pci_driver_exit, !4, !"__exitcall_initio_pci_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/scsi/initio.c", i32 2961, i32 1}
!8 = !{ptr @__UNIQUE_ID_author291, !9, !"__UNIQUE_ID_author291", i1 false, i1 false}
!9 = !{!"../drivers/scsi/initio.c", i32 2962, i32 1}
!10 = !{ptr @__UNIQUE_ID_file292, !11, !"__UNIQUE_ID_file292", i1 false, i1 false}
!11 = !{!"../drivers/scsi/initio.c", i32 2963, i32 1}
!12 = !{ptr @__UNIQUE_ID_license293, !11, !"__UNIQUE_ID_license293", i1 false, i1 false}
!13 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @initio_pci_driver, !15, !"initio_pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/scsi/initio.c", i32 2953, i32 26}
!16 = !{ptr @initio_pci_tbl, !17, !"initio_pci_tbl", i1 false, i1 false}
!17 = !{!"../drivers/scsi/initio.c", i32 2943, i32 29}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/initio.c", i32 2822, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @initio_probe_one._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @initio_probe_one._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/initio.c", i32 2828, i32 3}
!26 = !{ptr @initio_probe_one._entry.4, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @initio_probe_one._entry_ptr.6, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/initio.c", i32 2837, i32 7}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/initio.c", i32 2838, i32 3}
!32 = !{ptr @initio_probe_one._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @initio_probe_one._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/initio.c", i32 2856, i32 3}
!36 = !{ptr @initio_probe_one._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @initio_probe_one._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @initio_probe_one.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/scsi/initio.c", i32 2864, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @initio_probe_one.__key.15, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/scsi/initio.c", i32 2879, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/initio.c", i32 2898, i32 3}
!46 = !{ptr @initio_probe_one._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @initio_probe_one._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/initio.c", i32 2792, i32 12}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/initio.c", i32 2791, i32 16}
!52 = !{ptr @initio_template, !53, !"initio_template", i1 false, i1 false}
!53 = !{!"../drivers/scsi/initio.c", i32 2790, i32 34}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/initio.c", i32 2740, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @i91uSCBPost._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @i91uSCBPost._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/initio.c", i32 2779, i32 3}
!61 = !{ptr @i91uSCBPost._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @i91uSCBPost._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/initio.c", i32 1005, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @initio_bad_seq._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @initio_bad_seq._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @initio_rate_tbl, !73, !"initio_rate_tbl", i1 false, i1 false}
!73 = !{!"../drivers/scsi/initio.c", i32 213, i32 11}
!74 = distinct !{null, !75, !"initio_tag_enable", i1 false, i1 false}
!75 = !{!"../drivers/scsi/initio.c", i32 103, i32 12}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/initio.c", i32 636, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @initio_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @initio_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/initio.c", i32 641, i32 3}
!83 = !{ptr @initio_init._entry.33, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @initio_init._entry_ptr.35, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @i91unvram, !86, !"i91unvram", i1 false, i1 false}
!86 = !{!"../drivers/scsi/initio.c", i32 170, i32 14}
!87 = !{ptr @i91udftNvRam, !88, !"i91udftNvRam", i1 false, i1 false}
!88 = !{!"../drivers/scsi/initio.c", i32 173, i32 11}
!89 = !{ptr @i91unvramp, !90, !"i91unvramp", i1 false, i1 false}
!90 = !{!"../drivers/scsi/initio.c", i32 171, i32 15}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.peeled.count", i32 1}
!103 = !{i64 2149156620, i64 2149156643, i64 2149156675, i64 2149156707, i64 2149156745, i64 2149156775}
!104 = !{i64 5067338}
!105 = !{i64 2155131252}
!106 = !{i64 2155131483}
!107 = !{i64 5066943}
!108 = !{i64 2155119272}
!109 = !{i64 2155125238}
!110 = !{i64 2155126123}
!111 = !{i64 2155127000}
!112 = !{i64 2155127885}
!113 = !{i64 2155128782}
!114 = !{i64 2155129667}
!115 = !{i64 2155130617}
!116 = !{i64 2155130837}
!117 = !{i64 2155120149}
!118 = !{i64 2155131891}
!119 = !{i64 2155132124}
!120 = !{i64 2155135673}
!121 = !{i64 2155136028}
!122 = !{i64 2155136392}
!123 = !{i64 2155136932}
!124 = !{i64 2155137287}
!125 = !{i64 2155137634}
!126 = !{i64 2155137983}
!127 = !{i64 2155138371}
!128 = !{i64 2155139274}
!129 = !{i64 2155139079}
!130 = !{i64 2155142755}
!131 = !{i64 2155143105}
!132 = !{i64 2155149093}
!133 = !{i64 2155149322}
!134 = !{i64 2155149672}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 2155228156, i64 2155228643, i64 2155228193, i64 2155228249, i64 2155228283, i64 2155228307, i64 2155228348, i64 2155228369, i64 2155228397, i64 2155228431}
!138 = !{i64 2155147949}
!139 = !{i64 2155148667}
!140 = !{i64 2155150477}
!141 = !{i64 2155150787}
!142 = !{i64 2155151087}
!143 = !{i64 2155151416}
!144 = !{i64 2155151800}
!145 = !{i64 2155215455}
!146 = !{i64 2155217246}
!147 = !{i64 2155217602}
!148 = !{i64 2155217959}
!149 = !{i64 2155218314}
!150 = !{i64 2155216173}
!151 = !{i64 2155216528}
!152 = !{i64 2155145041}
!153 = !{i64 2155145759}
!154 = !{i64 2155150160}
!155 = !{i64 2155189678}
!156 = !{i64 2155189919}
!157 = !{i64 2155190345}
!158 = !{i64 2155190620}
!159 = !{i64 2155190462}
!160 = !{i64 2155190849}
!161 = !{i64 2155191364}
!162 = !{i64 2155191664}
!163 = !{i64 2155191903}
!164 = !{i64 2155192269}
!165 = !{i64 2155219446}
!166 = !{i64 2155192661}
!167 = !{i64 5067140}
!168 = !{i64 2155193107}
!169 = !{i64 2155193533}
!170 = !{i64 2155193792}
!171 = !{i64 2155194238}
!172 = !{i64 2155194664}
!173 = !{i64 2155195484}
!174 = !{i64 2155195273}
!175 = !{i64 2155195846}
!176 = !{i64 2155196201}
!177 = !{i64 2155152217}
!178 = !{i64 2155152586}
!179 = !{i64 2155152942}
!180 = !{i64 2155153299}
!181 = !{i64 2155153655}
!182 = !{i64 2155154038}
!183 = !{i64 2155154385}
!184 = !{i64 2155154740}
!185 = !{i64 2155155087}
!186 = !{i64 2155155470}
!187 = !{i64 2155155817}
!188 = !{i64 2155156172}
!189 = !{i64 2155156568}
!190 = !{i64 2155156919}
!191 = !{i64 2155157274}
!192 = !{i64 2155157629}
!193 = !{i64 2155158505}
!194 = !{i64 2155158303}
!195 = !{i64 2155158872}
!196 = !{i64 2155159232}
!197 = !{i64 2155160108}
!198 = !{i64 2155159906}
!199 = !{i64 2155160469}
!200 = !{i64 2155160824}
!201 = !{i64 2155161195}
!202 = !{i64 2155161550}
!203 = !{i64 2155161919}
!204 = !{i64 2155162266}
!205 = !{i64 2155162621}
!206 = !{i64 2155163017}
!207 = !{i64 2155163368}
!208 = !{i64 2155163723}
!209 = !{i64 2155164078}
!210 = !{i64 2155164951}
!211 = !{i64 2155164750}
!212 = !{i64 2155204106}
!213 = !{i64 2155204461}
!214 = !{i64 2155165338}
!215 = !{i64 2155165693}
!216 = !{i64 2155173335}
!217 = !{i64 2155173801}
!218 = !{i64 2155174739}
!219 = !{i64 2155175205}
!220 = !{i64 2155176102}
!221 = !{i64 2155176568}
!222 = !{i64 2155176971}
!223 = !{i64 2155177437}
!224 = !{i64 2155178375}
!225 = !{i64 2155178841}
!226 = !{i64 2155179738}
!227 = !{i64 2155180204}
!228 = !{i64 5067558}
!229 = !{i64 2155166508}
!230 = !{i64 2155166808}
!231 = !{i64 2155167118}
!232 = !{i64 2155167858}
!233 = !{i64 2155167664}
!234 = !{i64 2155168284}
!235 = !{i64 2155168564}
!236 = !{i64 2155168406}
!237 = !{i64 2155168864}
!238 = !{i64 2155169774}
!239 = !{i64 2155170008}
!240 = !{i64 2155170434}
!241 = !{i64 2155170714}
!242 = !{i64 2155170556}
!243 = !{i64 2155170945}
!244 = !{i64 2155171371}
!245 = !{i64 2155171605}
!246 = !{i64 2155171967}
!247 = !{i64 2155172322}
!248 = !{i64 2155181527}
!249 = !{i64 2155181884}
!250 = !{i64 2155182310}
!251 = !{i64 2155183499}
!252 = !{i64 2155183854}
!253 = !{i64 2155184211}
!254 = !{i64 2155184566}
!255 = !{i64 2155172754}
!256 = !{i64 2155173054}
!257 = !{i64 2155218736}
!258 = !{i64 2155219091}
!259 = !{i64 2155188436}
!260 = !{i64 2155188897}
!261 = !{i64 2155189252}
!262 = !{i64 2155219872}
!263 = !{i64 2155220152}
!264 = !{i64 2155219994}
!265 = !{i64 2155220452}
!266 = !{i64 2155220757}
!267 = !{i64 2155221011}
!268 = !{i64 2155221501}
!269 = !{i64 2155221856}
!270 = !{i64 2155222216}
!271 = !{i64 2155222706}
!272 = !{i64 2155223061}
!273 = !{i64 2155197092}
!274 = !{i64 2155196881}
!275 = !{i64 2155197450}
!276 = !{i64 2155197805}
!277 = !{i64 2155223497}
!278 = !{i64 2155223777}
!279 = !{i64 2155223619}
!280 = !{i64 2155224077}
!281 = !{i64 2155224316}
!282 = !{i64 2155224777}
!283 = !{i64 2155225132}
!284 = !{i64 2155132544}
!285 = !{i64 2155132790}
!286 = !{i64 2155133216}
!287 = !{i64 2155133496}
!288 = !{i64 2155133338}
!289 = !{i64 2155133725}
!290 = !{i64 2155134080}
!291 = !{i64 2155134506}
!292 = !{i64 2155134786}
!293 = !{i64 2155134628}
!294 = !{i64 2155135007}
!295 = !{i64 2155114585}
!296 = !{i64 2155114427}
!297 = !{i64 2155135447}
!298 = !{i64 2155198160}
!299 = !{i64 2155198543}
!300 = !{i64 2155198989}
!301 = !{i64 2155199415}
!302 = !{i64 2155199644}
!303 = !{i64 2155200520}
!304 = !{i64 2155200318}
!305 = !{i64 2155201425}
!306 = !{i64 2155201214}
!307 = !{i64 2155204846}
!308 = !{i64 2155205292}
!309 = !{i64 2155205718}
!310 = !{i64 2155205977}
!311 = !{i64 2155206423}
!312 = !{i64 2155206849}
!313 = !{i64 2155207163}
!314 = !{i64 2155207417}
!315 = !{i64 2155207774}
!316 = !{i64 2155208136}
!317 = !{i64 2155208483}
!318 = !{i64 2155208838}
!319 = !{i64 2155209196}
!320 = !{i64 2155209554}
!321 = !{i64 2155209909}
!322 = !{i64 2155210828}
!323 = !{i64 2155210617}
!324 = !{i64 2155211719}
!325 = !{i64 2155211508}
!326 = !{i64 2155212083}
!327 = !{i64 2155212430}
!328 = !{i64 2155212785}
!329 = !{i64 2155213143}
!330 = !{i64 2155213498}
!331 = !{i64 2155201780}
!332 = !{i64 2155202135}
!333 = !{i64 2155184921}
!334 = !{i64 2155185347}
!335 = !{i64 2155186294}
!336 = !{i64 2155186722}
!337 = !{i64 2155186965}
!338 = !{i64 2155187320}
!339 = !{i64 2155187675}
!340 = !{i64 2155188030}
!341 = !{i64 2155225570}
!342 = !{i64 2155225850}
!343 = !{i64 2155225692}
!344 = !{i64 2155226150}
!345 = !{i64 2155226389}
!346 = !{i64 2155226850}
!347 = !{i64 2155227205}
!348 = !{i64 2155203028}
!349 = !{i64 2155202817}
!350 = !{i64 2155203390}
!351 = !{i64 2155203745}
!352 = !{i64 2155214661}
!353 = !{i64 2155215033}
!354 = !{i64 2155213906}
!355 = !{i64 2155214278}
!356 = !{i64 2155121046}
!357 = !{i64 2155121931}
!358 = !{i64 2155122339}
!359 = !{i64 2155123101}
!360 = !{i64 2155114820}
!361 = !{i64 2155115729}
!362 = !{i64 2155116621}
!363 = !{i64 2155117510}
!364 = !{i64 2155118395}
