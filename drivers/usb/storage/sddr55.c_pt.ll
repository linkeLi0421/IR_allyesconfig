; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/sddr55.c_pt.bc'
source_filename = "../drivers/usb/storage/sddr55.c"
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sddr55_card_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, [18 x i8] }

@__UNIQUE_ID_description290 = internal constant [68 x i8] c"ums_sddr55.description=Driver for SanDisk SDDR-55 SmartMedia reader\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [31 x i8] c"ums_sddr55.author=Simon Munton\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [47 x i8] c"ums_sddr55.file=drivers/usb/storage/ums-sddr55\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"ums_sddr55.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [33 x i8] c"ums_sddr55.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_sddr55__303_1015_sddr55_driver_init6 = internal global ptr @sddr55_driver_init, section ".initcall6.init", align 4
@sddr55_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sddr55_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @sddr55_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sddr55_driver_exit = internal global ptr @sddr55_driver_exit, section ".exitcall.exit", align 4
@sddr55_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums-sddr55\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ums_sddr55\00", [21 x i8] zeroinitializer }, align 32
@sddr55_usb_ids = internal global { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1988, i16 -24317, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24311, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3083, i16 -24311, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 21930, i16 -24317, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@sddr55_unusual_dev_list = internal global { [5 x %struct.us_unusual_dev], [48 x i8] } { [5 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.3, ptr @.str.4, i8 6, i8 -126, ptr null }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 6, i8 -126, ptr null }, %struct.us_unusual_dev { ptr @.str.7, ptr @.str.8, i8 6, i8 -126, ptr null }, %struct.us_unusual_dev { ptr @.str.9, ptr @.str.10, i8 6, i8 -126, ptr null }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDDR55\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Datafab\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MDSM-B reader\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Datafab Systems, Inc.\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB to CF + SM Combo (LC1)\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Acomdata\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SM\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sandisk\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ImageMate SDDR55\00", [47 x i8] zeroinitializer }, align 32
@sddr55_transport.mode_page_01 = internal constant { <{ [10 x i8], [10 x i8] }>, [44 x i8] } { <{ [10 x i8], [10 x i8] }> <{ [10 x i8] c"\00\12\00\80\00\00\00\00\01\0A", [10 x i8] zeroinitializer }>, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request sense %02x/%02x/%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dummy up request for mode page 1\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dummy up request for all mode pages\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s medium removal. Not that I can do anything about it...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Prevent\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Allow\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Error: Requested LBA %04X exceeds maximum block %04X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"WRITE_10: write block %04X (LBA %04X) page %01X pages %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"READ_10: read block %04X (LBA %04X) page %01X pages %d\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Result for send_command in status %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reading capacity...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Result of read_deviceID is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Device ID = %02X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Manuf  ID = %02X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Result of send_control for device ID is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sddr55_read_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014sddr55: map inconsistency at LBA %04X\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sddr55_read_map\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/storage/sddr55.c\00", [35 x i8] zeroinitializer }, align 32
@sddr55_read_map._entry_ptr = internal global ptr @sddr55_read_map._entry, section ".printk_index", align 4
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LBA %04X <-> PBA %04X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Write %02X pages, to PBA %04X (LBA %04X) page %02X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No PBA for LBA %04X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't find unallocated block\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Allocating PBA %04X for LBA %04X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Result for send_command in write_data %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Result for send_data in write_data %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Result for get_status in write_data %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Updating maps for LBA %04X: old PBA %04X, new PBA %04X\0A\00", [40 x i8] zeroinitializer }, align 32
@sddr55_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.28, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013sddr55 error: new PBA %04X already in use for LBA %04X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sddr55_write_data\00", [46 x i8] zeroinitializer }, align 32
@sddr55_write_data._entry_ptr = internal global ptr @sddr55_write_data._entry, section ".printk_index", align 4
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Read %02X pages, from PBA %04X (LBA %04X) page %02X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Result for send_command in read_data %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 27, i64 30, i64 37, i64 40, i64 42, i64 90]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 6, i64 1, i64 63]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [18 x i64] [i64 16, i64 8, i64 93, i64 100, i64 107, i64 110, i64 115, i64 117, i64 118, i64 121, i64 213, i64 214, i64 227, i64 229, i64 230, i64 232, i64 234, i64 236]
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"sddr55_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1001, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"sddr55_host_template\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 978, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1015, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"sddr55_usb_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 43, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"sddr55_unusual_dev_list\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 65, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 992, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 10, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 17, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 22, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [40 x i8] c"../drivers/usb/storage/unusual_sddr55.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 27, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"mode_page_01\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 782, i32 23 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 806, i32 20 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 902, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 906, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 916, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 917, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 917, i32 43 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 941, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 952, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 957, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 141, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 562, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 568, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 573, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 574, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 525, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 744, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 751, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 362, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 377, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 400, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 407, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 433, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 447, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 460, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 481, i32 20 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 490, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 231, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [32 x i8] c"../drivers/usb/storage/sddr55.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 255, i32 21 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_sddr55_driver_exit, ptr @__initcall__kmod_ums_sddr55__303_1015_sddr55_driver_init6, ptr @sddr55_driver_exit, ptr @sddr55_read_map._entry, ptr @sddr55_read_map._entry_ptr, ptr @sddr55_write_data._entry, ptr @sddr55_write_data._entry_ptr, ptr @sddr55_driver, ptr @sddr55_host_template, ptr @.str, ptr @.str.1, ptr @sddr55_usb_ids, ptr @sddr55_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sddr55_transport.mode_page_01, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_usb_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_unusual_dev_list to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_transport.mode_page_01 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_read_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sddr55_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sddr55_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @sddr55_host_template, ptr noundef nonnull @.str, ptr noundef null) #9
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sddr55_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sddr55_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @sddr55_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sddr55_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #9
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !112
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @sddr55_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @sddr55_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @sddr55_host_template) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  store ptr @sddr55_transport, ptr %transport, align 4
  %transport_reset = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 20
  %5 = ptrtoint ptr %transport_reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sddr55_reset, ptr %transport_reset, align 4
  %max_lun = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 16
  %6 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %max_lun, align 2
  %call1 = call i32 @usb_stor_probe2(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #9
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
define internal i32 @sddr55_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3328, i32 noundef 72) #12
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %extra, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %6 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sddr55_card_info_destructor, ptr %extra_destructor, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extra, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp eq i8 %12, 3
  %sense_data = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 13
  br i1 %cmp, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 2
  %conv10 = zext i8 %14 to i32
  %arrayidx12 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 4
  %conv13 = zext i8 %16 to i32
  %arrayidx15 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16) #9
  %19 = call ptr @memcpy(ptr %1, ptr %sense_data, i32 18)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 112, ptr %1, align 1
  %arrayidx19 = getelementptr i8, ptr %1, i32 7
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 11, ptr %arrayidx19, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 18, ptr noundef %srb) #9
  %22 = call ptr @memset(ptr %sense_data, i32 0, i32 18)
  br label %cleanup

if.end22:                                         ; preds = %if.end5
  %23 = call ptr @memset(ptr %sense_data, i32 0, i32 18)
  %24 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %27)
  %cmp28 = icmp eq i8 %27, 18
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 36028806128992256, ptr %1, align 1
  tail call void @fill_inquiry_response(ptr noundef %us, ptr noundef %1, i32 noundef 36) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %lba_to_pba = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 9
  %29 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lba_to_pba, align 4
  %cmp32 = icmp eq ptr %30, null
  br i1 %cmp32, label %if.end31.if.then36_crit_edge, label %lor.lhs.false

if.end31.if.then36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end31
  %last_access = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 12
  %31 = ptrtoint ptr %last_access to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_access, align 4
  %add = add i32 %32, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp slt i32 %sub, 0
  br i1 %cmp34, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false.if.end51_crit_edge

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end31.if.then36_crit_edge
  %call37 = tail call fastcc i32 @sddr55_status(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end51_crit_edge, label %if.then39

if.then36.if.end51_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then39:                                        ; preds = %if.then36
  %call40 = tail call fastcc i32 @sddr55_status(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 6, ptr %arrayidx44, align 2
  %arrayidx46 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 40, ptr %arrayidx46, align 4
  %arrayidx48 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx48, align 1
  br label %cleanup

if.end51:                                         ; preds = %if.then36.if.end51_crit_edge, %lor.lhs.false.if.end51_crit_edge
  %fatal_error = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 11
  %37 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool52.not = icmp eq i32 %38, 0
  br i1 %tobool52.not, label %if.end63, label %do.body54

do.body54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx56 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %arrayidx56, align 2
  %arrayidx58 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 49, ptr %arrayidx58, align 4
  %arrayidx60 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx60, align 1
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %42 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmnd, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %45, label %do.body232 [
    i8 37, label %if.then69
    i8 90, label %if.then98
    i8 30, label %if.then133
    i8 40, label %if.end63.if.then152_crit_edge
    i8 42, label %if.end63.if.then152_crit_edge365
    i8 0, label %if.end63.cleanup_crit_edge
    i8 27, label %if.end63.cleanup_crit_edge366
  ]

if.end63.cleanup_crit_edge366:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63.if.then152_crit_edge365:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

if.end63.if.then152_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

if.then69:                                        ; preds = %if.end63
  %call70 = tail call fastcc i32 @sddr55_get_capacity(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.body73, label %if.end82

do.body73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx75 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %arrayidx75, align 2
  %arrayidx77 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %48 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 48, ptr %arrayidx77, align 4
  %arrayidx79 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %49 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx79, align 1
  br label %cleanup

if.end82:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call70, ptr %8, align 4
  %pageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 2
  %51 = ptrtoint ptr %pageshift to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pageshift, align 4
  %blockshift = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 5
  %53 = ptrtoint ptr %blockshift to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blockshift, align 4
  %add85 = add i32 %54, %52
  %shr = lshr i32 %call70, %add85
  %div362 = lshr i32 %shr, 8
  %mul = mul nuw i32 %div362, 250
  %max_log_blks = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 1
  %55 = ptrtoint ptr %max_log_blks to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul, ptr %max_log_blks, align 4
  %div86363 = lshr i32 %call70, 8
  %mul87 = mul nuw i32 %div86363, 250
  %div88364 = lshr i32 %mul87, 9
  %dec = add nsw i32 %div88364, -1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %dec, ptr %1, align 4
  %arrayidx90 = getelementptr i32, ptr %1, i32 1
  %57 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 512, ptr %arrayidx90, align 4
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 8, ptr noundef %srb) #9
  tail call fastcc void @sddr55_read_map(ptr noundef %us)
  br label %cleanup

if.then98:                                        ; preds = %if.end63
  %58 = call ptr @memcpy(ptr %1, ptr @sddr55_transport.mode_page_01, i32 20)
  %read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 7
  %59 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool99.not = icmp eq i32 %60, 0
  br i1 %tobool99.not, label %lor.rhs, label %if.then98.lor.end_crit_edge

if.then98.lor.end_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %force_read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 8
  %61 = ptrtoint ptr %force_read_only to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %force_read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool100.not = icmp eq i32 %62, 0
  %phi.cast = select i1 %tobool100.not, i8 0, i8 -128
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then98.lor.end_crit_edge
  %63 = phi i8 [ -128, %if.then98.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %arrayidx102 = getelementptr i8, ptr %1, i32 3
  %64 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx102, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 20, ptr noundef %srb) #9
  %65 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmnd, align 4
  %arrayidx104 = getelementptr i8, ptr %66, i32 2
  %67 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx104, align 1
  %trunc = trunc i8 %68 to i6
  %69 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.42)
  switch i6 %trunc, label %do.body118 [
    i6 1, label %if.then108
    i6 -1, label %if.then115
  ]

if.then108:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.then115:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #9
  br label %cleanup

do.body118:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx120 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %70 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 5, ptr %arrayidx120, align 2
  %arrayidx122 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %71 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 36, ptr %arrayidx122, align 4
  %arrayidx124 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %72 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx124, align 1
  br label %cleanup

if.then133:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx135 = getelementptr i8, ptr %43, i32 4
  %73 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx135, align 1
  %75 = and i8 %74, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool138.not = icmp eq i8 %75, 0
  %cond139 = select i1 %tobool138.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond139) #9
  br label %cleanup

if.then152:                                       ; preds = %if.end63.if.then152_crit_edge, %if.end63.if.then152_crit_edge365
  %arrayidx154 = getelementptr i8, ptr %43, i32 3
  %76 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx154, align 1
  %conv156 = zext i8 %77 to i32
  %arrayidx158 = getelementptr i8, ptr %43, i32 2
  %78 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx158, align 1
  %conv160 = zext i8 %79 to i32
  %80 = shl nuw i32 %conv160, 24
  %81 = shl nuw nsw i32 %conv156, 16
  %arrayidx163 = getelementptr i8, ptr %43, i32 5
  %82 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx163, align 1
  %conv165 = zext i8 %83 to i32
  %arrayidx167 = getelementptr i8, ptr %43, i32 4
  %84 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx167, align 1
  %conv169 = zext i8 %85 to i32
  %shl170 = shl nuw nsw i32 %conv169, 8
  %or171 = or i32 %80, %81
  %shl161 = or i32 %or171, %conv165
  %or172 = or i32 %shl161, %shl170
  %arrayidx174 = getelementptr i8, ptr %43, i32 8
  %86 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx174, align 1
  %conv176 = zext i8 %87 to i16
  %arrayidx178 = getelementptr i8, ptr %43, i32 7
  %88 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx178, align 1
  %conv180 = zext i8 %89 to i16
  %shl181 = shl nuw i16 %conv180, 8
  %or182 = or i16 %shl181, %conv176
  %smallpageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 3
  %90 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %smallpageshift, align 4
  %shl184 = shl i32 %or172, %91
  %blockshift185 = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 5
  %92 = ptrtoint ptr %blockshift185 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blockshift185, align 4
  %shr186 = lshr i32 %shl184, %93
  %blockmask = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 6
  %94 = ptrtoint ptr %blockmask to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %blockmask, align 4
  %and187 = and i32 %95, %shl184
  %max_log_blks188 = getelementptr inbounds %struct.sddr55_card_info, ptr %8, i32 0, i32 1
  %96 = ptrtoint ptr %max_log_blks188 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_log_blks188, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr186, i32 %97)
  %cmp189.not = icmp ult i32 %shr186, %97
  br i1 %cmp189.not, label %if.end203, label %if.then191

if.then191:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  %sub193 = add i32 %97, -1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17, i32 noundef %shr186, i32 noundef %sub193) #9
  %arrayidx196 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %98 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %arrayidx196, align 2
  %arrayidx198 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %99 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 36, ptr %arrayidx198, align 4
  %arrayidx200 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %100 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx200, align 1
  br label %cleanup

if.end203:                                        ; preds = %if.then152
  %101 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lba_to_pba, align 4
  %arrayidx205 = getelementptr i32, ptr %102, i32 %shr186
  %103 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx205, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %45)
  %cmp209 = icmp eq i8 %45, 42
  %conv212 = zext i16 %or182 to i32
  br i1 %cmp209, label %if.then211, label %if.else214

if.then211:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18, i32 noundef %104, i32 noundef %shr186, i32 noundef %and187, i32 noundef %conv212) #9
  %call213 = tail call fastcc i32 @sddr55_write_data(ptr noundef %us, i32 noundef %shr186, i32 noundef %and187, i16 noundef zeroext %or182)
  br label %cleanup

if.else214:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19, i32 noundef %104, i32 noundef %shr186, i32 noundef %and187, i32 noundef %conv212) #9
  %call216 = tail call fastcc i32 @sddr55_read_data(ptr noundef %us, i32 noundef %shr186, i32 noundef %and187, i16 noundef zeroext %or182)
  br label %cleanup

do.body232:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx234 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 2
  %105 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 5, ptr %arrayidx234, align 2
  %arrayidx236 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 12
  %106 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 32, ptr %arrayidx236, align 4
  %arrayidx238 = getelementptr %struct.sddr55_card_info, ptr %8, i32 0, i32 13, i32 13
  %107 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx238, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.body232, %if.else214, %if.then211, %if.then191, %if.then133, %do.body118, %if.then115, %if.then108, %if.end82, %do.body73, %if.end63.cleanup_crit_edge, %if.end63.cleanup_crit_edge366, %do.body54, %do.body, %if.then39.cleanup_crit_edge, %if.then30, %if.then8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then30 ], [ 1, %do.body54 ], [ 0, %if.end82 ], [ 1, %do.body73 ], [ 0, %if.then108 ], [ 0, %if.then115 ], [ 1, %do.body118 ], [ 0, %if.then133 ], [ 1, %if.then191 ], [ %call213, %if.then211 ], [ %call216, %if.else214 ], [ 1, %do.body232 ], [ 3, %if.then.cleanup_crit_edge ], [ 1, %do.body ], [ 1, %if.then39.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge366 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sddr55_reset(ptr nocapture noundef readnone %us) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sddr55_card_info_destructor(ptr noundef readonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lba_to_pba = getelementptr inbounds %struct.sddr55_card_info, ptr %extra, i32 0, i32 9
  %0 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lba_to_pba, align 4
  tail call void @kfree(ptr noundef %1) #9
  %pba_to_lba = getelementptr inbounds %struct.sddr55_card_info, ptr %extra, i32 0, i32 10
  %2 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pba_to_lba, align 4
  tail call void @kfree(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fill_inquiry_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sddr55_status(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 11534464, ptr %1, align 1
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %5 = load ptr, ptr %extra, align 4
  %6 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i = load i32, ptr %send_bulk_pipe.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_access.i = getelementptr inbounds %struct.sddr55_card_info, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %last_access.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_access.i, align 4
  %call.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i, ptr noundef %1, i32 noundef 8, ptr noundef null) #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx3, align 2
  %arrayidx5 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx7, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_bulk_pipe.i91 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %12 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extra, align 4
  %14 = ptrtoint ptr %recv_bulk_pipe.i91 to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i94 = load i32, ptr %recv_bulk_pipe.i91, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_access.i95 = getelementptr inbounds %struct.sddr55_card_info, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %last_access.i95 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_access.i95, align 4
  %call.i96 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i94, ptr noundef %1, i32 noundef 4, ptr noundef null) #9
  %17 = zext i32 %call.i96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i96, label %do.body26 [
    i32 1, label %if.end.if.then11_crit_edge
    i32 2, label %if.end.if.then11_crit_edge103
    i32 0, label %if.end35
  ]

if.end.if.then11_crit_edge103:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %if.end.if.then11_crit_edge103
  %lba_to_pba = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lba_to_pba, align 4
  tail call void @kfree(ptr noundef %19) #9
  %pba_to_lba = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pba_to_lba, align 4
  tail call void @kfree(ptr noundef %21) #9
  %force_read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 8
  %arrayidx16 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %22 = call ptr @memset(ptr %force_read_only, i32 0, i32 16)
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx16, align 2
  %arrayidx18 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 58, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx20, align 1
  br label %cleanup

do.body26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx28 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %arrayidx28, align 2
  %arrayidx30 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx32, align 1
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %31 = and i8 %30, 32
  %and = zext i8 %31 to i32
  %read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %read_only to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %read_only, align 4
  %33 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extra, align 4
  %35 = ptrtoint ptr %recv_bulk_pipe.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond.i100 = load i32, ptr %recv_bulk_pipe.i91, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %last_access.i101 = getelementptr inbounds %struct.sddr55_card_info, ptr %34, i32 0, i32 12
  %37 = ptrtoint ptr %last_access.i101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %last_access.i101, align 4
  %call.i102 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i100, ptr noundef %1, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp38.not = icmp eq i32 %call.i102, 0
  br i1 %cmp38.not, label %if.end35.if.end50_crit_edge, label %do.body41

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx43 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %arrayidx43, align 2
  %arrayidx45 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx47, align 1
  br label %if.end50

if.end50:                                         ; preds = %do.body41, %if.end35.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp51 = icmp ne i32 %call.i102, 0
  %cond = zext i1 %cmp51 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.body26, %if.then11, %do.body
  %retval.0 = phi i32 [ 3, %do.body ], [ 1, %if.then11 ], [ 1, %do.body26 ], [ %cond, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sddr55_get_capacity(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21) #9
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %2 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobuf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 11534468, ptr %3, align 1
  %send_bulk_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extra, align 4
  %7 = ptrtoint ptr %send_bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond.i.i = load i32, ptr %send_bulk_pipe.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_access.i.i = getelementptr inbounds %struct.sddr55_card_info, ptr %6, i32 0, i32 12
  %9 = ptrtoint ptr %last_access.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_access.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i.i, ptr noundef %3, i32 noundef 8, ptr noundef null) #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.sddr55_read_deviceID.exit_crit_edge

entry.sddr55_read_deviceID.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sddr55_read_deviceID.exit

if.end.i:                                         ; preds = %entry
  %recv_bulk_pipe.i31.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extra, align 4
  %12 = ptrtoint ptr %recv_bulk_pipe.i31.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i34.i = load i32, ptr %recv_bulk_pipe.i31.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %last_access.i35.i = getelementptr inbounds %struct.sddr55_card_info, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %last_access.i35.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %last_access.i35.i, align 4
  %call.i36.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i34.i, ptr noundef %3, i32 noundef 4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp4.not.i = icmp eq i32 %call.i36.i, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.sddr55_read_deviceID.exit_crit_edge

if.end.i.sddr55_read_deviceID.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sddr55_read_deviceID.exit

if.end6.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %arrayidx8.i = getelementptr i8, ptr %3, i32 1
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp10.not.i = icmp eq i8 %16, -1
  br i1 %cmp10.not.i, label %if.end6.i.if.end_crit_edge, label %if.then12.i

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extra, align 4
  %21 = ptrtoint ptr %recv_bulk_pipe.i31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond.i40.i = load i32, ptr %recv_bulk_pipe.i31.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %last_access.i41.i = getelementptr inbounds %struct.sddr55_card_info, ptr %20, i32 0, i32 12
  %23 = ptrtoint ptr %last_access.i41.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_access.i41.i, align 4
  %call.i42.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i40.i, ptr noundef %3, i32 noundef 2, ptr noundef null) #9
  br label %if.end

sddr55_read_deviceID.exit:                        ; preds = %if.end.i.sddr55_read_deviceID.exit_crit_edge, %entry.sddr55_read_deviceID.exit_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22, i32 noundef 3) #9
  br label %cleanup

if.end:                                           ; preds = %if.then12.i, %if.end6.i.if.end_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22, i32 noundef 0) #9
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23, i32 noundef %conv) #9
  %conv1 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24, i32 noundef %conv1) #9
  %pageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %pageshift to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9, ptr %pageshift, align 4
  %smallpageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %smallpageshift, align 4
  %blocksize = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %blocksize, align 4
  %blockshift = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %blockshift to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %blockshift, align 4
  %blockmask = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %blockmask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 15, ptr %blockmask, align 4
  %29 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %18, label %sw.default [
    i8 110, label %if.end.sw.bb_crit_edge
    i8 -24, label %if.end.sw.bb_crit_edge63
    i8 -20, label %if.end.sw.bb_crit_edge64
    i8 -22, label %if.end.sw.bb5_crit_edge
    i8 100, label %if.end.sw.bb5_crit_edge65
    i8 93, label %if.end.cleanup_crit_edge
    i8 -29, label %if.end.sw.bb9_crit_edge
    i8 -27, label %if.end.sw.bb9_crit_edge66
    i8 107, label %if.end.sw.bb9_crit_edge67
    i8 -43, label %if.end.sw.bb9_crit_edge68
    i8 -26, label %if.end.sw.bb10_crit_edge
    i8 -42, label %if.end.sw.bb10_crit_edge69
    i8 115, label %sw.bb11
    i8 117, label %sw.bb15
    i8 118, label %sw.bb19
    i8 121, label %sw.bb23
  ]

if.end.sw.bb10_crit_edge69:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.end.sw.bb9_crit_edge68:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end.sw.bb9_crit_edge67:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end.sw.bb9_crit_edge66:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb5_crit_edge65:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.end.sw.bb_crit_edge64:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge63:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge63, %if.end.sw.bb_crit_edge64
  %30 = ptrtoint ptr %pageshift to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %pageshift, align 4
  %31 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %smallpageshift, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge65
  %32 = ptrtoint ptr %pageshift to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %pageshift, align 4
  %33 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %smallpageshift, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge66, %if.end.sw.bb9_crit_edge67, %if.end.sw.bb9_crit_edge68
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge69
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %blocksize, align 4
  %35 = ptrtoint ptr %blockshift to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %blockshift, align 4
  %36 = ptrtoint ptr %blockmask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 31, ptr %blockmask, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %blocksize, align 4
  %38 = ptrtoint ptr %blockshift to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %blockshift, align 4
  %39 = ptrtoint ptr %blockmask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 31, ptr %blockmask, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 32, ptr %blocksize, align 4
  %41 = ptrtoint ptr %blockshift to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %blockshift, align 4
  %42 = ptrtoint ptr %blockmask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 31, ptr %blockmask, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 32, ptr %blocksize, align 4
  %44 = ptrtoint ptr %blockshift to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %blockshift, align 4
  %45 = ptrtoint ptr %blockmask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 31, ptr %blockmask, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %sddr55_read_deviceID.exit
  %retval.0 = phi i32 [ 0, %sw.default ], [ 134217728, %sw.bb23 ], [ 67108864, %sw.bb19 ], [ 33554432, %sw.bb15 ], [ 16777216, %sw.bb11 ], [ 8388608, %sw.bb10 ], [ 4194304, %sw.bb9 ], [ 1048576, %sw.bb ], [ 0, %sddr55_read_deviceID.exit ], [ 2097152, %if.end.cleanup_crit_edge ], [ 2097152, %sw.bb5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sddr55_read_map(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %2 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobuf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

if.end:                                           ; preds = %entry
  %blockshift = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %blockshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blockshift, align 4
  %pageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pageshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pageshift, align 4
  %add = add i32 %9, %7
  %shr = lshr i32 %5, %add
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 2) #9
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end.cleanup104_crit_edge, label %if.end7.i, !prof !113

if.end.cleanup104_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

if.end7.i:                                        ; preds = %if.end
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3072) #13
  %tobool2.not = icmp eq ptr %call8.i, null
  br i1 %tobool2.not, label %if.end7.i.cleanup104_crit_edge, label %if.end4

if.end7.i.cleanup104_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

if.end4:                                          ; preds = %if.end7.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 11534474, ptr %3, align 1
  %mul = shl nuw i32 %shr, 1
  %div = sdiv i32 %mul, 256
  %conv = trunc i32 %div to i8
  %arrayidx5 = getelementptr i8, ptr %3, i32 6
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx5, align 1
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %15 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extra, align 4
  %17 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond.i = load i32, ptr %send_bulk_pipe.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_access.i = getelementptr inbounds %struct.sddr55_card_info, ptr %16, i32 0, i32 12
  %19 = ptrtoint ptr %last_access.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_access.i, align 4
  %call.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i, ptr noundef %3, i32 noundef 8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end10, label %if.end4.cleanup104.sink.split_crit_edge

if.end4.cleanup104.sink.split_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104.sink.split

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not.i = icmp eq i32 %shr, 0
  br i1 %tobool.not.i, label %if.end10.if.end16_crit_edge, label %sddr55_bulk_transport.exit

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

sddr55_bulk_transport.exit:                       ; preds = %if.end10
  %recv_bulk_pipe.i4 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %20 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extra, align 4
  %22 = ptrtoint ptr %recv_bulk_pipe.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond.i7 = load i32, ptr %recv_bulk_pipe.i4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_access.i8 = getelementptr inbounds %struct.sddr55_card_info, ptr %21, i32 0, i32 12
  %24 = ptrtoint ptr %last_access.i8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_access.i8, align 4
  %call.i9 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i7, ptr noundef nonnull %call8.i, i32 noundef %mul, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp13.not = icmp eq i32 %call.i9, 0
  br i1 %cmp13.not, label %sddr55_bulk_transport.exit.if.end16_crit_edge, label %sddr55_bulk_transport.exit.cleanup104.sink.split_crit_edge

sddr55_bulk_transport.exit.cleanup104.sink.split_crit_edge: ; preds = %sddr55_bulk_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104.sink.split

sddr55_bulk_transport.exit.if.end16_crit_edge:    ; preds = %sddr55_bulk_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %sddr55_bulk_transport.exit.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %recv_bulk_pipe.i12 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %25 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extra, align 4
  %27 = ptrtoint ptr %recv_bulk_pipe.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i15 = load i32, ptr %recv_bulk_pipe.i12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_access.i16 = getelementptr inbounds %struct.sddr55_card_info, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %last_access.i16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_access.i16, align 4
  %call.i17 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i15, ptr noundef %3, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp18.not = icmp eq i32 %call.i17, 0
  br i1 %cmp18.not, label %if.end21, label %if.end16.cleanup104.sink.split_crit_edge

if.end16.cleanup104.sink.split_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104.sink.split

if.end21:                                         ; preds = %if.end16
  %lba_to_pba = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lba_to_pba, align 4
  tail call void @kfree(ptr noundef %31) #9
  %pba_to_lba = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pba_to_lba, align 4
  tail call void @kfree(ptr noundef %33) #9
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 4) #9
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %kmalloc_array.exit85.thread, label %if.end7.i83, !prof !113

kmalloc_array.exit85.thread:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %lba_to_pba, align 4
  %37 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pba_to_lba, align 4
  br label %if.then32

if.end7.i83:                                      ; preds = %if.end21
  %38 = extractvalue { i32, i1 } %34, 0
  %call8.i49 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3072) #13
  %39 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i49, ptr %lba_to_pba, align 4
  %call8.i82 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3072) #13
  %40 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i82, ptr %pba_to_lba, align 4
  %41 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lba_to_pba, align 4
  %cmp27 = icmp eq ptr %42, null
  %cmp30 = icmp eq ptr %call8.i82, null
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.end7.i83.if.then32_crit_edge, label %if.end37

if.end7.i83.if.then32_crit_edge:                  ; preds = %if.end7.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %if.end7.i83.if.then32_crit_edge, %kmalloc_array.exit85.thread
  %43 = phi ptr [ null, %kmalloc_array.exit85.thread ], [ %42, %if.end7.i83.if.then32_crit_edge ]
  tail call void @kfree(ptr noundef %43) #9
  %44 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pba_to_lba, align 4
  tail call void @kfree(ptr noundef %45) #9
  %46 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %lba_to_pba, align 4
  %47 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %pba_to_lba, align 4
  br label %cleanup104.sink.split

if.end37:                                         ; preds = %if.end7.i83
  %mul39 = shl nuw i32 %shr, 2
  %48 = call ptr @memset(ptr %42, i32 255, i32 %mul39)
  %49 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pba_to_lba, align 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 %mul39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp48102.not = icmp eq i32 %shr, 0
  br i1 %cmp48102.not, label %if.end37.cleanup104.sink.split_crit_edge, label %for.body.lr.ph

if.end37.cleanup104.sink.split_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104.sink.split

for.body.lr.ph:                                   ; preds = %if.end37
  %max_log_blks = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %max_log_blks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_log_blks, align 4
  %conv43 = and i32 %53, 65535
  %54 = tail call i32 @llvm.umin.i32(i32 %conv43, i32 1000)
  %force_read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %mul51 = shl nuw i32 %i.0103, 1
  %arrayidx52 = getelementptr i8, ptr %call8.i, i32 %mul51
  %55 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx52, align 2
  %conv54 = zext i8 %56 to i32
  %add56 = or i32 %mul51, 1
  %arrayidx57 = getelementptr i8, ptr %call8.i, i32 %add56
  %57 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx57, align 1
  %conv59 = zext i8 %58 to i32
  %shl = shl nuw nsw i32 %conv59, 8
  %or = or i32 %shl, %conv54
  %59 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pba_to_lba, align 4
  %arrayidx63 = getelementptr i32, ptr %60, i32 %i.0103
  %61 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %54)
  %cmp66.not = icmp ult i32 %or, %54
  br i1 %cmp66.not, label %if.end69, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %for.body
  %div5099 = lshr i32 %i.0103, 10
  %62 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lba_to_pba, align 4
  %mul72 = mul nuw nsw i32 %div5099, 1000
  %add73 = add nuw i32 %or, %mul72
  %arrayidx74 = getelementptr i32, ptr %63, i32 %add73
  %64 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp75.not = icmp eq i32 %65, -1
  br i1 %cmp75.not, label %if.end69.if.end84_crit_edge, label %land.lhs.true

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

land.lhs.true:                                    ; preds = %if.end69
  %66 = ptrtoint ptr %force_read_only to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %force_read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool77.not = icmp eq i32 %67, 0
  br i1 %tobool77.not, label %do.end, label %land.lhs.true.if.end84_crit_edge

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %add73) #14
  %68 = ptrtoint ptr %force_read_only to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %force_read_only, align 4
  br label %if.end84

if.end84:                                         ; preds = %do.end, %land.lhs.true.if.end84_crit_edge, %if.end69.if.end84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or)
  %cmp86 = icmp ult i32 %or, 16
  %69 = add nsw i32 %or, -992
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %69)
  %70 = icmp ult i32 %69, 15
  %or.cond101 = select i1 %cmp86, i1 true, i1 %70
  br i1 %or.cond101, label %if.then96, label %if.end84.if.end98_crit_edge

if.end84.if.end98_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then96:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.29, i32 noundef %or, i32 noundef %i.0103) #9
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end84.if.end98_crit_edge
  %71 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lba_to_pba, align 4
  %arrayidx103 = getelementptr i32, ptr %72, i32 %add73
  %73 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %i.0103, ptr %arrayidx103, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %cleanup.cleanup104.sink.split_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.cleanup104.sink.split_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104.sink.split

cleanup104.sink.split:                            ; preds = %cleanup.cleanup104.sink.split_crit_edge, %if.end37.cleanup104.sink.split_crit_edge, %if.then32, %if.end16.cleanup104.sink.split_crit_edge, %sddr55_bulk_transport.exit.cleanup104.sink.split_crit_edge, %if.end4.cleanup104.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup104.sink.split, %if.end7.i.cleanup104_crit_edge, %if.end.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sddr55_write_data(ptr noundef %us, i32 noundef %lba, i32 noundef %page, i16 noundef zeroext %sectors) unnamed_addr #2 align 64 {
entry:
  %offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #9
  %read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %force_read_only = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %force_read_only to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force_read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %arrayidx = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %arrayidx, align 2
  %arrayidx4 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 39, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx6, align 1
  br label %cleanup215

if.end:                                           ; preds = %lor.lhs.false
  %blocksize = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 4
  %smallpageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blocksize, align 4
  %13 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %smallpageshift, align 4
  %shr = lshr i32 %12, %14
  %conv = zext i16 %sectors to i32
  %15 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %conv)
  %mul = shl nuw nsw i32 %15, 9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3072) #13
  %cmp8 = icmp eq ptr %call9.i, null
  br i1 %cmp8, label %if.end.cleanup215_crit_edge, label %if.end11

if.end.cleanup215_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup215

if.end11:                                         ; preds = %if.end
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %offset, align 4
  %17 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %sg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sectors)
  %cmp13.not392 = icmp eq i16 %sectors, 0
  br i1 %cmp13.not392, label %if.end11.leave_crit_edge, label %while.body.lr.ph

if.end11.leave_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

while.body.lr.ph:                                 ; preds = %if.end11
  %max_log_blks = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 1
  %lba_to_pba = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 9
  %pageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 2
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %arrayidx35 = getelementptr i8, ptr %1, i32 4
  %pba_to_lba = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 10
  %blockshift = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 5
  %arrayidx80 = getelementptr i8, ptr %1, i32 1
  %arrayidx84 = getelementptr i8, ptr %1, i32 2
  %arrayidx87 = getelementptr i8, ptr %1, i32 3
  %arrayidx94 = getelementptr i8, ptr %1, i32 6
  %arrayidx102 = getelementptr i8, ptr %1, i32 5
  %arrayidx103 = getelementptr i8, ptr %1, i32 7
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe.i361 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end204.while.body_crit_edge, %while.body.lr.ph
  %lba.addr.0395 = phi i32 [ %lba, %while.body.lr.ph ], [ %inc208, %if.end204.while.body_crit_edge ]
  %page.addr.0394 = phi i32 [ %page, %while.body.lr.ph ], [ 0, %if.end204.while.body_crit_edge ]
  %sectors.addr.0393 = phi i16 [ %sectors, %while.body.lr.ph ], [ %conv214, %if.end204.while.body_crit_edge ]
  %18 = ptrtoint ptr %max_log_blks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_log_blks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lba.addr.0395, i32 %19)
  %cmp15.not = icmp ult i32 %lba.addr.0395, %19
  br i1 %cmp15.not, label %if.end18, label %while.body.leave_crit_edge

while.body.leave_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

if.end18:                                         ; preds = %while.body
  %conv12397 = zext i16 %sectors.addr.0393 to i32
  %20 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lba_to_pba, align 4
  %arrayidx19 = getelementptr i32, ptr %21, i32 %lba.addr.0395
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %24 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smallpageshift, align 4
  %shl = shl i32 %conv12397, %25
  %26 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blocksize, align 4
  %sub = sub i32 %27, %page.addr.0394
  %28 = call i32 @llvm.umin.i32(i32 %shl, i32 %sub)
  %conv31 = and i32 %28, 65535
  %29 = ptrtoint ptr %pageshift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pageshift, align 4
  %shl32 = shl i32 %conv31, %30
  %31 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %srb, align 4
  %call33 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %shl32, ptr noundef %32, ptr noundef nonnull %sg, ptr noundef nonnull %offset, i32 noundef 1) #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.30, i32 noundef %conv31, i32 noundef %23, i32 noundef %lba.addr.0395, i32 noundef %page.addr.0394) #9
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp36 = icmp eq i32 %23, -1
  br i1 %cmp36, label %if.then38, label %if.end18.if.end76_crit_edge

if.end18.if.end76_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then38:                                        ; preds = %if.end18
  %34 = ptrtoint ptr %max_log_blks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_log_blks, align 4
  %div = sdiv i32 %35, 250
  %mul40 = shl i32 %div, 8
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31, i32 noundef %lba.addr.0395) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul40)
  %cmp47384 = icmp sgt i32 %mul40, 0
  br i1 %cmp47384, label %for.body.lr.ph, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then38
  %36 = call i32 @llvm.smin.i32(i32 %mul40, i32 1024)
  %div41 = udiv i32 %lba.addr.0395, 1000
  %mul42 = shl i32 %div41, 10
  %37 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pba_to_lba, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %found_pba.0389 = phi i32 [ -1, %for.body.lr.ph ], [ %found_pba.1, %for.inc.for.body_crit_edge ]
  %found_count.0388 = phi i32 [ 0, %for.body.lr.ph ], [ %found_count.1, %for.inc.for.body_crit_edge ]
  %i.0387 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc.for.body_crit_edge ]
  %pba.0385 = phi i32 [ %mul42, %for.body.lr.ph ], [ %inc59, %for.inc.for.body_crit_edge ]
  %arrayidx49 = getelementptr i32, ptr %38, i32 %pba.0385
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %40)
  %cmp50 = icmp eq i32 %40, 1023
  br i1 %cmp50, label %if.then52, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then52:                                        ; preds = %for.body
  %inc = add i32 %found_count.0388, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %found_count.0388)
  %cmp53 = icmp sgt i32 %found_count.0388, 16
  br i1 %cmp53, label %if.then52.for.end_crit_edge, label %if.then52.for.inc_crit_edge

if.then52.for.inc_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then52.for.end_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.then52.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found_count.1 = phi i32 [ %inc, %if.then52.for.inc_crit_edge ], [ %found_count.0388, %for.body.for.inc_crit_edge ]
  %found_pba.1 = phi i32 [ %pba.0385, %if.then52.for.inc_crit_edge ], [ %found_pba.0389, %for.body.for.inc_crit_edge ]
  %inc58 = add nuw nsw i32 %i.0387, 1
  %inc59 = add i32 %pba.0385, 1
  %exitcond.not = icmp eq i32 %inc58, %36
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then52.for.end_crit_edge
  %found_pba.2 = phi i32 [ %found_pba.1, %for.inc.for.end_crit_edge ], [ %pba.0385, %if.then52.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found_pba.2)
  %cmp60 = icmp eq i32 %found_pba.2, -1
  br i1 %cmp60, label %for.end.cleanup_crit_edge, label %cleanup.thread

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.thread:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33, i32 noundef %found_pba.2, i32 noundef %lba.addr.0395) #9
  %41 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 64, ptr %arrayidx35, align 1
  br label %if.end76

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.then38.cleanup_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32) #9
  br label %leave.sink.split

if.end76:                                         ; preds = %cleanup.thread, %if.end18.if.end76_crit_edge
  %pba.1 = phi i32 [ %23, %if.end18.if.end76_crit_edge ], [ %found_pba.2, %cleanup.thread ]
  %42 = ptrtoint ptr %blockshift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blockshift, align 4
  %shl77 = shl i32 %pba.1, %43
  %add = add i32 %shl77, %page.addr.0394
  %shr78 = lshr i32 %add, 16
  %conv79 = trunc i32 %shr78 to i8
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv79, ptr %arrayidx80, align 1
  %shr81 = lshr i32 %add, 8
  %conv83 = trunc i32 %shr81 to i8
  %45 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv83, ptr %arrayidx84, align 1
  %conv86 = trunc i32 %add to i8
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv86, ptr %arrayidx87, align 1
  %rem = urem i32 %lba.addr.0395, 1000
  %conv89 = trunc i32 %rem to i8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv89, ptr %1, align 1
  %shr92 = lshr i32 %rem, 8
  %conv93 = trunc i32 %shr92 to i8
  %48 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv93, ptr %arrayidx94, align 1
  %49 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %smallpageshift, align 4
  %shr97 = lshr i32 %conv31, %50
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx35, align 1
  %53 = trunc i32 %shr97 to i8
  %conv101 = or i8 %52, %53
  store i8 %conv101, ptr %arrayidx35, align 1
  %54 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -80, ptr %arrayidx102, align 1
  %55 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -122, ptr %arrayidx103, align 1
  %56 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extra, align 4
  %58 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %cond.i = load i32, ptr %send_bulk_pipe.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %last_access.i = getelementptr inbounds %struct.sddr55_card_info, ptr %57, i32 0, i32 12
  %60 = ptrtoint ptr %last_access.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %last_access.i, align 4
  %call.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i, ptr noundef %1, i32 noundef 8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp105.not = icmp eq i32 %call.i, 0
  br i1 %cmp105.not, label %if.end117, label %if.then107

if.then107:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %call.i) #9
  br label %leave.sink.split

if.end117:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl32)
  %tobool.not.i = icmp eq i32 %shl32, 0
  br i1 %tobool.not.i, label %if.end117.if.end131_crit_edge, label %sddr55_bulk_transport.exit

if.end117.if.end131_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

sddr55_bulk_transport.exit:                       ; preds = %if.end117
  %61 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %extra, align 4
  %63 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %cond.i357 = load i32, ptr %send_bulk_pipe.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %last_access.i358 = getelementptr inbounds %struct.sddr55_card_info, ptr %62, i32 0, i32 12
  %65 = ptrtoint ptr %last_access.i358 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %last_access.i358, align 4
  %call.i359 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i357, ptr noundef nonnull %call9.i, i32 noundef %shl32, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %cmp119.not = icmp eq i32 %call.i359, 0
  br i1 %cmp119.not, label %sddr55_bulk_transport.exit.if.end131_crit_edge, label %if.then121

sddr55_bulk_transport.exit.if.end131_crit_edge:   ; preds = %sddr55_bulk_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then121:                                       ; preds = %sddr55_bulk_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.35, i32 noundef %call.i359) #9
  br label %leave.sink.split

if.end131:                                        ; preds = %sddr55_bulk_transport.exit.if.end131_crit_edge, %if.end117.if.end131_crit_edge
  %66 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extra, align 4
  %68 = ptrtoint ptr %recv_bulk_pipe.i361 to i32
  call void @__asan_load4_noabort(i32 %68)
  %cond.i364 = load i32, ptr %recv_bulk_pipe.i361, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %last_access.i365 = getelementptr inbounds %struct.sddr55_card_info, ptr %67, i32 0, i32 12
  %70 = ptrtoint ptr %last_access.i365 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %last_access.i365, align 4
  %call.i366 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i364, ptr noundef %1, i32 noundef 6, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %cmp133.not = icmp eq i32 %call.i366, 0
  br i1 %cmp133.not, label %if.end145, label %if.then135

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.36, i32 noundef %call.i366) #9
  br label %leave.sink.split

if.end145:                                        ; preds = %if.end131
  %71 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx87, align 1
  %conv147 = zext i8 %72 to i32
  %73 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx35, align 1
  %conv149 = zext i8 %74 to i32
  %shl150 = shl nuw nsw i32 %conv149, 8
  %add151 = or i32 %shl150, %conv147
  %75 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx102, align 1
  %conv153 = zext i8 %76 to i32
  %shl154 = shl nuw nsw i32 %conv153, 16
  %add155 = or i32 %add151, %shl154
  %77 = ptrtoint ptr %blockshift to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %blockshift, align 4
  %shr157 = lshr i32 %add155, %78
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp160 = icmp eq i8 %80, -1
  br i1 %cmp160, label %land.lhs.true, label %if.end145.if.end178_crit_edge

if.end145.if.end178_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

land.lhs.true:                                    ; preds = %if.end145
  %81 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %82)
  %cmp164 = icmp eq i8 %82, 4
  br i1 %cmp164, label %if.then166, label %land.lhs.true.if.end178_crit_edge

land.lhs.true.if.end178_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then166:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pba_to_lba, align 4
  %arrayidx168 = getelementptr i32, ptr %84, i32 %shr157
  %85 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 65535, ptr %arrayidx168, align 4
  br label %leave.sink.split

if.end178:                                        ; preds = %land.lhs.true.if.end178_crit_edge, %if.end145.if.end178_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.37, i32 noundef %lba.addr.0395, i32 noundef %pba.1, i32 noundef %shr157) #9
  %86 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lba_to_pba, align 4
  %arrayidx180 = getelementptr i32, ptr %87, i32 %lba.addr.0395
  %88 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shr157, ptr %arrayidx180, align 4
  %89 = ptrtoint ptr %pba_to_lba to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pba_to_lba, align 4
  %arrayidx182 = getelementptr i32, ptr %90, i32 %pba.1
  %91 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1023, ptr %arrayidx182, align 4
  %92 = load ptr, ptr %pba_to_lba, align 4
  %arrayidx184 = getelementptr i32, ptr %92, i32 %shr157
  %93 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %94)
  %cmp185.not = icmp eq i32 %94, 1023
  br i1 %cmp185.not, label %if.end204, label %do.end190

do.end190:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %shr157, i32 noundef %94) #14
  %fatal_error = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 11
  %95 = ptrtoint ptr %fatal_error to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %fatal_error, align 4
  br label %leave.sink.split

if.end204:                                        ; preds = %if.end178
  %96 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %rem, ptr %arrayidx184, align 4
  %inc208 = add i32 %lba.addr.0395, 1
  %97 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %smallpageshift, align 4
  %shr211 = lshr i32 %conv31, %98
  %99 = trunc i32 %shr211 to i16
  %conv214 = sub i16 %sectors.addr.0393, %99
  %cmp13.not = icmp eq i16 %conv214, 0
  br i1 %cmp13.not, label %if.end204.leave_crit_edge, label %if.end204.while.body_crit_edge

if.end204.while.body_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end204.leave_crit_edge:                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

leave.sink.split:                                 ; preds = %do.end190, %if.then166, %if.then135, %if.then121, %if.then107, %cleanup
  %.sink = phi i8 [ 49, %cleanup ], [ 49, %do.end190 ], [ 12, %if.then166 ], [ 3, %if.then135 ], [ 3, %if.then121 ], [ 3, %if.then107 ]
  %arrayidx65 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %100 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %arrayidx65, align 2
  %arrayidx67 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %101 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink, ptr %arrayidx67, align 4
  %arrayidx69 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %102 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx69, align 1
  br label %leave

leave:                                            ; preds = %leave.sink.split, %if.end204.leave_crit_edge, %while.body.leave_crit_edge, %if.end11.leave_crit_edge
  %result.2 = phi i32 [ 0, %if.end11.leave_crit_edge ], [ 1, %leave.sink.split ], [ 0, %if.end204.leave_crit_edge ], [ 0, %while.body.leave_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup215

cleanup215:                                       ; preds = %leave, %if.end.cleanup215_crit_edge, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ %result.2, %leave ], [ 3, %if.end.cleanup215_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sddr55_read_data(ptr noundef %us, i32 noundef %lba, i32 noundef %page, i16 noundef zeroext %sectors) unnamed_addr #2 align 64 {
entry:
  %offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #9
  %blocksize = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 4
  %smallpageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocksize, align 4
  %6 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smallpageshift, align 4
  %shr = lshr i32 %5, %7
  %conv = zext i16 %sectors to i32
  %8 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %conv)
  %mul = shl nuw nsw i32 %8, 9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3072) #13
  %cmp3 = icmp eq ptr %call9.i, null
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %offset, align 4
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sectors)
  %cmp6.not182 = icmp eq i16 %sectors, 0
  br i1 %cmp6.not182, label %if.end.leave_crit_edge, label %while.body.lr.ph

if.end.leave_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

while.body.lr.ph:                                 ; preds = %if.end
  %max_log_blks = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 1
  %lba_to_pba = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 9
  %pageshift = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 2
  %blockshift = getelementptr inbounds %struct.sddr55_card_info, ptr %3, i32 0, i32 5
  %arrayidx33 = getelementptr i8, ptr %1, i32 1
  %arrayidx37 = getelementptr i8, ptr %1, i32 2
  %arrayidx40 = getelementptr i8, ptr %1, i32 3
  %arrayidx41 = getelementptr i8, ptr %1, i32 4
  %arrayidx42 = getelementptr i8, ptr %1, i32 5
  %arrayidx49 = getelementptr i8, ptr %1, i32 6
  %arrayidx50 = getelementptr i8, ptr %1, i32 7
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe.i160 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %if.end81.while.body_crit_edge, %while.body.lr.ph
  %lba.addr.0185 = phi i32 [ %lba, %while.body.lr.ph ], [ %inc, %if.end81.while.body_crit_edge ]
  %sectors.addr.0184 = phi i16 [ %sectors, %while.body.lr.ph ], [ %conv88, %if.end81.while.body_crit_edge ]
  %page.addr.0183 = phi i32 [ %page, %while.body.lr.ph ], [ 0, %if.end81.while.body_crit_edge ]
  %11 = ptrtoint ptr %max_log_blks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_log_blks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lba.addr.0185, i32 %12)
  %cmp8.not = icmp ult i32 %lba.addr.0185, %12
  br i1 %cmp8.not, label %if.end11, label %while.body.leave_crit_edge

while.body.leave_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

if.end11:                                         ; preds = %while.body
  %conv5186 = zext i16 %sectors.addr.0184 to i32
  %13 = ptrtoint ptr %lba_to_pba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lba_to_pba, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %lba.addr.0185
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smallpageshift, align 4
  %shl = shl i32 %conv5186, %18
  %19 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blocksize, align 4
  %sub = sub i32 %20, %page.addr.0183
  %21 = call i32 @llvm.umin.i32(i32 %shl, i32 %sub)
  %conv23 = and i32 %21, 65535
  %22 = ptrtoint ptr %pageshift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pageshift, align 4
  %shl24 = shl i32 %conv23, %23
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.40, i32 noundef %conv23, i32 noundef %16, i32 noundef %lba.addr.0185, i32 noundef %page.addr.0183) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp26 = icmp eq i32 %16, -1
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call ptr @memset(ptr %call9.i, i32 0, i32 %shl24)
  br label %if.end81

if.else:                                          ; preds = %if.end11
  %25 = ptrtoint ptr %blockshift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blockshift, align 4
  %shl29 = shl i32 %16, %26
  %add = add i32 %shl29, %page.addr.0183
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %1, align 1
  %shr31 = lshr i32 %add, 16
  %conv32 = trunc i32 %shr31 to i8
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv32, ptr %arrayidx33, align 1
  %shr34 = lshr i32 %add, 8
  %conv36 = trunc i32 %shr34 to i8
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv36, ptr %arrayidx37, align 1
  %conv39 = trunc i32 %add to i8
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv39, ptr %arrayidx40, align 1
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx41, align 1
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -80, ptr %arrayidx42, align 1
  %33 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smallpageshift, align 4
  %sub45 = sub i32 1, %34
  %shl46 = shl i32 %21, %sub45
  %conv48 = trunc i32 %shl46 to i8
  %35 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv48, ptr %arrayidx49, align 1
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -123, ptr %arrayidx50, align 1
  %37 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extra, align 4
  %39 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %cond.i = load i32, ptr %send_bulk_pipe.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %last_access.i = getelementptr inbounds %struct.sddr55_card_info, ptr %38, i32 0, i32 12
  %41 = ptrtoint ptr %last_access.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last_access.i, align 4
  %call.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i, ptr noundef %1, i32 noundef 8, ptr noundef null) #9
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.41, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp52.not = icmp eq i32 %call.i, 0
  br i1 %cmp52.not, label %if.end55, label %if.else.leave_crit_edge

if.else.leave_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

if.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl24)
  %tobool.not.i = icmp eq i32 %shl24, 0
  br i1 %tobool.not.i, label %if.end55.if.end60_crit_edge, label %sddr55_bulk_transport.exit

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

sddr55_bulk_transport.exit:                       ; preds = %if.end55
  %42 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extra, align 4
  %44 = ptrtoint ptr %recv_bulk_pipe.i160 to i32
  call void @__asan_load4_noabort(i32 %44)
  %cond.i163 = load i32, ptr %recv_bulk_pipe.i160, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %last_access.i164 = getelementptr inbounds %struct.sddr55_card_info, ptr %43, i32 0, i32 12
  %46 = ptrtoint ptr %last_access.i164 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_access.i164, align 4
  %call.i165 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i163, ptr noundef nonnull %call9.i, i32 noundef %shl24, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp57.not = icmp eq i32 %call.i165, 0
  br i1 %cmp57.not, label %sddr55_bulk_transport.exit.if.end60_crit_edge, label %sddr55_bulk_transport.exit.leave_crit_edge

sddr55_bulk_transport.exit.leave_crit_edge:       ; preds = %sddr55_bulk_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

sddr55_bulk_transport.exit.if.end60_crit_edge:    ; preds = %sddr55_bulk_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end60:                                         ; preds = %sddr55_bulk_transport.exit.if.end60_crit_edge, %if.end55.if.end60_crit_edge
  %47 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %extra, align 4
  %49 = ptrtoint ptr %recv_bulk_pipe.i160 to i32
  call void @__asan_load4_noabort(i32 %49)
  %cond.i170 = load i32, ptr %recv_bulk_pipe.i160, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %last_access.i171 = getelementptr inbounds %struct.sddr55_card_info, ptr %48, i32 0, i32 12
  %51 = ptrtoint ptr %last_access.i171 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_access.i171, align 4
  %call.i172 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %cond.i170, ptr noundef %1, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp62.not = icmp eq i32 %call.i172, 0
  br i1 %cmp62.not, label %if.end65, label %if.end60.leave_crit_edge

if.end60.leave_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

if.end65:                                         ; preds = %if.end60
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp68 = icmp eq i8 %53, -1
  br i1 %cmp68, label %land.lhs.true, label %if.end65.if.end81_crit_edge

if.end65.if.end81_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end65
  %54 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp72 = icmp eq i8 %55, 4
  br i1 %cmp72, label %do.body, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx75 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 2
  %56 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %arrayidx75, align 2
  %arrayidx77 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 12
  %57 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 17, ptr %arrayidx77, align 4
  %arrayidx79 = getelementptr %struct.sddr55_card_info, ptr %3, i32 0, i32 13, i32 13
  %58 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx79, align 1
  br label %leave

if.end81:                                         ; preds = %land.lhs.true.if.end81_crit_edge, %if.end65.if.end81_crit_edge, %if.then28
  %59 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %srb, align 4
  %call82 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %shl24, ptr noundef %60, ptr noundef nonnull %sg, ptr noundef nonnull %offset, i32 noundef 0) #9
  %inc = add nuw i32 %lba.addr.0185, 1
  %61 = ptrtoint ptr %smallpageshift to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %smallpageshift, align 4
  %shr85 = lshr i32 %conv23, %62
  %63 = trunc i32 %shr85 to i16
  %conv88 = sub i16 %sectors.addr.0184, %63
  %cmp6.not = icmp eq i16 %conv88, 0
  br i1 %cmp6.not, label %if.end81.leave_crit_edge, label %if.end81.while.body_crit_edge

if.end81.while.body_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end81.leave_crit_edge:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %leave

leave:                                            ; preds = %if.end81.leave_crit_edge, %do.body, %if.end60.leave_crit_edge, %sddr55_bulk_transport.exit.leave_crit_edge, %if.else.leave_crit_edge, %while.body.leave_crit_edge, %if.end.leave_crit_edge
  %result.0 = phi i32 [ 1, %do.body ], [ 0, %if.end.leave_crit_edge ], [ 3, %if.else.leave_crit_edge ], [ 3, %sddr55_bulk_transport.exit.leave_crit_edge ], [ 3, %if.end60.leave_crit_edge ], [ 0, %while.body.leave_crit_edge ], [ 0, %if.end81.leave_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %leave, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %leave ], [ 3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/sddr55.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/sddr55.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/sddr55.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/sddr55.c", i32 32, i32 1}
!9 = !{ptr @__initcall__kmod_ums_sddr55__303_1015_sddr55_driver_init6, !10, !"__initcall__kmod_ums_sddr55__303_1015_sddr55_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/sddr55.c", i32 1015, i32 1}
!11 = !{ptr @__exitcall_sddr55_driver_exit, !10, !"__exitcall_sddr55_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sddr55_host_template, !15, !"sddr55_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/sddr55.c", i32 978, i32 34}
!16 = !{ptr @sddr55_driver, !17, !"sddr55_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/sddr55.c", i32 1001, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/sddr55.c", i32 992, i32 23}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_sddr55.h", i32 10, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/unusual_sddr55.h", i32 17, i32 1}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/unusual_sddr55.h", i32 22, i32 1}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/storage/unusual_sddr55.h", i32 27, i32 1}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sddr55_unusual_dev_list, !33, !"sddr55_unusual_dev_list", i1 false, i1 false}
!33 = !{!"../drivers/usb/storage/sddr55.c", i32 65, i32 30}
!34 = distinct !{null, !35, !"inquiry_response", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/sddr55.c", i32 778, i32 23}
!36 = !{ptr @sddr55_transport.mode_page_01, !37, !"mode_page_01", i1 false, i1 false}
!37 = !{!"../drivers/usb/storage/sddr55.c", i32 782, i32 23}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/sddr55.c", i32 806, i32 20}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/sddr55.c", i32 902, i32 21}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/sddr55.c", i32 906, i32 21}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/sddr55.c", i32 916, i32 20}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/sddr55.c", i32 917, i32 31}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/sddr55.c", i32 917, i32 43}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/sddr55.c", i32 941, i32 21}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/sddr55.c", i32 952, i32 21}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/sddr55.c", i32 957, i32 21}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/sddr55.c", i32 141, i32 19}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/sddr55.c", i32 562, i32 19}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/storage/sddr55.c", i32 568, i32 19}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/sddr55.c", i32 573, i32 19}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/storage/sddr55.c", i32 574, i32 19}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/sddr55.c", i32 525, i32 19}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/sddr55.c", i32 744, i32 4}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sddr55_read_map._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @sddr55_read_map._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/sddr55.c", i32 751, i32 21}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/sddr55.c", i32 362, i32 20}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/sddr55.c", i32 377, i32 21}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/sddr55.c", i32 400, i32 22}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/storage/sddr55.c", i32 407, i32 21}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/sddr55.c", i32 433, i32 21}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/sddr55.c", i32 447, i32 21}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/sddr55.c", i32 460, i32 21}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/sddr55.c", i32 481, i32 20}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/storage/sddr55.c", i32 490, i32 4}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sddr55_write_data._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sddr55_write_data._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/storage/sddr55.c", i32 231, i32 20}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/storage/sddr55.c", i32 255, i32 21}
!101 = !{ptr @sddr55_usb_ids, !102, !"sddr55_usb_ids", i1 false, i1 false}
!102 = !{!"../drivers/usb/storage/sddr55.c", i32 43, i32 29}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{!"branch_weights", i32 1, i32 2000}
