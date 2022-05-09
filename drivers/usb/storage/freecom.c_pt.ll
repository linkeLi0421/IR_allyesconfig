; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/freecom.c_pt.bc'
source_filename = "../drivers/usb/storage/freecom.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.freecom_cb_wrap = type { i8, i8, [12 x i8], [50 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.freecom_xfer_wrap = type <{ i8, i8, i32, [58 x i8] }>

@__UNIQUE_ID_description290 = internal constant [59 x i8] c"ums_freecom.description=Driver for Freecom USB/IDE adaptor\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [56 x i8] c"ums_freecom.author=David Brown <usb-storage@davidb.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"ums_freecom.file=drivers/usb/storage/ums-freecom\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"ums_freecom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [34 x i8] c"ums_freecom.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_freecom__295_578_freecom_driver_init6 = internal global ptr @freecom_driver_init, section ".initcall6.init", align 4
@freecom_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @freecom_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @freecom_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_freecom_driver_exit = internal global ptr @freecom_driver_exit, section ".exitcall.exit", align 4
@freecom_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums-freecom\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums_freecom\00", [20 x i8] zeroinitializer }, align 32
@freecom_usb_ids = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1963, i16 -1023, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@freecom_unusual_dev_list = internal global { [2 x %struct.us_unusual_dev], [32 x i8] } { [2 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.2, ptr @.str.3, i8 3, i8 -15, ptr @init_freecom }, %struct.us_unusual_dev zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Freecom\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB-IDE\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"String returned from FC init is: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"result from activate reset is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"result from clear reset is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Freecom TRANSPORT STARTED\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"freecom transport error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"foo Status result %d %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"20 second USB/ATAPI bridge TIMEOUT occurred!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fst->Status is %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bar Status result %d %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"operation failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Device indicates that it has %d bytes available\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SCSI requested %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Truncating request to match buffer length: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SCSI wants data, drive doesn't have any\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Waiting for status\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Drive seems still hungry\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Transfer happy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"freecom unimplemented direction: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pdump.line = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x:\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" -\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read data Freecom! (c=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Freecom readdata transport error\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Start of read\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"freecom_readdata done!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Write data Freecom! (c=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Freecom writedata transport error\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Start of write\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"freecom_writedata done!\0A\00", [39 x i8] zeroinitializer }, align 32
@usb_stor_freecom_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\012freecom reset called\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_stor_freecom_reset\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/storage/freecom.c\00", [34 x i8] zeroinitializer }, align 32
@usb_stor_freecom_reset._entry_ptr = internal global ptr @usb_stor_freecom_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 18, i64 26, i64 90]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"freecom_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 564, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"freecom_host_template\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 541, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 578, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"freecom_usb_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 122, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"freecom_unusual_dev_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 144, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 555, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant [41 x i8] c"../drivers/usb/storage/unusual_freecom.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 9, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 452, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 464, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 472, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 233, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 257, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 267, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 283, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 284, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 310, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 320, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 329, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 331, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 348, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 367, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 374, i32 20 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 386, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 389, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 430, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 491, i32 14 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 509, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 512, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 514, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 516, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 526, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 164, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 170, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 175, i32 19 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 177, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 197, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 203, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 208, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 211, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [33 x i8] c"../drivers/usb/storage/freecom.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 482, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_freecom_driver_exit, ptr @__initcall__kmod_ums_freecom__295_578_freecom_driver_init6, ptr @freecom_driver_exit, ptr @usb_stor_freecom_reset._entry, ptr @usb_stor_freecom_reset._entry_ptr, ptr @freecom_driver, ptr @freecom_host_template, ptr @.str, ptr @.str.1, ptr @freecom_usb_ids, ptr @freecom_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pdump.line, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freecom_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freecom_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freecom_usb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freecom_unusual_dev_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdump.line to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_freecom_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @freecom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @freecom_host_template, ptr noundef nonnull @.str, ptr noundef null) #7
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @freecom_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @freecom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @freecom_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freecom_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #7
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !109
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @freecom_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @freecom_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @freecom_host_template) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %us, align 4
  %transport_name = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %transport_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %transport_name, align 4
  %transport = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 19
  %4 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @freecom_transport, ptr %transport, align 4
  %transport_reset = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 20
  %5 = ptrtoint ptr %transport_reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb_stor_freecom_reset, ptr %transport_reset, align 4
  %max_lun = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 16
  %6 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %max_lun, align 2
  %call1 = call i32 @usb_stor_probe2(ptr noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #7
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
define internal i32 @freecom_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %partial = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %partial) #7
  %0 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %partial, align 4, !annotation !109
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %1 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobuf, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.7) #7
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %3 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %send_bulk_pipe, align 4
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %5 = ptrtoint ptr %recv_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %recv_bulk_pipe, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 33, ptr %2, align 1
  %Timeout = getelementptr inbounds %struct.freecom_cb_wrap, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %Timeout to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %Timeout, align 1
  %Atapi = getelementptr inbounds %struct.freecom_cb_wrap, ptr %2, i32 0, i32 2
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %11 = call ptr @memcpy(ptr %Atapi, ptr %10, i32 12)
  %Filler = getelementptr inbounds %struct.freecom_cb_wrap, ptr %2, i32 0, i32 3
  %12 = call ptr @memset(ptr %Filler, i32 0, i32 50)
  %13 = load ptr, ptr %cmnd, align 4
  tail call fastcc void @pdump(ptr noundef %us, ptr noundef %13, i32 noundef 12)
  %call = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %4, ptr noundef %2, i32 noundef 64, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %6, ptr noundef %2, i32 noundef 4, ptr noundef nonnull %partial) #7
  %14 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %partial, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9, i32 noundef %call4, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %partial, align 4
  call fastcc void @pdump(ptr noundef %us, ptr noundef %2, i32 noundef %17)
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool.not238 = icmp sgt i8 %19, -1
  br i1 %tobool.not238, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %if.end7.while.body_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10) #7
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 2
  %conv9 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11, i32 noundef %conv9) #7
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %2, align 1
  %23 = call ptr @memset(ptr %Timeout, i32 0, i32 63)
  %call16 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %4, ptr noundef %2, i32 noundef 64, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end20:                                         ; preds = %while.body
  %call21 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %6, ptr noundef %2, i32 noundef 4, ptr noundef nonnull %partial) #7
  %24 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %partial, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12, i32 noundef %call21, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %partial, align 4
  call fastcc void @pdump(ptr noundef %us, ptr noundef %2, i32 noundef %27)
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 2
  %tobool.not = icmp sgt i8 %29, -1
  br i1 %tobool.not, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %if.end7.while.end_crit_edge
  %.lcssa = phi i8 [ %19, %if.end7.while.end_crit_edge ], [ %29, %if.end25.while.end_crit_edge ]
  %30 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp26.not = icmp eq i32 %31, 4
  br i1 %cmp26.not, label %if.end29, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %while.end
  %32 = and i8 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp33.not = icmp eq i8 %32, 0
  br i1 %cmp33.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %33 = ptrtoint ptr %Atapi to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %Atapi, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv37 = zext i16 %35 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14, i32 noundef %conv37) #7
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15, i32 noundef %37) #7
  %38 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmnd, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %41, label %sw.default [
    i8 18, label %if.end36.sw.bb_crit_edge
    i8 3, label %if.end36.sw.bb_crit_edge244
    i8 26, label %if.end36.sw.bb_crit_edge245
    i8 90, label %if.end36.sw.bb_crit_edge246
  ]

if.end36.sw.bb_crit_edge246:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end36.sw.bb_crit_edge245:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end36.sw.bb_crit_edge244:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end36.sw.bb_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end36.sw.bb_crit_edge, %if.end36.sw.bb_crit_edge244, %if.end36.sw.bb_crit_edge245, %if.end36.sw.bb_crit_edge246
  %43 = ptrtoint ptr %Atapi to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %Atapi, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv42 = zext i16 %45 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %length.0 = phi i32 [ %47, %sw.default ], [ %conv42, %sw.bb ]
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %length.0, i32 %49)
  %cmp45 = icmp ugt i32 %length.0, %49
  br i1 %cmp45, label %if.then47, label %sw.epilog.if.end49_crit_edge

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16, i32 noundef %49) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %sw.epilog.if.end49_crit_edge
  %length.1 = phi i32 [ %49, %if.then47 ], [ %length.0, %sw.epilog.if.end49_crit_edge ]
  %srb50 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %50 = ptrtoint ptr %srb50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %srb50, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_data_direction, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %53, label %sw.default124 [
    i32 2, label %sw.bb51
    i32 1, label %sw.bb93
    i32 3, label %if.end49.cleanup_crit_edge
  ]

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb51:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1)
  %tobool52.not = icmp eq i32 %length.1, 0
  br i1 %tobool52.not, label %sw.bb51.cleanup_crit_edge, label %if.end54

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %sw.bb51
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %2, align 2
  %57 = and i8 %56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp58 = icmp eq i8 %57, 0
  br i1 %cmp58, label %if.end54.if.then64_crit_edge, label %lor.lhs.false

if.end54.if.then64_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.end54
  %58 = ptrtoint ptr %Timeout to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %Timeout, align 1
  %60 = and i8 %59, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp62.not = icmp eq i8 %60, 2
  br i1 %cmp62.not, label %if.end65, label %lor.lhs.false.if.then64_crit_edge

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %if.end54.if.then64_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false
  %call66 = call fastcc i32 @freecom_readdata(ptr noundef %srb, ptr noundef %us, i32 noundef %6, i32 noundef %4, i32 noundef %length.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end70, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18) #7
  %call71 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %6, ptr noundef %2, i32 noundef 64, ptr noundef nonnull %partial) #7
  %61 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %partial, align 4
  call fastcc void @pdump(ptr noundef %us, ptr noundef %2, i32 noundef %62)
  %63 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp72.not = icmp ne i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp75 = icmp sgt i32 %call71, 1
  %or.cond = select i1 %cmp72.not, i1 true, i1 %cmp75
  br i1 %or.cond, label %if.end70.cleanup_crit_edge, label %if.end78

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %if.end70
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 2
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp82.not = icmp eq i8 %67, 0
  br i1 %cmp82.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  %68 = ptrtoint ptr %Timeout to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %Timeout, align 1
  %70 = and i8 %69, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp89.not = icmp eq i8 %70, 3
  br i1 %cmp89.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20) #7
  br label %cleanup

sw.bb93:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1)
  %tobool94.not = icmp eq i32 %length.1, 0
  br i1 %tobool94.not, label %sw.bb93.cleanup_crit_edge, label %if.end96

sw.bb93.cleanup_crit_edge:                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end96:                                         ; preds = %sw.bb93
  %call97 = call fastcc i32 @freecom_writedata(ptr noundef %srb, ptr noundef %us, i32 noundef %4, i32 noundef %length.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 0
  br i1 %cmp98.not, label %if.end101, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %if.end96
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18) #7
  %call102 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %6, ptr noundef %2, i32 noundef 64, ptr noundef nonnull %partial) #7
  %71 = ptrtoint ptr %partial to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp103.not = icmp ne i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call102)
  %cmp106 = icmp sgt i32 %call102, 1
  %or.cond230 = select i1 %cmp103.not, i1 true, i1 %cmp106
  br i1 %or.cond230, label %if.end101.cleanup_crit_edge, label %if.end109

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109:                                        ; preds = %if.end101
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %2, align 2
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp113.not = icmp eq i8 %75, 0
  br i1 %cmp113.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end116:                                        ; preds = %if.end109
  %76 = ptrtoint ptr %Timeout to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %Timeout, align 1
  %78 = and i8 %77, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp120.not = icmp eq i8 %78, 3
  br i1 %cmp120.not, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20) #7
  br label %cleanup

sw.default124:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %53) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default124, %if.end123, %if.then122, %if.then115, %if.end101.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %sw.bb93.cleanup_crit_edge, %if.end92, %if.then91, %if.then84, %if.end70.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then64, %sw.bb51.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then35, %while.end.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 3, %if.then19 ], [ 1, %if.then35 ], [ 1, %sw.default124 ], [ 1, %if.then115 ], [ 1, %if.then122 ], [ 1, %if.then64 ], [ 1, %if.then84 ], [ 1, %if.then91 ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %while.end.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ 3, %if.end70.cleanup_crit_edge ], [ %call97, %if.end96.cleanup_crit_edge ], [ 3, %if.end101.cleanup_crit_edge ], [ 0, %sw.bb93.cleanup_crit_edge ], [ 0, %sw.bb51.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ 0, %if.end123 ], [ 0, %if.end92 ], [ 3, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %partial) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stor_freecom_reset(ptr nocapture noundef readnone %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #10
  ret i32 8195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_freecom(ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %recv_ctrl_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %2 = ptrtoint ptr %recv_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recv_ctrl_pipe, align 4
  %call = tail call i32 @usb_stor_control_msg(ptr noundef %us, i32 noundef %3, i8 noundef zeroext 76, i8 noundef zeroext -64, i16 noundef zeroext 17222, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 32, i32 noundef 300) #7
  %arrayidx = getelementptr i8, ptr %1, i32 32
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.4, ptr noundef %1) #7
  %send_ctrl_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %5 = ptrtoint ptr %send_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %send_ctrl_pipe, align 4
  %call1 = tail call i32 @usb_stor_control_msg(ptr noundef %us, i32 noundef %6, i8 noundef zeroext 77, i8 noundef zeroext 64, i16 noundef zeroext 9432, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.5, i32 noundef %call1) #7
  tail call void @msleep(i32 noundef 250) #7
  %7 = ptrtoint ptr %send_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %send_ctrl_pipe, align 4
  %call3 = tail call i32 @usb_stor_control_msg(ptr noundef %us, i32 noundef %8, i8 noundef zeroext 77, i8 noundef zeroext 64, i16 noundef zeroext 9464, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.6, i32 noundef %call3) #7
  tail call void @msleep(i32 noundef 3000) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdump(ptr noundef %us, ptr nocapture noundef readonly %ibuffer, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp148 = icmp sgt i32 %length, 0
  br i1 %cmp148, label %entry.for.body_crit_edge, label %entry.for.end42_crit_edge

entry.for.end42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0150 = phi i32 [ %inc41, %if.end33.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %offset.0149 = phi i32 [ %add39, %if.end33.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %i.0150, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.else24

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0150)
  %cmp2.not = icmp eq i32 %i.0150, 0
  br i1 %cmp2.not, label %if.then.if.end20_crit_edge, label %if.then3

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr @pdump.line, i32 %offset.0149
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 539828224, ptr %add.ptr, align 1
  %sub = add nsw i32 %i.0150, -16
  %add = add i32 %offset.0149, 3
  %arrayidx = getelementptr i8, ptr %ibuffer, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = add i8 %2, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %3)
  %4 = icmp ult i8 %3, 95
  %spec.select = select i1 %4, i8 %2, i8 46
  %5 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %add
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %5, align 1
  %offset.2 = add i32 %offset.0149, 4
  %inc18 = add nsw i32 %i.0150, -15
  %arrayidx.1 = getelementptr i8, ptr %ibuffer, i32 %inc18
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %9 = add i8 %8, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %9)
  %10 = icmp ult i8 %9, 95
  %spec.select.1 = select i1 %10, i8 %8, i8 46
  %11 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select.1, ptr %11, align 1
  %offset.2.1 = add i32 %offset.0149, 5
  %inc18.1 = add nsw i32 %i.0150, -14
  %arrayidx.2 = getelementptr i8, ptr %ibuffer, i32 %inc18.1
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %15 = add i8 %14, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %15)
  %16 = icmp ult i8 %15, 95
  %spec.select.2 = select i1 %16, i8 %14, i8 46
  %17 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select.2, ptr %17, align 1
  %offset.2.2 = add i32 %offset.0149, 6
  %inc18.2 = add nsw i32 %i.0150, -13
  %arrayidx.3 = getelementptr i8, ptr %ibuffer, i32 %inc18.2
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %21 = add i8 %20, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %21)
  %22 = icmp ult i8 %21, 95
  %spec.select.3 = select i1 %22, i8 %20, i8 46
  %23 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select.3, ptr %23, align 1
  %offset.2.3 = add i32 %offset.0149, 7
  %inc18.3 = add nsw i32 %i.0150, -12
  %arrayidx.4 = getelementptr i8, ptr %ibuffer, i32 %inc18.3
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1
  %27 = add i8 %26, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %27)
  %28 = icmp ult i8 %27, 95
  %spec.select.4 = select i1 %28, i8 %26, i8 46
  %29 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select.4, ptr %29, align 1
  %offset.2.4 = add i32 %offset.0149, 8
  %inc18.4 = add nsw i32 %i.0150, -11
  %arrayidx.5 = getelementptr i8, ptr %ibuffer, i32 %inc18.4
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1
  %33 = add i8 %32, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %33)
  %34 = icmp ult i8 %33, 95
  %spec.select.5 = select i1 %34, i8 %32, i8 46
  %35 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select.5, ptr %35, align 1
  %offset.2.5 = add i32 %offset.0149, 9
  %inc18.5 = add nsw i32 %i.0150, -10
  %arrayidx.6 = getelementptr i8, ptr %ibuffer, i32 %inc18.5
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.6, align 1
  %39 = add i8 %38, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %39)
  %40 = icmp ult i8 %39, 95
  %spec.select.6 = select i1 %40, i8 %38, i8 46
  %41 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.select.6, ptr %41, align 1
  %offset.2.6 = add i32 %offset.0149, 10
  %inc18.6 = add nsw i32 %i.0150, -9
  %arrayidx.7 = getelementptr i8, ptr %ibuffer, i32 %inc18.6
  %43 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.7, align 1
  %45 = add i8 %44, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %45)
  %46 = icmp ult i8 %45, 95
  %spec.select.7 = select i1 %46, i8 %44, i8 46
  %47 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.6
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %spec.select.7, ptr %47, align 1
  %offset.2.7 = add i32 %offset.0149, 11
  %inc18.7 = add nsw i32 %i.0150, -8
  %arrayidx.8 = getelementptr i8, ptr %ibuffer, i32 %inc18.7
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.8, align 1
  %51 = add i8 %50, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %51)
  %52 = icmp ult i8 %51, 95
  %spec.select.8 = select i1 %52, i8 %50, i8 46
  %53 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.7
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select.8, ptr %53, align 1
  %offset.2.8 = add i32 %offset.0149, 12
  %inc18.8 = add nsw i32 %i.0150, -7
  %arrayidx.9 = getelementptr i8, ptr %ibuffer, i32 %inc18.8
  %55 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.9, align 1
  %57 = add i8 %56, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %57)
  %58 = icmp ult i8 %57, 95
  %spec.select.9 = select i1 %58, i8 %56, i8 46
  %59 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %spec.select.9, ptr %59, align 1
  %offset.2.9 = add i32 %offset.0149, 13
  %inc18.9 = add nsw i32 %i.0150, -6
  %arrayidx.10 = getelementptr i8, ptr %ibuffer, i32 %inc18.9
  %61 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.10, align 1
  %63 = add i8 %62, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %63)
  %64 = icmp ult i8 %63, 95
  %spec.select.10 = select i1 %64, i8 %62, i8 46
  %65 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.9
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %spec.select.10, ptr %65, align 1
  %offset.2.10 = add i32 %offset.0149, 14
  %inc18.10 = add nsw i32 %i.0150, -5
  %arrayidx.11 = getelementptr i8, ptr %ibuffer, i32 %inc18.10
  %67 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.11, align 1
  %69 = add i8 %68, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %69)
  %70 = icmp ult i8 %69, 95
  %spec.select.11 = select i1 %70, i8 %68, i8 46
  %71 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.10
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.select.11, ptr %71, align 1
  %offset.2.11 = add i32 %offset.0149, 15
  %inc18.11 = add nsw i32 %i.0150, -4
  %arrayidx.12 = getelementptr i8, ptr %ibuffer, i32 %inc18.11
  %73 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.12, align 1
  %75 = add i8 %74, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %75)
  %76 = icmp ult i8 %75, 95
  %spec.select.12 = select i1 %76, i8 %74, i8 46
  %77 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.11
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.select.12, ptr %77, align 1
  %offset.2.12 = add i32 %offset.0149, 16
  %inc18.12 = add nsw i32 %i.0150, -3
  %arrayidx.13 = getelementptr i8, ptr %ibuffer, i32 %inc18.12
  %79 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.13, align 1
  %81 = add i8 %80, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %81)
  %82 = icmp ult i8 %81, 95
  %spec.select.13 = select i1 %82, i8 %80, i8 46
  %83 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.12
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select.13, ptr %83, align 1
  %offset.2.13 = add i32 %offset.0149, 17
  %inc18.13 = add nsw i32 %i.0150, -2
  %arrayidx.14 = getelementptr i8, ptr %ibuffer, i32 %inc18.13
  %85 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.14, align 1
  %87 = add i8 %86, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %87)
  %88 = icmp ult i8 %87, 95
  %spec.select.14 = select i1 %88, i8 %86, i8 46
  %89 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.13
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %spec.select.14, ptr %89, align 1
  %offset.2.14 = add i32 %offset.0149, 18
  %inc18.14 = add nsw i32 %i.0150, -1
  %arrayidx.15 = getelementptr i8, ptr %ibuffer, i32 %inc18.14
  %91 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.15, align 1
  %93 = add i8 %92, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %93)
  %94 = icmp ult i8 %93, 95
  %spec.select.15 = select i1 %94, i8 %92, i8 46
  %95 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.14
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select.15, ptr %95, align 1
  %offset.2.15 = add i32 %offset.0149, 19
  %arrayidx19 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.2.15
  %97 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx19, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23, ptr noundef nonnull @pdump.line) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then3, %if.then.if.end20_crit_edge
  %offset.3 = phi i32 [ 0, %if.then3 ], [ %offset.0149, %if.then.if.end20_crit_edge ]
  %add.ptr21 = getelementptr i8, ptr @pdump.line, i32 %offset.3
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr21, ptr noundef nonnull @.str.24, i32 noundef %i.0150)
  %add23 = add i32 %call22, %offset.3
  br label %if.end33

if.else24:                                        ; preds = %for.body
  %and25 = and i32 %i.0150, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %if.then28, label %if.else24.if.end33_crit_edge

if.else24.if.end33_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr29 = getelementptr i8, ptr @pdump.line, i32 %offset.0149
  %98 = call ptr @memcpy(ptr %add.ptr29, ptr @.str.25, i32 3)
  %add31 = add i32 %offset.0149, 2
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.else24.if.end33_crit_edge, %if.end20
  %offset.4 = phi i32 [ %add23, %if.end20 ], [ %add31, %if.then28 ], [ %offset.0149, %if.else24.if.end33_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr @pdump.line, i32 %offset.4
  %arrayidx35 = getelementptr i8, ptr %ibuffer, i32 %i.0150
  %99 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %100 to i32
  %call38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr34, ptr noundef nonnull @.str.26, i32 noundef %conv36)
  %add39 = add i32 %call38, %offset.4
  %inc41 = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc41, %length
  br i1 %exitcond.not, label %if.end33.for.end42_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end33.for.end42_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

for.end42:                                        ; preds = %if.end33.for.end42_crit_edge, %entry.for.end42_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %entry.for.end42_crit_edge ], [ %add39, %if.end33.for.end42_crit_edge ]
  %sub43 = add i32 %length, -1
  %div = sdiv i32 %sub43, 16
  %101 = mul i32 %div, 16
  %rem.decomposed = sub i32 %sub43, %101
  %mul = shl nsw i32 %div, 4
  %i.1153 = add nsw i32 %rem.decomposed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem.decomposed)
  %cmp47154 = icmp slt i32 %rem.decomposed, 15
  br i1 %cmp47154, label %for.end42.for.body49_crit_edge, label %for.end42.if.end62.thread_crit_edge

for.end42.if.end62.thread_crit_edge:              ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.thread

for.end42.for.body49_crit_edge:                   ; preds = %for.end42
  br label %for.body49

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.end42.for.body49_crit_edge
  %i.1156 = phi i32 [ %i.1, %for.body49.for.body49_crit_edge ], [ %i.1153, %for.end42.for.body49_crit_edge ]
  %offset.5155 = phi i32 [ %add52, %for.body49.for.body49_crit_edge ], [ %offset.0.lcssa, %for.end42.for.body49_crit_edge ]
  %add.ptr50 = getelementptr i8, ptr @pdump.line, i32 %offset.5155
  %102 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 538976256, ptr %add.ptr50, align 1
  %add52 = add i32 %offset.5155, 3
  %i.1 = add nsw i32 %i.1156, 1
  %exitcond162.not = icmp eq i32 %i.1, 16
  br i1 %exitcond162.not, label %for.end55, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49

for.end55:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rem.decomposed)
  %cmp56 = icmp slt i32 %rem.decomposed, 8
  br i1 %cmp56, label %if.end62, label %for.end55.if.end62.thread_crit_edge

for.end55.if.end62.thread_crit_edge:              ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.thread

if.end62.thread:                                  ; preds = %for.end55.if.end62.thread_crit_edge, %for.end42.if.end62.thread_crit_edge
  %offset.6.ph = phi i32 [ %add52, %for.end55.if.end62.thread_crit_edge ], [ %offset.0.lcssa, %for.end42.if.end62.thread_crit_edge ]
  %add.ptr63168 = getelementptr i8, ptr @pdump.line, i32 %offset.6.ph
  %103 = ptrtoint ptr %add.ptr63168 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 539828224, ptr %add.ptr63168, align 1
  %add65169 = add i32 %offset.6.ph, 3
  br label %for.body69.preheader

if.end62:                                         ; preds = %for.end55
  %add.ptr59 = getelementptr i8, ptr @pdump.line, i32 %add52
  %104 = call ptr @memcpy(ptr %add.ptr59, ptr @.str.28, i32 3)
  %add61 = add i32 %offset.5155, 5
  %add.ptr63 = getelementptr i8, ptr @pdump.line, i32 %add61
  %105 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 539828224, ptr %add.ptr63, align 1
  %add65 = add i32 %offset.5155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp67.not158 = icmp slt i32 %rem.decomposed, 0
  br i1 %cmp67.not158, label %if.end62.for.end92_crit_edge, label %if.end62.for.body69.preheader_crit_edge

if.end62.for.body69.preheader_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader

if.end62.for.end92_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92

for.body69.preheader:                             ; preds = %if.end62.for.body69.preheader_crit_edge, %if.end62.thread
  %add65171 = phi i32 [ %add65169, %if.end62.thread ], [ %add65, %if.end62.for.body69.preheader_crit_edge ]
  %smax = call i32 @llvm.smax.i32(i32 %i.1153, i32 1)
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %for.body69.preheader
  %i.2160 = phi i32 [ %inc91, %for.body69.for.body69_crit_edge ], [ 0, %for.body69.preheader ]
  %offset.7159 = phi i32 [ %offset.8, %for.body69.for.body69_crit_edge ], [ %add65171, %for.body69.preheader ]
  %add70 = add nuw nsw i32 %i.2160, %mul
  %arrayidx71 = getelementptr i8, ptr %ibuffer, i32 %add70
  %106 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx71, align 1
  %108 = add i8 %107, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %108)
  %109 = icmp ult i8 %108, 95
  %spec.select172 = select i1 %109, i8 %107, i8 46
  %110 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.7159
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %spec.select172, ptr %110, align 1
  %offset.8 = add i32 %offset.7159, 1
  %inc91 = add nuw nsw i32 %i.2160, 1
  %exitcond163 = icmp eq i32 %inc91, %smax
  br i1 %exitcond163, label %for.body69.for.end92_crit_edge, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69

for.body69.for.end92_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92

for.end92:                                        ; preds = %for.body69.for.end92_crit_edge, %if.end62.for.end92_crit_edge
  %offset.7.lcssa = phi i32 [ %add65, %if.end62.for.end92_crit_edge ], [ %offset.8, %for.body69.for.end92_crit_edge ]
  %arrayidx93 = getelementptr [80 x i8], ptr @pdump.line, i32 0, i32 %offset.7.lcssa
  %112 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx93, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23, ptr noundef nonnull @pdump.line) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @freecom_readdata(ptr noundef %srb, ptr noundef %us, i32 noundef %ipipe, i32 noundef %opipe, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %1, align 1
  %Timeout = getelementptr inbounds %struct.freecom_xfer_wrap, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %Timeout to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %Timeout, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %count)
  %Count = getelementptr inbounds %struct.freecom_xfer_wrap, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %Count to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %Count, align 1
  %Pad = getelementptr inbounds %struct.freecom_xfer_wrap, ptr %1, i32 0, i32 3
  %6 = call ptr @memset(ptr %Pad, i32 0, i32 58)
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.29, i32 noundef %count) #7
  %call = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %opipe, ptr noundef %1, i32 noundef 64, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.30) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31) #7
  %call1 = tail call i32 @usb_stor_bulk_srb(ptr noundef %us, i32 noundef %ipipe, ptr noundef %srb) #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 1
  %. = select i1 %cmp2, i32 3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @freecom_writedata(ptr noundef %srb, ptr noundef %us, i32 noundef %opipe, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 1
  %Timeout = getelementptr inbounds %struct.freecom_xfer_wrap, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %Timeout to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %Timeout, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %count)
  %Count = getelementptr inbounds %struct.freecom_xfer_wrap, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %Count to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %Count, align 1
  %Pad = getelementptr inbounds %struct.freecom_xfer_wrap, ptr %1, i32 0, i32 3
  %6 = call ptr @memset(ptr %Pad, i32 0, i32 58)
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33, i32 noundef %count) #7
  %call = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %opipe, ptr noundef %1, i32 noundef 64, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.35) #7
  %call1 = tail call i32 @usb_stor_bulk_srb(ptr noundef %us, i32 noundef %opipe, ptr noundef %srb) #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 1
  %. = select i1 %cmp2, i32 3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_srb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/freecom.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/freecom.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/freecom.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/freecom.c", i32 32, i32 1}
!9 = !{ptr @__initcall__kmod_ums_freecom__295_578_freecom_driver_init6, !10, !"__initcall__kmod_ums_freecom__295_578_freecom_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/freecom.c", i32 578, i32 1}
!11 = !{ptr @__exitcall_freecom_driver_exit, !10, !"__exitcall_freecom_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @freecom_host_template, !15, !"freecom_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/freecom.c", i32 541, i32 34}
!16 = !{ptr @freecom_driver, !17, !"freecom_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/freecom.c", i32 564, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/freecom.c", i32 555, i32 23}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_freecom.h", i32 9, i32 1}
!22 = !{ptr @freecom_unusual_dev_list, !23, !"freecom_unusual_dev_list", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/freecom.c", i32 144, i32 30}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/storage/freecom.c", i32 452, i32 19}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/freecom.c", i32 464, i32 19}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/freecom.c", i32 472, i32 19}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/storage/freecom.c", i32 233, i32 19}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/storage/freecom.c", i32 257, i32 20}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/freecom.c", i32 267, i32 19}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/storage/freecom.c", i32 283, i32 20}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/freecom.c", i32 284, i32 20}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/freecom.c", i32 310, i32 20}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/freecom.c", i32 320, i32 20}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/freecom.c", i32 329, i32 19}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/freecom.c", i32 331, i32 19}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/freecom.c", i32 348, i32 20}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/freecom.c", i32 367, i32 21}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/freecom.c", i32 374, i32 20}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/freecom.c", i32 386, i32 21}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/freecom.c", i32 389, i32 20}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/freecom.c", i32 430, i32 20}
!60 = !{ptr @pdump.line, !61, !"line", i1 false, i1 false}
!61 = !{!"../drivers/usb/storage/freecom.c", i32 491, i32 14}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/freecom.c", i32 501, i32 37}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/storage/freecom.c", i32 509, i32 22}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/freecom.c", i32 512, i32 36}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/freecom.c", i32 514, i32 36}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/storage/freecom.c", i32 516, i32 35}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/storage/freecom.c", i32 524, i32 35}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/freecom.c", i32 526, i32 35}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/freecom.c", i32 164, i32 19}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/freecom.c", i32 170, i32 20}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/freecom.c", i32 175, i32 19}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/storage/freecom.c", i32 177, i32 19}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/freecom.c", i32 197, i32 19}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/freecom.c", i32 203, i32 20}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/freecom.c", i32 208, i32 19}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/freecom.c", i32 211, i32 19}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/storage/freecom.c", i32 482, i32 2}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @usb_stor_freecom_reset._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @usb_stor_freecom_reset._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @freecom_usb_ids, !99, !"freecom_usb_ids", i1 false, i1 false}
!99 = !{!"../drivers/usb/storage/freecom.c", i32 122, i32 29}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
