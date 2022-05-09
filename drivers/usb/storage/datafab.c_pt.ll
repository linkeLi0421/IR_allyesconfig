; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/datafab.c_pt.bc'
source_filename = "../drivers/usb/storage/datafab.c"
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
%struct.datafab_info = type { i32, i32, i8, i8, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description290 = internal constant [68 x i8] c"ums_datafab.description=Driver for Datafab USB Compact Flash reader\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [68 x i8] c"ums_datafab.author=Jimmie Mayfield <mayfield+datafab@sackheads.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"ums_datafab.file=drivers/usb/storage/ums-datafab\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"ums_datafab.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [34 x i8] c"ums_datafab.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_datafab__303_757_datafab_driver_init6 = internal global ptr @datafab_driver_init, section ".initcall6.init", align 4
@datafab_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @datafab_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @datafab_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_datafab_driver_exit = internal global ptr @datafab_driver_exit, section ".exitcall.exit", align 4
@datafab_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums-datafab\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ums_datafab\00", [20 x i8] zeroinitializer }, align 32
@datafab_usb_ids = internal global { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1988, i16 -24576, i16 0, i16 21, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24575, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24574, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24573, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24572, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24571, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24570, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24311, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1988, i16 -24309, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3083, i16 -24311, i16 0, i16 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@datafab_unusual_dev_list = internal global { [11 x %struct.us_unusual_dev], [48 x i8] } { [11 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.3, ptr @.str.4, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.5, ptr @.str.6, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.7, ptr @.str.8, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.7, ptr @.str.9, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.7, ptr @.str.9, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.10, ptr @.str.11, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.12, ptr @.str.13, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.14, ptr @.str.15, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.16, ptr @.str.17, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev { ptr @.str.18, ptr @.str.19, i8 6, i8 -14, ptr null }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Datafab Bulk-Only\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Datafab\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MDCFE-B USB CF Reader\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SIIG/Datafab\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SIIG/Datafab Memory Stick+CF Reader/Writer\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Datafab/Unknown\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MD2/MD3 Disk enclosure\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Datafab-based Reader\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PNY/Datafab\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PNY/Datafab CF+SM Reader\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Simple Tech/Datafab\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Simple Tech/Datafab CF+SM Reader\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Datafab Systems, Inc.\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB to CF + SM Combo (LC1)\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DataFab Systems Inc.\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB CF+MS\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Acomdata\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CF\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INQUIRY - Returning bogus response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"READ_CAPACITY:  %ld sectors, %ld bytes per sector\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Gah! MODE_SELECT_10\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"READ_10: read block 0x%04lx  count %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"READ_12: read block 0x%04lx  count %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WRITE_10: write block 0x%04lx count %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WRITE_12: write block 0x%04lx count %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_UNIT_READY\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"REQUEST_SENSE - Returning faked response\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MODE_SENSE_6 detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MODE_SENSE_10 detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"START_STOP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"locating...\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"len = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Gah! write return code: %02x %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@datafab_handle_mode_sense.rw_err_page = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\0A!\01\00\00\00\00\01\00\00\00", [20 x i8] zeroinitializer }, align 32
@datafab_handle_mode_sense.cache_page = internal constant { <{ i8, i8, i8, [9 x i8] }>, [20 x i8] } { <{ i8, i8, i8, [9 x i8] }> <{ i8 8, i8 10, i8 1, [9 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@datafab_handle_mode_sense.rbac_page = internal constant { <{ i8, i8, i8, i8, [8 x i8] }>, [20 x i8] } { <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 27, i8 10, i8 0, i8 -127, [8 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Current values\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Changeable values\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Default values\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Saves values\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.datafab_handle_mode_sense = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 3, i64 18, i64 26, i64 27, i64 30, i64 37, i64 40, i64 42, i64 85, i64 90, i64 168, i64 170]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 8, i64 27, i64 28, i64 63]
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"datafab_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 743, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"datafab_host_template\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 720, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 757, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"datafab_usb_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 83, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"datafab_unusual_dev_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 105, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 734, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 9, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 26, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 33, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 39, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 51, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 57, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 64, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 75, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [41 x i8] c"../drivers/usb/storage/unusual_datafab.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 81, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 569, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 581, i32 20 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 594, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 606, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 620, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 631, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 645, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 651, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 656, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 674, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 679, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 696, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 712, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 335, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 129, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 295, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"rw_err_page\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 440, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"cache_page\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 443, i32 23 }
@___asan_gen_.167 = private unnamed_addr constant [10 x i8] c"rbac_page\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 446, i32 23 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 467, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 470, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 473, i32 23 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [33 x i8] c"../drivers/usb/storage/datafab.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 476, i32 23 }
@___asan_gen_.182 = private unnamed_addr constant [39 x i8] c"switch.table.datafab_handle_mode_sense\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_datafab_driver_exit, ptr @__initcall__kmod_ums_datafab__303_757_datafab_driver_init6, ptr @datafab_driver_exit, ptr @datafab_driver, ptr @datafab_host_template, ptr @.str, ptr @.str.1, ptr @datafab_usb_ids, ptr @datafab_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @datafab_handle_mode_sense.rw_err_page, ptr @datafab_handle_mode_sense.cache_page, ptr @datafab_handle_mode_sense.rbac_page, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.datafab_handle_mode_sense], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_usb_ids to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_unusual_dev_list to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_handle_mode_sense.rw_err_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_handle_mode_sense.cache_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datafab_handle_mode_sense.rbac_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.datafab_handle_mode_sense to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @datafab_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @datafab_host_template, ptr noundef nonnull @.str, ptr noundef null) #8
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @datafab_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @datafab_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @datafab_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @datafab_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #8
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !113
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @datafab_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @datafab_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @datafab_host_template) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  store ptr @datafab_transport, ptr %transport, align 4
  %transport_reset = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 20
  %5 = ptrtoint ptr %transport_reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb_stor_Bulk_reset, ptr %transport_reset, align 4
  %max_lun = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 16
  %6 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %max_lun, align 2
  %call1 = call i32 @usb_stor_probe2(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %us) #8
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
define internal i32 @datafab_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3328, i32 noundef 20) #11
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %extra, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %extra_destructor = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 36
  %6 = ptrtoint ptr %extra_destructor to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @datafab_info_destructor, ptr %extra_destructor, align 4
  %lun = getelementptr inbounds %struct.datafab_info, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %lun to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %lun, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end248 [
    i8 18, label %if.then9
    i8 37, label %if.then16
    i8 85, label %if.then33
    i8 40, label %if.then40
    i8 -88, label %if.then72
    i8 42, label %if.then116
    i8 -86, label %if.then150
    i8 0, label %if.then194
    i8 3, label %if.then202
    i8 26, label %if.then216
    i8 90, label %if.then224
    i8 30, label %if.end6.cleanup_crit_edge
    i8 27, label %if.then239
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20) #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 36028801834024960, ptr %1, align 1
  tail call void @fill_inquiry_response(ptr noundef %us, ptr noundef %1, i32 noundef 36) #8
  br label %cleanup

if.then16:                                        ; preds = %if.end6
  %ssize = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %ssize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %ssize, align 4
  %call17 = tail call fastcc i32 @datafab_id_device(ptr noundef %us, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end21, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 4
  %19 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ssize, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %18, i32 noundef %20) #8
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %9, align 4
  %sub = add i32 %22, -1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %1, align 4
  %24 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssize, align 4
  %arrayidx26 = getelementptr i32, ptr %1, i32 1
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx26, align 4
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 8, ptr noundef %srb) #8
  br label %cleanup

if.then33:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.then40:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr i8, ptr %11, i32 2
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %28 to i32
  %shl = shl nuw i32 %conv43, 24
  %arrayidx45 = getelementptr i8, ptr %11, i32 3
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %30 to i32
  %shl47 = shl nuw nsw i32 %conv46, 16
  %or = or i32 %shl47, %shl
  %arrayidx49 = getelementptr i8, ptr %11, i32 4
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %32 to i32
  %shl51 = shl nuw nsw i32 %conv50, 8
  %or52 = or i32 %or, %shl51
  %arrayidx54 = getelementptr i8, ptr %11, i32 5
  %33 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %34 to i32
  %or56 = or i32 %or52, %conv55
  %arrayidx58 = getelementptr i8, ptr %11, i32 7
  %35 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %36 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %arrayidx62 = getelementptr i8, ptr %11, i32 8
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %38 to i32
  %or64 = or i32 %shl60, %conv63
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.23, i32 noundef %or56, i32 noundef %or64) #8
  %call65 = tail call fastcc i32 @datafab_read_data(ptr noundef %us, ptr noundef %9, i32 noundef %or56, i32 noundef %or64)
  br label %cleanup

if.then72:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx74 = getelementptr i8, ptr %11, i32 2
  %39 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %40 to i32
  %shl76 = shl nuw i32 %conv75, 24
  %arrayidx78 = getelementptr i8, ptr %11, i32 3
  %41 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %42 to i32
  %shl80 = shl nuw nsw i32 %conv79, 16
  %or81 = or i32 %shl80, %shl76
  %arrayidx83 = getelementptr i8, ptr %11, i32 4
  %43 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %44 to i32
  %shl85 = shl nuw nsw i32 %conv84, 8
  %or86 = or i32 %or81, %shl85
  %arrayidx88 = getelementptr i8, ptr %11, i32 5
  %45 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %46 to i32
  %or90 = or i32 %or86, %conv89
  %arrayidx92 = getelementptr i8, ptr %11, i32 6
  %47 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %48 to i32
  %shl94 = shl nuw i32 %conv93, 24
  %arrayidx96 = getelementptr i8, ptr %11, i32 7
  %49 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %50 to i32
  %shl98 = shl nuw nsw i32 %conv97, 16
  %or99 = or i32 %shl98, %shl94
  %arrayidx101 = getelementptr i8, ptr %11, i32 8
  %51 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %52 to i32
  %shl103 = shl nuw nsw i32 %conv102, 8
  %or104 = or i32 %or99, %shl103
  %arrayidx106 = getelementptr i8, ptr %11, i32 9
  %53 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %54 to i32
  %or108 = or i32 %or104, %conv107
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24, i32 noundef %or90, i32 noundef %or108) #8
  %call109 = tail call fastcc i32 @datafab_read_data(ptr noundef %us, ptr noundef %9, i32 noundef %or90, i32 noundef %or108)
  br label %cleanup

if.then116:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx118 = getelementptr i8, ptr %11, i32 2
  %55 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %56 to i32
  %shl120 = shl nuw i32 %conv119, 24
  %arrayidx122 = getelementptr i8, ptr %11, i32 3
  %57 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %58 to i32
  %shl124 = shl nuw nsw i32 %conv123, 16
  %or125 = or i32 %shl124, %shl120
  %arrayidx127 = getelementptr i8, ptr %11, i32 4
  %59 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %60 to i32
  %shl129 = shl nuw nsw i32 %conv128, 8
  %or130 = or i32 %or125, %shl129
  %arrayidx132 = getelementptr i8, ptr %11, i32 5
  %61 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %62 to i32
  %or134 = or i32 %or130, %conv133
  %arrayidx136 = getelementptr i8, ptr %11, i32 7
  %63 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %64 to i32
  %shl138 = shl nuw nsw i32 %conv137, 8
  %arrayidx140 = getelementptr i8, ptr %11, i32 8
  %65 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %66 to i32
  %or142 = or i32 %shl138, %conv141
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.25, i32 noundef %or134, i32 noundef %or142) #8
  %call143 = tail call fastcc i32 @datafab_write_data(ptr noundef %us, ptr noundef %9, i32 noundef %or134, i32 noundef %or142)
  br label %cleanup

if.then150:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx152 = getelementptr i8, ptr %11, i32 2
  %67 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %68 to i32
  %shl154 = shl nuw i32 %conv153, 24
  %arrayidx156 = getelementptr i8, ptr %11, i32 3
  %69 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %70 to i32
  %shl158 = shl nuw nsw i32 %conv157, 16
  %or159 = or i32 %shl158, %shl154
  %arrayidx161 = getelementptr i8, ptr %11, i32 4
  %71 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %72 to i32
  %shl163 = shl nuw nsw i32 %conv162, 8
  %or164 = or i32 %or159, %shl163
  %arrayidx166 = getelementptr i8, ptr %11, i32 5
  %73 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %74 to i32
  %or168 = or i32 %or164, %conv167
  %arrayidx170 = getelementptr i8, ptr %11, i32 6
  %75 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %76 to i32
  %shl172 = shl nuw i32 %conv171, 24
  %arrayidx174 = getelementptr i8, ptr %11, i32 7
  %77 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %78 to i32
  %shl176 = shl nuw nsw i32 %conv175, 16
  %or177 = or i32 %shl176, %shl172
  %arrayidx179 = getelementptr i8, ptr %11, i32 8
  %79 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %80 to i32
  %shl181 = shl nuw nsw i32 %conv180, 8
  %or182 = or i32 %or177, %shl181
  %arrayidx184 = getelementptr i8, ptr %11, i32 9
  %81 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %82 to i32
  %or186 = or i32 %or182, %conv185
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef %or168, i32 noundef %or186) #8
  %call187 = tail call fastcc i32 @datafab_write_data(ptr noundef %us, ptr noundef %9, i32 noundef %or168, i32 noundef %or186)
  br label %cleanup

if.then194:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.27) #8
  %call195 = tail call fastcc i32 @datafab_id_device(ptr noundef %us, ptr noundef %9)
  br label %cleanup

if.then202:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.28) #8
  %83 = getelementptr inbounds i8, ptr %1, i32 1
  %84 = call ptr @memset(ptr %83, i32 0, i32 17)
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -16, ptr %1, align 1
  %sense_key = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 3
  %86 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sense_key, align 1
  %arrayidx204 = getelementptr i8, ptr %1, i32 2
  %88 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx204, align 1
  %arrayidx205 = getelementptr i8, ptr %1, i32 7
  %89 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 11, ptr %arrayidx205, align 1
  %sense_asc = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 4
  %90 = ptrtoint ptr %sense_asc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sense_asc, align 4
  %conv206 = trunc i32 %91 to i8
  %arrayidx207 = getelementptr i8, ptr %1, i32 12
  %92 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv206, ptr %arrayidx207, align 1
  %sense_ascq = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 5
  %93 = ptrtoint ptr %sense_ascq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sense_ascq, align 4
  %conv208 = trunc i32 %94 to i8
  %arrayidx209 = getelementptr i8, ptr %1, i32 13
  %95 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv208, ptr %arrayidx209, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 18, ptr noundef %srb) #8
  br label %cleanup

if.then216:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.29) #8
  %call217 = tail call fastcc i32 @datafab_handle_mode_sense(ptr noundef %us, ptr noundef %srb, i32 noundef 1)
  br label %cleanup

if.then224:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.30) #8
  %call225 = tail call fastcc i32 @datafab_handle_mode_sense(ptr noundef %us, ptr noundef %srb, i32 noundef 0)
  br label %cleanup

if.then239:                                       ; preds = %if.end6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31) #8
  %call240 = tail call fastcc i32 @datafab_id_device(ptr noundef %us, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp241 = icmp eq i32 %call240, 0
  %sense_key244 = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 3
  br i1 %cmp241, label %if.then243, label %if.else

if.then243:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %sense_key244 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %sense_key244, align 1
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %97 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8194, ptr %result, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %sense_key244 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %sense_key244, align 1
  %result246 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %99 = ptrtoint ptr %result246 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %result246, align 4
  br label %cleanup

if.end248:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv) #8
  %sense_key255 = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 3
  %100 = ptrtoint ptr %sense_key255 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 5, ptr %sense_key255, align 1
  %sense_asc256 = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 4
  %101 = ptrtoint ptr %sense_asc256 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 32, ptr %sense_asc256, align 4
  %sense_ascq257 = getelementptr inbounds %struct.datafab_info, ptr %9, i32 0, i32 5
  %102 = ptrtoint ptr %sense_ascq257 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %sense_ascq257, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %if.else, %if.then243, %if.then224, %if.then216, %if.then202, %if.then194, %if.then150, %if.then116, %if.then72, %if.then40, %if.then33, %if.end21, %if.then16.cleanup_crit_edge, %if.then9, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end21 ], [ 3, %if.then33 ], [ %call65, %if.then40 ], [ %call109, %if.then72 ], [ %call143, %if.then116 ], [ %call187, %if.then150 ], [ %call195, %if.then194 ], [ 0, %if.then202 ], [ %call217, %if.then216 ], [ %call225, %if.then224 ], [ 1, %if.end248 ], [ 3, %if.then.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call240, %if.else ], [ 0, %if.then243 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @datafab_info_destructor(ptr nocapture noundef %extra) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fill_inquiry_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datafab_id_device(ptr noundef %us, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lun = getelementptr inbounds %struct.datafab_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lun, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @datafab_determine_lun(ptr noundef %us, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 281474987256833, ptr %1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3072, i32 noundef 512) #11
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lun, align 4
  %shl = shl i8 %7, 4
  %arrayidx = getelementptr i8, ptr %1, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %add = add i8 %shl, %9
  store i8 %add, ptr %arrayidx, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 8) #8
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %10 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %11, ptr noundef %1, i32 noundef 8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.not = icmp eq i32 %call.i, 0
  br i1 %cmp17.not, label %if.end20, label %if.end11.leave_crit_edge

if.end11.leave_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.end20:                                         ; preds = %if.end11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 512) #8
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %12 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i60 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %13, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp22 = icmp eq i32 %call.i60, 0
  br i1 %cmp22, label %if.then24, label %if.end20.leave_crit_edge

if.end20.leave_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25 = getelementptr i8, ptr %call7.i, i32 117
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl nuw i32 %conv26, 24
  %arrayidx28 = getelementptr i8, ptr %call7.i, i32 116
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 4
  %conv29 = zext i8 %17 to i32
  %shl30 = shl nuw nsw i32 %conv29, 16
  %or = or i32 %shl30, %shl27
  %arrayidx31 = getelementptr i8, ptr %call7.i, i32 115
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %or34 = or i32 %or, %shl33
  %arrayidx35 = getelementptr i8, ptr %call7.i, i32 114
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 2
  %conv36 = zext i8 %21 to i32
  %or37 = or i32 %or34, %conv36
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or37, ptr %info, align 4
  br label %leave

leave:                                            ; preds = %if.then24, %if.end20.leave_crit_edge, %if.end11.leave_crit_edge
  %rc.0 = phi i32 [ 0, %if.then24 ], [ 3, %if.end11.leave_crit_edge ], [ 3, %if.end20.leave_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %leave, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %leave ], [ 3, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ 3, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datafab_read_data(ptr noundef %us, ptr noundef %info, i32 noundef %sector, i32 noundef %sectors) unnamed_addr #2 align 64 {
entry:
  %sg_offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_offset) #8
  %2 = ptrtoint ptr %sg_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sg_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #8
  %3 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sectors)
  %cmp = icmp ugt i32 %sectors, 268435455
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lun = getelementptr inbounds %struct.datafab_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lun, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp1 = icmp eq i8 %5, -1
  br i1 %cmp1, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc i32 @datafab_determine_lun(ptr noundef %us, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ssize = getelementptr inbounds %struct.datafab_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssize, align 4
  %mul = mul i32 %7, %sectors
  %8 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3072) #12
  %cmp12 = icmp eq ptr %call9.i, null
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %do.body.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %if.end8
  %arrayidx25 = getelementptr i8, ptr %1, i32 1
  %arrayidx28 = getelementptr i8, ptr %1, i32 2
  %arrayidx31 = getelementptr i8, ptr %1, i32 3
  %arrayidx35 = getelementptr i8, ptr %1, i32 4
  %arrayidx39 = getelementptr i8, ptr %1, i32 5
  %arrayidx45 = getelementptr i8, ptr %1, i32 6
  %arrayidx46 = getelementptr i8, ptr %1, i32 7
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %if.end56.do.body_crit_edge, %do.body.preheader
  %totallen.0 = phi i32 [ %sub, %if.end56.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  %sector.addr.0 = phi i32 [ %add59, %if.end56.do.body_crit_edge ], [ %sector, %do.body.preheader ]
  %9 = call i32 @llvm.umin.i32(i32 %totallen.0, i32 %8)
  %10 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssize, align 4
  %div = udiv i32 %9, %11
  %conv24 = trunc i32 %div to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %1, align 1
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv24, ptr %arrayidx25, align 1
  %conv27 = trunc i32 %sector.addr.0 to i8
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27, ptr %arrayidx28, align 1
  %shr = lshr i32 %sector.addr.0, 8
  %conv30 = trunc i32 %shr to i8
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv30, ptr %arrayidx31, align 1
  %shr32 = lshr i32 %sector.addr.0, 16
  %conv34 = trunc i32 %shr32 to i8
  %16 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv34, ptr %arrayidx35, align 1
  %17 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lun, align 4
  %shl = shl i8 %18, 4
  %add = add i8 %shl, -32
  %shr40 = lshr i32 %sector.addr.0, 24
  %19 = trunc i32 %shr40 to i8
  %20 = and i8 %19, 15
  %conv44 = or i8 %add, %20
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv44, ptr %arrayidx39, align 1
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %arrayidx45, align 1
  %23 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx46, align 1
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 8) #8
  %24 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %25, ptr noundef %1, i32 noundef 8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48.not = icmp eq i32 %call.i, 0
  br i1 %cmp48.not, label %if.end51, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end51:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i112 = icmp eq i32 %9, 0
  br i1 %cmp.i112, label %if.end51.if.end56_crit_edge, label %datafab_bulk_read.exit

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

datafab_bulk_read.exit:                           ; preds = %if.end51
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %9) #8
  %26 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i113 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %27, ptr noundef nonnull %call9.i, i32 noundef %9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp53.not = icmp eq i32 %call.i113, 0
  br i1 %cmp53.not, label %datafab_bulk_read.exit.if.end56_crit_edge, label %datafab_bulk_read.exit.cleanup.sink.split_crit_edge

datafab_bulk_read.exit.cleanup.sink.split_crit_edge: ; preds = %datafab_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

datafab_bulk_read.exit.if.end56_crit_edge:        ; preds = %datafab_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end56:                                         ; preds = %datafab_bulk_read.exit.if.end56_crit_edge, %if.end51.if.end56_crit_edge
  %28 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srb, align 4
  %call57 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %9, ptr noundef %29, ptr noundef nonnull %sg, ptr noundef nonnull %sg_offset, i32 noundef 0) #8
  %conv58 = and i32 %div, 255
  %add59 = add i32 %conv58, %sector.addr.0
  %sub = sub i32 %totallen.0, %9
  %cmp60.not = icmp eq i32 %sub, 0
  br i1 %cmp60.not, label %if.end56.cleanup.sink.split_crit_edge, label %if.end56.do.body_crit_edge

if.end56.do.body_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end56.cleanup.sink.split_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end56.cleanup.sink.split_crit_edge, %datafab_bulk_read.exit.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end56.cleanup.sink.split_crit_edge ], [ 3, %datafab_bulk_read.exit.cleanup.sink.split_crit_edge ], [ 3, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %call, %if.then3.cleanup_crit_edge ], [ 3, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datafab_write_data(ptr noundef %us, ptr noundef %info, i32 noundef %sector, i32 noundef %sectors) unnamed_addr #2 align 64 {
entry:
  %sg_offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_offset) #8
  %2 = ptrtoint ptr %sg_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sg_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #8
  %3 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sectors)
  %cmp = icmp ugt i32 %sectors, 268435455
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lun = getelementptr inbounds %struct.datafab_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lun, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp2 = icmp eq i8 %5, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %call = tail call fastcc i32 @datafab_determine_lun(ptr noundef %us, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %if.then4.if.end9_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ssize = getelementptr inbounds %struct.datafab_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssize, align 4
  %mul = mul i32 %7, %sectors
  %8 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3072) #12
  %cmp13 = icmp eq ptr %call9.i, null
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %do.body.preheader

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %if.end9
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %arrayidx27 = getelementptr i8, ptr %1, i32 1
  %arrayidx30 = getelementptr i8, ptr %1, i32 2
  %arrayidx33 = getelementptr i8, ptr %1, i32 3
  %arrayidx37 = getelementptr i8, ptr %1, i32 4
  %arrayidx41 = getelementptr i8, ptr %1, i32 5
  %arrayidx47 = getelementptr i8, ptr %1, i32 6
  %arrayidx48 = getelementptr i8, ptr %1, i32 7
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.end77.do.body_crit_edge, %do.body.preheader
  %totallen.0 = phi i32 [ %sub, %if.end77.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  %sector.addr.0 = phi i32 [ %add79, %if.end77.do.body_crit_edge ], [ %sector, %do.body.preheader ]
  %9 = call i32 @llvm.umin.i32(i32 %totallen.0, i32 %8)
  %10 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssize, align 4
  %div = udiv i32 %9, %11
  %conv25 = trunc i32 %div to i8
  %12 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb, align 4
  %call26 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %9, ptr noundef %13, ptr noundef nonnull %sg, ptr noundef nonnull %sg_offset, i32 noundef 1) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %1, align 1
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv25, ptr %arrayidx27, align 1
  %conv29 = trunc i32 %sector.addr.0 to i8
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv29, ptr %arrayidx30, align 1
  %shr = lshr i32 %sector.addr.0, 8
  %conv32 = trunc i32 %shr to i8
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv32, ptr %arrayidx33, align 1
  %shr34 = lshr i32 %sector.addr.0, 16
  %conv36 = trunc i32 %shr34 to i8
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv36, ptr %arrayidx37, align 1
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lun, align 4
  %shl = shl i8 %20, 4
  %add = add i8 %shl, -32
  %shr42 = lshr i32 %sector.addr.0, 24
  %21 = trunc i32 %shr42 to i8
  %22 = and i8 %21, 15
  %conv46 = or i8 %add, %22
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv46, ptr %arrayidx41, align 1
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 48, ptr %arrayidx47, align 1
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx48, align 1
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 8) #8
  %26 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %27, ptr noundef %1, i32 noundef 8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp50.not = icmp eq i32 %call.i, 0
  br i1 %cmp50.not, label %if.end53, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end53:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i141 = icmp eq i32 %9, 0
  br i1 %cmp.i141, label %if.end53.if.end58_crit_edge, label %datafab_bulk_write.exit

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

datafab_bulk_write.exit:                          ; preds = %if.end53
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %9) #8
  %28 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i143 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %29, ptr noundef nonnull %call9.i, i32 noundef %9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %cmp55.not = icmp eq i32 %call.i143, 0
  br i1 %cmp55.not, label %datafab_bulk_write.exit.if.end58_crit_edge, label %datafab_bulk_write.exit.cleanup.sink.split_crit_edge

datafab_bulk_write.exit.cleanup.sink.split_crit_edge: ; preds = %datafab_bulk_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

datafab_bulk_write.exit.if.end58_crit_edge:       ; preds = %datafab_bulk_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %datafab_bulk_write.exit.if.end58_crit_edge, %if.end53.if.end58_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 2) #8
  %30 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i145 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %31, ptr noundef %1, i32 noundef 2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp60.not = icmp eq i32 %call.i145, 0
  br i1 %cmp60.not, label %if.end63, label %if.end58.cleanup.sink.split_crit_edge

if.end58.cleanup.sink.split_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end63:                                         ; preds = %if.end58
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %33)
  %cmp66.not = icmp eq i8 %33, 80
  br i1 %cmp66.not, label %if.end63.if.end77_crit_edge, label %land.lhs.true

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true:                                    ; preds = %if.end63
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp70.not = icmp eq i8 %35, 0
  br i1 %cmp70.not, label %land.lhs.true.if.end77_crit_edge, label %if.then72

land.lhs.true.if.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv65.le = zext i8 %33 to i32
  %conv69 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.35, i32 noundef %conv65.le, i32 noundef %conv69) #8
  br label %cleanup.sink.split

if.end77:                                         ; preds = %land.lhs.true.if.end77_crit_edge, %if.end63.if.end77_crit_edge
  %conv78 = and i32 %div, 255
  %add79 = add i32 %conv78, %sector.addr.0
  %sub = sub i32 %totallen.0, %9
  %cmp80.not = icmp eq i32 %sub, 0
  br i1 %cmp80.not, label %if.end77.cleanup.sink.split_crit_edge, label %if.end77.do.body_crit_edge

if.end77.do.body_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end77.cleanup.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end77.cleanup.sink.split_crit_edge, %if.then72, %if.end58.cleanup.sink.split_crit_edge, %datafab_bulk_write.exit.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 3, %if.then72 ], [ 0, %if.end77.cleanup.sink.split_crit_edge ], [ 3, %if.end58.cleanup.sink.split_crit_edge ], [ 3, %datafab_bulk_write.exit.cleanup.sink.split_crit_edge ], [ 3, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %call, %if.then4.cleanup_crit_edge ], [ 3, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datafab_handle_mode_sense(ptr noundef %us, ptr noundef %srb, i32 noundef %sense_6) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %2 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobuf, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = lshr i8 %7, 6
  %9 = and i8 %7, 63
  %conv6 = zext i8 %8 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.datafab_handle_mode_sense, i32 0, i32 %conv6
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull %switch.load) #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_6)
  %tobool.not = icmp eq i32 %sense_6, 0
  %. = select i1 %tobool.not, i32 3, i32 2
  %.88 = select i1 %tobool.not, i32 8, i32 4
  %arrayidx11 = getelementptr i8, ptr %3, i32 %.
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %13 = zext i32 %conv12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %conv12, label %sw.default [
    i32 1, label %sw.bb13
    i32 8, label %sw.bb14
    i32 27, label %sw.bb17
    i32 28, label %sw.bb20
    i32 63, label %sw.bb23
  ]

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sense_key = getelementptr inbounds %struct.datafab_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %sense_key to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %sense_key, align 1
  %sense_asc = getelementptr inbounds %struct.datafab_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %sense_asc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 36, ptr %sense_asc, align 4
  %sense_ascq = getelementptr inbounds %struct.datafab_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %sense_ascq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sense_ascq, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %3, i32 %.88
  %17 = call ptr @memcpy(ptr %add.ptr, ptr @datafab_handle_mode_sense.rw_err_page, i32 12)
  br label %sw.epilog32

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr15 = getelementptr i8, ptr %3, i32 %.88
  %18 = call ptr @memcpy(ptr %add.ptr15, ptr @datafab_handle_mode_sense.cache_page, i32 12)
  br label %sw.epilog32

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr18 = getelementptr i8, ptr %3, i32 %.88
  %19 = call ptr @memcpy(ptr %add.ptr18, ptr @datafab_handle_mode_sense.rbac_page, i32 12)
  br label %sw.epilog32

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr21 = getelementptr i8, ptr %3, i32 %.88
  %20 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 2019301482922246144, ptr %add.ptr21, align 1
  br label %sw.epilog32

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24 = getelementptr i8, ptr %3, i32 %.88
  %21 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 2019301482922246144, ptr %add.ptr24, align 1
  %add25 = add nuw nsw i32 %.88, 8
  %add.ptr26 = getelementptr i8, ptr %3, i32 %add25
  %22 = call ptr @memcpy(ptr %add.ptr26, ptr @datafab_handle_mode_sense.rbac_page, i32 12)
  %add27 = add nuw nsw i32 %.88, 20
  %add.ptr28 = getelementptr i8, ptr %3, i32 %add27
  %23 = call ptr @memcpy(ptr %add.ptr28, ptr @datafab_handle_mode_sense.cache_page, i32 12)
  %add29 = or i32 %.88, 32
  %add.ptr30 = getelementptr i8, ptr %3, i32 %add29
  %24 = call ptr @memcpy(ptr %add.ptr30, ptr @datafab_handle_mode_sense.rw_err_page, i32 12)
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb13
  %.sink87 = phi i32 [ 44, %sw.bb23 ], [ 8, %sw.bb20 ], [ 12, %sw.bb17 ], [ 12, %sw.bb14 ], [ 12, %sw.bb13 ]
  %add31 = add nuw nsw i32 %.88, %.sink87
  br i1 %tobool.not, label %if.else37, label %if.then34

if.then34:                                        ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  %25 = trunc i32 %add31 to i8
  %conv35 = add nsw i8 %25, -1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %3, align 1
  br label %if.end41

if.else37:                                        ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  %27 = trunc i32 %add31 to i16
  %conv39 = add nsw i16 %27, -2
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv39, ptr %3, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.then34
  tail call void @usb_stor_set_xfer_buf(ptr noundef %3, i32 noundef %add31, ptr noundef %srb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %sw.default
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @datafab_determine_lun(ptr noundef %us, ptr noundef writeonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 281474987256833, ptr %1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3072, i32 noundef 512) #11
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.33) #8
  %arrayidx = getelementptr i8, ptr %1, i32 5
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end3
  %inc48 = phi i32 [ 1, %if.end3 ], [ %inc, %if.end21.while.body_crit_edge ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -96, ptr %arrayidx, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 8) #8
  %5 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %6, ptr noundef %1, i32 noundef 8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %if.end7, label %while.body.leave_crit_edge

while.body.leave_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.end7:                                          ; preds = %while.body
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 512) #8
  %7 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i43 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %8, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp9 = icmp eq i32 %call.i43, 0
  br i1 %cmp9, label %if.end7.leave.sink.split_crit_edge, label %if.end11

if.end7.leave.sink.split_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave.sink.split

if.end11:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -80, ptr %arrayidx, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 8) #8
  %10 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i45 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %11, ptr noundef %1, i32 noundef 8, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp14.not = icmp eq i32 %call.i45, 0
  br i1 %cmp14.not, label %if.end16, label %if.end11.leave_crit_edge

if.end11.leave_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.end16:                                         ; preds = %if.end11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 512) #8
  %12 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i47 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %13, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp18 = icmp eq i32 %call.i47, 0
  br i1 %cmp18, label %if.end16.leave.sink.split_crit_edge, label %if.end21

if.end16.leave.sink.split_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave.sink.split

if.end21:                                         ; preds = %if.end16
  tail call void @msleep(i32 noundef 20) #8
  %inc = add nuw nsw i32 %inc48, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end21.leave_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end21.leave_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

leave.sink.split:                                 ; preds = %if.end16.leave.sink.split_crit_edge, %if.end7.leave.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.end7.leave.sink.split_crit_edge ], [ 1, %if.end16.leave.sink.split_crit_edge ]
  %lun20 = getelementptr inbounds %struct.datafab_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %lun20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %lun20, align 4
  br label %leave

leave:                                            ; preds = %leave.sink.split, %if.end21.leave_crit_edge, %if.end11.leave_crit_edge, %while.body.leave_crit_edge
  %rc.0 = phi i32 [ 0, %leave.sink.split ], [ 3, %while.body.leave_crit_edge ], [ 3, %if.end11.leave_crit_edge ], [ 3, %if.end21.leave_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %leave, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %leave ], [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/datafab.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/datafab.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/datafab.c", i32 56, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/datafab.c", i32 57, i32 1}
!9 = !{ptr @__initcall__kmod_ums_datafab__303_757_datafab_driver_init6, !10, !"__initcall__kmod_ums_datafab__303_757_datafab_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/datafab.c", i32 757, i32 1}
!11 = !{ptr @__exitcall_datafab_driver_exit, !10, !"__exitcall_datafab_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @datafab_host_template, !15, !"datafab_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/datafab.c", i32 720, i32 34}
!16 = !{ptr @datafab_driver, !17, !"datafab_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/datafab.c", i32 743, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/datafab.c", i32 734, i32 24}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 9, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 26, i32 1}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 33, i32 1}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 39, i32 1}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 51, i32 1}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 57, i32 1}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 64, i32 1}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 75, i32 1}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/storage/unusual_datafab.h", i32 81, i32 1}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @datafab_unusual_dev_list, !47, !"datafab_unusual_dev_list", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/datafab.c", i32 105, i32 30}
!48 = distinct !{null, !49, !"inquiry_reply", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/datafab.c", i32 553, i32 23}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/datafab.c", i32 569, i32 20}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/datafab.c", i32 581, i32 20}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/storage/datafab.c", i32 594, i32 20}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/datafab.c", i32 606, i32 20}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/storage/datafab.c", i32 620, i32 20}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/storage/datafab.c", i32 631, i32 20}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/storage/datafab.c", i32 645, i32 20}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/storage/datafab.c", i32 651, i32 20}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/storage/datafab.c", i32 656, i32 20}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/storage/datafab.c", i32 674, i32 20}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/storage/datafab.c", i32 679, i32 20}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/storage/datafab.c", i32 696, i32 20}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/storage/datafab.c", i32 712, i32 19}
!76 = distinct !{null, !77, !"scommand", i1 false, i1 false}
!77 = !{!"../drivers/usb/storage/datafab.c", i32 387, i32 23}
!78 = distinct !{null, !79, !"scommand", i1 false, i1 false}
!79 = !{!"../drivers/usb/storage/datafab.c", i32 322, i32 23}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/storage/datafab.c", i32 335, i32 19}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/storage/datafab.c", i32 129, i32 19}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/datafab.c", i32 295, i32 21}
!86 = !{ptr @datafab_handle_mode_sense.rw_err_page, !87, !"rw_err_page", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/datafab.c", i32 440, i32 23}
!88 = !{ptr @datafab_handle_mode_sense.cache_page, !89, !"cache_page", i1 false, i1 false}
!89 = !{!"../drivers/usb/storage/datafab.c", i32 443, i32 23}
!90 = !{ptr @datafab_handle_mode_sense.rbac_page, !91, !"rbac_page", i1 false, i1 false}
!91 = !{!"../drivers/usb/storage/datafab.c", i32 446, i32 23}
!92 = distinct !{null, !93, !"timer_page", i1 false, i1 false}
!93 = !{!"../drivers/usb/storage/datafab.c", i32 449, i32 23}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/storage/datafab.c", i32 467, i32 23}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/storage/datafab.c", i32 470, i32 23}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/storage/datafab.c", i32 473, i32 23}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/storage/datafab.c", i32 476, i32 23}
!102 = !{ptr @datafab_usb_ids, !103, !"datafab_usb_ids", i1 false, i1 false}
!103 = !{!"../drivers/usb/storage/datafab.c", i32 83, i32 29}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
