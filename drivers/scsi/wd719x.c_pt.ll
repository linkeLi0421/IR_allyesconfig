; ModuleID = '/llk/IR_all_yes/drivers/scsi/wd719x.c_pt.bc'
source_filename = "../drivers/scsi/wd719x.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.wd719x_eeprom_header = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wd719x_host_param = type <{ i8, i8, i8, i8, i8, i16, i16, i8, i32, i32, i8, i8 }>
%struct.wd719x = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, %struct.list_head }
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
%struct.wd719x_scb = type { i32, i8, i8, i8, i8, [16 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, [3 x i8], i8, i8, i8, [2 x i8], i32, ptr, %struct.list_head, [255 x %struct.wd719x_sglist] }
%struct.wd719x_sglist = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_wd719x__293_988_wd719x_pci_driver_init6 = internal global ptr @wd719x_pci_driver_init, section ".initcall6.init", align 4
@wd719x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @wd719x_pci_table, ptr @wd719x_pci_probe, ptr @wd719x_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wd719x_pci_driver_exit = internal global ptr @wd719x_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [64 x i8] c"wd719x.description=Western Digital WD7193/7197/7296 SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [58 x i8] c"wd719x.author=Ondrej Zary, Aaron Dewell, Juergen Gaertner\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [32 x i8] c"wd719x.file=drivers/scsi/wd719x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"wd719x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [31 x i8] c"wd719x.firmware=wd719x-wcs.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [32 x i8] c"wd719x.firmware=wd719x-risc.bin\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wd719x\00", [25 x i8] zeroinitializer }, align 32
@wd719x_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4124, i32 12950, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@wd719x_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to set 32-bit DMA mask\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wd719x_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/scsi/wd719x.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wd719x_pci_probe._entry_ptr = internal global ptr @wd719x_pci_probe._entry, section ".printk_index", align 4
@wd719x_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 2120, ptr @wd719x_queuecommand, ptr null, ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr @wd719x_abort, ptr @wd719x_dev_reset, ptr null, ptr @wd719x_bus_reset, ptr @wd719x_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wd719x_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 255, i32 7, i16 255, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Western Digital 719x\00", [43 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@wd719x_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 471, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"abort command, tag: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wd719x_abort\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wd719x_abort._entry_ptr = internal global ptr @wd719x_abort._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wd719x_wait_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 87, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"command register is not ready: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wd719x_wait_ready\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wd719x_wait_ready._entry_ptr = internal global ptr @wd719x_wait_ready._entry, section ".printk_index", align 4
@wd719x_wait_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 106, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"direct command timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wd719x_wait_done\00", [47 x i8] zeroinitializer }, align 32
@wd719x_wait_done._entry_ptr = internal global ptr @wd719x_wait_done._entry, section ".printk_index", align 4
@wd719x_wait_done._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 119, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"direct command failed, status 0x%02x, SUE 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@wd719x_wait_done._entry_ptr.19 = internal global ptr @wd719x_wait_done._entry.17, section ".printk_index", align 4
@wd719x_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 495, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s reset requested\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wd719x_reset\00", [19 x i8] zeroinitializer }, align 32
@wd719x_reset._entry_ptr = internal global ptr @wd719x_reset._entry, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@wd719x_host_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 529, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"host reset requested\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wd719x_host_reset\00", [46 x i8] zeroinitializer }, align 32
@wd719x_host_reset._entry_ptr = internal global ptr @wd719x_host_reset._entry, section ".printk_index", align 4
@wd719x_host_reset._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RISC sleep command failed\0A\00", [37 x i8] zeroinitializer }, align 32
@wd719x_host_reset._entry_ptr.28 = internal global ptr @wd719x_host_reset._entry.26, section ".printk_index", align 4
@__const.wd719x_chip_init.fwname_wcs = private unnamed_addr constant [15 x i8] c"wd719x-wcs.bin\00", align 1
@__const.wd719x_chip_init.fwname_risc = private unnamed_addr constant [16 x i8] c"wd719x-risc.bin\00", align 1
@wd719x_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 316, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to load firmware %s: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wd719x_chip_init\00", [47 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr = internal global ptr @wd719x_chip_init._entry, section ".printk_index", align 4
@wd719x_chip_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 323, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.32 = internal global ptr @wd719x_chip_init._entry.31, section ".printk_index", align 4
@wd719x_chip_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RISC bootstrap failed: DMA aborted\0A\00", [60 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.35 = internal global ptr @wd719x_chip_init._entry.33, section ".printk_index", align 4
@wd719x_chip_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RISC bootstrap failed: DMA timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.38 = internal global ptr @wd719x_chip_init._entry.36, section ".printk_index", align 4
@wd719x_chip_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to initialize RISC\0A\00", [37 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.41 = internal global ptr @wd719x_chip_init._entry.39, section ".printk_index", align 4
@wd719x_chip_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.30, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to read firmware version\0A\00", [63 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.44 = internal global ptr @wd719x_chip_init._entry.42, section ".printk_index", align 4
@wd719x_chip_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.30, ptr @.str.3, i32 425, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RISC initialized with firmware version %.2x.%.2x\0A\00", [46 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.47 = internal global ptr @wd719x_chip_init._entry.45, section ".printk_index", align 4
@wd719x_chip_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.30, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCSI bus reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.50 = internal global ptr @wd719x_chip_init._entry.48, section ".printk_index", align 4
@wd719x_chip_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.30, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set HOST PARAMETERS\0A\00", [33 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.53 = internal global ptr @wd719x_chip_init._entry.51, section ".printk_index", align 4
@wd719x_chip_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.30, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SCAM initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@wd719x_chip_init._entry_ptr.56 = internal global ptr @wd719x_chip_init._entry.54, section ".printk_index", align 4
@wd719x_board_found.card_types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unknown card\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WD7193\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WD7197\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WD7296\00", [25 x i8] zeroinitializer }, align 32
@wd719x_board_found._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to allocate parameter buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wd719x_board_found\00", [45 x i8] zeroinitializer }, align 32
@wd719x_board_found._entry_ptr = internal global ptr @wd719x_board_found._entry, section ".printk_index", align 4
@wd719x_board_found._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to allocate hash buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@wd719x_board_found._entry_ptr.65 = internal global ptr @wd719x_board_found._entry.63, section ".printk_index", align 4
@wd719x_board_found._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to assign IRQ %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wd719x_board_found._entry_ptr.68 = internal global ptr @wd719x_board_found._entry.66, section ".printk_index", align 4
@wd719x_board_found._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.3, i32 865, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s at I/O 0x%lx, IRQ %u, SCSI ID %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wd719x_board_found._entry_ptr.71 = internal global ptr @wd719x_board_found._entry.69, section ".printk_index", align 4
@wd719x_detect_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown card type 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wd719x_detect_type\00", [45 x i8] zeroinitializer }, align 32
@wd719x_detect_type._entry_ptr = internal global ptr @wd719x_detect_type._entry, section ".printk_index", align 4
@wd719x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 676, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"linked command completed with no status\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wd719x_interrupt\00", [47 x i8] zeroinitializer }, align 32
@wd719x_interrupt._entry_ptr = internal global ptr @wd719x_interrupt._entry, section ".printk_index", align 4
@wd719x_interrupt._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 679, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsolicited interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@wd719x_interrupt._entry_ptr.78 = internal global ptr @wd719x_interrupt._entry.76, section ".printk_index", align 4
@wd719x_interrupt._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.3, i32 694, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"card returned invalid SCB pointer\0A\00", [61 x i8] zeroinitializer }, align 32
@wd719x_interrupt._entry_ptr.81 = internal global ptr @wd719x_interrupt._entry.79, section ".printk_index", align 4
@wd719x_interrupt.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.82, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"direct command 0x%x completed\0A\00", [33 x i8] zeroinitializer }, align 32
@wd719x_interrupt._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.3, i32 700, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"card indicates PIO data ready but we never use PIO\0A\00", [44 x i8] zeroinitializer }, align 32
@wd719x_interrupt._entry_ptr.85 = internal global ptr @wd719x_interrupt._entry.83, section ".printk_index", align 4
@wd719x_interrupt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.75, ptr @.str.3, i32 705, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown interrupt reason: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wd719x_interrupt._entry_ptr.88 = internal global ptr @wd719x_interrupt._entry.86, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 575, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"command rejected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wd719x_interrupt_SCB\00", [43 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr = internal global ptr @wd719x_interrupt_SCB._entry, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 579, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCB queue is full\0A\00", [45 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.93 = internal global ptr @wd719x_interrupt_SCB._entry.91, section ".printk_index", align 4
@wd719x_interrupt_SCB.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.94, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SCB terminated by direct command\0A\00", [62 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.90, ptr @.str.3, i32 589, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA abort\0A\00", [21 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.97 = internal global ptr @wd719x_interrupt_SCB._entry.95, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.90, ptr @.str.3, i32 594, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.100 = internal global ptr @wd719x_interrupt_SCB._entry.98, section ".printk_index", align 4
@wd719x_interrupt_SCB.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.101, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"selection timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.102, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bus reset occurred\0A\00", [44 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.103, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCSI bus error\0A\00", [16 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.90, ptr @.str.3, i32 609, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wrong data transfer direction\0A\00", [33 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.106 = internal global ptr @wd719x_interrupt_SCB._entry.104, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.90, ptr @.str.3, i32 613, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid SCSI phase\0A\00", [44 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.109 = internal global ptr @wd719x_interrupt_SCB._entry.107, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.90, ptr @.str.3, i32 617, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"record too long\0A\00", [47 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.112 = internal global ptr @wd719x_interrupt_SCB._entry.110, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.90, ptr @.str.3, i32 621, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unexpected bus free\0A\00", [43 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.115 = internal global ptr @wd719x_interrupt_SCB._entry.113, section ".printk_index", align 4
@wd719x_interrupt_SCB.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.116, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"auto request sense\0A\00", [44 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.90, ptr @.str.3, i32 633, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"target id %d ignored command\0A\00", [34 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.119 = internal global ptr @wd719x_interrupt_SCB._entry.117, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.90, ptr @.str.3, i32 637, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reversed tags\0A\00", [17 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.122 = internal global ptr @wd719x_interrupt_SCB._entry.120, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.90, ptr @.str.3, i32 641, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tag type not supported by target\0A\00", [62 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.125 = internal global ptr @wd719x_interrupt_SCB._entry.123, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.90, ptr @.str.3, i32 645, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no SCAM soft ID available\0A\00", [37 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.128 = internal global ptr @wd719x_interrupt_SCB._entry.126, section ".printk_index", align 4
@wd719x_interrupt_SCB._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.90, ptr @.str.3, i32 650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown SUE error code: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@wd719x_interrupt_SCB._entry_ptr.131 = internal global ptr @wd719x_interrupt_SCB._entry.129, section ".printk_index", align 4
@wd719x_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"EEPROM signature is invalid (0x%02x 0x%02x), using default values\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wd719x_read_eeprom\00", [45 x i8] zeroinitializer }, align 32
@wd719x_read_eeprom._entry_ptr = internal global ptr @wd719x_read_eeprom._entry, section ".printk_index", align 4
@wd719x_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.134, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wd719x_destroy\00", [17 x i8] zeroinitializer }, align 32
@wd719x_destroy._entry_ptr = internal global ptr @wd719x_destroy._entry, section ".printk_index", align 4
@wd719x_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 17]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 17]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 32]
@__sancov_gen_cov_switch_values.140 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 128, i64 240]
@__sancov_gen_cov_switch_values.141 = internal global [22 x i64] [i64 20, i64 8, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"wd719x_pci_driver\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 981, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 988, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"wd719x_pci_table\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 974, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 908, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"wd719x_template\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 881, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 883, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 326, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 471, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 86, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 106, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 118, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 494, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 529, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 534, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 315, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 322, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 380, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 387, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 411, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 420, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 423, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 431, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 440, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 449, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [11 x i8] c"card_types\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 813, i32 28 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 814, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 814, i32 19 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 814, i32 29 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 814, i32 39 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 833, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 842, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 850, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 864, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 805, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 676, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 679, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 694, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 696, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 700, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 704, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 575, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 579, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 583, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 589, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 594, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 598, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 601, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 605, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 609, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 613, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 617, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 621, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 625, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 632, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 637, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 641, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 645, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 649, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 768, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.506 = private constant [25 x i8] c"../drivers/scsi/wd719x.c\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 169, i32 3 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_license297, ptr @__exitcall_wd719x_pci_driver_exit, ptr @__initcall__kmod_wd719x__293_988_wd719x_pci_driver_init6, ptr @wd719x_abort._entry, ptr @wd719x_abort._entry_ptr, ptr @wd719x_board_found._entry, ptr @wd719x_board_found._entry.63, ptr @wd719x_board_found._entry.66, ptr @wd719x_board_found._entry.69, ptr @wd719x_board_found._entry_ptr, ptr @wd719x_board_found._entry_ptr.65, ptr @wd719x_board_found._entry_ptr.68, ptr @wd719x_board_found._entry_ptr.71, ptr @wd719x_chip_init._entry, ptr @wd719x_chip_init._entry.31, ptr @wd719x_chip_init._entry.33, ptr @wd719x_chip_init._entry.36, ptr @wd719x_chip_init._entry.39, ptr @wd719x_chip_init._entry.42, ptr @wd719x_chip_init._entry.45, ptr @wd719x_chip_init._entry.48, ptr @wd719x_chip_init._entry.51, ptr @wd719x_chip_init._entry.54, ptr @wd719x_chip_init._entry_ptr, ptr @wd719x_chip_init._entry_ptr.32, ptr @wd719x_chip_init._entry_ptr.35, ptr @wd719x_chip_init._entry_ptr.38, ptr @wd719x_chip_init._entry_ptr.41, ptr @wd719x_chip_init._entry_ptr.44, ptr @wd719x_chip_init._entry_ptr.47, ptr @wd719x_chip_init._entry_ptr.50, ptr @wd719x_chip_init._entry_ptr.53, ptr @wd719x_chip_init._entry_ptr.56, ptr @wd719x_destroy._entry, ptr @wd719x_destroy._entry_ptr, ptr @wd719x_detect_type._entry, ptr @wd719x_detect_type._entry_ptr, ptr @wd719x_host_reset._entry, ptr @wd719x_host_reset._entry.26, ptr @wd719x_host_reset._entry_ptr, ptr @wd719x_host_reset._entry_ptr.28, ptr @wd719x_interrupt._entry, ptr @wd719x_interrupt._entry.76, ptr @wd719x_interrupt._entry.79, ptr @wd719x_interrupt._entry.83, ptr @wd719x_interrupt._entry.86, ptr @wd719x_interrupt._entry_ptr, ptr @wd719x_interrupt._entry_ptr.78, ptr @wd719x_interrupt._entry_ptr.81, ptr @wd719x_interrupt._entry_ptr.85, ptr @wd719x_interrupt._entry_ptr.88, ptr @wd719x_interrupt_SCB._entry, ptr @wd719x_interrupt_SCB._entry.104, ptr @wd719x_interrupt_SCB._entry.107, ptr @wd719x_interrupt_SCB._entry.110, ptr @wd719x_interrupt_SCB._entry.113, ptr @wd719x_interrupt_SCB._entry.117, ptr @wd719x_interrupt_SCB._entry.120, ptr @wd719x_interrupt_SCB._entry.123, ptr @wd719x_interrupt_SCB._entry.126, ptr @wd719x_interrupt_SCB._entry.129, ptr @wd719x_interrupt_SCB._entry.91, ptr @wd719x_interrupt_SCB._entry.95, ptr @wd719x_interrupt_SCB._entry.98, ptr @wd719x_interrupt_SCB._entry_ptr, ptr @wd719x_interrupt_SCB._entry_ptr.100, ptr @wd719x_interrupt_SCB._entry_ptr.106, ptr @wd719x_interrupt_SCB._entry_ptr.109, ptr @wd719x_interrupt_SCB._entry_ptr.112, ptr @wd719x_interrupt_SCB._entry_ptr.115, ptr @wd719x_interrupt_SCB._entry_ptr.119, ptr @wd719x_interrupt_SCB._entry_ptr.122, ptr @wd719x_interrupt_SCB._entry_ptr.125, ptr @wd719x_interrupt_SCB._entry_ptr.128, ptr @wd719x_interrupt_SCB._entry_ptr.131, ptr @wd719x_interrupt_SCB._entry_ptr.93, ptr @wd719x_interrupt_SCB._entry_ptr.97, ptr @wd719x_pci_driver_exit, ptr @wd719x_pci_probe._entry, ptr @wd719x_pci_probe._entry_ptr, ptr @wd719x_read_eeprom._entry, ptr @wd719x_read_eeprom._entry_ptr, ptr @wd719x_reset._entry, ptr @wd719x_reset._entry_ptr, ptr @wd719x_wait_done._entry, ptr @wd719x_wait_done._entry.17, ptr @wd719x_wait_done._entry_ptr, ptr @wd719x_wait_done._entry_ptr.19, ptr @wd719x_wait_ready._entry, ptr @wd719x_wait_ready._entry_ptr, ptr @wd719x_pci_driver, ptr @.str, ptr @wd719x_pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @wd719x_template, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @wd719x_board_found.card_types, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_wait_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_wait_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_wait_done._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_host_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_host_reset._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_chip_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_board_found.card_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_board_found._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_board_found._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_board_found._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_board_found._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_detect_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_interrupt_SCB._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wd719x_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @wd719x_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wd719x_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @wd719x_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %d) #2 align 64 {
entry:
  %eeprom.i.i = alloca %struct.eeprom_93cx6, align 4
  %header.i.i = alloca %struct.wd719x_eeprom_header, align 8
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
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %disable_device

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.disable_device_crit_edge

if.end5.disable_device_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_device

if.end9:                                          ; preds = %if.end5
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end9.release_region_crit_edge, label %cond.false

if.end9.release_region_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_region

cond.false:                                       ; preds = %if.end9
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %phi.cmp = icmp eq i32 %sub, -1
  br i1 %phi.cmp, label %cond.false.release_region_crit_edge, label %if.end17

cond.false.release_region_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_region

if.end17:                                         ; preds = %cond.false
  %call18 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @wd719x_template, i32 noundef 52) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.release_region_crit_edge, label %if.end21

if.end17.release_region_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_region

if.end21:                                         ; preds = %if.end17
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 53
  %call23 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call23, ptr %base, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end21.free_host_crit_edge, label %if.end27

if.end21.free_host_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_host

if.end27:                                         ; preds = %if.end21
  %pdev28 = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %pdev28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev28, align 4
  %active_scbs.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %active_scbs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %active_scbs.i, ptr %active_scbs.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %active_scbs.i, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %base.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 43
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base.i, align 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 60
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %14 = or i8 %13, 10
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16.i.i, i8 %14) #8, !srcloc !259
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %18, i32 61
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i18.i.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %20 = and i8 %19, 10
  %conv5.i.i = zext i8 %20 to i32
  %21 = zext i32 %conv5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv5.i.i, label %do.end.i.i [
    i32 8, label %if.end27.wd719x_detect_type.exit.i_crit_edge
    i32 2, label %sw.bb6.i.i
    i32 0, label %sw.bb7.i.i
  ]

if.end27.wd719x_detect_type.exit.i_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %wd719x_detect_type.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %wd719x_detect_type.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %wd719x_detect_type.exit.i

do.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev28, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.72, i32 noundef %conv5.i.i) #11
  br label %wd719x_detect_type.exit.i

wd719x_detect_type.exit.i:                        ; preds = %do.end.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %if.end27.wd719x_detect_type.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ 3, %sw.bb7.i.i ], [ 2, %sw.bb6.i.i ], [ 1, %if.end27.wd719x_detect_type.exit.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i, ptr %type.i, align 4
  %25 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call18, ptr %hostdata.i, align 4
  %26 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev28, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  %irq4.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 47
  %30 = ptrtoint ptr %irq4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %irq4.i, align 8
  %fw_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 2
  %31 = ptrtoint ptr %fw_virt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fw_virt.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %params_phys.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 20, ptr noundef %params_phys.i, i32 noundef 3264, i32 noundef 0) #8
  %params.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %params.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %33 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev28, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %wd719x_detect_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i, ptr noundef nonnull @.str.61) #11
  br label %unmap

if.end.i:                                         ; preds = %wd719x_detect_type.exit.i
  %hash_phys.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 4
  %call.i104.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev9.i, i32 noundef 4096, ptr noundef %hash_phys.i, i32 noundef 3264, i32 noundef 0) #8
  %hash_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 1, i32 3, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %hash_virt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i104.i, ptr %hash_virt.i, align 4
  %tobool14.not.i = icmp eq ptr %call.i104.i, null
  %36 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev28, align 4
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end21.i

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20.i, ptr noundef nonnull @.str.64) #11
  br label %fail_free_params.i

if.end21.i:                                       ; preds = %if.end.i
  %irq23.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %irq23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq23.i, align 4
  %call.i105.i = tail call i32 @request_threaded_irq(i32 noundef %39, ptr noundef nonnull @wd719x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %hostdata.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool25.not.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool25.not.i, label %if.end34.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev28, align 4
  %dev31.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %irq33.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %irq33.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq33.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31.i, ptr noundef nonnull @.str.67, i32 noundef %43) #11
  br label %fail_free_hash.i

if.end34.i:                                       ; preds = %if.end21.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom.i.i) #8
  %44 = getelementptr inbounds i8, ptr %eeprom.i.i, i32 16
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 -1, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header.i.i) #8
  %46 = getelementptr inbounds %struct.wd719x_eeprom_header, ptr %header.i.i, i32 0, i32 1
  %47 = getelementptr inbounds %struct.wd719x_eeprom_header, ptr %header.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %header.i.i, align 8
  %49 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %hostdata.i, ptr %eeprom.i.i, align 4
  %register_read.i.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %register_read.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @wd719x_eeprom_reg_read, ptr %register_read.i.i, align 4
  %register_write.i.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %register_write.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @wd719x_eeprom_reg_write, ptr %register_write.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %width.i.i, align 4
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i.i107.i = getelementptr i8, ptr %54, i32 61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i107.i, i8 0) #8, !srcloc !259
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr.i54.i.i = getelementptr i8, ptr %56, i32 60
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i54.i.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %58 = and i8 %57, -31
  %59 = or i8 %58, 16
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %61, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56.i.i, i8 %59) #8, !srcloc !259
  call void @eeprom_93cx6_multireadb(ptr noundef nonnull %eeprom.i.i, i8 noundef zeroext 0, ptr noundef nonnull %header.i.i, i16 noundef zeroext 8) #8
  %62 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %header.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %63)
  %cmp.i.i = icmp eq i8 %63, 87
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end34.i.do.end.i110.i_crit_edge

if.end34.i.do.end.i110.i_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i110.i

land.lhs.true.i.i:                                ; preds = %if.end34.i
  %64 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %65)
  %cmp7.i.i = icmp eq i8 %65, 68
  br i1 %cmp7.i.i, label %if.then.i.i, label %land.lhs.true.i.i.do.end.i110.i_crit_edge

land.lhs.true.i.i.do.end.i110.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i110.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %47, align 4
  %68 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %params.i, align 4
  call void @eeprom_93cx6_multireadb(ptr noundef nonnull %eeprom.i.i, i8 noundef zeroext %67, ptr noundef %69, i16 noundef zeroext 20) #8
  br label %wd719x_read_eeprom.exit.i

do.end.i110.i:                                    ; preds = %land.lhs.true.i.i.do.end.i110.i_crit_edge, %if.end34.i.do.end.i110.i_crit_edge
  %70 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev28, align 4
  %dev.i109.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %conv10.i.i = zext i8 %63 to i32
  %72 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %46, align 1
  %conv12.i.i = zext i8 %73 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i109.i, ptr noundef nonnull @.str.132, i32 noundef %conv10.i.i, i32 noundef %conv12.i.i) #11
  %74 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %params.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 16, ptr %75, align 1
  %77 = load ptr, ptr %params.i, align 4
  %scsi_conf.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %scsi_conf.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 76, ptr %scsi_conf.i.i, align 1
  %79 = load ptr, ptr %params.i, align 4
  %own_scsi_id.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %own_scsi_id.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 7, ptr %own_scsi_id.i.i, align 1
  %81 = load ptr, ptr %params.i, align 4
  %sel_timeout.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %sel_timeout.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 77, ptr %sel_timeout.i.i, align 1
  %83 = load ptr, ptr %params.i, align 4
  %sleep_timer.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %sleep_timer.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %sleep_timer.i.i, align 1
  %85 = load ptr, ptr %params.i, align 4
  %cdb_size.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %cdb_size.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 21845, ptr %cdb_size.i.i, align 1
  %87 = load ptr, ptr %params.i, align 4
  %scsi_pad.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %scsi_pad.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 27, ptr %scsi_pad.i.i, align 1
  %89 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp20.i.i = icmp ne i32 %90, 1
  %91 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %params.i, align 4
  %wide.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %92, i32 0, i32 8
  %..i.i = sext i1 %cmp20.i.i to i32
  %93 = ptrtoint ptr %wide.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %..i.i, ptr %wide.i.i, align 1
  %94 = load ptr, ptr %params.i, align 4
  %sync.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %sync.i.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 -1, ptr %sync.i.i, align 1
  %96 = load ptr, ptr %params.i, align 4
  %soft_mask.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %soft_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %soft_mask.i.i, align 1
  %98 = load ptr, ptr %params.i, align 4
  %unsol_mask.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %unsol_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %unsol_mask.i.i, align 1
  br label %wd719x_read_eeprom.exit.i

wd719x_read_eeprom.exit.i:                        ; preds = %do.end.i110.i, %if.then.i.i
  %100 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %params.i, align 4
  %tag_en.i.i = getelementptr inbounds %struct.wd719x_host_param, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %tag_en.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 0, ptr %tag_en.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom.i.i) #8
  %call35.i = call fastcc i32 @wd719x_chip_init(ptr noundef %hostdata.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end32, label %fail_free_irq.i

fail_free_irq.i:                                  ; preds = %wd719x_read_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev28, align 4
  %irq51.i = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 46
  %105 = ptrtoint ptr %irq51.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq51.i, align 4
  %call52.i = call ptr @free_irq(i32 noundef %106, ptr noundef %hostdata.i) #8
  br label %fail_free_hash.i

fail_free_hash.i:                                 ; preds = %fail_free_irq.i, %do.end29.i
  %ret.0.i = phi i32 [ %call.i105.i, %do.end29.i ], [ %call35.i, %fail_free_irq.i ]
  %107 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev28, align 4
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %hash_virt.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hash_virt.i, align 4
  %111 = ptrtoint ptr %hash_phys.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hash_phys.i, align 4
  call void @dma_free_attrs(ptr noundef %dev54.i, i32 noundef 4096, ptr noundef %110, i32 noundef %112, i32 noundef 0) #8
  br label %fail_free_params.i

fail_free_params.i:                               ; preds = %fail_free_hash.i, %do.end18.i
  %ret.1.i = phi i32 [ %ret.0.i, %fail_free_hash.i ], [ -12, %do.end18.i ]
  %113 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev28, align 4
  %dev58.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %params.i, align 4
  %117 = ptrtoint ptr %params_phys.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %params_phys.i, align 4
  call void @dma_free_attrs(ptr noundef %dev58.i, i32 noundef 20, ptr noundef %116, i32 noundef %118, i32 noundef 0) #8
  br label %unmap

if.end32:                                         ; preds = %wd719x_read_eeprom.exit.i
  %119 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %params.i, align 4
  %own_scsi_id.i = getelementptr inbounds %struct.wd719x_host_param, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %own_scsi_id.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %own_scsi_id.i, align 1
  %123 = and i8 %122, 15
  %and.i = zext i8 %123 to i32
  %this_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call18, i32 0, i32 25
  %124 = ptrtoint ptr %this_id.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %and.i, ptr %this_id.i, align 8
  %125 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev28, align 4
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  %127 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %type.i, align 4
  %arrayidx46.i = getelementptr [4 x ptr], ptr @wd719x_board_found.card_types, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx46.i, align 4
  %131 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %base.i, align 4
  %133 = ptrtoint ptr %irq4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq4.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev44.i, ptr noundef nonnull @.str.70, ptr noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %and.i) #11
  %135 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev28, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call18, ptr noundef %dev34, ptr noundef %dev34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end38, label %destroy

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_scan_host(ptr noundef nonnull %call18) #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %137 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call18, ptr %driver_data.i.i, align 4
  br label %cleanup

destroy:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @wd719x_destroy(ptr noundef %hostdata.i)
  br label %unmap

unmap:                                            ; preds = %destroy, %fail_free_params.i, %do.end.i
  %err.0 = phi i32 [ %call.i, %destroy ], [ -12, %do.end.i ], [ %ret.1.i, %fail_free_params.i ]
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %139) #8
  br label %free_host

free_host:                                        ; preds = %unmap, %if.end21.free_host_crit_edge
  %err.1 = phi i32 [ %err.0, %unmap ], [ -12, %if.end21.free_host_crit_edge ]
  call void @scsi_host_put(ptr noundef nonnull %call18) #8
  br label %release_region

release_region:                                   ; preds = %free_host, %if.end17.release_region_crit_edge, %cond.false.release_region_crit_edge, %if.end9.release_region_crit_edge
  %err.2 = phi i32 [ -19, %cond.false.release_region_crit_edge ], [ %err.1, %free_host ], [ -12, %if.end17.release_region_crit_edge ], [ -19, %if.end9.release_region_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #8
  br label %disable_device

disable_device:                                   ; preds = %release_region, %if.end5.disable_device_crit_edge, %do.end
  %err.3 = phi i32 [ 0, %do.end ], [ %call6, %if.end5.disable_device_crit_edge ], [ %err.2, %release_region ]
  call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_device, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %err.3, %disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wd719x_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void @scsi_remove_host(ptr noundef %1) #8
  tail call fastcc void @wd719x_destroy(ptr noundef %hostdata.i)
  %base = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #8
  tail call void @pci_release_regions(ptr noundef %pdev) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  tail call void @scsi_host_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wd719x_destroy(ptr noundef %wd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wd719x_direct_cmd(ptr noundef %wd, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !259
  %active_scbs = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 11
  %4 = ptrtoint ptr %active_scbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active_scbs, align 4
  %cmp.i.not = icmp eq ptr %5, %active_scbs
  br i1 %cmp.i.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b74 = load i1, ptr @wd719x_destroy.__already_done, align 1
  br i1 %.b74, label %land.rhs.if.end35_crit_edge, label %if.then11, !prof !260

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wd719x_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 173, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then11, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %pdev43 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %6 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev43, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %fw_size = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 6
  %8 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_size, align 4
  %fw_virt = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 4
  %10 = ptrtoint ptr %fw_virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_virt, align 4
  %fw_phys = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 5
  %12 = ptrtoint ptr %fw_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev44, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %fw_virt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fw_virt, align 4
  %15 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev43, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %hash_virt = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 9
  %17 = ptrtoint ptr %hash_virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hash_virt, align 4
  %hash_phys = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 10
  %19 = ptrtoint ptr %hash_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev47, i32 noundef 4096, ptr noundef %18, i32 noundef %20, i32 noundef 0) #8
  %21 = ptrtoint ptr %hash_virt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %hash_virt, align 4
  %22 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev43, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %params = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 7
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params, align 4
  %params_phys = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 8
  %26 = ptrtoint ptr %params_phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %params_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev50, i32 noundef 20, ptr noundef %25, i32 noundef %27, i32 noundef 0) #8
  %28 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %params, align 4
  %29 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev43, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call53 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %wd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_queuecommand(ptr noundef %sh, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 0, i32 53
  %cmd2 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd, ptr %cmd2, align 4
  %CDB_tag = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 5
  %1 = ptrtoint ptr %CDB_tag to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %CDB_tag, align 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %conv = trunc i32 %5 to i8
  %devid = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 7
  %6 = ptrtoint ptr %devid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %devid, align 1
  %lun = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lun, align 8
  %conv4 = trunc i64 %8 to i8
  %lun5 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 6
  %9 = ptrtoint ptr %lun5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %lun5, align 2
  %CDB = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 0, i32 8
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %12 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_len, align 4
  %conv6 = zext i16 %13 to i32
  %14 = call ptr @memcpy(ptr %CDB, ptr %11, i32 %conv6)
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !260

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef 2120) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  %sub.i = add i32 %22, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i171 = getelementptr %struct.page, ptr %21, i32 %shr.i
  %and.i = and i32 %22, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i171, i32 noundef %and.i, i32 noundef 2120, i32 noundef 0, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %phys = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %phys, align 8
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev9, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.out_error_crit_edge, label %if.end

dma_map_single_attrs.exit.out_error_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %sense_buf_length = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 7
  %26 = ptrtoint ptr %sense_buf_length to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 96, ptr %sense_buf_length, align 8
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %29 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sense_buffer, align 4
  %call.i172 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #8
  br i1 %call.i172, label %land.rhs.i174, label %if.end39.i187

land.rhs.i174:                                    ; preds = %if.end
  %.b1.i173 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i173, label %land.rhs.i174.dma_map_single_attrs.exit189_crit_edge, label %if.then.i178, !prof !260

land.rhs.i174.dma_map_single_attrs.exit189_crit_edge: ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit189

if.then.i178:                                     ; preds = %land.rhs.i174
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i175 = tail call ptr @dev_driver_string(ptr noundef %dev13) #8
  %init_name.i.i176 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i176 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i176, align 8
  %tobool.not.i.i177 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i177, label %if.end.i.i179, label %if.then.i178.dev_name.exit.i181_crit_edge

if.then.i178.dev_name.exit.i181_crit_edge:        ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i181

if.end.i.i179:                                    ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev13, align 4
  br label %dev_name.exit.i181

dev_name.exit.i181:                               ; preds = %if.end.i.i179, %if.then.i178.dev_name.exit.i181_crit_edge
  %retval.0.i.i180 = phi ptr [ %34, %if.end.i.i179 ], [ %32, %if.then.i178.dev_name.exit.i181_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call16.i175, ptr noundef %retval.0.i.i180) #8
  br label %dma_map_single_attrs.exit189

if.end39.i187:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev13, ptr noundef %30, i32 noundef 96) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %30 to i32
  %sub.i182 = add i32 %36, 1073741824
  %shr.i183 = lshr i32 %sub.i182, 12
  %add.ptr.i184 = getelementptr %struct.page, ptr %35, i32 %shr.i183
  %and.i185 = and i32 %36, 4095
  %call41.i186 = tail call i32 @dma_map_page_attrs(ptr noundef %dev13, ptr noundef %add.ptr.i184, i32 noundef %and.i185, i32 noundef 96, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit189

dma_map_single_attrs.exit189:                     ; preds = %if.end39.i187, %dev_name.exit.i181, %land.rhs.i174.dma_map_single_attrs.exit189_crit_edge
  %retval.0.i188 = phi i32 [ %call41.i186, %if.end39.i187 ], [ -1, %dev_name.exit.i181 ], [ -1, %land.rhs.i174.dma_map_single_attrs.exit189_crit_edge ]
  %dma_handle = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 22, i32 4
  %37 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i188, ptr %dma_handle, align 4
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev16, i32 noundef %retval.0.i188) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i188)
  %cmp.i190 = icmp eq i32 %retval.0.i188, -1
  br i1 %cmp.i190, label %dma_map_single_attrs.exit189.out_unmap_scb_crit_edge, label %if.end22

dma_map_single_attrs.exit189.out_unmap_scb_crit_edge: ; preds = %dma_map_single_attrs.exit189
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unmap_scb

if.end22:                                         ; preds = %dma_map_single_attrs.exit189
  %40 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_handle, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %sense_buf = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 6
  %43 = ptrtoint ptr %sense_buf to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sense_buf, align 4
  %SCB_options = getelementptr inbounds %struct.wd719x_scb, ptr %add.ptr.i, i32 0, i32 12
  %44 = ptrtoint ptr %SCB_options to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %SCB_options, align 2
  %46 = or i8 %45, 16
  store i8 %46, ptr %SCB_options, align 2
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %47 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sc_data_direction, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %48, label %if.end22.if.end42_crit_edge [
    i32 1, label %if.end22.if.end42.sink.split_crit_edge
    i32 2, label %if.then36
  ]

if.end22.if.end42.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then36:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then36, %if.end22.if.end42.sink.split_crit_edge
  %.sink202 = phi i8 [ 17, %if.then36 ], [ 19, %if.end22.if.end42.sink.split_crit_edge ]
  %50 = or i8 %45, %.sink202
  %51 = ptrtoint ptr %SCB_options to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %SCB_options, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.end22.if.end42_crit_edge
  %call43 = tail call i32 @scsi_dma_map(ptr noundef %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %out_unmap_sense, label %do.body

do.body:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call43)
  %cmp48 = icmp ugt i32 %call43, 255
  br i1 %cmp48, label %do.body53, label %do.end59, !prof !261

do.body53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/wd719x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 252, 0\0A.popsection", ""() #8, !srcloc !262
  unreachable

do.end59:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool60.not = icmp eq i32 %call43, 0
  br i1 %tobool60.not, label %if.else73, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end59
  %mul = shl nuw nsw i32 %call43, 3
  %52 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %data_length = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 4
  %53 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %data_length, align 4
  %54 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys, align 8
  %add = add i32 %55, 80
  %56 = tail call i32 @llvm.bswap.i32(i32 %add)
  %data_p = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 3
  %57 = ptrtoint ptr %data_p to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %data_p, align 8
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %58 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sg.0201 = phi ptr [ %call68, %for.body.for.body_crit_edge ], [ %59, %for.body.preheader ]
  %i.0200 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0201, i32 0, i32 3
  %60 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_address, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %arrayidx = getelementptr %struct.wd719x_scb, ptr %add.ptr.i, i32 0, i32 28, i32 %i.0200
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0201, i32 0, i32 4
  %64 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_length, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %length = getelementptr %struct.wd719x_scb, ptr %add.ptr.i, i32 0, i32 28, i32 %i.0200, i32 1
  %67 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %length, align 4
  %inc = add nuw nsw i32 %i.0200, 1
  %call68 = tail call ptr @sg_next(ptr noundef %sg.0201) #8
  %exitcond.not = icmp eq i32 %inc, %call43
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %SCB_options to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %SCB_options, align 2
  %70 = or i8 %69, 32
  store i8 %70, ptr %SCB_options, align 2
  br label %do.body78

if.else73:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %data_length74 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 4
  %71 = ptrtoint ptr %data_length74 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %data_length74, align 4
  %data_p75 = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 0, i32 3
  %72 = ptrtoint ptr %data_p75 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %data_p75, align 8
  br label %do.body78

do.body78:                                        ; preds = %if.else73, %for.end
  %73 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hostdata.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %host_lock, align 4
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %76) #8
  %base.i = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 1, i32 1
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %78) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp90.not = icmp eq i8 %79, 0
  br i1 %cmp90.not, label %if.end95, label %if.then92

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hostdata.i, align 4
  %host_lock94 = getelementptr inbounds %struct.Scsi_Host, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %host_lock94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host_lock94, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %call83) #8
  br label %cleanup

if.end95:                                         ; preds = %do.body78
  %list = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 3, i32 0, i32 3
  %active_scbs = getelementptr inbounds %struct.Scsi_Host, ptr %sh, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %active_scbs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %active_scbs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %active_scbs, ptr noundef %85) #8
  br i1 %call.i.i, label %if.end.i.i192, label %if.end95.list_add.exit_crit_edge

if.end95.list_add.exit_crit_edge:                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i192:                                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list, ptr %prev1.i.i, align 4
  %87 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 3, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %active_scbs, ptr %prev3.i.i, align 4
  %89 = ptrtoint ptr %active_scbs to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %list, ptr %active_scbs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i192, %if.end95.list_add.exit_crit_edge
  %90 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %phys, align 8
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %93, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void @arm_heavy_mb() #8
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %94) #8, !srcloc !264
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 -128) #8, !srcloc !259
  %97 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hostdata.i, align 4
  %host_lock98 = getelementptr inbounds %struct.Scsi_Host, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %host_lock98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %host_lock98, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %call83) #8
  br label %cleanup

out_unmap_sense:                                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 4
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_handle, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev100, i32 noundef %104, i32 noundef 96, i32 noundef 2, i32 noundef 0) #8
  br label %out_unmap_scb

out_unmap_scb:                                    ; preds = %out_unmap_sense, %dma_map_single_attrs.exit189.out_unmap_scb_crit_edge
  %105 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev, align 4
  %dev104 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %107 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %phys, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev104, i32 noundef %108, i32 noundef 2120, i32 noundef 0, i32 noundef 0) #8
  br label %out_error

out_error:                                        ; preds = %out_unmap_scb, %dma_map_single_attrs.exit.out_error_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %109 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 458752, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %out_error, %list_add.exit, %if.then92
  %retval.0 = phi i32 [ 0, %out_error ], [ 4181, %if.then92 ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_abort(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %tag = getelementptr i8, ptr %cmd, i32 -172
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %7) #11
  %8 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  %conv14 = trunc i32 %15 to i8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 18
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lun, align 8
  %conv16 = trunc i64 %17 to i8
  %18 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tag, align 4
  %conv19 = trunc i32 %19 to i8
  %phys = getelementptr %struct.scsi_cmnd, ptr %cmd, i32 1, i32 3, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 8
  %call20 = tail call fastcc i32 @wd719x_direct_cmd(ptr noundef %hostdata.i, i8 noundef zeroext 17, i8 noundef zeroext %conv14, i8 noundef zeroext %conv16, i8 noundef zeroext %conv19, i32 noundef %21, i32 noundef 0)
  tail call fastcc void @wd719x_finish_cmd(ptr noundef %add.ptr.i, i32 noundef 5)
  %22 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hostdata.i, align 4
  %host_lock22 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %host_lock22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_lock22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  %. = select i1 %tobool.not, i32 8194, i32 8195
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_dev_reset(ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %conv = trunc i32 %3 to i8
  %call = tail call fastcc i32 @wd719x_reset(ptr noundef %cmd, i8 noundef zeroext 18, i8 noundef zeroext %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_bus_reset(ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wd719x_reset(ptr noundef %cmd, i8 noundef zeroext 3, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_host_reset(ptr nocapture noundef readonly %cmd) #2 align 64 {
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
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %call10 = tail call fastcc i32 @wd719x_direct_cmd(ptr noundef %hostdata.i, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end13

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.27) #11
  br label %if.end

if.end:                                           ; preds = %do.end13, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !259
  %active_scbs = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %active_scbs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_scbs, align 4
  %cmp23.not47 = icmp eq ptr %15, %active_scbs
  br i1 %cmp23.not47, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in48 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %15, %if.end.for.body_crit_edge ]
  %scb.0 = getelementptr i8, ptr %.pn.in48, i32 -72
  %16 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in48, align 8
  tail call fastcc void @wd719x_finish_cmd(ptr noundef %scb.0, i32 noundef 8)
  %cmp23.not = icmp eq ptr %.pn, %active_scbs
  br i1 %cmp23.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostdata.i, align 4
  %host_lock31 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %host_lock31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_lock31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call5) #8
  %call32 = tail call fastcc i32 @wd719x_chip_init(ptr noundef %hostdata.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  %cond = select i1 %cmp33, i32 8194, i32 8195
  ret i32 %cond
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef %geom) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %capacity)
  %cmp = icmp ugt i64 %capacity, 2097151
  %spec.select = select i1 %cmp, i32 255, i32 64
  %spec.select302 = select i1 %cmp, i32 63, i32 32
  %0 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.select, ptr %geom, align 4
  %1 = getelementptr i32, ptr %geom, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select302, ptr %1, align 4
  %mul = select i1 %cmp, i32 16065, i32 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp174 = icmp ult i64 %capacity, 4294967296
  br i1 %cmp174, label %if.then178, label %if.else184, !prof !260

if.then178:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv179 = trunc i64 %capacity to i32
  %rem180 = urem i32 %conv179, %mul
  br label %if.end188

if.else184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %capacity) #12, !srcloc !265
  %asmresult.i278 = extractvalue { i64, i64 } %3, 0
  %shr.i = lshr i64 %asmresult.i278, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then178
  %__rem.0 = phi i32 [ %rem180, %if.then178 ], [ %conv.i, %if.else184 ]
  %arrayidx190 = getelementptr i32, ptr %geom, i32 2
  %4 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %__rem.0, ptr %arrayidx190, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wd719x_direct_cmd(ptr nocapture noundef readonly %wd, i8 noundef zeroext %opcode, i8 noundef zeroext %dev, i8 noundef zeroext %lun, i8 noundef zeroext %tag, i32 noundef %data, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !259
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 501
  br i1 %exitcond.not.i, label %wd719x_wait_ready.exit, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

wd719x_wait_ready.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %conv8.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %conv8.i) #11
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  %11 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %opcode, label %if.then13 [
    i8 3, label %if.end.if.end16_crit_edge
    i8 17, label %if.end.if.end16_crit_edge73
    i8 16, label %if.end.if.end16_crit_edge74
    i8 18, label %if.end.if.end16_crit_edge75
  ]

if.end.if.end16_crit_edge75:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.if.end16_crit_edge74:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.if.end16_crit_edge73:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = or i8 %dev, -128
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge, %if.end.if.end16_crit_edge73, %if.end.if.end16_crit_edge74, %if.end.if.end16_crit_edge75
  %dev.addr.0 = phi i8 [ %12, %if.then13 ], [ %dev, %if.end.if.end16_crit_edge ], [ %dev, %if.end.if.end16_crit_edge73 ], [ %dev, %if.end.if.end16_crit_edge74 ], [ %dev, %if.end.if.end16_crit_edge75 ]
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i47, i8 %dev.addr.0) #8, !srcloc !259
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %16, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i49, i8 %lun) #8, !srcloc !259
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %18, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i51, i8 %tag) #8, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool17.not = icmp eq i32 %data, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %data) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %21) #8, !srcloc !264
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %23, i32 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i55, i8 0) #8, !srcloc !259
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %opcode) #8, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool20.not = icmp eq i32 %timeout, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp40.i = icmp sgt i32 %timeout, 0
  br i1 %cmp40.i, label %if.then21.while.body.i_crit_edge, label %if.then21.do.end.i_crit_edge

if.then21.do.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then21.while.body.i_crit_edge:                 ; preds = %if.then21
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i59.while.body.i_crit_edge, %if.then21.while.body.i_crit_edge
  %timeout.addr.041.i = phi i32 [ %dec.i, %if.end.i59.while.body.i_crit_edge ], [ %timeout, %if.then21.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 31
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end.i59, label %if.end3.i

if.end.i59:                                       ; preds = %while.body.i
  %dec.i = add nsw i32 %timeout.addr.041.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %cmp.i58 = icmp sgt i32 %timeout.addr.041.i, 1
  br i1 %cmp.i58, label %if.end.i59.while.body.i_crit_edge, label %if.end.i59.do.end.i_crit_edge

if.end.i59.do.end.i_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i59.while.body.i_crit_edge:                ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end.i:                                         ; preds = %if.end.i59.do.end.i_crit_edge, %if.then21.do.end.i_crit_edge
  %pdev.i60 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %30 = ptrtoint ptr %pdev.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i60, align 4
  %dev.i61 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i61, ptr noundef nonnull @.str.15) #11
  br label %if.end23

if.end3.i:                                        ; preds = %while.body.i
  %conv.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp4.not.i = icmp eq i8 %28, 1
  br i1 %cmp4.not.i, label %if.end3.i.if.end23_crit_edge, label %if.then6.i

if.end3.i.if.end23_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then6.i:                                       ; preds = %if.end3.i
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %33, i32 30
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %34, label %do.end20.i [
    i8 4, label %if.then6.i.if.end23_crit_edge
    i8 17, label %if.then6.i.if.end23_crit_edge76
  ]

if.then6.i.if.end23_crit_edge76:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then6.i.if.end23_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end20.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i62 = zext i8 %34 to i32
  %pdev21.i = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %36 = ptrtoint ptr %pdev21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev21.i, align 4
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i, i32 noundef %conv8.i62) #11
  br label %if.end23

if.end23:                                         ; preds = %do.end20.i, %if.then6.i.if.end23_crit_edge, %if.then6.i.if.end23_crit_edge76, %if.end3.i.if.end23_crit_edge, %do.end.i, %if.end19.if.end23_crit_edge
  %ret.0 = phi i32 [ 0, %if.end19.if.end23_crit_edge ], [ -110, %do.end.i ], [ -5, %do.end20.i ], [ 0, %if.then6.i.if.end23_crit_edge ], [ 0, %if.then6.i.if.end23_crit_edge76 ], [ 0, %if.end3.i.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %opcode)
  %cmp25.not = icmp eq i8 %opcode, 4
  br i1 %cmp25.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %39, i32 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i64, i8 0) #8, !srcloc !259
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end23.cleanup_crit_edge, %wd719x_wait_ready.exit
  %retval.0 = phi i32 [ -110, %wd719x_wait_ready.exit ], [ %ret.0, %if.then27 ], [ %ret.0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wd719x_finish_cmd(ptr noundef %scb, i32 noundef %result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.wd719x_scb, ptr %scb, i32 0, i32 26
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %list = getelementptr inbounds %struct.wd719x_scb, ptr %scb, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.wd719x_scb, ptr %scb, i32 0, i32 27, i32 1
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
  %prev.i = getelementptr inbounds %struct.wd719x_scb, ptr %scb, i32 0, i32 27, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %phys = getelementptr inbounds %struct.wd719x_scb, ptr %scb, i32 0, i32 25
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %17, i32 noundef 2120, i32 noundef 0, i32 noundef 0) #8
  tail call void @scsi_dma_unmap(ptr noundef %1) #8
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %dma_handle = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 22, i32 4
  %20 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_handle, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev3, i32 noundef %21, i32 noundef 96, i32 noundef 2, i32 noundef 0) #8
  %shl = shl i32 %result, 16
  %result4 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %result4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %result4, align 4
  tail call void @scsi_done(ptr noundef %1) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wd719x_wait_done(ptr nocapture noundef readonly %wd, i32 noundef %timeout) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp40 = icmp sgt i32 %timeout, 0
  br i1 %cmp40, label %while.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.body.lr.ph:                                 ; preds = %entry
  %base.i = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %timeout.addr.041 = phi i32 [ %timeout, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 31
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end3

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %timeout.addr.041, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #8
  %cmp = icmp sgt i32 %timeout.addr.041, 1
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %cleanup26

if.end3:                                          ; preds = %while.body
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp4.not = icmp eq i8 %2, 1
  br i1 %cmp4.not, label %if.end3.cleanup26_crit_edge, label %if.then6

if.end3.cleanup26_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.then6:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %7, i32 30
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i37) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %8, label %do.end20 [
    i8 4, label %if.then6.cleanup26_crit_edge
    i8 17, label %if.then6.cleanup26_crit_edge47
  ]

if.then6.cleanup26_crit_edge47:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.then6.cleanup26_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

do.end20:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = zext i8 %8 to i32
  %pdev21 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %10 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv8) #11
  br label %cleanup26

cleanup26:                                        ; preds = %do.end20, %if.then6.cleanup26_crit_edge, %if.then6.cleanup26_crit_edge47, %if.end3.cleanup26_crit_edge, %do.end
  %retval.1 = phi i32 [ -110, %do.end ], [ -5, %do.end20 ], [ 0, %if.then6.cleanup26_crit_edge ], [ 0, %if.then6.cleanup26_crit_edge47 ], [ 0, %if.end3.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wd719x_reset(ptr nocapture noundef readonly %cmd, i8 noundef zeroext %opcode, i8 noundef zeroext %device) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %opcode)
  %cmp = icmp eq i8 %opcode, 3
  %cond = select i1 %cmp, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond) #11
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %call14 = tail call fastcc i32 @wd719x_direct_cmd(ptr noundef %hostdata.i, i8 noundef zeroext %opcode, i8 noundef zeroext %device, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 3000000)
  %active_scbs = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %active_scbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %active_scbs, align 4
  %cmp22.not60 = icmp eq ptr %11, %active_scbs
  br i1 %cmp22.not60, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv29 = zext i8 %device to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in61 = phi ptr [ %11, %for.body.lr.ph ], [ %.pn63, %for.inc.for.body_crit_edge ]
  %scb.062 = getelementptr i8, ptr %.pn.in61, i32 -72
  %12 = ptrtoint ptr %.pn.in61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn63 = load ptr, ptr %.pn.in61, align 8
  br i1 %cmp, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %cmd27 = getelementptr i8, ptr %.pn.in61, i32 -4
  %13 = ptrtoint ptr %cmd27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd27, align 4
  %device28 = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device28, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv29)
  %cmp30 = icmp eq i32 %18, %conv29
  br i1 %cmp30, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  tail call fastcc void @wd719x_finish_cmd(ptr noundef %scb.062, i32 noundef 8)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %cmp22.not = icmp eq ptr %.pn63, %active_scbs
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %19 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hostdata.i, align 4
  %host_lock38 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %host_lock38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_lock38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  %. = select i1 %tobool.not, i32 8194, i32 8195
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wd719x_chip_init(ptr noundef %wd) unnamed_addr #2 align 64 {
entry:
  %fw_wcs = alloca ptr, align 4
  %fw_risc = alloca ptr, align 4
  %fwname_wcs = alloca [15 x i8], align 1
  %fwname_risc = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_wcs) #8
  %0 = ptrtoint ptr %fw_wcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_wcs, align 4, !annotation !266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_risc) #8
  %1 = ptrtoint ptr %fw_risc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_risc, align 4, !annotation !266
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %fwname_wcs) #8
  %2 = call ptr @memcpy(ptr %fwname_wcs, ptr @__const.wd719x_chip_init.fwname_wcs, i32 15)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fwname_risc) #8
  %3 = call ptr @memcpy(ptr %fwname_risc, ptr @__const.wd719x_chip_init.fwname_risc, i32 16)
  %hash_virt = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 9
  %4 = ptrtoint ptr %hash_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_virt, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 4096)
  %pdev = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_wcs, ptr noundef nonnull %fwname_wcs, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.29, ptr noundef nonnull %fwname_wcs, i32 noundef %call) #11
  br label %cleanup133

if.end:                                           ; preds = %entry
  %call7 = call i32 @request_firmware(ptr noundef nonnull %fw_risc, ptr noundef nonnull %fwname_risc, ptr noundef %dev6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.29, ptr noundef nonnull %fwname_risc, i32 noundef %call7) #11
  %13 = ptrtoint ptr %fw_wcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_wcs, align 4
  call void @release_firmware(ptr noundef %14) #8
  br label %cleanup133

if.end16:                                         ; preds = %if.end
  %15 = ptrtoint ptr %fw_wcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw_wcs, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add = add i32 %18, 3
  %and = and i32 %add, -4
  %19 = ptrtoint ptr %fw_risc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw_risc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add18 = add i32 %and, %22
  %fw_size = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 6
  %23 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add18, ptr %fw_size, align 4
  %fw_virt = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 4
  %24 = ptrtoint ptr %fw_virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_virt, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.end26, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end26:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %fw_phys = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 5
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev22, i32 noundef %add18, ptr noundef %fw_phys, i32 noundef 3264, i32 noundef 0) #8
  %28 = ptrtoint ptr %fw_virt to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %fw_virt, align 4
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %if.end26.wd719x_init_end_crit_edge, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end26.wd719x_init_end_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %wd719x_init_end

if.end30:                                         ; preds = %if.end26.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %29 = phi ptr [ %call.i, %if.end26.if.end30_crit_edge ], [ %25, %if.end16.if.end30_crit_edge ]
  %30 = ptrtoint ptr %fw_wcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw_wcs, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %36 = call ptr @memcpy(ptr %29, ptr %33, i32 %35)
  %37 = ptrtoint ptr %fw_virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw_virt, align 4
  %39 = load ptr, ptr %fw_wcs, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add35 = add i32 %41, 3
  %and36 = and i32 %add35, -4
  %add.ptr = getelementptr i8, ptr %38, i32 %and36
  %42 = ptrtoint ptr %fw_risc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw_risc, align 4
  %data37 = getelementptr inbounds %struct.firmware, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data37, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %48 = call ptr @memcpy(ptr %add.ptr, ptr %45, i32 %47)
  %base.i = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 2
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #8, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 429496000) #8
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %53, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i206, i8 0) #8, !srcloc !259
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i208 = getelementptr i8, ptr %55, i32 63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i208, i8 0) #8, !srcloc !259
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 0) #8, !srcloc !259
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end30
  %i.0.i = phi i32 [ 0, %if.end30 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %59) #8, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.i = icmp eq i8 %60, 0
  br i1 %cmp.i, label %if.end42, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 501
  br i1 %exitcond.not.i, label %wd719x_wait_ready.exit, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

wd719x_wait_ready.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %66 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %65) #8, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %conv8.i = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %conv8.i) #11
  br label %wd719x_init_end

if.end42:                                         ; preds = %do.body.i
  %fw_phys43 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 5
  %67 = ptrtoint ptr %fw_phys43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_phys43, align 4
  %69 = ptrtoint ptr %fw_wcs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fw_wcs, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add46 = add i32 %72, 3
  %and47 = and i32 %add46, -4
  %add48 = add i32 %and47, %68
  %hash_phys = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 10
  %73 = ptrtoint ptr %hash_phys to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hash_phys, align 4
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %add.ptr.i211 = getelementptr i8, ptr %76, i32 105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i211, i8 0) #8, !srcloc !259
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %78, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  call void @arm_heavy_mb() #8
  %79 = call i32 @llvm.bswap.i32(i32 %add48) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %79) #8, !srcloc !264
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %81, i32 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i215, i16 0) #8, !srcloc !268
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %83, i32 102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i217, i16 16) #8, !srcloc !268
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %85, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i219, i8 23) #8, !srcloc !259
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end42
  %dec250 = phi i32 [ 1999, %if.end42 ], [ %dec, %cleanup.while.body_crit_edge ]
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i221 = getelementptr i8, ptr %87, i32 105
  %88 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i221) #8, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %89 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %88, label %cleanup [
    i8 1, label %while.end
    i8 32, label %cleanup.thread246
  ]

cleanup.thread246:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev65, ptr noundef nonnull @.str.34) #11
  br label %wd719x_init_end

cleanup:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748) #8
  %dec = add nsw i32 %dec250, -1
  %cmp.not = icmp eq i32 %dec250, 0
  br i1 %cmp.not, label %cleanup.do.end72_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.do.end72_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec250)
  %cmp67 = icmp slt i32 %dec250, 1
  br i1 %cmp67, label %while.end.do.end72_crit_edge, label %if.end75

while.end.do.end72_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

do.end72:                                         ; preds = %while.end.do.end72_crit_edge, %cleanup.do.end72_crit_edge
  %93 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev74, ptr noundef nonnull @.str.37) #11
  br label %wd719x_init_end

if.end75:                                         ; preds = %while.end
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %96, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  call void @arm_heavy_mb() #8
  %97 = call i32 @llvm.bswap.i32(i32 %68) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 %97) #8, !srcloc !264
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %99, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %79) #8, !srcloc !264
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i227 = getelementptr i8, ptr %101, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  call void @arm_heavy_mb() #8
  %102 = call i32 @llvm.bswap.i32(i32 %74) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %102) #8, !srcloc !264
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %104, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i229, i8 -128) #8, !srcloc !259
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %106, i8 1) #8, !srcloc !259
  %107 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i, align 4
  %add.ptr.i232 = getelementptr i8, ptr %108, i32 63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i232, i8 1) #8, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 429496000) #8
  %call79 = call fastcc i32 @wd719x_wait_done(ptr noundef %wd, i32 noundef 2000)
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr.i234 = getelementptr i8, ptr %111, i32 31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i234, i8 0) #8, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end87, label %do.end84

do.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev86, ptr noundef nonnull @.str.40) #11
  br label %wd719x_init_end

if.end87:                                         ; preds = %if.end75
  %call88 = call fastcc i32 @wd719x_direct_cmd(ptr noundef %wd, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  %114 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev, align 4
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  br i1 %tobool89.not, label %do.end99, label %do.end93

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev101, ptr noundef nonnull @.str.43) #11
  br label %wd719x_init_end

do.end99:                                         ; preds = %if.end87
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 4
  %add.ptr.i236 = getelementptr i8, ptr %117, i32 25
  %118 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i236) #8, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %conv103 = zext i8 %118 to i32
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i, align 4
  %add.ptr.i238 = getelementptr i8, ptr %120, i32 24
  %121 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i238) #8, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %conv105 = zext i8 %121 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev101, ptr noundef nonnull @.str.46, i32 noundef %conv103, i32 noundef %conv105) #11
  %call106 = call fastcc i32 @wd719x_direct_cmd(ptr noundef %wd, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 3000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end114, label %do.end111

do.end111:                                        ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev, align 4
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev113, ptr noundef nonnull @.str.49) #11
  br label %wd719x_init_end

if.end114:                                        ; preds = %do.end99
  %params_phys = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 8
  %124 = ptrtoint ptr %params_phys to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %params_phys, align 4
  %call115 = call fastcc i32 @wd719x_direct_cmd(ptr noundef %wd, i8 noundef zeroext 9, i8 noundef zeroext 0, i8 noundef zeroext 20, i8 noundef zeroext 0, i32 noundef %125, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end123, label %do.end120

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev, align 4
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev122, ptr noundef nonnull @.str.52) #11
  br label %wd719x_init_end

if.end123:                                        ; preds = %if.end114
  %call124 = call fastcc i32 @wd719x_direct_cmd(ptr noundef %wd, i8 noundef zeroext 19, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 3000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end132, label %do.end129

do.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev, align 4
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev131, ptr noundef nonnull @.str.55) #11
  br label %wd719x_init_end

if.end132:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 4
  %add.ptr.i240 = getelementptr i8, ptr %131, i32 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i240, i8 0) #8, !srcloc !259
  br label %wd719x_init_end

wd719x_init_end:                                  ; preds = %if.end132, %do.end129, %do.end120, %do.end111, %do.end93, %do.end84, %do.end72, %cleanup.thread246, %wd719x_wait_ready.exit, %if.end26.wd719x_init_end_crit_edge
  %ret.2 = phi i32 [ -110, %do.end72 ], [ %call79, %do.end84 ], [ %call88, %do.end93 ], [ %call106, %do.end111 ], [ %call115, %do.end120 ], [ %call124, %do.end129 ], [ 0, %if.end132 ], [ -12, %if.end26.wd719x_init_end_crit_edge ], [ -110, %wd719x_wait_ready.exit ], [ -5, %cleanup.thread246 ]
  %132 = ptrtoint ptr %fw_wcs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fw_wcs, align 4
  call void @release_firmware(ptr noundef %133) #8
  %134 = ptrtoint ptr %fw_risc to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fw_risc, align 4
  call void @release_firmware(ptr noundef %135) #8
  br label %cleanup133

cleanup133:                                       ; preds = %wd719x_init_end, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %do.end12 ], [ %ret.2, %wd719x_init_end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwname_risc) #8
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %fwname_wcs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_risc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_wcs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wd719x_interrupt(i32 noundef %irq, ptr noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %base.i = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !269
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %9, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #8, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %trunc = trunc i32 %10 to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %trunc, label %do.end70 [
    i8 0, label %entry.cleanup_crit_edge
    i8 3, label %do.end13
    i8 -128, label %do.end17
    i8 1, label %entry.sw.bb20_crit_edge
    i8 2, label %entry.sw.bb20_crit_edge109
    i8 4, label %entry.sw.bb20_crit_edge110
    i8 5, label %entry.sw.bb20_crit_edge111
    i8 -16, label %do.end65
  ]

entry.sw.bb20_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

entry.sw.bb20_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

entry.sw.bb20_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #11
  br label %sw.epilog

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev18 = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.77) #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge109, %entry.sw.bb20_crit_edge110, %entry.sw.bb20_crit_edge111
  %regs.sroa.0.0.extract.shift = lshr i32 %10, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %regs.sroa.0.0.extract.shift)
  %cmp22 = icmp eq i32 %regs.sroa.0.0.extract.shift, 128
  br i1 %cmp22, label %if.then, label %do.body47

if.then:                                          ; preds = %sw.bb20
  %active_scbs = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %.pn.in = phi ptr [ %active_scbs, %if.then ], [ %.pn, %for.body.for.cond_crit_edge ]
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp26.not = icmp eq ptr %.pn, %active_scbs
  br i1 %cmp26.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %phys = getelementptr i8, ptr %.pn, i32 -8
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys, align 8
  %cmp28 = icmp eq i32 %7, %18
  br i1 %cmp28, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %active_scbs, %for.cond.for.end_crit_edge ]
  %phys36 = getelementptr i8, ptr %.pn.lcssa, i32 -8
  %19 = ptrtoint ptr %phys36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys36, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %20)
  %cmp37 = icmp eq i32 %7, %20
  br i1 %cmp37, label %if.then39, label %do.end42

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %scb.0.le = getelementptr i8, ptr %.pn.lcssa, i32 -72
  %regs.sroa.7.0.insert.insert = and i32 %10, 16777215
  %regs.sroa.0.0.insert.insert = or i32 %regs.sroa.7.0.insert.insert, -2147483648
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %regs.sroa.0.0.insert.insert, 0
  tail call fastcc void @wd719x_interrupt_SCB(ptr noundef %dev_id, [1 x i32] %.fca.0.insert, ptr noundef %scb.0.le)
  br label %sw.epilog

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev43 = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 1
  %21 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev43, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.80) #11
  br label %sw.epilog

do.body47:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wd719x_interrupt.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wd719x_interrupt, %if.then53)) #8
          to label %sw.epilog [label %if.then53], !srcloc !271

if.then53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %pdev54 = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 1
  %23 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev54, align 4
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wd719x_interrupt.__UNIQUE_ID_ddebug292, ptr noundef %dev55, ptr noundef nonnull @.str.82, i32 noundef %regs.sroa.0.0.extract.shift) #8
  br label %sw.epilog

do.end65:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev66 = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 1
  %25 = ptrtoint ptr %pdev66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev66, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.84) #11
  br label %sw.epilog

do.end70:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = and i32 %10, 255
  %pdev71 = getelementptr inbounds %struct.wd719x, ptr %dev_id, i32 0, i32 1
  %27 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev71, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.87, i32 noundef %conv7) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end70, %do.end65, %if.then53, %do.body47, %do.end42, %if.then39, %do.end17, %do.end13
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %30, i32 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i106, i8 0) #8, !srcloc !259
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  %31 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_id, align 4
  %host_lock76 = getelementptr inbounds %struct.Scsi_Host, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %host_lock76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host_lock76, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call2) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wd719x_interrupt_SCB(ptr nocapture noundef readonly %wd, [1 x i32] %regs.coerce, ptr noundef %scb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %regs.coerce.fca.0.extract = extractvalue [1 x i32] %regs.coerce, 0
  %regs.sroa.2.0.extract.shift = lshr i32 %regs.coerce.fca.0.extract, 8
  %trunc = trunc i32 %regs.sroa.2.0.extract.shift to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %trunc, label %do.end158 [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %do.end
    i8 2, label %do.end5
    i8 4, label %do.body9
    i8 6, label %entry.sw.bb16_crit_edge
    i8 8, label %entry.sw.bb16_crit_edge199
    i8 5, label %entry.sw.bb22_crit_edge
    i8 7, label %entry.sw.bb22_crit_edge200
    i8 16, label %sw.bb28
    i8 17, label %do.body48
    i8 18, label %do.body67
    i8 19, label %do.end88
    i8 20, label %do.end94
    i8 21, label %do.end100
    i8 22, label %do.end106
    i8 23, label %do.body110
    i8 24, label %do.end135
    i8 25, label %do.end141
    i8 26, label %do.end147
    i8 27, label %do.end153
  ]

entry.sw.bb22_crit_edge200:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb16_crit_edge199:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89) #11
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev6 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %3 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.92) #11
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wd719x_interrupt_SCB, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !271

if.then:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %pdev12 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %5 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug287, ptr noundef %dev13, ptr noundef nonnull @.str.94) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge199
  %pdev20 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %7 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.96) #11
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge200
  %pdev26 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %9 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev26, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.99) #11
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wd719x_interrupt_SCB, %if.then41)) #8
          to label %sw.epilog [label %if.then41], !srcloc !271

if.then41:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %pdev42 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %11 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug288, ptr noundef %dev43, ptr noundef nonnull @.str.101) #8
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wd719x_interrupt_SCB, %if.then60)) #8
          to label %sw.epilog [label %if.then60], !srcloc !271

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %pdev61 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %13 = ptrtoint ptr %pdev61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev61, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug289, ptr noundef %dev62, ptr noundef nonnull @.str.102) #8
  br label %sw.epilog

do.body67:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wd719x_interrupt_SCB, %if.then79)) #8
          to label %sw.epilog [label %if.then79], !srcloc !271

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %pdev80 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %15 = ptrtoint ptr %pdev80 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug290, ptr noundef %dev81, ptr noundef nonnull @.str.103) #8
  br label %sw.epilog

do.end88:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev89 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %17 = ptrtoint ptr %pdev89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev89, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90, ptr noundef nonnull @.str.105) #11
  br label %sw.epilog

do.end94:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev95 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %19 = ptrtoint ptr %pdev95 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev95, align 4
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.108) #11
  br label %sw.epilog

do.end100:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev101 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %21 = ptrtoint ptr %pdev101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev101, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.111) #11
  br label %sw.epilog

do.end106:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev107 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %23 = ptrtoint ptr %pdev107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev107, align 4
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.114) #11
  br label %sw.epilog

do.body110:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wd719x_interrupt_SCB, %if.then122)) #8
          to label %do.end127 [label %if.then122], !srcloc !271

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %pdev123 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %25 = ptrtoint ptr %pdev123 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev123, align 4
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug291, ptr noundef %dev124, ptr noundef nonnull @.str.116) #8
  br label %do.end127

do.end127:                                        ; preds = %if.then122, %do.body110
  %27 = and i32 %regs.coerce.fca.0.extract, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  %. = select i1 %cmp, i32 0, i32 6
  br label %sw.epilog

do.end135:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev136 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %28 = ptrtoint ptr %pdev136 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev136, align 4
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %cmd = getelementptr inbounds %struct.wd719x_scb, ptr %scb, i32 0, i32 26
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.118, i32 noundef %35) #11
  br label %sw.epilog

do.end141:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev142 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %36 = ptrtoint ptr %pdev142 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev142, align 4
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev143, ptr noundef nonnull @.str.121) #11
  br label %sw.epilog

do.end147:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev148 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %38 = ptrtoint ptr %pdev148 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev148, align 4
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev149, ptr noundef nonnull @.str.124) #11
  br label %sw.epilog

do.end153:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev154 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %40 = ptrtoint ptr %pdev154 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev154, align 4
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.127) #11
  br label %sw.epilog

do.end158:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = and i32 %regs.sroa.2.0.extract.shift, 255
  %pdev159 = getelementptr inbounds %struct.wd719x, ptr %wd, i32 0, i32 1
  %42 = ptrtoint ptr %pdev159 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev159, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev160, ptr noundef nonnull @.str.130, i32 noundef %conv) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end158, %do.end153, %do.end147, %do.end141, %do.end135, %do.end127, %do.end106, %do.end100, %do.end94, %do.end88, %if.then79, %do.body67, %if.then60, %do.body48, %if.then41, %sw.bb28, %sw.bb22, %sw.bb16, %if.then, %do.body9, %do.end5, %do.end, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 7, %do.end158 ], [ 7, %do.end153 ], [ 7, %do.end147 ], [ 7, %do.end141 ], [ 1, %do.end135 ], [ 1, %do.end106 ], [ 7, %do.end100 ], [ 7, %do.end94 ], [ 7, %do.end88 ], [ 3, %if.then41 ], [ 6, %sw.bb22 ], [ 5, %sw.bb16 ], [ 7, %do.end5 ], [ 7, %do.end ], [ 0, %entry.sw.epilog_crit_edge ], [ 5, %if.then ], [ 8, %if.then60 ], [ 7, %if.then79 ], [ %., %do.end127 ], [ 5, %do.body9 ], [ 3, %sw.bb28 ], [ 8, %do.body48 ], [ 7, %do.body67 ]
  tail call fastcc void @wd719x_finish_cmd(ptr noundef %scb, i32 noundef %result.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wd719x_eeprom_reg_read(ptr nocapture noundef %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %base.i = getelementptr inbounds %struct.wd719x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 61
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  %5 = and i8 %4, 16
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %6 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %reg_data_out, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wd719x_eeprom_reg_write(ptr nocapture noundef readonly %eeprom) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %2 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_data_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 2
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %4 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %6 = or i8 %spec.select, 8
  %reg.1 = select i1 %tobool2.not, i8 %spec.select, i8 %6
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %7 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  %9 = or i8 %reg.1, 4
  %reg.2 = select i1 %tobool8.not, i8 %reg.1, i8 %9
  %base.i = getelementptr inbounds %struct.wd719x, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %reg.2) #8, !srcloc !259
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multireadb(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @__initcall__kmod_wd719x__293_988_wd719x_pci_driver_init6, !1, !"__initcall__kmod_wd719x__293_988_wd719x_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/wd719x.c", i32 988, i32 1}
!2 = !{ptr @__exitcall_wd719x_pci_driver_exit, !1, !"__exitcall_wd719x_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/scsi/wd719x.c", i32 990, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/scsi/wd719x.c", i32 991, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/scsi/wd719x.c", i32 992, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware298, !11, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!11 = !{!"../drivers/scsi/wd719x.c", i32 993, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware299, !13, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!13 = !{!"../drivers/scsi/wd719x.c", i32 994, i32 1}
!14 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wd719x_pci_driver, !16, !"wd719x_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/scsi/wd719x.c", i32 981, i32 26}
!17 = !{ptr @wd719x_pci_table, !18, !"wd719x_pci_table", i1 false, i1 false}
!18 = !{!"../drivers/scsi/wd719x.c", i32 974, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/wd719x.c", i32 908, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wd719x_pci_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @wd719x_pci_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/wd719x.c", i32 883, i32 13}
!29 = !{ptr @wd719x_template, !30, !"wd719x_template", i1 false, i1 false}
!30 = !{!"../drivers/scsi/wd719x.c", i32 881, i32 34}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/wd719x.c", i32 471, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wd719x_abort._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @wd719x_abort._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/wd719x.c", i32 86, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @wd719x_wait_ready._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @wd719x_wait_ready._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/wd719x.c", i32 106, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wd719x_wait_done._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @wd719x_wait_done._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/wd719x.c", i32 118, i32 3}
!54 = !{ptr @wd719x_wait_done._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wd719x_wait_done._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/wd719x.c", i32 494, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @wd719x_reset._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @wd719x_reset._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/wd719x.c", i32 529, i32 2}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wd719x_host_reset._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @wd719x_host_reset._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/wd719x.c", i32 534, i32 3}
!70 = !{ptr @wd719x_host_reset._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wd719x_host_reset._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/wd719x.c", i32 315, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wd719x_chip_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @wd719x_chip_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @wd719x_chip_init._entry.31, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/scsi/wd719x.c", i32 322, i32 3}
!79 = !{ptr @wd719x_chip_init._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/wd719x.c", i32 380, i32 4}
!82 = !{ptr @wd719x_chip_init._entry.33, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @wd719x_chip_init._entry_ptr.35, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/wd719x.c", i32 387, i32 3}
!86 = !{ptr @wd719x_chip_init._entry.36, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @wd719x_chip_init._entry_ptr.38, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/wd719x.c", i32 411, i32 3}
!90 = !{ptr @wd719x_chip_init._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @wd719x_chip_init._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/wd719x.c", i32 420, i32 3}
!94 = !{ptr @wd719x_chip_init._entry.42, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wd719x_chip_init._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/wd719x.c", i32 423, i32 2}
!98 = !{ptr @wd719x_chip_init._entry.45, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wd719x_chip_init._entry_ptr.47, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/wd719x.c", i32 431, i32 3}
!102 = !{ptr @wd719x_chip_init._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wd719x_chip_init._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/wd719x.c", i32 440, i32 3}
!106 = !{ptr @wd719x_chip_init._entry.51, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @wd719x_chip_init._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/wd719x.c", i32 449, i32 3}
!110 = !{ptr @wd719x_chip_init._entry.54, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @wd719x_chip_init._entry_ptr.56, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/wd719x.c", i32 814, i32 3}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/wd719x.c", i32 814, i32 19}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/wd719x.c", i32 814, i32 29}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/wd719x.c", i32 814, i32 39}
!120 = !{ptr @wd719x_board_found.card_types, !121, !"card_types", i1 false, i1 false}
!121 = !{!"../drivers/scsi/wd719x.c", i32 813, i32 28}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/wd719x.c", i32 833, i32 3}
!124 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wd719x_board_found._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @wd719x_board_found._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/wd719x.c", i32 842, i32 3}
!129 = !{ptr @wd719x_board_found._entry.63, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @wd719x_board_found._entry_ptr.65, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/wd719x.c", i32 850, i32 3}
!133 = !{ptr @wd719x_board_found._entry.66, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @wd719x_board_found._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/wd719x.c", i32 864, i32 2}
!137 = !{ptr @wd719x_board_found._entry.69, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @wd719x_board_found._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/wd719x.c", i32 805, i32 3}
!141 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wd719x_detect_type._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @wd719x_detect_type._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/wd719x.c", i32 676, i32 3}
!146 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @wd719x_interrupt._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @wd719x_interrupt._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/wd719x.c", i32 679, i32 3}
!151 = !{ptr @wd719x_interrupt._entry.76, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @wd719x_interrupt._entry_ptr.78, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/wd719x.c", i32 694, i32 5}
!155 = !{ptr @wd719x_interrupt._entry.79, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @wd719x_interrupt._entry_ptr.81, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/wd719x.c", i32 696, i32 4}
!159 = !{ptr @wd719x_interrupt.__UNIQUE_ID_ddebug292, !158, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/wd719x.c", i32 700, i32 3}
!162 = !{ptr @wd719x_interrupt._entry.83, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @wd719x_interrupt._entry_ptr.85, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/wd719x.c", i32 704, i32 3}
!166 = !{ptr @wd719x_interrupt._entry.86, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @wd719x_interrupt._entry_ptr.88, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/wd719x.c", i32 575, i32 3}
!170 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @wd719x_interrupt_SCB._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @wd719x_interrupt_SCB._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/wd719x.c", i32 579, i32 3}
!175 = !{ptr @wd719x_interrupt_SCB._entry.91, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @wd719x_interrupt_SCB._entry_ptr.93, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/wd719x.c", i32 583, i32 3}
!179 = !{ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug287, !178, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!180 = !{ptr @.str.96, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/wd719x.c", i32 589, i32 3}
!182 = !{ptr @wd719x_interrupt_SCB._entry.95, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @wd719x_interrupt_SCB._entry_ptr.97, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/wd719x.c", i32 594, i32 3}
!186 = !{ptr @wd719x_interrupt_SCB._entry.98, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @wd719x_interrupt_SCB._entry_ptr.100, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/wd719x.c", i32 598, i32 3}
!190 = !{ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug288, !189, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/wd719x.c", i32 601, i32 3}
!193 = !{ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug289, !192, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!194 = !{ptr @.str.103, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/wd719x.c", i32 605, i32 3}
!196 = !{ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug290, !195, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!197 = !{ptr @.str.105, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/wd719x.c", i32 609, i32 3}
!199 = !{ptr @wd719x_interrupt_SCB._entry.104, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @wd719x_interrupt_SCB._entry_ptr.106, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/wd719x.c", i32 613, i32 3}
!203 = !{ptr @wd719x_interrupt_SCB._entry.107, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @wd719x_interrupt_SCB._entry_ptr.109, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.111, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/wd719x.c", i32 617, i32 3}
!207 = !{ptr @wd719x_interrupt_SCB._entry.110, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @wd719x_interrupt_SCB._entry_ptr.112, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/wd719x.c", i32 621, i32 3}
!211 = !{ptr @wd719x_interrupt_SCB._entry.113, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @wd719x_interrupt_SCB._entry_ptr.115, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.116, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/wd719x.c", i32 625, i32 3}
!215 = !{ptr @wd719x_interrupt_SCB.__UNIQUE_ID_ddebug291, !214, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/wd719x.c", i32 632, i32 3}
!218 = !{ptr @wd719x_interrupt_SCB._entry.117, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @wd719x_interrupt_SCB._entry_ptr.119, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/wd719x.c", i32 637, i32 3}
!222 = !{ptr @wd719x_interrupt_SCB._entry.120, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @wd719x_interrupt_SCB._entry_ptr.122, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.124, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/wd719x.c", i32 641, i32 3}
!226 = !{ptr @wd719x_interrupt_SCB._entry.123, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @wd719x_interrupt_SCB._entry_ptr.125, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.127, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/wd719x.c", i32 645, i32 3}
!230 = !{ptr @wd719x_interrupt_SCB._entry.126, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @wd719x_interrupt_SCB._entry_ptr.128, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/wd719x.c", i32 649, i32 3}
!234 = !{ptr @wd719x_interrupt_SCB._entry.129, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @wd719x_interrupt_SCB._entry_ptr.131, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/wd719x.c", i32 768, i32 3}
!238 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @wd719x_read_eeprom._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @wd719x_read_eeprom._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/wd719x.c", i32 169, i32 3}
!243 = !{ptr @wd719x_destroy._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @wd719x_destroy._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = distinct !{null, !246, !"__already_done", i1 false, i1 false}
!246 = !{!"../drivers/scsi/wd719x.c", i32 173, i32 2}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i64 4224045}
!257 = !{i64 2151763390}
!258 = !{i64 2151764995}
!259 = !{i64 4223650}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{!"branch_weights", i32 1, i32 2000}
!262 = !{i64 2155040634, i64 2155041120, i64 2155040671, i64 2155040727, i64 2155040761, i64 2155040785, i64 2155040826, i64 2155040847, i64 2155040875, i64 2155040909}
!263 = !{i64 2151765969}
!264 = !{i64 4223847}
!265 = !{i64 2148651758, i64 2148652038, i64 2148652372, i64 2148652706}
!266 = !{!"auto-init"}
!267 = !{i64 2151765419}
!268 = !{i64 4223227}
!269 = !{i64 4224265}
!270 = !{i64 2151764614}
!271 = !{i64 2148743039, i64 2148743044, i64 2148743057, i64 2148743101, i64 2148743135, i64 2148743156}
