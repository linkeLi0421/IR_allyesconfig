; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/isd200.c_pt.bc'
source_filename = "../drivers/usb/storage/isd200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.read_capacity_data = type { i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.isd200_info = type { %struct.inquiry_data, ptr, %struct.isd200_config, ptr, [8 x i8], i8, i8, i8, [16 x i8], %struct.scsi_cmnd, %struct.scatterlist }
%struct.inquiry_data = type { i8, i8, i8, i8, i8, [2 x i8], i8, [8 x i8], [16 x i8], [4 x i8], [20 x i8], [40 x i8] }
%struct.isd200_config = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sense_data = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }

@__UNIQUE_ID_description290 = internal constant [69 x i8] c"ums_isd200.description=Driver for In-System Design, Inc. ISD200 ASIC\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [50 x i8] c"ums_isd200.author=Bj\C3\B6rn Stenberg <bjorn@haxx.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [47 x i8] c"ums_isd200.file=drivers/usb/storage/ums-isd200\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"ums_isd200.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [33 x i8] c"ums_isd200.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_isd200__295_1573_isd200_driver_init6 = internal global ptr @isd200_driver_init, section ".initcall6.init", align 4
@isd200_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @isd200_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @isd200_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_isd200_driver_exit = internal global ptr @isd200_driver_exit, section ".exitcall.exit", align 4
@isd200_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums-isd200\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums_isd200\00", [21 x i8] zeroinitializer }, align 32
@isd200_usb_ids = internal global { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1356, i16 43, i16 256, i16 272, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1451, i16 49, i16 256, i16 272, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1451, i16 769, i16 256, i16 272, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1451, i16 849, i16 256, i16 272, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1451, i16 22273, i16 256, i16 272, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3062, i16 -24575, i16 256, i16 272, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@isd200_unusual_dev_list = internal global { [7 x %struct.us_unusual_dev], [48 x i8] } { [7 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.3, ptr @.str.4, i8 -16, i8 80, ptr @isd200_Initialization }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 -16, i8 80, ptr @isd200_Initialization }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.4, i8 -16, i8 80, ptr @isd200_Initialization }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.4, i8 -16, i8 80, ptr @isd200_Initialization }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.7, i8 -16, i8 80, ptr @isd200_Initialization }, %struct.us_unusual_dev { ptr @.str.8, ptr @.str.9, i8 -16, i8 80, ptr @isd200_Initialization }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ISD200 ATA/ATAPI\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sony\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Portable USB Harddrive V2\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"In-System\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB/IDE Bridge (ATA/ATAPI)\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB Storage Adapter V2\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ATI\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB Cable 205\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ISD200 Initialization...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERROR Initializing ISD200 Info struct\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ISD200 Initialization Failure\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ISD200 Initialization complete\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Entering isd200_get_inquiry_data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"   Error issuing ATA Command Identify\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"   Device supports Media Status Notification\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Transparent SCSI\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Protocol changed to: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Leaving isd200_get_inquiry_data %08X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Entering isd200_manual_enum\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"   Setting Master/Slave selection to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Leaving isd200_manual_enum %08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Entering isd200_read_config\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"   Retrieved the following ISD200 Config Data:\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"   Request to get ISD200 Config Data failed!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Leaving isd200_read_config %08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"      Event Notification: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"      External Clock: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"      ATA Init Timeout: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"      ATAPI Command Block Size: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"      Master/Slave Selection: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"      ATAPI Reset: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"      ATA Timing: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"      ATA Major Command: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"      ATA Minor Command: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"      Init Status: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"      Config Descriptor 2: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"      Skip Device Boot: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"      ATA 3 State Suspend: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"      Descriptor Override: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"      Last LUN Identifier: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"      SRST Enable: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"   %s status is still BSY, try again...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slave\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"   %s status !BSY, continue with next operation\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"   Status indicates it is not ready, try again...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   Identified ATA device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"   Identified ATAPI device as slave.  Rechecking again as master\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"   Identified ATAPI device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"   Not ATA, not ATAPI - Weird\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"   BSY check timeout, just continue with next operation...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"   Device detect timeout!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Entering isd200_atapi_soft_reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"   Error issuing Atapi Soft Reset\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Leaving isd200_atapi_soft_reset %08X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Entering isd200_SRST\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"   Error issuing SRST\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   Error taking drive out of reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leaving isd200_srst %08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Entering isd200_write_config\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"   Writing the following ISD200 Config Data:\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"   ISD200 Config Data was written successfully\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"   Request to write ISD200 Config Data failed!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Leaving isd200_write_config %08X\0A\00", [62 x i8] zeroinitializer }, align 32
@isd200_action.srb_dev = internal global { %struct.scsi_device, [616 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"   isd200_action(READ_STATUS)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"   isd200_action(ENUM,0x%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"   isd200_action(RESET)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"   isd200_action(REENABLE)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"   isd200_action(SOFT_RESET)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"   isd200_action(IDENTIFY)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error: Undefined action %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   isd200_action(0x%02x) error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"   Identify Data Structure:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"      config = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"      cyls = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"      heads = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"      track_bytes = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"      sector_bytes = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"      sectors = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"      serial_no[0] = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"      buf_type = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"      buf_size = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"      ecc_bytes = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"      fw_rev[0] = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"      model[0] = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"      max_multsect = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"      dword_io = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"      capability = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"      tPIO = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"      tDMA = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"      field_valid = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"      cur_cyls = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"      cur_heads = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"      cur_sectors = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"      cur_capacity = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"      multsect = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"      lba_capacity = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"      command_set_1 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"      command_set_2 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR Driver not initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"   ATA OUT - INQUIRY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"   ATA OUT - SCSIOP_MODE_SENSE\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"   Media Status not supported, just report okay\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"   ATA OUT - SCSIOP_TEST_UNIT_READY\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"   ATA OUT - SCSIOP_READ_CAPACITY\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   ATA OUT - SCSIOP_READ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"   ATA OUT - SCSIOP_WRITE\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   ATA OUT - SCSIOP_MEDIUM_REMOVAL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"   srb->cmnd[4] = 0x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"   Not removable media, just report okay\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"   ATA OUT - SCSIOP_START_STOP_UNIT\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"   Media Eject\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"   Get Media Status\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   Nothing to do, just report okay\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported SCSI command - 0x%X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"-- command was aborted\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"-- transport indicates protocol failure\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"-- transport indicates command failure\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"-- transport indicates transport error\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"-- transport indicates unknown error\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"-- unexpectedly short transfer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"-- auto-sense aborted\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Entering isd200_IssueATAReadRegs\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"   Error reading ATA registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"   Got ATA Register[ATA_REG_ERROR_OFFSET] = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 18, i64 26, i64 27, i64 30, i64 37, i64 40, i64 42]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 18, i64 26, i64 77, i64 90]
@__sancov_gen_cov_switch_values.130 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"isd200_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1559, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"isd200_host_template\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1538, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1573, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"isd200_usb_ids\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 70, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"isd200_unusual_dev_list\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 92, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1552, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 9, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 15, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 33, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [40 x i8] c"../drivers/usb/storage/unusual_isd200.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 39, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1484, i32 19 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1489, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1494, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1496, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1111, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1129, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1172, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1191, i32 24 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1194, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1205, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1021, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1040, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1048, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 803, i32 19 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 820, i32 20 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 825, i32 20 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 829, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 711, i32 19 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 713, i32 19 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 715, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 717, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 719, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 721, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 723, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 725, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 727, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 729, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 731, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 733, i32 19 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 735, i32 19 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 737, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 739, i32 19 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 741, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 937, i32 22 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 939, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 939, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 941, i32 22 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 952, i32 21 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 956, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 979, i32 22 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 983, i32 22 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 990, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 997, i32 22 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 999, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 847, i32 19 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 851, i32 20 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 855, i32 19 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 873, i32 19 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 879, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 887, i32 21 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 895, i32 19 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 761, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 762, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 778, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 780, i32 20 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 784, i32 19 }
@___asan_gen_.341 = private unnamed_addr constant [8 x i8] c"srb_dev\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 482, i32 28 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 497, i32 20 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 506, i32 20 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 516, i32 20 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 525, i32 20 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 534, i32 20 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 543, i32 20 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 551, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 561, i32 20 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1068, i32 19 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1069, i32 19 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1070, i32 19 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1071, i32 19 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1072, i32 19 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1073, i32 19 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1074, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1075, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1076, i32 19 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1077, i32 19 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1078, i32 19 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1079, i32 19 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1080, i32 19 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1081, i32 19 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1082, i32 19 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1083, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1084, i32 19 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1085, i32 19 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1086, i32 19 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1087, i32 19 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1088, i32 19 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1089, i32 19 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1090, i32 19 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1091, i32 19 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1092, i32 19 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1093, i32 19 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1094, i32 19 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1521, i32 20 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1236, i32 20 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1246, i32 20 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1260, i32 21 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1267, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1289, i32 20 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1308, i32 20 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1340, i32 20 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1372, i32 20 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1375, i32 21 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1386, i32 21 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1393, i32 20 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1397, i32 21 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1404, i32 21 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1412, i32 21 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1419, i32 20 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 625, i32 20 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 637, i32 20 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 642, i32 20 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 647, i32 20 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 653, i32 20 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 665, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 672, i32 21 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 584, i32 19 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 589, i32 20 }
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.525 = private constant [32 x i8] c"../drivers/usb/storage/isd200.c\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 593, i32 20 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_isd200_driver_exit, ptr @__initcall__kmod_ums_isd200__295_1573_isd200_driver_init6, ptr @isd200_driver_exit, ptr @isd200_driver, ptr @isd200_host_template, ptr @.str, ptr @.str.1, ptr @isd200_usb_ids, ptr @isd200_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @isd200_action.srb_dev, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isd200_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isd200_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isd200_usb_ids to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isd200_unusual_dev_list to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isd200_action.srb_dev to i32), i32 2488, i32 3104, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isd200_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @isd200_host_template, ptr noundef nonnull @.str, ptr noundef null) #6
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @isd200_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isd200_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @isd200_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isd200_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #6
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !280
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @isd200_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @isd200_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @isd200_host_template) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %us, align 4
  %protocol_name = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %protocol_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %protocol_name, align 4
  %proto_handler = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 21
  %4 = ptrtoint ptr %proto_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @isd200_ata_command, ptr %proto_handler, align 4
  %call1 = call i32 @usb_stor_probe2(ptr noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_reset_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_pre_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_post_reset(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isd200_ata_command(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %senseData.i = alloca [8 x i8], align 8
  %readCapacityData.i = alloca %struct.read_capacity_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.101) #6
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 458752, ptr %result, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %srb, i32 0, i32 5
  %3 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %resid_len.i, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %id1.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %senseData.i) #6
  %10 = ptrtoint ptr %senseData.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %senseData.i, align 8
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %11 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmnd.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %sw.default.i [
    i8 18, label %sw.bb.i
    i8 26, label %sw.bb2.i
    i8 0, label %sw.bb6.i
    i8 37, label %sw.bb24.i
    i8 40, label %sw.bb45.i
    i8 42, label %sw.bb104.i
    i8 30, label %sw.bb172.i
    i8 27, label %sw.bb199.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.102) #6
  tail call void @usb_stor_set_xfer_buf(ptr noundef %7, i32 noundef 96, ptr noundef %srb) #6
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %16 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %result.i, align 4
  br label %isd200_scsi_to_ata.exit.thread

sw.bb2.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.103) #6
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %senseData.i, i32 noundef 8, ptr noundef %srb) #6
  %DeviceFlags.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 6
  %17 = ptrtoint ptr %DeviceFlags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %DeviceFlags.i, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %ATAMajorCommand.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %ATAMajorCommand.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ATAMajorCommand.i, align 4
  %ATAMinorCommand.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %ATAMinorCommand.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ATAMinorCommand.i, align 1
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %length.i, align 4
  br label %if.then2

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.104) #6
  %result5.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %25 = ptrtoint ptr %result5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %result5.i, align 4
  br label %isd200_scsi_to_ata.exit.thread

sw.bb6.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.105) #6
  %DeviceFlags7.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 6
  %26 = ptrtoint ptr %DeviceFlags7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DeviceFlags7.i, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not.i = icmp eq i8 %28, 0
  br i1 %tobool10.not.i, label %if.else21.i, label %if.then11.i

if.then11.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %ATAMajorCommand13.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %ATAMajorCommand13.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ATAMajorCommand13.i, align 4
  %ATAMinorCommand16.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %ATAMinorCommand16.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ATAMinorCommand16.i, align 1
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %length.i, align 4
  br label %if.then2

if.else21.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.104) #6
  %result22.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %34 = ptrtoint ptr %result22.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %result22.i, align 4
  br label %isd200_scsi_to_ata.exit.thread

sw.bb24.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %readCapacityData.i) #6
  %35 = getelementptr inbounds %struct.read_capacity_data, ptr %readCapacityData.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.106) #6
  %arrayidx25.i = getelementptr i16, ptr %9, i32 49
  %36 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx25.i, align 2
  %38 = and i16 %37, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool28.not.i = icmp eq i16 %38, 0
  br i1 %tobool28.not.i, label %if.else34.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30.i = getelementptr i16, ptr %9, i32 61
  %39 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx30.i, align 2
  %conv31.i = zext i16 %40 to i32
  %shl.i = shl nuw i32 %conv31.i, 16
  %arrayidx32.i = getelementptr i16, ptr %9, i32 60
  %41 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx32.i, align 2
  %conv33.i = zext i16 %42 to i32
  %or.i = or i32 %shl.i, %conv33.i
  br label %if.end43.i

if.else34.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx35.i = getelementptr i16, ptr %9, i32 3
  %43 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx35.i, align 2
  %conv36.i = zext i16 %44 to i32
  %arrayidx37.i = getelementptr i16, ptr %9, i32 1
  %45 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx37.i, align 2
  %conv38.i = zext i16 %46 to i32
  %mul.i = mul nuw i32 %conv38.i, %conv36.i
  %arrayidx39.i = getelementptr i16, ptr %9, i32 6
  %47 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx39.i, align 2
  %conv40.i = zext i16 %48 to i32
  %mul41.i = mul i32 %mul.i, %conv40.i
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else34.i, %if.then29.i
  %capacity.0.in.i = phi i32 [ %or.i, %if.then29.i ], [ %mul41.i, %if.else34.i ]
  %capacity.0.i = add i32 %capacity.0.in.i, -1
  %49 = ptrtoint ptr %readCapacityData.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %capacity.0.i, ptr %readCapacityData.i, align 4
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 512, ptr %35, align 4
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %readCapacityData.i, i32 noundef 8, ptr noundef %srb) #6
  %result44.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %51 = ptrtoint ptr %result44.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %result44.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %readCapacityData.i) #6
  br label %isd200_scsi_to_ata.exit.thread

sw.bb45.i:                                        ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.107) #6
  %52 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmnd.i, align 4
  %arrayidx47.i = getelementptr i8, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx47.i, align 4
  %arrayidx53.i = getelementptr i8, ptr %53, i32 8
  %56 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx53.i, align 1
  %arrayidx56.i = getelementptr i16, ptr %9, i32 49
  %58 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx56.i, align 2
  %60 = and i16 %59, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool59.not.i = icmp eq i16 %60, 0
  br i1 %tobool59.not.i, label %if.else69.i, label %if.then60.i

if.then60.i:                                      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv61.i = trunc i32 %55 to i8
  %shr.i = lshr i32 %55, 8
  %shr63.i = lshr i32 %55, 24
  %conv65.i = and i32 %shr63.i, 15
  %or67.i = or i32 %conv65.i, 64
  br label %if.end86.i

if.else69.i:                                      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx70.i = getelementptr i16, ptr %9, i32 6
  %61 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx70.i, align 2
  %conv71.i = zext i16 %62 to i32
  %.frozen = freeze i32 %55
  %conv71.i.frozen = freeze i32 %conv71.i
  %div81.i = udiv i32 %.frozen, %conv71.i.frozen
  %63 = mul i32 %div81.i, %conv71.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %63
  %64 = trunc i32 %rem.i.decomposed to i8
  %conv72.i = add i8 %64, 1
  %arrayidx75.i = getelementptr i16, ptr %9, i32 3
  %65 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx75.i, align 2
  %conv76.i = zext i16 %66 to i32
  %mul77.i = mul nuw i32 %conv76.i, %conv71.i
  %div.i = udiv i32 %55, %mul77.i
  %rem84.i = urem i32 %div81.i, %conv76.i
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else69.i, %if.then60.i
  %sectnum.0.i = phi i8 [ %conv61.i, %if.then60.i ], [ %conv72.i, %if.else69.i ]
  %head.0.in.i = phi i32 [ %or67.i, %if.then60.i ], [ %rem84.i, %if.else69.i ]
  %cylinder.0.in.i = phi i32 [ %shr.i, %if.then60.i ], [ %div.i, %if.else69.i ]
  %ATAMajorCommand88.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %67 = ptrtoint ptr %ATAMajorCommand88.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ATAMajorCommand88.i, align 4
  %ATAMinorCommand91.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %69 = ptrtoint ptr %ATAMinorCommand91.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ATAMinorCommand91.i, align 1
  %conv96.i = lshr i32 %cylinder.0.in.i, 8
  %conv98.i = trunc i32 %conv96.i to i8
  %conv99.i = trunc i32 %cylinder.0.in.i to i8
  %71 = trunc i32 %head.0.in.i to i8
  %conv102.i = or i8 %71, -96
  br label %if.then2

sw.bb104.i:                                       ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.108) #6
  %72 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmnd.i, align 4
  %arrayidx106.i = getelementptr i8, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx106.i, align 4
  %arrayidx112.i = getelementptr i8, ptr %73, i32 8
  %76 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx112.i, align 1
  %arrayidx115.i = getelementptr i16, ptr %9, i32 49
  %78 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx115.i, align 2
  %80 = and i16 %79, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool118.not.i = icmp eq i16 %80, 0
  br i1 %tobool118.not.i, label %if.else129.i, label %if.then119.i

if.then119.i:                                     ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv120.i = trunc i32 %75 to i8
  %shr121.i = lshr i32 %75, 8
  %shr123.i = lshr i32 %75, 24
  %conv125.i = and i32 %shr123.i, 15
  %or127.i = or i32 %conv125.i, 64
  br label %if.end149.i

if.else129.i:                                     ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx130.i = getelementptr i16, ptr %9, i32 6
  %81 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx130.i, align 2
  %conv131.i = zext i16 %82 to i32
  %.frozen33 = freeze i32 %75
  %conv131.i.frozen = freeze i32 %conv131.i
  %div144.i = udiv i32 %.frozen33, %conv131.i.frozen
  %83 = mul i32 %div144.i, %conv131.i.frozen
  %rem132.i.decomposed = sub i32 %.frozen33, %83
  %84 = trunc i32 %rem132.i.decomposed to i8
  %conv134.i = add i8 %84, 1
  %arrayidx137.i = getelementptr i16, ptr %9, i32 3
  %85 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx137.i, align 2
  %conv138.i = zext i16 %86 to i32
  %mul139.i = mul nuw i32 %conv138.i, %conv131.i
  %div140.i = udiv i32 %75, %mul139.i
  %rem147.i = urem i32 %div144.i, %conv138.i
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.else129.i, %if.then119.i
  %sectnum.1.i = phi i8 [ %conv120.i, %if.then119.i ], [ %conv134.i, %if.else129.i ]
  %head.1.in.i = phi i32 [ %or127.i, %if.then119.i ], [ %rem147.i, %if.else129.i ]
  %cylinder.1.in.i = phi i32 [ %shr121.i, %if.then119.i ], [ %div140.i, %if.else129.i ]
  %ATAMajorCommand151.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %87 = ptrtoint ptr %ATAMajorCommand151.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ATAMajorCommand151.i, align 4
  %ATAMinorCommand154.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %89 = ptrtoint ptr %ATAMinorCommand154.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ATAMinorCommand154.i, align 1
  %conv161.i = lshr i32 %cylinder.1.in.i, 8
  %conv163.i = trunc i32 %conv161.i to i8
  %conv165.i = trunc i32 %cylinder.1.in.i to i8
  %91 = trunc i32 %head.1.in.i to i8
  %conv169.i = or i8 %91, -96
  br label %if.then2

sw.bb172.i:                                       ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.109) #6
  %DeviceFlags173.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 6
  %92 = ptrtoint ptr %DeviceFlags173.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %DeviceFlags173.i, align 1
  %94 = and i8 %93, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool176.not.i = icmp eq i8 %94, 0
  br i1 %tobool176.not.i, label %if.else196.i, label %if.then177.i

if.then177.i:                                     ; preds = %sw.bb172.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmnd.i, align 4
  %arrayidx179.i = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx179.i, align 1
  %conv180.i = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.110, i32 noundef %conv180.i) #6
  %ATAMajorCommand182.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %99 = ptrtoint ptr %ATAMajorCommand182.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ATAMajorCommand182.i, align 4
  %ATAMinorCommand185.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %101 = ptrtoint ptr %ATAMinorCommand185.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ATAMinorCommand185.i, align 1
  %103 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cmnd.i, align 4
  %arrayidx190.i = getelementptr i8, ptr %104, i32 4
  %105 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx190.i, align 1
  %107 = and i8 %106, 1
  %108 = xor i8 %107, -33
  %109 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %length.i, align 4
  br label %if.then2

if.else196.i:                                     ; preds = %sw.bb172.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.111) #6
  %result197.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %110 = ptrtoint ptr %result197.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %result197.i, align 4
  br label %isd200_scsi_to_ata.exit.thread

sw.bb199.i:                                       ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.112) #6
  %111 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cmnd.i, align 4
  %arrayidx201.i = getelementptr i8, ptr %112, i32 4
  %113 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx201.i, align 1
  %conv202.i = zext i8 %114 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.110, i32 noundef %conv202.i) #6
  %115 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cmnd.i, align 4
  %arrayidx204.i = getelementptr i8, ptr %116, i32 4
  %117 = ptrtoint ptr %arrayidx204.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx204.i, align 1
  %trunc.i = trunc i8 %118 to i2
  %119 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.127)
  switch i2 %trunc.i, label %if.else235.i [
    i2 -2, label %if.then208.i
    i2 1, label %if.then225.i
  ]

if.then208.i:                                     ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.113) #6
  %ATAMajorCommand210.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %120 = ptrtoint ptr %ATAMajorCommand210.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ATAMajorCommand210.i, align 4
  %ATAMinorCommand213.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %122 = ptrtoint ptr %ATAMinorCommand213.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ATAMinorCommand213.i, align 1
  br label %if.then2

if.then225.i:                                     ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.114) #6
  %ATAMajorCommand227.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 4
  %124 = ptrtoint ptr %ATAMajorCommand227.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ATAMajorCommand227.i, align 4
  %ATAMinorCommand230.i = getelementptr inbounds %struct.isd200_info, ptr %7, i32 0, i32 2, i32 5
  %126 = ptrtoint ptr %ATAMinorCommand230.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ATAMinorCommand230.i, align 1
  %128 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %length.i, align 4
  br label %if.then2

if.else235.i:                                     ; preds = %sw.bb199.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.115) #6
  %result236.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %129 = ptrtoint ptr %result236.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %result236.i, align 4
  br label %isd200_scsi_to_ata.exit.thread

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.116, i32 noundef %conv.i) #6
  %result242.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %130 = ptrtoint ptr %result242.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 458752, ptr %result242.i, align 4
  br label %isd200_scsi_to_ata.exit.thread

isd200_scsi_to_ata.exit.thread:                   ; preds = %sw.default.i, %if.else235.i, %if.else196.i, %if.end43.i, %if.else21.i, %if.else.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %senseData.i) #6
  br label %if.end3

if.then2:                                         ; preds = %if.then225.i, %if.then208.i, %if.then177.i, %if.end149.i, %if.end86.i, %if.then11.i, %if.then.i
  %ataCdb.sroa.0.0 = phi i8 [ %125, %if.then225.i ], [ %121, %if.then208.i ], [ %100, %if.then177.i ], [ %88, %if.end149.i ], [ %68, %if.end86.i ], [ %30, %if.then11.i ], [ %21, %if.then.i ]
  %ataCdb.sroa.12.0 = phi i8 [ %127, %if.then225.i ], [ %123, %if.then208.i ], [ %102, %if.then177.i ], [ %90, %if.end149.i ], [ %70, %if.end86.i ], [ %32, %if.then11.i ], [ %23, %if.then.i ]
  %ataCdb.sroa.21.0 = phi i8 [ -128, %if.then225.i ], [ -128, %if.then208.i ], [ -128, %if.then177.i ], [ -4, %if.end149.i ], [ -4, %if.end86.i ], [ -128, %if.then11.i ], [ -128, %if.then.i ]
  %ataCdb.sroa.29.0 = phi i8 [ 1, %if.then225.i ], [ 0, %if.then208.i ], [ 1, %if.then177.i ], [ 1, %if.end149.i ], [ 1, %if.end86.i ], [ 1, %if.then11.i ], [ 1, %if.then.i ]
  %ataCdb.sroa.39.0 = phi i8 [ 0, %if.then225.i ], [ 0, %if.then208.i ], [ 0, %if.then177.i ], [ %77, %if.end149.i ], [ %57, %if.end86.i ], [ 0, %if.then11.i ], [ 0, %if.then.i ]
  %ataCdb.sroa.42.0 = phi i8 [ 0, %if.then225.i ], [ 0, %if.then208.i ], [ 0, %if.then177.i ], [ %sectnum.1.i, %if.end149.i ], [ %sectnum.0.i, %if.end86.i ], [ 0, %if.then11.i ], [ 0, %if.then.i ]
  %ataCdb.sroa.45.0 = phi i8 [ 0, %if.then225.i ], [ 0, %if.then208.i ], [ 0, %if.then177.i ], [ %conv165.i, %if.end149.i ], [ %conv99.i, %if.end86.i ], [ 0, %if.then11.i ], [ 0, %if.then.i ]
  %ataCdb.sroa.48.0 = phi i8 [ 0, %if.then225.i ], [ 0, %if.then208.i ], [ 0, %if.then177.i ], [ %conv163.i, %if.end149.i ], [ %conv98.i, %if.end86.i ], [ 0, %if.then11.i ], [ 0, %if.then.i ]
  %ataCdb.sroa.51.0 = phi i8 [ 0, %if.then225.i ], [ 0, %if.then208.i ], [ 0, %if.then177.i ], [ %conv169.i, %if.end149.i ], [ %conv102.i, %if.end86.i ], [ 0, %if.then11.i ], [ 0, %if.then.i ]
  %ataCdb.sroa.54.0 = phi i8 [ -38, %if.then225.i ], [ -19, %if.then208.i ], [ %108, %if.then177.i ], [ 48, %if.end149.i ], [ 32, %if.end86.i ], [ -38, %if.then11.i ], [ -38, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %senseData.i) #6
  %131 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cmnd.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %ataCdb.sroa.0.0, ptr %132, align 1
  %ataCdb.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 1
  %134 = ptrtoint ptr %ataCdb.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %ataCdb.sroa.12.0, ptr %ataCdb.sroa.12.0..sroa_idx, align 1
  %ataCdb.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 2
  %135 = ptrtoint ptr %ataCdb.sroa.20.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %ataCdb.sroa.20.0..sroa_idx, align 1
  %ataCdb.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 3
  %136 = ptrtoint ptr %ataCdb.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %ataCdb.sroa.21.0, ptr %ataCdb.sroa.21.0..sroa_idx, align 1
  %ataCdb.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 4
  %137 = ptrtoint ptr %ataCdb.sroa.29.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %ataCdb.sroa.29.0, ptr %ataCdb.sroa.29.0..sroa_idx, align 1
  %ataCdb.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 5
  %138 = ptrtoint ptr %ataCdb.sroa.37.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %ataCdb.sroa.37.0..sroa_idx, align 1
  %ataCdb.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 6
  %139 = ptrtoint ptr %ataCdb.sroa.38.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %ataCdb.sroa.38.0..sroa_idx, align 1
  %ataCdb.sroa.39.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 7
  %140 = ptrtoint ptr %ataCdb.sroa.39.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %ataCdb.sroa.39.0, ptr %ataCdb.sroa.39.0..sroa_idx, align 1
  %ataCdb.sroa.42.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 8
  %141 = ptrtoint ptr %ataCdb.sroa.42.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %ataCdb.sroa.42.0, ptr %ataCdb.sroa.42.0..sroa_idx, align 1
  %ataCdb.sroa.45.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 9
  %142 = ptrtoint ptr %ataCdb.sroa.45.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %ataCdb.sroa.45.0, ptr %ataCdb.sroa.45.0..sroa_idx, align 1
  %ataCdb.sroa.48.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 10
  %143 = ptrtoint ptr %ataCdb.sroa.48.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %ataCdb.sroa.48.0, ptr %ataCdb.sroa.48.0..sroa_idx, align 1
  %ataCdb.sroa.51.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 11
  %144 = ptrtoint ptr %ataCdb.sroa.51.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %ataCdb.sroa.51.0, ptr %ataCdb.sroa.51.0..sroa_idx, align 1
  %ataCdb.sroa.54.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 12
  %145 = ptrtoint ptr %ataCdb.sroa.54.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %ataCdb.sroa.54.0, ptr %ataCdb.sroa.54.0..sroa_idx, align 1
  %ataCdb.sroa.62.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 13
  %146 = ptrtoint ptr %ataCdb.sroa.62.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %ataCdb.sroa.62.0..sroa_idx, align 1
  %ataCdb.sroa.63.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 14
  %147 = ptrtoint ptr %ataCdb.sroa.63.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %ataCdb.sroa.63.0..sroa_idx, align 1
  %ataCdb.sroa.64.0..sroa_idx = getelementptr inbounds i8, ptr %132, i32 15
  %148 = ptrtoint ptr %ataCdb.sroa.64.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %ataCdb.sroa.64.0..sroa_idx, align 1
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %149 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 16, ptr %cmd_len.i, align 4
  %call.i = call i32 @usb_stor_Bulk_transport(ptr noundef %srb, ptr noundef %us) #6
  %dflags.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 5
  %150 = ptrtoint ptr %dflags.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %dflags.i, align 4
  %152 = and i32 %151, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i15 = icmp eq i32 %152, 0
  br i1 %tobool.not.i15, label %if.end.i, label %if.then2.Handle_Abort.i_crit_edge

if.then2.Handle_Abort.i_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %Handle_Abort.i

if.end.i:                                         ; preds = %if.then2
  %153 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %call.i, label %sw.default.i18 [
    i32 0, label %sw.bb.i16
    i32 2, label %sw.bb3.i
    i32 1, label %sw.bb5.i
    i32 3, label %sw.bb6.i17
  ]

sw.bb.i16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %result2.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %154 = ptrtoint ptr %result2.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %result2.i, align 4
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.118) #6
  %result4.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %155 = ptrtoint ptr %result4.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 2, ptr %result4.i, align 4
  br label %if.end3

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.119) #6
  br label %sw.epilog.i

sw.bb6.i17:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.120) #6
  %result7.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %156 = ptrtoint ptr %result7.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 458752, ptr %result7.i, align 4
  br label %if.end3

sw.default.i18:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.121) #6
  %result8.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %157 = ptrtoint ptr %result8.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 458752, ptr %result8.i, align 4
  br label %if.end3

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i16
  %158 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %resid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.not.i = icmp eq i32 %159, 0
  br i1 %cmp.not.i, label %sw.epilog.i.if.end37.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end37.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %160 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cmnd.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 1
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %163, label %if.end37.thread.i [
    i8 3, label %land.lhs.true.i.if.end37.i_crit_edge
    i8 18, label %land.lhs.true.i.if.end37.i_crit_edge34
    i8 26, label %land.lhs.true.i.if.end37.i_crit_edge35
    i8 77, label %land.lhs.true.i.if.end37.i_crit_edge36
    i8 90, label %land.lhs.true.i.if.end37.i_crit_edge37
  ]

land.lhs.true.i.if.end37.i_crit_edge37:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

land.lhs.true.i.if.end37.i_crit_edge36:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

land.lhs.true.i.if.end37.i_crit_edge35:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

land.lhs.true.i.if.end37.i_crit_edge34:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.end37.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.122) #6
  br label %if.then39.i

if.end37.i:                                       ; preds = %land.lhs.true.i.if.end37.i_crit_edge, %land.lhs.true.i.if.end37.i_crit_edge34, %land.lhs.true.i.if.end37.i_crit_edge35, %land.lhs.true.i.if.end37.i_crit_edge36, %land.lhs.true.i.if.end37.i_crit_edge37, %sw.epilog.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cond.i = icmp eq i32 %call.i, 0
  br i1 %cond.i, label %if.end37.i.if.end3_crit_edge, label %if.end37.i.if.then39.i_crit_edge

if.end37.i.if.then39.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

if.end37.i.if.end3_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then39.i:                                      ; preds = %if.end37.i.if.then39.i_crit_edge, %if.end37.thread.i
  %165 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %extra, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.124) #6
  %RegsBuf.i.i = getelementptr inbounds %struct.isd200_info, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %RegsBuf.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %RegsBuf.i.i, align 4
  %call.i.i = call fastcc i32 @isd200_action(ptr noundef %us, i32 noundef 0, ptr noundef %168, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %isd200_read_regs.exit.i, label %isd200_read_regs.exit.thread.i

isd200_read_regs.exit.i:                          ; preds = %if.then39.i
  %ATARegs.i.i = getelementptr inbounds %struct.isd200_info, ptr %166, i32 0, i32 4
  %169 = ptrtoint ptr %RegsBuf.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %RegsBuf.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %170, align 1
  %173 = ptrtoint ptr %ATARegs.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 8)
  store i64 %172, ptr %ATARegs.i.i, align 4
  %174 = lshr i64 %172, 48
  %175 = trunc i64 %174 to i32
  %conv.i.i = and i32 %175, 255
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.126, i32 noundef %conv.i.i) #6
  %176 = ptrtoint ptr %dflags.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %dflags.i, align 4
  %178 = and i32 %177, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool43.not.i = icmp eq i32 %178, 0
  br i1 %tobool43.not.i, label %if.then48.i, label %isd200_read_regs.exit.i.Handle_Abort.i_crit_edge

isd200_read_regs.exit.i.Handle_Abort.i_crit_edge: ; preds = %isd200_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %Handle_Abort.i

isd200_read_regs.exit.thread.i:                   ; preds = %if.then39.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.125) #6
  %179 = ptrtoint ptr %dflags.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %dflags.i, align 4
  %181 = and i32 %180, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool43.not110.i = icmp eq i32 %181, 0
  br i1 %tobool43.not110.i, label %if.else.i19, label %isd200_read_regs.exit.thread.i.Handle_Abort.i_crit_edge

isd200_read_regs.exit.thread.i.Handle_Abort.i_crit_edge: ; preds = %isd200_read_regs.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %Handle_Abort.i

if.then48.i:                                      ; preds = %isd200_read_regs.exit.i
  %182 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %extra, align 4
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 21
  %184 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sense_buffer.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.isd200_info, ptr %183, i32 0, i32 4, i32 1
  %186 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx1.i.i, align 1
  %conv.i104.i = zext i8 %187 to i32
  %188 = and i32 %conv.i104.i, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %if.else11.i.i, label %if.then48.i.isd200_build_sense.exit.i_crit_edge

if.then48.i.isd200_build_sense.exit.i_crit_edge:  ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_build_sense.exit.i

if.else11.i.i:                                    ; preds = %if.then48.i
  %and13.i.i = and i32 %conv.i104.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.else21.i.i, label %if.else11.i.i.isd200_build_sense.exit.i_crit_edge

if.else11.i.i.isd200_build_sense.exit.i_crit_edge: ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_build_sense.exit.i

if.else21.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and23.i.i = and i32 %conv.i104.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  %..i.i = select i1 %tobool24.not.i.i, i8 0, i8 -16
  %.69.i.i = select i1 %tobool24.not.i.i, i8 0, i8 11
  %.70.i.i = select i1 %tobool24.not.i.i, i8 0, i8 7
  br label %isd200_build_sense.exit.i

isd200_build_sense.exit.i:                        ; preds = %if.else21.i.i, %if.else11.i.i.isd200_build_sense.exit.i_crit_edge, %if.then48.i.isd200_build_sense.exit.i_crit_edge
  %.sink68.i.i = phi i8 [ -16, %if.then48.i.isd200_build_sense.exit.i_crit_edge ], [ -16, %if.else11.i.i.isd200_build_sense.exit.i_crit_edge ], [ %..i.i, %if.else21.i.i ]
  %.sink67.i.i = phi i8 [ 11, %if.then48.i.isd200_build_sense.exit.i_crit_edge ], [ 11, %if.else11.i.i.isd200_build_sense.exit.i_crit_edge ], [ %.69.i.i, %if.else21.i.i ]
  %.sink.i.i = phi i8 [ 6, %if.then48.i.isd200_build_sense.exit.i_crit_edge ], [ 2, %if.else11.i.i.isd200_build_sense.exit.i_crit_edge ], [ %.70.i.i, %if.else21.i.i ]
  %190 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %.sink68.i.i, ptr %185, align 1
  %AdditionalSenseLength7.i.i = getelementptr inbounds %struct.sense_data, ptr %185, i32 0, i32 4
  %191 = ptrtoint ptr %AdditionalSenseLength7.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %.sink67.i.i, ptr %AdditionalSenseLength7.i.i, align 1
  %Flags8.i.i = getelementptr inbounds %struct.sense_data, ptr %185, i32 0, i32 2
  %192 = ptrtoint ptr %Flags8.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %.sink.i.i, ptr %Flags8.i.i, align 1
  %AdditionalSenseCode9.i.i = getelementptr inbounds %struct.sense_data, ptr %185, i32 0, i32 6
  %193 = ptrtoint ptr %AdditionalSenseCode9.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %AdditionalSenseCode9.i.i, align 1
  %AdditionalSenseCodeQualifier10.i.i = getelementptr inbounds %struct.sense_data, ptr %185, i32 0, i32 7
  %194 = ptrtoint ptr %AdditionalSenseCodeQualifier10.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %AdditionalSenseCodeQualifier10.i.i, align 1
  %result49.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %195 = ptrtoint ptr %result49.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 2, ptr %result49.i, align 4
  %196 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sense_buffer.i.i, align 4
  %arrayidx50.i = getelementptr i8, ptr %197, i32 2
  %198 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx50.i, align 1
  %200 = and i8 %199, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp52.i = icmp eq i8 %200, 0
  %spec.store.select.i = select i1 %cmp52.i, i32 0, i32 2
  %201 = ptrtoint ptr %result49.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %spec.store.select.i, ptr %result49.i, align 4
  br label %if.end59.i

if.else.i19:                                      ; preds = %isd200_read_regs.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %result57.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %202 = ptrtoint ptr %result57.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 458752, ptr %result57.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i19, %isd200_build_sense.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp60.i = icmp eq i32 %call.i, 1
  br i1 %cmp60.i, label %if.then62.i, label %if.end59.i.if.end3_crit_edge

if.end59.i.if.end3_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %result63.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %203 = ptrtoint ptr %result63.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 2, ptr %result63.i, align 4
  br label %if.end3

Handle_Abort.i:                                   ; preds = %isd200_read_regs.exit.thread.i.Handle_Abort.i_crit_edge, %isd200_read_regs.exit.i.Handle_Abort.i_crit_edge, %if.then2.Handle_Abort.i_crit_edge
  %.str.123.sink.i = phi ptr [ @.str.117, %if.then2.Handle_Abort.i_crit_edge ], [ @.str.123, %isd200_read_regs.exit.thread.i.Handle_Abort.i_crit_edge ], [ @.str.123, %isd200_read_regs.exit.i.Handle_Abort.i_crit_edge ]
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %.str.123.sink.i) #6
  %result65.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %204 = ptrtoint ptr %result65.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 327680, ptr %result65.i, align 4
  call void @_clear_bit(i32 noundef 2, ptr noundef %dflags.i) #6
  br label %if.end3

if.end3:                                          ; preds = %Handle_Abort.i, %if.then62.i, %if.end59.i.if.end3_crit_edge, %if.end37.i.if.end3_crit_edge, %sw.default.i18, %sw.bb6.i17, %sw.bb3.i, %isd200_scsi_to_ata.exit.thread
  %205 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %5, ptr %length.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isd200_Initialization(ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 452) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.end5_crit_edge, label %if.end.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i25.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 512) #9
  %id.i = getelementptr inbounds %struct.isd200_info, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i25.i, ptr %id.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 8) #9
  %RegsBuf.i = getelementptr inbounds %struct.isd200_info, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %RegsBuf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %RegsBuf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i24.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 96) #9
  %sense_buffer.i = getelementptr inbounds %struct.isd200_info, ptr %call7.i.i.i, i32 0, i32 9, i32 21
  %6 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i24.i, ptr %sense_buffer.i, align 8
  %tobool5.not.i = icmp eq ptr %call7.i.i25.i, null
  br i1 %tobool5.not.i, label %if.end.i.isd200_free_info_ptrs.exit.i_crit_edge, label %lor.lhs.false.i

if.end.i.isd200_free_info_ptrs.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_free_info_ptrs.exit.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %RegsBuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %RegsBuf.i, align 4
  %tobool7.not.i = icmp eq ptr %8, null
  %tobool11.not.i = icmp eq ptr %call7.i24.i, null
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.isd200_free_info_ptrs.exit.i_crit_edge, label %if.else

lor.lhs.false.i.isd200_free_info_ptrs.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_free_info_ptrs.exit.i

isd200_free_info_ptrs.exit.i:                     ; preds = %lor.lhs.false.i.isd200_free_info_ptrs.exit.i_crit_edge, %if.end.i.isd200_free_info_ptrs.exit.i_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i25.i) #6
  %9 = ptrtoint ptr %RegsBuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %RegsBuf.i, align 4
  tail call void @kfree(ptr noundef %10) #6
  %11 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sense_buffer.i, align 8
  tail call void @kfree(ptr noundef %12) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %if.end5

if.else:                                          ; preds = %lor.lhs.false.i
  %extra.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %13 = ptrtoint ptr %extra.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %extra.i, align 4
  %extra_destructor.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %14 = ptrtoint ptr %extra_destructor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @isd200_free_info_ptrs, ptr %extra_destructor.i, align 4
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %id.i, align 8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14) #6
  %DeviceHead.i = getelementptr inbounds %struct.isd200_info, ptr %call7.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %DeviceHead.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -96, ptr %DeviceHead.i, align 8
  %18 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extra.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20) #6
  %20 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extra.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23) #6
  %recv_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %22 = ptrtoint ptr %recv_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %recv_ctrl_pipe.i.i.i, align 4
  %ConfigData.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %21, i32 0, i32 2
  %call.i.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %23, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %ConfigData.i.i.i, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %isd200_manual_enum.exit.thread.i

isd200_manual_enum.exit.thread.i:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.25) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef -1) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22, i32 noundef -1) #6
  br label %if.then3

if.then.i.i:                                      ; preds = %if.else
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24) #6
  tail call fastcc void @isd200_log_config(ptr noundef %us, ptr noundef %21) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef 0) #6
  %call1.i.i = tail call fastcc i32 @isd200_try_enum(ptr noundef %us, i8 noundef zeroext -96, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i, label %if.then.i.i.if.end12.i.i_crit_edge

if.then.i.i.if.end12.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %call4.i.i = tail call fastcc i32 @isd200_try_enum(ptr noundef %us, i8 noundef zeroext 16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.if.end12.i.i_crit_edge

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.57) #6
  %24 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extra.i, align 4
  %srb1.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9
  %cmnd.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 8
  %cmnd2.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 16
  %26 = ptrtoint ptr %cmnd2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cmnd.i.i.i.i, ptr %cmnd2.i.i.i.i, align 4
  %device.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @isd200_action.srb_dev, ptr %device.i.i.i.i, align 4
  %ATAMajorCommand.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %ATAMajorCommand.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ATAMajorCommand.i.i.i.i, align 4
  %ATAMinorCommand.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %ATAMinorCommand.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ATAMinorCommand.i.i.i.i, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.68) #6
  %sc_data_direction.i61.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 15
  %32 = ptrtoint ptr %sc_data_direction.i61.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %sc_data_direction.i61.i.i.i.i, align 4
  %sdb.i63.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 17
  %33 = ptrtoint ptr %sdb.i63.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sdb.i63.i.i.i.i, align 4
  %length.i64.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 17, i32 1
  %34 = ptrtoint ptr %length.i64.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %length.i64.i.i.i.i, align 4
  %nents.i86.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 17, i32 0, i32 1
  %35 = ptrtoint ptr %nents.i86.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nents.i86.i.i.i.i, align 4
  %36 = ptrtoint ptr %cmnd2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmnd2.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %29, ptr %37, align 1
  %ata.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %37, i32 1
  %39 = ptrtoint ptr %ata.sroa.6.0..sroa_idx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %31, ptr %ata.sroa.6.0..sroa_idx.i.i.i.i, align 1
  %ata.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %37, i32 2
  %40 = ptrtoint ptr %ata.sroa.8.0..sroa_idx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 30, ptr %ata.sroa.8.0..sroa_idx.i.i.i.i, align 1
  %ata.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %37, i32 3
  %41 = ptrtoint ptr %ata.sroa.14.0..sroa_idx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ata.sroa.14.0..sroa_idx.i.i.i.i, align 1
  %ata.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %37, i32 4
  %42 = ptrtoint ptr %ata.sroa.21.0..sroa_idx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %ata.sroa.21.0..sroa_idx.i.i.i.i, align 1
  %ata.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %37, i32 5
  %43 = ptrtoint ptr %ata.sroa.23.0..sroa_idx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %ata.sroa.23.0..sroa_idx.i.i.i.i, align 1
  %ata.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %37, i32 6
  %cmd_len.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %25, i32 0, i32 9, i32 14
  %44 = call ptr @memset(ptr %ata.sroa.26.0..sroa_idx.i.i.i.i, i32 0, i32 10)
  %45 = ptrtoint ptr %cmd_len.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 16, ptr %cmd_len.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @usb_stor_Bulk_transport(ptr noundef %srb1.i.i.i.i, ptr noundef %us) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.else.i48.i.i, label %if.then.i47.i.i

if.then.i47.i.i:                                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.73, i32 noundef 1, i32 noundef %call.i.i.i.i) #6
  br label %isd200_srst.exit.thread.i.i

if.else.i48.i.i:                                  ; preds = %if.then6.i.i
  tail call void @msleep(i32 noundef 10) #6
  %46 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extra.i, align 4
  %srb1.i14.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9
  %cmnd.i15.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 8
  %cmnd2.i16.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 16
  %48 = ptrtoint ptr %cmnd2.i16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cmnd.i15.i.i.i, ptr %cmnd2.i16.i.i.i, align 4
  %device.i17.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %device.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @isd200_action.srb_dev, ptr %device.i17.i.i.i, align 4
  %ATAMajorCommand.i18.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %ATAMajorCommand.i18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ATAMajorCommand.i18.i.i.i, align 4
  %ATAMinorCommand.i19.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 2, i32 5
  %52 = ptrtoint ptr %ATAMinorCommand.i19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ATAMinorCommand.i19.i.i.i, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.69) #6
  %sc_data_direction.i66.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 15
  %54 = ptrtoint ptr %sc_data_direction.i66.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %sc_data_direction.i66.i.i.i.i, align 4
  %sdb.i68.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 17
  %55 = ptrtoint ptr %sdb.i68.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %sdb.i68.i.i.i.i, align 4
  %length.i69.i.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 17, i32 1
  %56 = ptrtoint ptr %length.i69.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %length.i69.i.i.i.i, align 4
  %nents.i86.i20.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 17, i32 0, i32 1
  %57 = ptrtoint ptr %nents.i86.i20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %nents.i86.i20.i.i.i, align 4
  %58 = ptrtoint ptr %cmnd2.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmnd2.i16.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %51, ptr %59, align 1
  %ata.sroa.6.0..sroa_idx.i21.i.i.i = getelementptr inbounds i8, ptr %59, i32 1
  %61 = ptrtoint ptr %ata.sroa.6.0..sroa_idx.i21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %53, ptr %ata.sroa.6.0..sroa_idx.i21.i.i.i, align 1
  %ata.sroa.8.0..sroa_idx.i22.i.i.i = getelementptr inbounds i8, ptr %59, i32 2
  %62 = ptrtoint ptr %ata.sroa.8.0..sroa_idx.i22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 30, ptr %ata.sroa.8.0..sroa_idx.i22.i.i.i, align 1
  %ata.sroa.14.0..sroa_idx.i23.i.i.i = getelementptr inbounds i8, ptr %59, i32 3
  %63 = ptrtoint ptr %ata.sroa.14.0..sroa_idx.i23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %ata.sroa.14.0..sroa_idx.i23.i.i.i, align 1
  %ata.sroa.21.0..sroa_idx.i24.i.i.i = getelementptr inbounds i8, ptr %59, i32 4
  %64 = ptrtoint ptr %ata.sroa.21.0..sroa_idx.i24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %ata.sroa.21.0..sroa_idx.i24.i.i.i, align 1
  %ata.sroa.23.0..sroa_idx.i25.i.i.i = getelementptr inbounds i8, ptr %59, i32 5
  %cmd_len.i32.i.i.i = getelementptr inbounds %struct.isd200_info, ptr %47, i32 0, i32 9, i32 14
  %65 = call ptr @memset(ptr %ata.sroa.23.0..sroa_idx.i25.i.i.i, i32 0, i32 11)
  %66 = ptrtoint ptr %cmd_len.i32.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 16, ptr %cmd_len.i32.i.i.i, align 4
  %call.i33.i.i.i = tail call i32 @usb_stor_Bulk_transport(ptr noundef %srb1.i14.i.i.i, ptr noundef %us) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i.i)
  %cmp.i34.i.i.i = icmp eq i32 %call.i33.i.i.i, 0
  br i1 %cmp.i34.i.i.i, label %if.then9.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.73, i32 noundef 2, i32 noundef %call.i33.i.i.i) #6
  br label %isd200_srst.exit.thread.i.i

isd200_srst.exit.thread.i.i:                      ; preds = %if.then3.i.i.i, %if.then.i47.i.i
  %.str.58.sink.i.i = phi ptr [ @.str.58, %if.then.i47.i.i ], [ @.str.59, %if.then3.i.i.i ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %.str.58.sink.i.i) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.60, i32 noundef -1) #6
  br label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.else.i48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.60, i32 noundef 0) #6
  %call10.i.i = tail call fastcc i32 @isd200_try_enum(ptr noundef %us, i8 noundef zeroext -96, i32 noundef 1) #6
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i, %isd200_srst.exit.thread.i.i, %if.end.i.i.if.end12.i.i_crit_edge, %if.then.i.i.if.end12.i.i_crit_edge
  %retStatus.1.i.i = phi i32 [ %call10.i.i, %if.then9.i.i ], [ %call4.i.i, %if.end.i.i.if.end12.i.i_crit_edge ], [ -1, %isd200_srst.exit.thread.i.i ], [ %call1.i.i, %if.then.i.i.if.end12.i.i_crit_edge ]
  %ATAConfig.i.i = getelementptr inbounds %struct.isd200_info, ptr %19, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %ATAConfig.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ATAConfig.i.i, align 1
  %69 = and i8 %68, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool15.not.i.i = icmp eq i8 %69, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end12.i.i.isd200_manual_enum.exit.i_crit_edge

if.end12.i.i.isd200_manual_enum.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_manual_enum.exit.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %DeviceHead.i.i = getelementptr inbounds %struct.isd200_info, ptr %19, i32 0, i32 5
  %70 = ptrtoint ptr %DeviceHead.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %DeviceHead.i.i, align 4
  %72 = lshr i8 %71, 4
  %.lobit.i.i = and i8 %72, 1
  %73 = zext i8 %.lobit.i.i to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %73) #6
  %74 = ptrtoint ptr %ATAConfig.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ATAConfig.i.i, align 1
  %76 = and i8 %75, 63
  %shl.i.i = shl nuw nsw i8 %.lobit.i.i, 6
  %or.i.i = or i8 %shl.i.i, %76
  store i8 %or.i.i, ptr %ATAConfig.i.i, align 1
  %77 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extra.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.61) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.62) #6
  tail call fastcc void @isd200_log_config(ptr noundef %us, ptr noundef %78) #6
  %send_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %79 = ptrtoint ptr %send_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %send_ctrl_pipe.i.i.i, align 4
  %ConfigData.i51.i.i = getelementptr inbounds %struct.isd200_info, ptr %78, i32 0, i32 2
  %call.i52.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %80, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %ConfigData.i51.i.i, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i52.i.i)
  %cmp.i53.i.i = icmp sgt i32 %call.i52.i.i, -1
  %.str.63..str.64.i.i.i = select i1 %cmp.i53.i.i, ptr @.str.63, ptr @.str.64
  %not.cmp.i.i.i = xor i1 %cmp.i53.i.i, true
  %..i.i.i = sext i1 %not.cmp.i.i.i to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %.str.63..str.64.i.i.i) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.65, i32 noundef %..i.i.i) #6
  br label %isd200_manual_enum.exit.i

isd200_manual_enum.exit.i:                        ; preds = %if.then16.i.i, %if.end12.i.i.isd200_manual_enum.exit.i_crit_edge
  %retStatus.3.i.i = phi i32 [ %retStatus.1.i.i, %if.end12.i.i.isd200_manual_enum.exit.i_crit_edge ], [ %..i.i.i, %if.then16.i.i ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22, i32 noundef %retStatus.3.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retStatus.3.i.i)
  %cmp.i = icmp eq i32 %retStatus.3.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %isd200_manual_enum.exit.i.if.then3_crit_edge

isd200_manual_enum.exit.i.if.then3_crit_edge:     ; preds = %isd200_manual_enum.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then.i:                                        ; preds = %isd200_manual_enum.exit.i
  %DeviceFlags.i = getelementptr inbounds %struct.isd200_info, ptr %call7.i.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %DeviceFlags.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %DeviceFlags.i, align 1
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i12 = icmp eq i8 %83, 0
  br i1 %tobool.not.i12, label %if.else63.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %call3.i = tail call fastcc i32 @isd200_action(ptr noundef %us, i32 noundef 5, ptr noundef %16, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %if.then2.i.for.body.i.i_crit_edge, label %if.then6.i

if.then2.i.for.body.i.i_crit_edge:                ; preds = %if.then2.i
  br label %for.body.i.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15) #6
  br label %if.then3

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then2.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then2.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %16, i32 %i.06.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i.i, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #6
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %arrayidx.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %isd200_fix_driveid.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

isd200_fix_driveid.exit.i:                        ; preds = %for.body.i.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.74) #6
  %88 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %16, align 2
  %conv.i.i = zext i16 %89 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.75, i32 noundef %conv.i.i) #6
  %arrayidx1.i.i = getelementptr i16, ptr %16, i32 1
  %90 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %91 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.76, i32 noundef %conv2.i.i) #6
  %arrayidx3.i.i = getelementptr i16, ptr %16, i32 3
  %92 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %93 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.77, i32 noundef %conv4.i.i) #6
  %arrayidx5.i.i = getelementptr i16, ptr %16, i32 4
  %94 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %95 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.78, i32 noundef %conv6.i.i) #6
  %arrayidx7.i.i = getelementptr i16, ptr %16, i32 5
  %96 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx7.i.i, align 2
  %conv8.i.i = zext i16 %97 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.79, i32 noundef %conv8.i.i) #6
  %arrayidx9.i.i = getelementptr i16, ptr %16, i32 6
  %98 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx9.i.i, align 2
  %conv10.i.i = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.80, i32 noundef %conv10.i.i) #6
  %arrayidx11.i.i = getelementptr i16, ptr %16, i32 10
  %100 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %101 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.81, i32 noundef %conv12.i.i) #6
  %arrayidx13.i.i = getelementptr i16, ptr %16, i32 20
  %102 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx13.i.i, align 2
  %conv14.i.i = zext i16 %103 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.82, i32 noundef %conv14.i.i) #6
  %arrayidx15.i.i = getelementptr i16, ptr %16, i32 21
  %104 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx15.i.i, align 2
  %conv16.i.i = zext i16 %105 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.83, i32 noundef %conv16.i.i) #6
  %arrayidx17.i.i = getelementptr i16, ptr %16, i32 22
  %106 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx17.i.i, align 2
  %conv18.i.i = zext i16 %107 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.84, i32 noundef %conv18.i.i) #6
  %arrayidx19.i.i = getelementptr i16, ptr %16, i32 23
  %108 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %109 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.85, i32 noundef %conv20.i.i) #6
  %arrayidx21.i.i = getelementptr i16, ptr %16, i32 27
  %110 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx21.i.i, align 1
  %conv22.i.i = zext i8 %111 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.86, i32 noundef %conv22.i.i) #6
  %arrayidx23.i.i = getelementptr i16, ptr %16, i32 47
  %112 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx23.i.i, align 2
  %114 = and i16 %113, 255
  %and.i.i = zext i16 %114 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.87, i32 noundef %and.i.i) #6
  %arrayidx25.i.i = getelementptr i16, ptr %16, i32 48
  %115 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx25.i.i, align 2
  %conv26.i.i = zext i16 %116 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.88, i32 noundef %conv26.i.i) #6
  %arrayidx27.i.i = getelementptr i16, ptr %16, i32 49
  %117 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx27.i.i, align 2
  %119 = lshr i16 %118, 8
  %120 = zext i16 %119 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.89, i32 noundef %120) #6
  %arrayidx29.i.i = getelementptr i16, ptr %16, i32 51
  %121 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx29.i.i, align 2
  %123 = lshr i16 %122, 8
  %124 = zext i16 %123 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.90, i32 noundef %124) #6
  %arrayidx32.i.i = getelementptr i16, ptr %16, i32 52
  %125 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx32.i.i, align 2
  %127 = lshr i16 %126, 8
  %128 = zext i16 %127 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.91, i32 noundef %128) #6
  %arrayidx35.i.i = getelementptr i16, ptr %16, i32 53
  %129 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx35.i.i, align 2
  %conv36.i.i = zext i16 %130 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.92, i32 noundef %conv36.i.i) #6
  %arrayidx37.i.i = getelementptr i16, ptr %16, i32 54
  %131 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx37.i.i, align 2
  %conv38.i.i = zext i16 %132 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.93, i32 noundef %conv38.i.i) #6
  %arrayidx39.i.i = getelementptr i16, ptr %16, i32 55
  %133 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx39.i.i, align 2
  %conv40.i.i = zext i16 %134 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.94, i32 noundef %conv40.i.i) #6
  %arrayidx41.i.i = getelementptr i16, ptr %16, i32 56
  %135 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx41.i.i, align 2
  %conv42.i.i = zext i16 %136 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.95, i32 noundef %conv42.i.i) #6
  %arrayidx43.i.i = getelementptr i16, ptr %16, i32 58
  %137 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx43.i.i, align 2
  %conv44.i.i = zext i16 %138 to i32
  %shl.i121.i = shl nuw i32 %conv44.i.i, 16
  %arrayidx45.i.i = getelementptr i16, ptr %16, i32 57
  %139 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx45.i.i, align 2
  %conv46.i.i = zext i16 %140 to i32
  %or.i122.i = or i32 %shl.i121.i, %conv46.i.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.96, i32 noundef %or.i122.i) #6
  %arrayidx47.i.i = getelementptr i16, ptr %16, i32 59
  %141 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx47.i.i, align 2
  %143 = and i16 %142, 255
  %and49.i.i = zext i16 %143 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.97, i32 noundef %and49.i.i) #6
  %arrayidx50.i.i = getelementptr i16, ptr %16, i32 61
  %144 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx50.i.i, align 2
  %conv51.i.i = zext i16 %145 to i32
  %shl52.i.i = shl nuw i32 %conv51.i.i, 16
  %arrayidx53.i.i = getelementptr i16, ptr %16, i32 60
  %146 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx53.i.i, align 2
  %conv54.i.i = zext i16 %147 to i32
  %or55.i.i = or i32 %shl52.i.i, %conv54.i.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.98, i32 noundef %or55.i.i) #6
  %arrayidx56.i.i = getelementptr i16, ptr %16, i32 82
  %148 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx56.i.i, align 2
  %conv57.i.i = zext i16 %149 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.99, i32 noundef %conv57.i.i) #6
  %arrayidx58.i.i = getelementptr i16, ptr %16, i32 83
  %150 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx58.i.i, align 2
  %conv59.i.i = zext i16 %151 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.100, i32 noundef %conv59.i.i) #6
  %AdditionalLength.i = getelementptr inbounds %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 4
  %152 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 96)
  %153 = ptrtoint ptr %AdditionalLength.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 31, ptr %AdditionalLength.i, align 4
  %154 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx56.i.i, align 2
  %156 = and i16 %155, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool11.not.i13 = icmp eq i16 %156, 0
  br i1 %tobool11.not.i13, label %isd200_fix_driveid.exit.i.if.end.i14_crit_edge, label %if.then12.i

isd200_fix_driveid.exit.i.if.end.i14_crit_edge:   ; preds = %isd200_fix_driveid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14

if.then12.i:                                      ; preds = %isd200_fix_driveid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %DeviceTypeModifier.i = getelementptr inbounds %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %DeviceTypeModifier.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -128, ptr %DeviceTypeModifier.i, align 1
  %158 = ptrtoint ptr %DeviceFlags.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %DeviceFlags.i, align 1
  %160 = or i8 %159, 4
  store i8 %160, ptr %DeviceFlags.i, align 1
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.then12.i, %isd200_fix_driveid.exit.i.if.end.i14_crit_edge
  %VendorId.i = getelementptr inbounds %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 7
  %161 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx21.i.i, align 2
  %163 = ptrtoint ptr %VendorId.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %VendorId.i, align 8
  %arrayidx21.1.i = getelementptr i16, ptr %16, i32 28
  %164 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx21.1.i, align 2
  %arrayidx22.1.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %166 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %arrayidx22.1.i, align 2
  %arrayidx21.2.i = getelementptr i16, ptr %16, i32 29
  %167 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx21.2.i, align 2
  %arrayidx22.2.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 7, i32 4
  %169 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %arrayidx22.2.i, align 4
  %arrayidx21.3.i = getelementptr i16, ptr %16, i32 30
  %170 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx21.3.i, align 2
  %arrayidx22.3.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 7, i32 6
  %172 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %arrayidx22.3.i, align 2
  %arrayidx23.i = getelementptr i16, ptr %16, i32 31
  %ProductId.i = getelementptr inbounds %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8
  %173 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx23.i, align 2
  %175 = ptrtoint ptr %ProductId.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %ProductId.i, align 8
  %arrayidx30.1.i = getelementptr i16, ptr %16, i32 32
  %176 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx30.1.i, align 2
  %arrayidx31.1.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %178 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %arrayidx31.1.i, align 2
  %arrayidx30.2.i = getelementptr i16, ptr %16, i32 33
  %179 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx30.2.i, align 2
  %arrayidx31.2.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 4
  %181 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %arrayidx31.2.i, align 4
  %arrayidx30.3.i = getelementptr i16, ptr %16, i32 34
  %182 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %arrayidx30.3.i, align 2
  %arrayidx31.3.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 6
  %184 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %arrayidx31.3.i, align 2
  %arrayidx30.4.i = getelementptr i16, ptr %16, i32 35
  %185 = ptrtoint ptr %arrayidx30.4.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx30.4.i, align 2
  %arrayidx31.4.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 8
  %187 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %arrayidx31.4.i, align 8
  %arrayidx30.5.i = getelementptr i16, ptr %16, i32 36
  %188 = ptrtoint ptr %arrayidx30.5.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx30.5.i, align 2
  %arrayidx31.5.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 10
  %190 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %arrayidx31.5.i, align 2
  %arrayidx30.6.i = getelementptr i16, ptr %16, i32 37
  %191 = ptrtoint ptr %arrayidx30.6.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx30.6.i, align 2
  %arrayidx31.6.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 12
  %193 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %arrayidx31.6.i, align 4
  %arrayidx30.7.i = getelementptr i16, ptr %16, i32 38
  %194 = ptrtoint ptr %arrayidx30.7.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx30.7.i, align 2
  %arrayidx31.7.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 8, i32 14
  %196 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %arrayidx31.7.i, align 2
  %ProductRevisionLevel.i = getelementptr inbounds %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 9
  %197 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %arrayidx19.i.i, align 2
  %199 = ptrtoint ptr %ProductRevisionLevel.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %ProductRevisionLevel.i, align 8
  %arrayidx42.1.i = getelementptr i16, ptr %16, i32 24
  %200 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %arrayidx42.1.i, align 2
  %arrayidx43.1.i = getelementptr %struct.inquiry_data, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %202 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %arrayidx43.1.i, align 2
  %203 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx58.i.i, align 2
  %205 = and i16 %204, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %tobool50.not.i = icmp eq i16 %205, 0
  br i1 %tobool50.not.i, label %if.else56.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16) #6
  %206 = ptrtoint ptr %DeviceFlags.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %DeviceFlags.i, align 1
  %208 = or i8 %207, 2
  br label %if.end61.i

if.else56.i:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %DeviceFlags.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %DeviceFlags.i, align 1
  %211 = and i8 %210, -3
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else56.i, %if.then51.i
  %storemerge.i = phi i8 [ %211, %if.else56.i ], [ %208, %if.then51.i ]
  %212 = ptrtoint ptr %DeviceFlags.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %storemerge.i, ptr %DeviceFlags.i, align 1
  br label %if.else4

if.else63.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %protocol_name.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 12
  %213 = ptrtoint ptr %protocol_name.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.17, ptr %protocol_name.i, align 4
  %proto_handler.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 21
  %214 = ptrtoint ptr %proto_handler.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @usb_stor_transparent_scsi_command, ptr %proto_handler.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #6
  %215 = ptrtoint ptr %extra_destructor.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %extra_destructor.i, align 4
  tail call void %216(ptr noundef nonnull %call7.i.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %217 = ptrtoint ptr %extra.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %extra.i, align 4
  %218 = ptrtoint ptr %extra_destructor.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %extra_destructor.i, align 4
  br label %if.else4

if.then3:                                         ; preds = %if.then6.i, %isd200_manual_enum.exit.i.if.then3_crit_edge, %isd200_manual_enum.exit.thread.i
  %retStatus.1.i.ph = phi i32 [ -1, %isd200_manual_enum.exit.thread.i ], [ -1, %if.then6.i ], [ %retStatus.3.i.i, %isd200_manual_enum.exit.i.if.then3_crit_edge ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19, i32 noundef %retStatus.1.i.ph) #6
  br label %if.end5

if.else4:                                         ; preds = %if.else63.i, %if.end61.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3, %isd200_free_info_ptrs.exit.i, %entry.if.end5_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.then3 ], [ @.str.13, %if.else4 ], [ @.str.11, %isd200_free_info_ptrs.exit.i ], [ @.str.11, %entry.if.end5_crit_edge ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %.str.12.sink) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isd200_free_info_ptrs(ptr noundef readonly %info_) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info_, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.isd200_info, ptr %info_, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  tail call void @kfree(ptr noundef %1) #6
  %RegsBuf = getelementptr inbounds %struct.isd200_info, ptr %info_, i32 0, i32 3
  %2 = ptrtoint ptr %RegsBuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %RegsBuf, align 4
  tail call void @kfree(ptr noundef %3) #6
  %sense_buffer = getelementptr inbounds %struct.isd200_info, ptr %info_, i32 0, i32 9, i32 21
  %4 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sense_buffer, align 4
  tail call void @kfree(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isd200_action(ptr noundef %us, i32 noundef %action, ptr noundef %pointer, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %srb1 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9
  %cmnd = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 8
  %cmnd2 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 16
  %2 = ptrtoint ptr %cmnd2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmnd, ptr %cmnd2, align 4
  %device = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @isd200_action.srb_dev, ptr %device, align 4
  %ATAMajorCommand = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %ATAMajorCommand to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ATAMajorCommand, align 4
  %ATAMinorCommand = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %ATAMinorCommand to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ATAMinorCommand, align 1
  %8 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %action, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb4
    i32 1, label %sw.bb7
    i32 2, label %sw.bb10
    i32 3, label %sw.bb14
    i32 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.66) #6
  %tobool.not.i = icmp eq ptr %pointer, null
  br i1 %tobool.not.i, label %sw.bb.isd200_set_srb.exit_crit_edge, label %if.then.i

sw.bb.isd200_set_srb.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_set_srb.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %sg.i = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 10
  tail call void @sg_init_one(ptr noundef %sg.i, ptr noundef nonnull %pointer, i32 noundef %value) #6
  br label %isd200_set_srb.exit

isd200_set_srb.exit:                              ; preds = %if.then.i, %sw.bb.isd200_set_srb.exit_crit_edge
  %sc_data_direction.i = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 15
  %9 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %sc_data_direction.i, align 4
  %sg3.i = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 10
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %sg3.i
  %sdb.i = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17
  %10 = ptrtoint ptr %sdb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select.i, ptr %sdb.i, align 4
  %length.i = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 1
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %value, ptr %length.i, align 4
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.67, i32 noundef %value) #6
  %conv = trunc i32 %value to i8
  %sc_data_direction.i56 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 15
  %12 = ptrtoint ptr %sc_data_direction.i56 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %sc_data_direction.i56, align 4
  %sdb.i58 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17
  %13 = ptrtoint ptr %sdb.i58 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sdb.i58, align 4
  %length.i59 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 1
  %14 = ptrtoint ptr %length.i59 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %length.i59, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.68) #6
  %sc_data_direction.i61 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 15
  %15 = ptrtoint ptr %sc_data_direction.i61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %sc_data_direction.i61, align 4
  %sdb.i63 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17
  %16 = ptrtoint ptr %sdb.i63 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sdb.i63, align 4
  %length.i64 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 1
  %17 = ptrtoint ptr %length.i64 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %length.i64, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.69) #6
  %sc_data_direction.i66 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 15
  %18 = ptrtoint ptr %sc_data_direction.i66 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %sc_data_direction.i66, align 4
  %sdb.i68 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17
  %19 = ptrtoint ptr %sdb.i68 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sdb.i68, align 4
  %length.i69 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 1
  %20 = ptrtoint ptr %length.i69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %length.i69, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.70) #6
  %DeviceHead = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %DeviceHead to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %DeviceHead, align 4
  %sc_data_direction.i71 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 15
  %23 = ptrtoint ptr %sc_data_direction.i71 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %sc_data_direction.i71, align 4
  %sdb.i73 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17
  %24 = ptrtoint ptr %sdb.i73 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sdb.i73, align 4
  %length.i74 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 1
  %25 = ptrtoint ptr %length.i74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %length.i74, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.71) #6
  %id = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %id, align 4
  %tobool.not.i76 = icmp eq ptr %27, null
  br i1 %tobool.not.i76, label %sw.bb18.isd200_set_srb.exit87_crit_edge, label %if.then.i78

sw.bb18.isd200_set_srb.exit87_crit_edge:          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_set_srb.exit87

if.then.i78:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %sg.i77 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 10
  tail call void @sg_init_one(ptr noundef %sg.i77, ptr noundef nonnull %27, i32 noundef 512) #6
  br label %isd200_set_srb.exit87

isd200_set_srb.exit87:                            ; preds = %if.then.i78, %sw.bb18.isd200_set_srb.exit87_crit_edge
  %sc_data_direction.i79 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 15
  %28 = ptrtoint ptr %sc_data_direction.i79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %sc_data_direction.i79, align 4
  %sg3.i80 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 10
  %spec.select.i81 = select i1 %tobool.not.i76, ptr null, ptr %sg3.i80
  %sdb.i82 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17
  %29 = ptrtoint ptr %sdb.i82 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select.i81, ptr %sdb.i82, align 4
  %length.i83 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 1
  %30 = ptrtoint ptr %length.i83 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %length.i83, align 4
  %not.tobool.not.i84 = xor i1 %tobool.not.i76, true
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.72, i32 noundef %action) #6
  br label %cleanup

sw.epilog:                                        ; preds = %isd200_set_srb.exit87, %sw.bb14, %sw.bb10, %sw.bb7, %sw.bb4, %isd200_set_srb.exit
  %cond6.i85.sink.shrunk = phi i1 [ %not.tobool.not.i84, %isd200_set_srb.exit87 ], [ false, %sw.bb14 ], [ false, %sw.bb10 ], [ false, %sw.bb7 ], [ false, %sw.bb4 ], [ %not.tobool.not.i, %isd200_set_srb.exit ]
  %ata.sroa.8.0 = phi i8 [ 0, %isd200_set_srb.exit87 ], [ 34, %sw.bb14 ], [ 30, %sw.bb10 ], [ 30, %sw.bb7 ], [ 62, %sw.bb4 ], [ 5, %isd200_set_srb.exit ]
  %ata.sroa.14.0 = phi i8 [ -128, %isd200_set_srb.exit87 ], [ -64, %sw.bb14 ], [ 1, %sw.bb10 ], [ 1, %sw.bb7 ], [ 64, %sw.bb4 ], [ -78, %isd200_set_srb.exit ]
  %ata.sroa.23.0 = phi i8 [ 0, %isd200_set_srb.exit87 ], [ 0, %sw.bb14 ], [ 0, %sw.bb10 ], [ 4, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %isd200_set_srb.exit ]
  %ata.sroa.31.0 = phi i8 [ 0, %isd200_set_srb.exit87 ], [ %22, %sw.bb14 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ %conv, %sw.bb4 ], [ 0, %isd200_set_srb.exit ]
  %ata.sroa.34.0 = phi i8 [ -20, %isd200_set_srb.exit87 ], [ 8, %sw.bb14 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %isd200_set_srb.exit ]
  %cond6.i85.sink = zext i1 %cond6.i85.sink.shrunk to i32
  %nents.i86 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 17, i32 0, i32 1
  %31 = ptrtoint ptr %nents.i86 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond6.i85.sink, ptr %nents.i86, align 4
  %32 = ptrtoint ptr %cmnd2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmnd2, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %5, ptr %33, align 1
  %ata.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 1
  %35 = ptrtoint ptr %ata.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %7, ptr %ata.sroa.6.0..sroa_idx, align 1
  %ata.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 2
  %36 = ptrtoint ptr %ata.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %ata.sroa.8.0, ptr %ata.sroa.8.0..sroa_idx, align 1
  %ata.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 3
  %37 = ptrtoint ptr %ata.sroa.14.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %ata.sroa.14.0, ptr %ata.sroa.14.0..sroa_idx, align 1
  %ata.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 4
  %38 = ptrtoint ptr %ata.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %ata.sroa.21.0..sroa_idx, align 1
  %ata.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 5
  %39 = ptrtoint ptr %ata.sroa.23.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %ata.sroa.23.0, ptr %ata.sroa.23.0..sroa_idx, align 1
  %ata.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 6
  %ata.sroa.31.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 11
  %40 = call ptr @memset(ptr %ata.sroa.26.0..sroa_idx, i32 0, i32 5)
  %41 = ptrtoint ptr %ata.sroa.31.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %ata.sroa.31.0, ptr %ata.sroa.31.0..sroa_idx, align 1
  %ata.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 12
  %42 = ptrtoint ptr %ata.sroa.34.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %ata.sroa.34.0, ptr %ata.sroa.34.0..sroa_idx, align 1
  %ata.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 13
  %43 = ptrtoint ptr %ata.sroa.37.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ata.sroa.37.0..sroa_idx, align 1
  %ata.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 14
  %44 = ptrtoint ptr %ata.sroa.38.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %ata.sroa.38.0..sroa_idx, align 1
  %ata.sroa.39.0..sroa_idx = getelementptr inbounds i8, ptr %33, i32 15
  %45 = ptrtoint ptr %ata.sroa.39.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %ata.sroa.39.0..sroa_idx, align 1
  %cmd_len = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 9, i32 14
  %46 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 16, ptr %cmd_len, align 4
  %call = tail call i32 @usb_stor_Bulk_transport(ptr noundef %srb1, ptr noundef %us) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.else

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.73, i32 noundef %action, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %if.else ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_transparent_scsi_command(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isd200_try_enum(ptr noundef %us, i8 noundef zeroext %master_slave, i32 noundef %detect) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %RegsBuf = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %RegsBuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %RegsBuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %detect)
  %tobool.not = icmp eq i32 %detect, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %. = select i1 %tobool.not, i32 3500, i32 3000
  %add1 = add i32 %4, %.
  %arrayidx = getelementptr i8, ptr %3, i32 7
  %arrayidx39 = getelementptr i8, ptr %3, i32 5
  %arrayidx43 = getelementptr i8, ptr %3, i32 4
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end62.while.cond.outer_crit_edge, %entry
  %master_slave.addr.0.ph = phi i8 [ %master_slave.addr.1, %if.end62.while.cond.outer_crit_edge ], [ %master_slave, %entry ]
  %recheckAsMaster.0.ph = phi i32 [ %recheckAsMaster.1, %if.end62.while.cond.outer_crit_edge ], [ 0, %entry ]
  %conv = zext i8 %master_slave.addr.0.ph to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %master_slave.addr.0.ph)
  %cmp16 = icmp eq i8 %master_slave.addr.0.ph, -96
  %cond = select i1 %cmp16, ptr @.str.44, ptr @.str.45
  br label %while.cond

while.cond:                                       ; preds = %if.end62.thread.while.cond_crit_edge, %while.cond.outer
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extra, align 4
  %srb1.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9
  %cmnd.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 8
  %cmnd2.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 16
  %7 = ptrtoint ptr %cmnd2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmnd.i, ptr %cmnd2.i, align 4
  %device.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @isd200_action.srb_dev, ptr %device.i, align 4
  %ATAMajorCommand.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %ATAMajorCommand.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ATAMajorCommand.i, align 4
  %ATAMinorCommand.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %ATAMinorCommand.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ATAMinorCommand.i, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.67, i32 noundef %conv) #6
  %sc_data_direction.i56.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 15
  %13 = ptrtoint ptr %sc_data_direction.i56.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %sc_data_direction.i56.i, align 4
  %sdb.i58.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 17
  %14 = ptrtoint ptr %sdb.i58.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sdb.i58.i, align 4
  %length.i59.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 17, i32 1
  %15 = ptrtoint ptr %length.i59.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %length.i59.i, align 4
  %nents.i86.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 17, i32 0, i32 1
  %16 = ptrtoint ptr %nents.i86.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nents.i86.i, align 4
  %17 = ptrtoint ptr %cmnd2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmnd2.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %10, ptr %18, align 1
  %ata.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 1
  %20 = ptrtoint ptr %ata.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %12, ptr %ata.sroa.6.0..sroa_idx.i, align 1
  %ata.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 2
  %21 = ptrtoint ptr %ata.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 62, ptr %ata.sroa.8.0..sroa_idx.i, align 1
  %ata.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 3
  %22 = ptrtoint ptr %ata.sroa.14.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %ata.sroa.14.0..sroa_idx.i, align 1
  %ata.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 4
  %23 = ptrtoint ptr %ata.sroa.21.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ata.sroa.21.0..sroa_idx.i, align 1
  %ata.sroa.23.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 5
  %ata.sroa.31.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 11
  %24 = call ptr @memset(ptr %ata.sroa.23.0..sroa_idx.i, i32 0, i32 6)
  %25 = ptrtoint ptr %ata.sroa.31.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %master_slave.addr.0.ph, ptr %ata.sroa.31.0..sroa_idx.i, align 1
  %ata.sroa.34.0..sroa_idx.i = getelementptr inbounds i8, ptr %18, i32 12
  %cmd_len.i = getelementptr inbounds %struct.isd200_info, ptr %6, i32 0, i32 9, i32 14
  %26 = ptrtoint ptr %ata.sroa.34.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %ata.sroa.34.0..sroa_idx.i, align 1
  %27 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 16, ptr %cmd_len.i, align 4
  %call.i = tail call i32 @usb_stor_Bulk_transport(ptr noundef %srb1.i, ptr noundef %us) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end4, label %isd200_action.exit

isd200_action.exit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.73, i32 noundef 4, i32 noundef %call.i) #6
  br label %while.end

if.end4:                                          ; preds = %while.cond
  %call5 = tail call fastcc i32 @isd200_action(ptr noundef %us, i32 noundef 0, ptr noundef %3, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9:                                          ; preds = %if.end4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  br i1 %tobool.not, label %if.then11, label %if.else24

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool13.not = icmp sgt i8 %29, -1
  br i1 %tobool13.not, label %if.else18, label %if.end62.thread

if.else18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond) #6
  br label %while.end

if.else24:                                        ; preds = %if.end9
  %conv26 = zext i8 %29 to i32
  %and27 = and i32 %conv26, 161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else30, label %if.else24.if.end62_crit_edge

if.else24.if.end62_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.else30:                                        ; preds = %if.else24
  %and33 = and i32 %conv26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.48) #6
  %DeviceFlags = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %DeviceFlags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %DeviceFlags, align 1
  %32 = or i8 %31, 1
  store i8 %32, ptr %DeviceFlags, align 1
  %DeviceHead = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %DeviceHead to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %master_slave.addr.0.ph, ptr %DeviceHead, align 4
  br label %while.end

if.else38:                                        ; preds = %if.else30
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %35)
  %cmp41 = icmp eq i8 %35, -21
  br i1 %cmp41, label %land.lhs.true, label %if.else38.if.else58_crit_edge

if.else38.if.else58_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58

land.lhs.true:                                    ; preds = %if.else38
  %36 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %37)
  %cmp45 = icmp eq i8 %37, 20
  br i1 %cmp45, label %if.then47, label %land.lhs.true.if.else58_crit_edge

land.lhs.true.if.else58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58

if.then47:                                        ; preds = %land.lhs.true
  %and49 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp ne i32 %and49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recheckAsMaster.0.ph)
  %tobool52.not = icmp eq i32 %recheckAsMaster.0.ph, 0
  %or.cond = select i1 %tobool50.not, i1 %tobool52.not, i1 false
  br i1 %or.cond, label %if.then47.if.end62_crit_edge, label %if.else54

if.then47.if.end62_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.else54:                                        ; preds = %if.then47
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.50) #6
  %DeviceHead55 = getelementptr inbounds %struct.isd200_info, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %DeviceHead55 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %master_slave.addr.0.ph, ptr %DeviceHead55, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.54) #6
  %39 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extra, align 4
  %srb1.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9
  %cmnd.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 8
  %cmnd2.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 16
  %41 = ptrtoint ptr %cmnd2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cmnd.i.i, ptr %cmnd2.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %device.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @isd200_action.srb_dev, ptr %device.i.i, align 4
  %ATAMajorCommand.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %ATAMajorCommand.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ATAMajorCommand.i.i, align 4
  %ATAMinorCommand.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %ATAMinorCommand.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ATAMinorCommand.i.i, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.70) #6
  %DeviceHead.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 5
  %47 = ptrtoint ptr %DeviceHead.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %DeviceHead.i.i, align 4
  %sc_data_direction.i71.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 15
  %49 = ptrtoint ptr %sc_data_direction.i71.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %sc_data_direction.i71.i.i, align 4
  %sdb.i73.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 17
  %50 = ptrtoint ptr %sdb.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %sdb.i73.i.i, align 4
  %length.i74.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 17, i32 1
  %51 = ptrtoint ptr %length.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %length.i74.i.i, align 4
  %nents.i86.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 17, i32 0, i32 1
  %52 = ptrtoint ptr %nents.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %nents.i86.i.i, align 4
  %53 = ptrtoint ptr %cmnd2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmnd2.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %44, ptr %54, align 1
  %ata.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 1
  %56 = ptrtoint ptr %ata.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %46, ptr %ata.sroa.6.0..sroa_idx.i.i, align 1
  %ata.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 2
  %57 = ptrtoint ptr %ata.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 34, ptr %ata.sroa.8.0..sroa_idx.i.i, align 1
  %ata.sroa.14.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 3
  %58 = ptrtoint ptr %ata.sroa.14.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -64, ptr %ata.sroa.14.0..sroa_idx.i.i, align 1
  %ata.sroa.21.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 4
  %59 = ptrtoint ptr %ata.sroa.21.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %ata.sroa.21.0..sroa_idx.i.i, align 1
  %ata.sroa.23.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 5
  %ata.sroa.31.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 11
  %60 = call ptr @memset(ptr %ata.sroa.23.0..sroa_idx.i.i, i32 0, i32 6)
  %61 = ptrtoint ptr %ata.sroa.31.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %48, ptr %ata.sroa.31.0..sroa_idx.i.i, align 1
  %ata.sroa.34.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 12
  %62 = ptrtoint ptr %ata.sroa.34.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 8, ptr %ata.sroa.34.0..sroa_idx.i.i, align 1
  %ata.sroa.37.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 13
  %63 = ptrtoint ptr %ata.sroa.37.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ata.sroa.37.0..sroa_idx.i.i, align 1
  %ata.sroa.38.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 14
  %64 = ptrtoint ptr %ata.sroa.38.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %ata.sroa.38.0..sroa_idx.i.i, align 1
  %ata.sroa.39.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %54, i32 15
  %65 = ptrtoint ptr %ata.sroa.39.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %ata.sroa.39.0..sroa_idx.i.i, align 1
  %cmd_len.i.i = getelementptr inbounds %struct.isd200_info, ptr %40, i32 0, i32 9, i32 14
  %66 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 16, ptr %cmd_len.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_Bulk_transport(ptr noundef %srb1.i.i, ptr noundef %us) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.else54.isd200_atapi_soft_reset.exit_crit_edge, label %if.then.i

if.else54.isd200_atapi_soft_reset.exit_crit_edge: ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  br label %isd200_atapi_soft_reset.exit

if.then.i:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.73, i32 noundef 3, i32 noundef %call.i.i) #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.55) #6
  br label %isd200_atapi_soft_reset.exit

isd200_atapi_soft_reset.exit:                     ; preds = %if.then.i, %if.else54.isd200_atapi_soft_reset.exit_crit_edge
  %retStatus.0.i = phi i32 [ -1, %if.then.i ], [ 0, %if.else54.isd200_atapi_soft_reset.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.56, i32 noundef %retStatus.0.i) #6
  br label %while.end

if.else58:                                        ; preds = %land.lhs.true.if.else58_crit_edge, %if.else38.if.else58_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.51) #6
  br label %while.end

if.end62:                                         ; preds = %if.then47.if.end62_crit_edge, %if.else24.if.end62_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %if.else24.if.end62_crit_edge ], [ @.str.49, %if.then47.if.end62_crit_edge ]
  %master_slave.addr.1 = phi i8 [ %master_slave.addr.0.ph, %if.else24.if.end62_crit_edge ], [ -96, %if.then47.if.end62_crit_edge ]
  %recheckAsMaster.1 = phi i32 [ %recheckAsMaster.0.ph, %if.else24.if.end62_crit_edge ], [ 1, %if.then47.if.end62_crit_edge ]
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %.str.47.sink) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %67, %add1
  %cmp63 = icmp sgt i32 %sub, -1
  br i1 %cmp63, label %if.else68, label %if.end62.while.cond.outer_crit_edge

if.end62.while.cond.outer_crit_edge:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer

if.end62.thread:                                  ; preds = %if.then11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub104 = sub i32 %68, %add1
  %cmp63105 = icmp sgt i32 %sub104, -1
  br i1 %cmp63105, label %if.then67, label %if.end62.thread.while.cond_crit_edge

if.end62.thread.while.cond_crit_edge:             ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then67:                                        ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.52) #6
  br label %while.end

if.else68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.53) #6
  br label %while.end

while.end:                                        ; preds = %if.else68, %if.then67, %if.else58, %isd200_atapi_soft_reset.exit, %if.then35, %if.else18, %if.end4.while.end_crit_edge, %isd200_action.exit
  %status.0 = phi i32 [ -1, %isd200_action.exit ], [ 0, %if.else68 ], [ 0, %if.then67 ], [ 0, %if.then35 ], [ %retStatus.0.i, %isd200_atapi_soft_reset.exit ], [ 0, %if.else58 ], [ 0, %if.else18 ], [ -1, %if.end4.while.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ctrl_transfer(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isd200_log_config(ptr noundef %us, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ConfigData = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %ConfigData to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ConfigData, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.27, i32 noundef %conv) #6
  %ExternalClock = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %ExternalClock to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ExternalClock, align 1
  %conv2 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.28, i32 noundef %conv2) #6
  %ATAInitTimeout = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %ATAInitTimeout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ATAInitTimeout, align 2
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.29, i32 noundef %conv4) #6
  %ATAConfig = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %ATAConfig to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ATAConfig, align 1
  %8 = lshr i8 %7, 6
  %9 = and i8 %8, 2
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.30, i32 noundef %10) #6
  %11 = ptrtoint ptr %ATAConfig to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ATAConfig, align 1
  %13 = and i8 %12, 32
  %and10 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31, i32 noundef %and10) #6
  %14 = ptrtoint ptr %ATAConfig to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ATAConfig, align 1
  %16 = and i8 %15, 16
  %and14 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32, i32 noundef %and14) #6
  %17 = ptrtoint ptr %ATAConfig to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ATAConfig, align 1
  %19 = and i8 %18, 15
  %and18 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33, i32 noundef %and18) #6
  %ATAMajorCommand = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %ATAMajorCommand to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ATAMajorCommand, align 4
  %conv20 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %conv20) #6
  %ATAMinorCommand = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %ATAMinorCommand to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ATAMinorCommand, align 1
  %conv22 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.35, i32 noundef %conv22) #6
  %ATAExtraConfig = getelementptr inbounds %struct.isd200_info, ptr %info, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ATAExtraConfig, align 2
  %26 = and i8 %25, -128
  %and25 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.36, i32 noundef %and25) #6
  %27 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ATAExtraConfig, align 2
  %29 = and i8 %28, 64
  %and29 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.37, i32 noundef %and29) #6
  %30 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ATAExtraConfig, align 2
  %32 = and i8 %31, 32
  %and33 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.38, i32 noundef %and33) #6
  %33 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ATAExtraConfig, align 2
  %35 = and i8 %34, 16
  %and37 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.39, i32 noundef %and37) #6
  %36 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ATAExtraConfig, align 2
  %38 = and i8 %37, 8
  %and41 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.40, i32 noundef %and41) #6
  %39 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ATAExtraConfig, align 2
  %41 = and i8 %40, 7
  %and45 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.41, i32 noundef %and45) #6
  %42 = ptrtoint ptr %ATAExtraConfig to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ATAExtraConfig, align 2
  %44 = and i8 %43, 1
  %and49 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.42, i32 noundef %and49) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_transport(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/isd200.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/isd200.c", i32 54, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/isd200.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/isd200.c", i32 56, i32 1}
!9 = !{ptr @__initcall__kmod_ums_isd200__295_1573_isd200_driver_init6, !10, !"__initcall__kmod_ums_isd200__295_1573_isd200_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/isd200.c", i32 1573, i32 1}
!11 = !{ptr @__exitcall_isd200_driver_exit, !10, !"__exitcall_isd200_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @isd200_host_template, !15, !"isd200_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/isd200.c", i32 1538, i32 34}
!16 = !{ptr @isd200_driver, !17, !"isd200_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/isd200.c", i32 1559, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/isd200.c", i32 1552, i32 22}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_isd200.h", i32 9, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/unusual_isd200.h", i32 15, i32 1}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/unusual_isd200.h", i32 33, i32 1}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/unusual_isd200.h", i32 39, i32 1}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @isd200_unusual_dev_list, !32, !"isd200_unusual_dev_list", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/isd200.c", i32 92, i32 30}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/storage/isd200.c", i32 1484, i32 19}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/storage/isd200.c", i32 1489, i32 20}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/storage/isd200.c", i32 1494, i32 21}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/storage/isd200.c", i32 1496, i32 21}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/storage/isd200.c", i32 1111, i32 19}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/storage/isd200.c", i32 1129, i32 22}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/storage/isd200.c", i32 1172, i32 23}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/storage/isd200.c", i32 1191, i32 24}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/storage/isd200.c", i32 1194, i32 21}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/storage/isd200.c", i32 1205, i32 19}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/storage/isd200.c", i32 1021, i32 19}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/storage/isd200.c", i32 1040, i32 21}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/storage/isd200.c", i32 1048, i32 19}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/storage/isd200.c", i32 803, i32 19}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/storage/isd200.c", i32 820, i32 20}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/storage/isd200.c", i32 825, i32 20}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/storage/isd200.c", i32 829, i32 19}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/storage/isd200.c", i32 711, i32 19}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/storage/isd200.c", i32 713, i32 19}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/storage/isd200.c", i32 715, i32 19}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/storage/isd200.c", i32 717, i32 19}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/storage/isd200.c", i32 719, i32 19}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/storage/isd200.c", i32 721, i32 19}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/storage/isd200.c", i32 723, i32 19}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/storage/isd200.c", i32 725, i32 19}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/storage/isd200.c", i32 727, i32 19}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/storage/isd200.c", i32 729, i32 19}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/storage/isd200.c", i32 731, i32 19}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/storage/isd200.c", i32 733, i32 19}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/storage/isd200.c", i32 735, i32 19}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/storage/isd200.c", i32 737, i32 19}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/storage/isd200.c", i32 739, i32 19}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/storage/isd200.c", i32 741, i32 19}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/storage/isd200.c", i32 937, i32 22}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/storage/isd200.c", i32 939, i32 11}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/storage/isd200.c", i32 939, i32 22}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/storage/isd200.c", i32 941, i32 22}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/storage/isd200.c", i32 952, i32 21}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/storage/isd200.c", i32 956, i32 21}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/storage/isd200.c", i32 979, i32 22}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/storage/isd200.c", i32 983, i32 22}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/storage/isd200.c", i32 990, i32 21}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/storage/isd200.c", i32 997, i32 22}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/storage/isd200.c", i32 999, i32 22}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/storage/isd200.c", i32 847, i32 19}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/storage/isd200.c", i32 851, i32 20}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/storage/isd200.c", i32 855, i32 19}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/storage/isd200.c", i32 873, i32 19}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/storage/isd200.c", i32 879, i32 20}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/storage/isd200.c", i32 887, i32 21}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/storage/isd200.c", i32 895, i32 19}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/storage/isd200.c", i32 761, i32 19}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/storage/isd200.c", i32 762, i32 19}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/storage/isd200.c", i32 778, i32 20}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/storage/isd200.c", i32 780, i32 20}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/storage/isd200.c", i32 784, i32 19}
!145 = !{ptr @isd200_action.srb_dev, !146, !"srb_dev", i1 false, i1 false}
!146 = !{!"../drivers/usb/storage/isd200.c", i32 482, i32 28}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/storage/isd200.c", i32 497, i32 20}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/storage/isd200.c", i32 506, i32 20}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/storage/isd200.c", i32 516, i32 20}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/storage/isd200.c", i32 525, i32 20}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/storage/isd200.c", i32 534, i32 20}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/storage/isd200.c", i32 543, i32 20}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/storage/isd200.c", i32 551, i32 20}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/storage/isd200.c", i32 561, i32 20}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/storage/isd200.c", i32 1068, i32 19}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/storage/isd200.c", i32 1069, i32 19}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/storage/isd200.c", i32 1070, i32 19}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/storage/isd200.c", i32 1071, i32 19}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/storage/isd200.c", i32 1072, i32 19}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/storage/isd200.c", i32 1073, i32 19}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/storage/isd200.c", i32 1074, i32 19}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/storage/isd200.c", i32 1075, i32 19}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/storage/isd200.c", i32 1076, i32 19}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/storage/isd200.c", i32 1077, i32 19}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/storage/isd200.c", i32 1078, i32 19}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/storage/isd200.c", i32 1079, i32 19}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/storage/isd200.c", i32 1080, i32 19}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/storage/isd200.c", i32 1081, i32 19}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/storage/isd200.c", i32 1082, i32 19}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/storage/isd200.c", i32 1083, i32 19}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/storage/isd200.c", i32 1084, i32 19}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/storage/isd200.c", i32 1085, i32 19}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/storage/isd200.c", i32 1086, i32 19}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/storage/isd200.c", i32 1087, i32 19}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/storage/isd200.c", i32 1088, i32 19}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/storage/isd200.c", i32 1089, i32 19}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/storage/isd200.c", i32 1090, i32 19}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/storage/isd200.c", i32 1091, i32 19}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/storage/isd200.c", i32 1092, i32 19}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/storage/isd200.c", i32 1093, i32 19}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/storage/isd200.c", i32 1094, i32 19}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/storage/isd200.c", i32 1521, i32 20}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/storage/isd200.c", i32 1236, i32 20}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/storage/isd200.c", i32 1246, i32 20}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/storage/isd200.c", i32 1260, i32 21}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/storage/isd200.c", i32 1267, i32 20}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/storage/isd200.c", i32 1289, i32 20}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/storage/isd200.c", i32 1308, i32 20}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/storage/isd200.c", i32 1340, i32 20}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/storage/isd200.c", i32 1372, i32 20}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/storage/isd200.c", i32 1375, i32 21}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/storage/isd200.c", i32 1386, i32 21}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/storage/isd200.c", i32 1393, i32 20}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/storage/isd200.c", i32 1397, i32 21}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/storage/isd200.c", i32 1404, i32 21}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/storage/isd200.c", i32 1412, i32 21}
!247 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/storage/isd200.c", i32 1419, i32 20}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/storage/isd200.c", i32 625, i32 20}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/storage/isd200.c", i32 637, i32 20}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/storage/isd200.c", i32 642, i32 20}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/storage/isd200.c", i32 647, i32 20}
!257 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/storage/isd200.c", i32 653, i32 20}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/storage/isd200.c", i32 665, i32 20}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/storage/isd200.c", i32 672, i32 21}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/storage/isd200.c", i32 584, i32 19}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/storage/isd200.c", i32 589, i32 20}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/storage/isd200.c", i32 593, i32 20}
!269 = !{ptr @isd200_usb_ids, !270, !"isd200_usb_ids", i1 false, i1 false}
!270 = !{!"../drivers/usb/storage/isd200.c", i32 70, i32 29}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{!"auto-init"}
