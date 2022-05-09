; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/shuttle_usbat.c_pt.bc'
source_filename = "../drivers/usb/storage/shuttle_usbat.c"
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.usbat_info = type { i32, i32, i32, i8, i32, i32 }

@__UNIQUE_ID_description290 = internal constant [83 x i8] c"ums_usbat.description=Driver for SCM Microsystems (a.k.a. Shuttle) USB-ATAPI cable\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [87 x i8] c"ums_usbat.author=Daniel Drake <dsd@gentoo.org>, Robert Baruch <autophile@starband.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"ums_usbat.file=drivers/usb/storage/ums-usbat\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"ums_usbat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [32 x i8] c"ums_usbat.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_usbat__305_1872_usbat_driver_init6 = internal global ptr @usbat_driver_init, section ".initcall6.init", align 4
@usbat_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbat_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @usbat_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbat_driver_exit = internal global ptr @usbat_driver_exit, section ".exitcall.exit", align 4
@usbat_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ums-usbat\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ums_usbat\00", [22 x i8] zeroinitializer }, align 32
@usbat_usb_ids = internal global { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1008, i16 519, i16 1, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1008, i16 775, i16 1, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 1254, i16 4112, i16 0, i16 -26215, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 15, i16 1921, i16 5, i16 5, i16 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@usbat_unusual_dev_list = internal global { [5 x %struct.us_unusual_dev], [48 x i8] } { [5 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.3, ptr @.str.4, i8 5, i8 -128, ptr @init_usbat_cd }, %struct.us_unusual_dev { ptr @.str.3, ptr @.str.5, i8 5, i8 -128, ptr @init_usbat_cd }, %struct.us_unusual_dev { ptr @.str.6, ptr @.str.7, i8 6, i8 -128, ptr @init_usbat_flash }, %struct.us_unusual_dev { ptr @.str.8, ptr @.str.9, i8 6, i8 -128, ptr @init_usbat_flash }, %struct.us_unusual_dev zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Shuttle USBAT\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD-Writer+ 8200e\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD-Writer+ CD-4e\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Shuttle/SCM\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USBAT-02\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sandisk\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ImageMate SDDR-05b\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 1\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 2\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 3\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 4\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 5\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 6\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 7\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 8\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INIT 9\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INIT 10\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INIT 11\0A\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"UIO register reads %02X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Detected HP8200 CDRW\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Detected Flash reader/writer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Status = %02X\0A\00", [17 x i8] zeroinitializer }, align 32
@transferred = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wrote %08X bytes\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: len = %08X... what do I do now?\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Redoing %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bummer! %s bulk data 20 times failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Writing\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Reading\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"len = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Waited not busy for %d steps\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Waited not busy for %d minutes, timing out\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"transfersize %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPCMD_READ_CD: len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"transfersize 0, forcing %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Max read is %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@usbat_flash_transport.inquiry_response = internal constant { <{ i8, i8, i8, i8, i8, [31 x i8] }>, [60 x i8] } { <{ i8, i8, i8, i8, i8, [31 x i8] }> <{ i8 0, i8 -128, i8 0, i8 1, i8 31, [31 x i8] zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INQUIRY - Returning bogus response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"READ_CAPACITY: %ld sectors, %ld bytes per sector\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Gah! MODE_SELECT_10\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"READ_10: read block 0x%04lx  count %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"READ_12: read block 0x%04lx  count %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WRITE_10: write block 0x%04lx  count %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WRITE_12: write block 0x%04lx  count %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_UNIT_READY\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REQUEST_SENSE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no media detected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"media change detected\0A\00", [41 x i8] zeroinitializer }, align 32
@__const.usbat_flash_get_sector_count.registers = private unnamed_addr constant [3 x i8] c"\12\16\17", align 1
@__const.usbat_flash_get_sector_count.command = private unnamed_addr constant [3 x i8] c"\01\A0\EC", align 1
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Gah! identify_device failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d bytes\0A\00", [22 x i8] zeroinitializer }, align 32
@__const.usbat_flash_write_data.registers = private unnamed_addr constant [7 x i8] c"\11\12\13\14\15\16\17", align 1
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 3, i64 18, i64 30, i64 37, i64 40, i64 42, i64 85, i64 168, i64 170]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 40, i64 190]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"usbat_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1858, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"usbat_host_template\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1831, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1872, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"usbat_usb_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 165, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"usbat_unusual_dev_list\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 187, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1849, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 9, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 14, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 19, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [39 x i8] c"../drivers/usb/storage/unusual_usbat.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 25, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1470, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1478, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1488, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1494, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1500, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1507, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1513, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1521, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1527, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1533, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1544, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 824, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1007, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1011, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 307, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1590, i32 19 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"transferred\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 147, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1608, i32 21 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1621, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 653, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 655, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 655, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 664, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 665, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 665, i32 49 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 281, i32 19 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 421, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 435, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1300, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1327, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1333, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1344, i32 19 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"inquiry_response\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1686, i32 23 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1691, i32 20 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1708, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1724, i32 20 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1734, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1749, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1760, i32 20 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1775, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1782, i32 20 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1792, i32 20 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1813, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 901, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 915, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1074, i32 20 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [39 x i8] c"../drivers/usb/storage/shuttle_usbat.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1177, i32 20 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_usbat_driver_exit, ptr @__initcall__kmod_ums_usbat__305_1872_usbat_driver_init6, ptr @usbat_driver_exit, ptr @usbat_driver, ptr @usbat_host_template, ptr @.str, ptr @.str.1, ptr @usbat_usb_ids, ptr @usbat_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @transferred, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @usbat_flash_transport.inquiry_response, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbat_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbat_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbat_usb_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbat_unusual_dev_list to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transferred to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbat_flash_transport.inquiry_response to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @usbat_host_template, ptr noundef nonnull @.str, ptr noundef null) #7
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usbat_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @usbat_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbat_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #7
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !138
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @usbat_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @usbat_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @usbat_host_template) #7
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
  store ptr @usbat_flash_transport, ptr %transport, align 4
  %transport_reset = getelementptr inbounds %struct.us_data, ptr %2, i32 0, i32 20
  %5 = ptrtoint ptr %transport_reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @usb_stor_CB_reset, ptr %transport_reset, align 4
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
define internal i32 @usbat_flash_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %registers.i = alloca [3 x i8], align 1
  %command.i = alloca [3 x i8], align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end217 [
    i8 18, label %if.then
    i8 37, label %if.then7
    i8 85, label %if.then28
    i8 40, label %if.then35
    i8 -88, label %if.then67
    i8 42, label %if.then111
    i8 -86, label %if.then145
    i8 0, label %if.then189
    i8 3, label %if.then202
    i8 30, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.41) #7
  %9 = call ptr @memcpy(ptr %3, ptr @usbat_flash_transport.inquiry_response, i32 36)
  tail call void @fill_inquiry_response(ptr noundef %us, ptr noundef %3, i32 noundef 36) #7
  br label %cleanup

if.then7:                                         ; preds = %entry
  %call = tail call fastcc i32 @usbat_flash_check_media(ptr noundef %us, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8.not = icmp eq i32 %call, 0
  br i1 %cmp8.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %registers.i) #7
  %10 = call ptr @memcpy(ptr %registers.i, ptr @__const.usbat_flash_get_sector_count.registers, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %command.i) #7
  %11 = call ptr @memcpy(ptr %command.i, ptr @__const.usbat_flash_get_sector_count.command, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #7
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %status.i, align 1, !annotation !138
  %tobool.not.i = icmp eq ptr %us, null
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end11.usbat_flash_get_sector_count.exit.thread_crit_edge, label %if.end.i

if.end11.usbat_flash_get_sector_count.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_flash_get_sector_count.exit.thread

if.end.i:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3072, i32 noundef 512) #10
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.usbat_flash_get_sector_count.exit.thread_crit_edge, label %if.end4.i

if.end.i.usbat_flash_get_sector_count.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_flash_get_sector_count.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = call fastcc i32 @usbat_multiple_write(ptr noundef nonnull %us, ptr noundef nonnull %registers.i, ptr noundef nonnull %command.i, i16 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.53) #7
  br label %usbat_flash_get_sector_count.exit.thread350

if.end8.i:                                        ; preds = %if.end4.i
  %recv_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %14 = ptrtoint ptr %recv_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recv_ctrl_pipe.i.i.i, align 4
  %call.i.i.i = call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %15, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef nonnull %status.i, i16 noundef zeroext 1) #7
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status.i, align 1
  %conv.i.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.24, i32 noundef %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp10.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end8.i.usbat_flash_get_sector_count.exit.thread350_crit_edge

if.end8.i.usbat_flash_get_sector_count.exit.thread350_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_flash_get_sector_count.exit.thread350

if.end12.i:                                       ; preds = %if.end8.i
  call void @msleep(i32 noundef 100) #7
  %18 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobuf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -64, ptr %19, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %19, i32 1
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 66, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %19, i32 2
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %arrayidx2.i.i, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %19, i32 3
  %arrayidx10.i.i = getelementptr i8, ptr %19, i32 7
  %23 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %arrayidx3.i.i, align 1
  %24 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx10.i.i, align 1
  %send_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %25 = ptrtoint ptr %send_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %send_ctrl_pipe.i.i.i, align 4
  %call.i.i44.i = call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %26, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %19, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %cmp.not.i.i, label %usbat_bulk_read.exit.i.i, label %if.end12.i.usbat_flash_get_sector_count.exit.thread350_crit_edge

if.end12.i.usbat_flash_get_sector_count.exit.thread350_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_flash_get_sector_count.exit.thread350

usbat_bulk_read.exit.i.i:                         ; preds = %if.end12.i
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.34, i32 noundef 512) #7
  %recv_bulk_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %27 = ptrtoint ptr %recv_bulk_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %recv_bulk_pipe.i.i.i, align 4
  %call.i33.i.i = call i32 @usb_stor_bulk_transfer_sg(ptr noundef nonnull %us, i32 noundef %28, ptr noundef nonnull %call7.i.i, i32 noundef 512, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i)
  %cmp16.i.i = icmp eq i32 %call.i33.i.i, 0
  br i1 %cmp16.i.i, label %if.end16, label %usbat_bulk_read.exit.i.i.usbat_flash_get_sector_count.exit.thread350_crit_edge

usbat_bulk_read.exit.i.i.usbat_flash_get_sector_count.exit.thread350_crit_edge: ; preds = %usbat_bulk_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_flash_get_sector_count.exit.thread350

usbat_flash_get_sector_count.exit.thread:         ; preds = %if.end.i.usbat_flash_get_sector_count.exit.thread_crit_edge, %if.end11.usbat_flash_get_sector_count.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %command.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %registers.i) #7
  br label %cleanup

usbat_flash_get_sector_count.exit.thread350:      ; preds = %usbat_bulk_read.exit.i.i.usbat_flash_get_sector_count.exit.thread350_crit_edge, %if.end12.i.usbat_flash_get_sector_count.exit.thread350_crit_edge, %if.end8.i.usbat_flash_get_sector_count.exit.thread350_crit_edge, %if.then7.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %command.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %registers.i) #7
  br label %cleanup

if.end16:                                         ; preds = %usbat_bulk_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 117
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %30 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx17.i = getelementptr i8, ptr %call7.i.i, i32 116
  %31 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx17.i, align 4
  %conv18.i = zext i8 %32 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 16
  %or.i = or i32 %shl19.i, %shl.i
  %arrayidx20.i = getelementptr i8, ptr %call7.i.i, i32 115
  %33 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %34 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 8
  %or23.i = or i32 %or.i, %shl22.i
  %arrayidx24.i = getelementptr i8, ptr %call7.i.i, i32 114
  %35 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx24.i, align 2
  %conv25.i = zext i8 %36 to i32
  %or26.i = or i32 %or23.i, %conv25.i
  %sectors.i = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %sectors.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or26.i, ptr %sectors.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %command.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %registers.i) #7
  %ssize = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %ssize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 512, ptr %ssize, align 4
  %39 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sectors.i, align 4
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.42, i32 noundef %40, i32 noundef 512) #7
  %41 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sectors.i, align 4
  %sub = add i32 %42, -1
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %3, align 4
  %44 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ssize, align 4
  %arrayidx21 = getelementptr i32, ptr %3, i32 1
  %46 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx21, align 4
  call void @usb_stor_set_xfer_buf(ptr noundef %3, i32 noundef 8, ptr noundef %srb) #7
  br label %cleanup

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.43) #7
  br label %cleanup

if.then35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx37 = getelementptr i8, ptr %5, i32 2
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %48 to i32
  %shl = shl nuw i32 %conv38, 24
  %arrayidx40 = getelementptr i8, ptr %5, i32 3
  %49 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %50 to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or = or i32 %shl42, %shl
  %arrayidx44 = getelementptr i8, ptr %5, i32 4
  %51 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %52 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or47 = or i32 %or, %shl46
  %arrayidx49 = getelementptr i8, ptr %5, i32 5
  %53 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %54 to i32
  %or51 = or i32 %or47, %conv50
  %arrayidx53 = getelementptr i8, ptr %5, i32 7
  %55 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %56 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %arrayidx57 = getelementptr i8, ptr %5, i32 8
  %57 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %58 to i32
  %or59 = or i32 %shl55, %conv58
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.44, i32 noundef %or51, i32 noundef %or59) #7
  %call60 = tail call fastcc i32 @usbat_flash_read_data(ptr noundef %us, ptr noundef %1, i32 noundef %or51, i32 noundef %or59)
  br label %cleanup

if.then67:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx69 = getelementptr i8, ptr %5, i32 2
  %59 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %60 to i32
  %shl71 = shl nuw i32 %conv70, 24
  %arrayidx73 = getelementptr i8, ptr %5, i32 3
  %61 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %62 to i32
  %shl75 = shl nuw nsw i32 %conv74, 16
  %or76 = or i32 %shl75, %shl71
  %arrayidx78 = getelementptr i8, ptr %5, i32 4
  %63 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %64 to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %or81 = or i32 %or76, %shl80
  %arrayidx83 = getelementptr i8, ptr %5, i32 5
  %65 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %66 to i32
  %or85 = or i32 %or81, %conv84
  %arrayidx87 = getelementptr i8, ptr %5, i32 6
  %67 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %68 to i32
  %shl89 = shl nuw i32 %conv88, 24
  %arrayidx91 = getelementptr i8, ptr %5, i32 7
  %69 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %70 to i32
  %shl93 = shl nuw nsw i32 %conv92, 16
  %or94 = or i32 %shl93, %shl89
  %arrayidx96 = getelementptr i8, ptr %5, i32 8
  %71 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %72 to i32
  %shl98 = shl nuw nsw i32 %conv97, 8
  %or99 = or i32 %or94, %shl98
  %arrayidx101 = getelementptr i8, ptr %5, i32 9
  %73 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %74 to i32
  %or103 = or i32 %or99, %conv102
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.45, i32 noundef %or85, i32 noundef %or103) #7
  %call104 = tail call fastcc i32 @usbat_flash_read_data(ptr noundef %us, ptr noundef %1, i32 noundef %or85, i32 noundef %or103)
  br label %cleanup

if.then111:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx113 = getelementptr i8, ptr %5, i32 2
  %75 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %76 to i32
  %shl115 = shl nuw i32 %conv114, 24
  %arrayidx117 = getelementptr i8, ptr %5, i32 3
  %77 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %78 to i32
  %shl119 = shl nuw nsw i32 %conv118, 16
  %or120 = or i32 %shl119, %shl115
  %arrayidx122 = getelementptr i8, ptr %5, i32 4
  %79 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %80 to i32
  %shl124 = shl nuw nsw i32 %conv123, 8
  %or125 = or i32 %or120, %shl124
  %arrayidx127 = getelementptr i8, ptr %5, i32 5
  %81 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %82 to i32
  %or129 = or i32 %or125, %conv128
  %arrayidx131 = getelementptr i8, ptr %5, i32 7
  %83 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %84 to i32
  %shl133 = shl nuw nsw i32 %conv132, 8
  %arrayidx135 = getelementptr i8, ptr %5, i32 8
  %85 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %86 to i32
  %or137 = or i32 %shl133, %conv136
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.46, i32 noundef %or129, i32 noundef %or137) #7
  %call138 = tail call fastcc i32 @usbat_flash_write_data(ptr noundef %us, ptr noundef %1, i32 noundef %or129, i32 noundef %or137)
  br label %cleanup

if.then145:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx147 = getelementptr i8, ptr %5, i32 2
  %87 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %88 to i32
  %shl149 = shl nuw i32 %conv148, 24
  %arrayidx151 = getelementptr i8, ptr %5, i32 3
  %89 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %90 to i32
  %shl153 = shl nuw nsw i32 %conv152, 16
  %or154 = or i32 %shl153, %shl149
  %arrayidx156 = getelementptr i8, ptr %5, i32 4
  %91 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %92 to i32
  %shl158 = shl nuw nsw i32 %conv157, 8
  %or159 = or i32 %or154, %shl158
  %arrayidx161 = getelementptr i8, ptr %5, i32 5
  %93 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %94 to i32
  %or163 = or i32 %or159, %conv162
  %arrayidx165 = getelementptr i8, ptr %5, i32 6
  %95 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %96 to i32
  %shl167 = shl nuw i32 %conv166, 24
  %arrayidx169 = getelementptr i8, ptr %5, i32 7
  %97 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %98 to i32
  %shl171 = shl nuw nsw i32 %conv170, 16
  %or172 = or i32 %shl171, %shl167
  %arrayidx174 = getelementptr i8, ptr %5, i32 8
  %99 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %100 to i32
  %shl176 = shl nuw nsw i32 %conv175, 8
  %or177 = or i32 %or172, %shl176
  %arrayidx179 = getelementptr i8, ptr %5, i32 9
  %101 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %102 to i32
  %or181 = or i32 %or177, %conv180
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.47, i32 noundef %or163, i32 noundef %or181) #7
  %call182 = tail call fastcc i32 @usbat_flash_write_data(ptr noundef %us, ptr noundef %1, i32 noundef %or163, i32 noundef %or181)
  br label %cleanup

if.then189:                                       ; preds = %entry
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.48) #7
  %call190 = tail call fastcc i32 @usbat_flash_check_media(ptr noundef %us, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191.not = icmp eq i32 %call190, 0
  br i1 %cmp191.not, label %if.end194, label %if.then189.cleanup_crit_edge

if.then189.cleanup_crit_edge:                     ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end194:                                        ; preds = %if.then189
  %103 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iobuf, align 4
  %recv_ctrl_pipe.i.i.i339 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %105 = ptrtoint ptr %recv_ctrl_pipe.i.i.i339 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %recv_ctrl_pipe.i.i.i339, align 4
  %call.i.i.i340 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %106, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %104, i16 noundef zeroext 1) #7
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %104, align 1
  %conv.i.i341 = zext i8 %108 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24, i32 noundef %conv.i.i341) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i340)
  %cmp.not.i342 = icmp eq i32 %call.i.i.i340, 0
  br i1 %cmp.not.i342, label %if.end.i345, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i345:                                      ; preds = %if.end194
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %104, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i343 = icmp eq i8 %111, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %110)
  %cmp2.not.i = icmp eq i8 %110, 81
  %or.cond.i344 = or i1 %cmp2.not.i, %tobool.not.i343
  br i1 %or.cond.i344, label %if.end5.i, label %if.end.i345.cleanup_crit_edge

if.end.i345.cleanup_crit_edge:                    ; preds = %if.end.i345
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i345
  call void @__sanitizer_cov_trace_pc() #9
  %112 = lshr i8 %110, 5
  %.lobit.i = and i8 %112, 1
  %113 = zext i8 %.lobit.i to i32
  br label %cleanup

if.then202:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.49) #7
  %114 = getelementptr inbounds i8, ptr %3, i32 1
  %115 = call ptr @memset(ptr %114, i32 0, i32 17)
  %116 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -16, ptr %3, align 1
  %sense_key = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 3
  %117 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sense_key, align 4
  %arrayidx204 = getelementptr i8, ptr %3, i32 2
  %119 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx204, align 1
  %arrayidx205 = getelementptr i8, ptr %3, i32 7
  %120 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 11, ptr %arrayidx205, align 1
  %sense_asc = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 4
  %121 = ptrtoint ptr %sense_asc to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sense_asc, align 4
  %conv206 = trunc i32 %122 to i8
  %arrayidx207 = getelementptr i8, ptr %3, i32 12
  %123 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv206, ptr %arrayidx207, align 1
  %sense_ascq = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 5
  %124 = ptrtoint ptr %sense_ascq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sense_ascq, align 4
  %conv208 = trunc i32 %125 to i8
  %arrayidx209 = getelementptr i8, ptr %3, i32 13
  %126 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv208, ptr %arrayidx209, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %3, i32 noundef 18, ptr noundef %srb) #7
  br label %cleanup

if.end217:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %conv) #7
  %sense_key224 = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 3
  %127 = ptrtoint ptr %sense_key224 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 5, ptr %sense_key224, align 4
  %sense_asc225 = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 4
  %128 = ptrtoint ptr %sense_asc225 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 32, ptr %sense_asc225, align 4
  %sense_ascq226 = getelementptr inbounds %struct.usbat_info, ptr %1, i32 0, i32 5
  %129 = ptrtoint ptr %sense_ascq226 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %sense_ascq226, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end217, %if.then202, %if.end5.i, %if.end.i345.cleanup_crit_edge, %if.end194.cleanup_crit_edge, %if.then189.cleanup_crit_edge, %if.then145, %if.then111, %if.then67, %if.then35, %if.then28, %if.end16, %usbat_flash_get_sector_count.exit.thread350, %usbat_flash_get_sector_count.exit.thread, %if.then7.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end16 ], [ 3, %if.then28 ], [ %call60, %if.then35 ], [ %call104, %if.then67 ], [ %call138, %if.then111 ], [ %call182, %if.then145 ], [ 0, %if.then202 ], [ 1, %if.end217 ], [ %call, %if.then7.cleanup_crit_edge ], [ %call190, %if.then189.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 3, %usbat_flash_get_sector_count.exit.thread ], [ 3, %usbat_flash_get_sector_count.exit.thread350 ], [ 1, %if.end194.cleanup_crit_edge ], [ 1, %if.end.i345.cleanup_crit_edge ], [ %113, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_usbat_cd(ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_usbat(ptr noundef %us, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_usbat_flash(ptr noundef %us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_usbat(ptr noundef %us, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_usbat(ptr noundef %us, i32 noundef %devicetype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3328, i32 noundef 24) #10
  %extra = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %extra, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %4 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %5, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24528, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10) #7
  tail call void @msleep(i32 noundef 2000) #7
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %6 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i105 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %7, i8 noundef zeroext -126, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp7.not = icmp eq i32 %call.i105, 0
  br i1 %cmp7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11) #7
  %10 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i107 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %11, i8 noundef zeroext -126, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %conv.i108 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %conv.i108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp11.not = icmp eq i32 %call.i107, 0
  br i1 %cmp11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i110 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %15, i8 noundef zeroext -126, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  %conv.i111 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %conv.i111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp15.not = icmp eq i32 %call.i110, 0
  br i1 %cmp15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12) #7
  %call18 = tail call fastcc i32 @usbat_select_and_test_registers(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #7
  %call22 = tail call fastcc i32 @usbat_read_user_io(ptr noundef %us, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14) #7
  %call26 = tail call fastcc i32 @usbat_device_enable_cdt(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15) #7
  %call30 = tail call fastcc i32 @usbat_read_user_io(ptr noundef %us, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16) #7
  tail call void @msleep(i32 noundef 1400) #7
  %call34 = tail call fastcc i32 @usbat_read_user_io(ptr noundef %us, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17) #7
  %call38 = tail call fastcc i32 @usbat_select_and_test_registers(ptr noundef %us)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.18) #7
  %call42 = tail call fastcc i32 @usbat_set_transport(ptr noundef %us, ptr noundef nonnull %call7.i.i, i32 noundef %devicetype)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19) #7
  %18 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extra, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp47 = icmp eq i32 %21, 2
  %spec.select = select i1 %cmp47, i8 2, i8 21
  %spec.select104 = select i1 %cmp47, i8 0, i8 20
  %call50 = tail call fastcc i32 @usbat_set_shuttle_features(ptr noundef %us, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.end53, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ %call.i105, %if.end5.cleanup_crit_edge ], [ 3, %if.end9.cleanup_crit_edge ], [ 3, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 3, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ 3, %if.end29.cleanup_crit_edge ], [ 3, %if.end33.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ 3, %if.end41.cleanup_crit_edge ], [ 3, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_read_user_io(ptr noundef %us, ptr noundef %data_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctrl_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %0 = ptrtoint ptr %recv_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %recv_ctrl_pipe, align 4
  %call = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %1, i8 noundef zeroext -126, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data_flags, i16 noundef zeroext 1) #7
  %2 = ptrtoint ptr %data_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data_flags, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_select_and_test_registers(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  br label %for.body

for.cond:                                         ; preds = %if.end37
  %add = add nuw nsw i32 %selector.075, 16
  %cmp = icmp ult i32 %selector.075, 161
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %selector.075 = phi i32 [ 160, %entry ], [ %add, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %send_ctrl_pipe.i, align 4
  %4 = trunc i32 %selector.075 to i16
  %conv5.i = shl nuw i16 %4, 8
  %or6.i = or i16 %conv5.i, 22
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %3, i8 noundef zeroext 65, i8 noundef zeroext 64, i16 noundef zeroext %or6.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i60 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %6, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp4.not = icmp eq i32 %call.i60, 0
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i62 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %8, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 22, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp9.not = icmp eq i32 %call.i62, 0
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i64 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %10, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp14.not = icmp eq i32 %call.i64, 0
  br i1 %cmp14.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i66 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %12, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 21, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp19.not = icmp eq i32 %call.i66, 0
  br i1 %cmp19.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i68 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %14, i8 noundef zeroext 65, i8 noundef zeroext 64, i16 noundef zeroext 21780, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp24.not = icmp eq i32 %call.i68, 0
  br i1 %cmp24.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i70 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %16, i8 noundef zeroext 65, i8 noundef zeroext 64, i16 noundef zeroext -21995, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp29.not = icmp eq i32 %call.i70, 0
  br i1 %cmp29.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i72 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %18, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp34.not = icmp eq i32 %call.i72, 0
  br i1 %cmp34.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i74 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %20, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp39.not = icmp eq i32 %call.i74, 0
  br i1 %cmp39.not, label %for.cond, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %for.body.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %if.end7.cleanup_crit_edge ], [ 3, %if.end12.cleanup_crit_edge ], [ 3, %if.end17.cleanup_crit_edge ], [ 3, %if.end22.cleanup_crit_edge ], [ 3, %if.end27.cleanup_crit_edge ], [ 3, %if.end32.cleanup_crit_edge ], [ 3, %if.end37.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_device_enable_cdt(ptr noundef %us) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %0 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %1, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24464, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  %. = select i1 %cmp.not, i32 0, i32 3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_set_transport(ptr noundef %us, ptr noundef %info, i32 noundef %devicetype) unnamed_addr #2 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %devicetype, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devicetype)
  %tobool4.not = icmp eq i32 %devicetype, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status.i, align 1, !annotation !138
  %tobool.not.i = icmp eq ptr %us, null
  %tobool1.not.i = icmp eq ptr %info, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.then5.usbat_identify_device.exit_crit_edge, label %if.end.i

if.then5.usbat_identify_device.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_identify_device.exit

if.end.i:                                         ; preds = %if.then5
  %send_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %4 = ptrtoint ptr %send_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %send_ctrl_pipe.i.i.i, align 4
  %call.i.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %5, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24400, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.usbat_identify_device.exit_crit_edge

if.end.i.usbat_identify_device.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_identify_device.exit

if.end.i.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %send_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_ctrl_pipe.i.i.i, align 4
  %call.i8.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %7, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24528, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %cmp2.not.i.i, label %if.end3.i, label %if.end.i.i.usbat_identify_device.exit_crit_edge

if.end.i.i.usbat_identify_device.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_identify_device.exit

if.end3.i:                                        ; preds = %if.end.i.i
  tail call void @msleep(i32 noundef 500) #7
  %8 = ptrtoint ptr %send_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %send_ctrl_pipe.i.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %9, i8 noundef zeroext 65, i8 noundef zeroext 64, i16 noundef zeroext -24297, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end3.i.usbat_identify_device.exit_crit_edge

if.end3.i.usbat_identify_device.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_identify_device.exit

if.end7.i:                                        ; preds = %if.end3.i
  %recv_ctrl_pipe.i.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %10 = ptrtoint ptr %recv_ctrl_pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %recv_ctrl_pipe.i.i.i, align 4
  %call.i.i2.i = call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %11, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef nonnull %status.i, i16 noundef zeroext 1) #7
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status.i, align 1
  %conv.i.i = zext i8 %13 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.24, i32 noundef %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2.i)
  %cmp9.not.i = icmp eq i32 %call.i.i2.i, 0
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end7.i.usbat_identify_device.exit_crit_edge

if.end7.i.usbat_identify_device.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_identify_device.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %15)
  %cmp12.i = icmp eq i8 %15, -95
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not.i = icmp eq i8 %16, 0
  %or.cond1.i = or i1 %cmp12.i, %tobool16.not.i
  %.str.22..str.23.i = select i1 %or.cond1.i, ptr @.str.22, ptr @.str.23
  %..i = select i1 %or.cond1.i, i32 1, i32 2
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull %.str.22..str.23.i) #7
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %..i, ptr %info, align 4
  br label %usbat_identify_device.exit

usbat_identify_device.exit:                       ; preds = %if.end11.i, %if.end7.i.usbat_identify_device.exit_crit_edge, %if.end3.i.usbat_identify_device.exit_crit_edge, %if.end.i.i.usbat_identify_device.exit_crit_edge, %if.end.i.usbat_identify_device.exit_crit_edge, %if.then5.usbat_identify_device.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %info, align 4
  br label %if.end6

if.end6:                                          ; preds = %usbat_identify_device.exit, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %19 = phi i32 [ %.pr, %usbat_identify_device.exit ], [ %devicetype, %if.end.if.end6_crit_edge ], [ %1, %entry.if.end6_crit_edge ]
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %19, label %if.end6.return_crit_edge [
    i32 1, label %if.end6.return.sink.split_crit_edge
    i32 2, label %sw.bb8
  ]

if.end6.return.sink.split_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb8, %if.end6.return.sink.split_crit_edge
  %usbat_hp8200e_transport.sink = phi ptr [ @usbat_flash_transport, %sw.bb8 ], [ @usbat_hp8200e_transport, %if.end6.return.sink.split_crit_edge ]
  %transport = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 19
  %21 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %usbat_hp8200e_transport.sink, ptr %transport, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end6.return_crit_edge
  %retval.0 = phi i32 [ 3, %if.end6.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_set_shuttle_features(ptr noundef %us, i8 noundef zeroext %subcountH, i8 noundef zeroext %subcountL) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %1, align 1
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -127, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %1, i32 3
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -125, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %1, i32 5
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -120, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %1, i32 6
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %subcountL, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %1, i32 7
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %subcountH, ptr %arrayidx7, align 1
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %10 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %11, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 8) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ctrl_transfer(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbat_hp8200e_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
entry:
  %sg_offset.i = alloca i32, align 4
  %sg.i = alloca ptr, align 4
  %registers = alloca [32 x i8], align 1
  %data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %registers) #7
  %2 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 1
  %3 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 2
  %4 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 3
  %5 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 4
  %6 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 5
  %7 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 6
  %8 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 7
  %9 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 8
  %10 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 9
  %11 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 10
  %12 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 11
  %13 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 12
  %14 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 13
  %15 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 14
  %16 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 15
  %17 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 16
  %18 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 17
  %19 = getelementptr inbounds [32 x i8], ptr %registers, i32 0, i32 18
  %20 = getelementptr inbounds i8, ptr %registers, i32 8
  %21 = call ptr @memset(ptr %20, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #7
  %22 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 1
  %23 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 2
  %24 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 3
  %25 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 4
  %26 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 5
  %27 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 6
  %28 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 7
  %29 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 8
  %30 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 9
  %31 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 10
  %32 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 11
  %33 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 12
  %34 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 13
  %35 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 14
  %36 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 15
  %37 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 16
  %38 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 17
  %39 = getelementptr inbounds [32 x i8], ptr %data, i32 0, i32 18
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 1
  %40 = getelementptr inbounds i8, ptr %data, i32 7
  %41 = call ptr @memset(ptr %40, i32 255, i32 25)
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 4
  %44 = ptrtoint ptr %registers to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 17, ptr %registers, align 1
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 18, ptr %2, align 1
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 19, ptr %3, align 1
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 20, ptr %4, align 1
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 21, ptr %5, align 1
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 22, ptr %6, align 1
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 23, ptr %7, align 1
  %51 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %data, align 1
  %52 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %22, align 1
  %53 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %23, align 1
  %conv = trunc i32 %43 to i8
  %54 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %24, align 1
  %shr = lshr i32 %43, 8
  %conv12 = trunc i32 %shr to i8
  %55 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv12, ptr %25, align 1
  %56 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -80, ptr %26, align 1
  %57 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -96, ptr %27, align 1
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 14
  %58 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %cmd_len, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 16
  %60 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 16, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp19.not.not = icmp eq i16 %59, 0
  br i1 %cmp19.not.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %28, align 1
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 16, ptr %9, align 1
  br label %cond.end.1.thread

cond.end:                                         ; preds = %entry
  %63 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cmnd, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %67 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %28, align 1
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp19.not.1.not = icmp eq i16 %59, 1
  br i1 %cmp19.not.1.not, label %cond.end.cond.end.1.thread_crit_edge, label %cond.end.1

cond.end.cond.end.1.thread_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.1.thread

cond.end.1.thread:                                ; preds = %cond.end.cond.end.1.thread_crit_edge, %cond.end.thread
  %69 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %29, align 1
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 16, ptr %10, align 1
  br label %cond.end.2.thread

cond.end.1:                                       ; preds = %cond.end
  %71 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cmnd, align 4
  %arrayidx22.1 = getelementptr i8, ptr %72, i32 1
  %73 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx22.1, align 1
  %75 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %29, align 1
  %76 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 16, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %59)
  %cmp19.not.2 = icmp ugt i16 %59, 2
  br i1 %cmp19.not.2, label %cond.end.2, label %cond.end.1.cond.end.2.thread_crit_edge

cond.end.1.cond.end.2.thread_crit_edge:           ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.2.thread

cond.end.2.thread:                                ; preds = %cond.end.1.cond.end.2.thread_crit_edge, %cond.end.1.thread
  %77 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %30, align 1
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 16, ptr %11, align 1
  br label %cond.end.3.thread

cond.end.2:                                       ; preds = %cond.end.1
  %79 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmnd, align 4
  %arrayidx22.2 = getelementptr i8, ptr %80, i32 2
  %81 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx22.2, align 1
  %83 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %30, align 1
  %84 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 16, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %59)
  %cmp19.not.3.not = icmp eq i16 %59, 3
  br i1 %cmp19.not.3.not, label %cond.end.2.cond.end.3.thread_crit_edge, label %cond.end.3

cond.end.2.cond.end.3.thread_crit_edge:           ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.3.thread

cond.end.3.thread:                                ; preds = %cond.end.2.cond.end.3.thread_crit_edge, %cond.end.2.thread
  %85 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %31, align 1
  %86 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 16, ptr %12, align 1
  br label %cond.end.4.thread

cond.end.3:                                       ; preds = %cond.end.2
  %87 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmnd, align 4
  %arrayidx22.3 = getelementptr i8, ptr %88, i32 3
  %89 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx22.3, align 1
  %91 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %31, align 1
  %92 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 16, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %59)
  %cmp19.not.4 = icmp ugt i16 %59, 4
  br i1 %cmp19.not.4, label %cond.end.4, label %cond.end.3.cond.end.4.thread_crit_edge

cond.end.3.cond.end.4.thread_crit_edge:           ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.4.thread

cond.end.4.thread:                                ; preds = %cond.end.3.cond.end.4.thread_crit_edge, %cond.end.3.thread
  %93 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %32, align 1
  %94 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 16, ptr %13, align 1
  br label %cond.end.5.thread

cond.end.4:                                       ; preds = %cond.end.3
  %95 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmnd, align 4
  %arrayidx22.4 = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx22.4, align 1
  %99 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %32, align 1
  %100 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 16, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %59)
  %cmp19.not.5.not = icmp eq i16 %59, 5
  br i1 %cmp19.not.5.not, label %cond.end.4.cond.end.5.thread_crit_edge, label %cond.end.5

cond.end.4.cond.end.5.thread_crit_edge:           ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.5.thread

cond.end.5.thread:                                ; preds = %cond.end.4.cond.end.5.thread_crit_edge, %cond.end.4.thread
  %101 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %33, align 1
  %102 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 16, ptr %14, align 1
  br label %cond.end.6.thread

cond.end.5:                                       ; preds = %cond.end.4
  %103 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cmnd, align 4
  %arrayidx22.5 = getelementptr i8, ptr %104, i32 5
  %105 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx22.5, align 1
  %107 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %33, align 1
  %108 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 16, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %59)
  %cmp19.not.6 = icmp ugt i16 %59, 6
  br i1 %cmp19.not.6, label %cond.end.6, label %cond.end.5.cond.end.6.thread_crit_edge

cond.end.5.cond.end.6.thread_crit_edge:           ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.6.thread

cond.end.6.thread:                                ; preds = %cond.end.5.cond.end.6.thread_crit_edge, %cond.end.5.thread
  %109 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %34, align 1
  %110 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %15, align 1
  br label %cond.end.7.thread

cond.end.6:                                       ; preds = %cond.end.5
  %111 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cmnd, align 4
  %arrayidx22.6 = getelementptr i8, ptr %112, i32 6
  %113 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx22.6, align 1
  %115 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %34, align 1
  %116 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 16, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %59)
  %cmp19.not.7.not = icmp eq i16 %59, 7
  br i1 %cmp19.not.7.not, label %cond.end.6.cond.end.7.thread_crit_edge, label %cond.end.7

cond.end.6.cond.end.7.thread_crit_edge:           ; preds = %cond.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.7.thread

cond.end.7.thread:                                ; preds = %cond.end.6.cond.end.7.thread_crit_edge, %cond.end.6.thread
  %117 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %35, align 1
  %118 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 16, ptr %16, align 1
  br label %cond.end.8.thread

cond.end.7:                                       ; preds = %cond.end.6
  %119 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cmnd, align 4
  %arrayidx22.7 = getelementptr i8, ptr %120, i32 7
  %121 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx22.7, align 1
  %123 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %35, align 1
  %124 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 16, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %59)
  %cmp19.not.8 = icmp ugt i16 %59, 8
  br i1 %cmp19.not.8, label %cond.end.8, label %cond.end.7.cond.end.8.thread_crit_edge

cond.end.7.cond.end.8.thread_crit_edge:           ; preds = %cond.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.8.thread

cond.end.8.thread:                                ; preds = %cond.end.7.cond.end.8.thread_crit_edge, %cond.end.7.thread
  %125 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %36, align 1
  %126 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 16, ptr %17, align 1
  br label %cond.end.9.thread

cond.end.8:                                       ; preds = %cond.end.7
  %127 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cmnd, align 4
  %arrayidx22.8 = getelementptr i8, ptr %128, i32 8
  %129 = ptrtoint ptr %arrayidx22.8 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx22.8, align 1
  %131 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %36, align 1
  %132 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 16, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %59)
  %cmp19.not.9.not = icmp eq i16 %59, 9
  br i1 %cmp19.not.9.not, label %cond.end.8.cond.end.9.thread_crit_edge, label %cond.end.9

cond.end.8.cond.end.9.thread_crit_edge:           ; preds = %cond.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.9.thread

cond.end.9.thread:                                ; preds = %cond.end.8.cond.end.9.thread_crit_edge, %cond.end.8.thread
  %133 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %37, align 1
  %134 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 16, ptr %18, align 1
  br label %cond.end.10.thread

cond.end.9:                                       ; preds = %cond.end.8
  %135 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cmnd, align 4
  %arrayidx22.9 = getelementptr i8, ptr %136, i32 9
  %137 = ptrtoint ptr %arrayidx22.9 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx22.9, align 1
  %139 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %37, align 1
  %140 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 16, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %59)
  %cmp19.not.10 = icmp ugt i16 %59, 10
  br i1 %cmp19.not.10, label %cond.end.10, label %cond.end.9.cond.end.10.thread_crit_edge

cond.end.9.cond.end.10.thread_crit_edge:          ; preds = %cond.end.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.10.thread

cond.end.10.thread:                               ; preds = %cond.end.9.cond.end.10.thread_crit_edge, %cond.end.9.thread
  %141 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %38, align 1
  %142 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 16, ptr %19, align 1
  br label %cond.end.11

cond.end.10:                                      ; preds = %cond.end.9
  %143 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cmnd, align 4
  %arrayidx22.10 = getelementptr i8, ptr %144, i32 10
  %145 = ptrtoint ptr %arrayidx22.10 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx22.10, align 1
  %147 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %38, align 1
  %148 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 16, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %59)
  %cmp19.not.11.not = icmp eq i16 %59, 11
  br i1 %cmp19.not.11.not, label %cond.end.10.cond.end.11_crit_edge, label %cond.false.11

cond.end.10.cond.end.11_crit_edge:                ; preds = %cond.end.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.11

cond.false.11:                                    ; preds = %cond.end.10
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cmnd, align 4
  %arrayidx22.11 = getelementptr i8, ptr %150, i32 11
  %151 = ptrtoint ptr %arrayidx22.11 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx22.11, align 1
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.11, %cond.end.10.cond.end.11_crit_edge, %cond.end.10.thread
  %cond.11 = phi i8 [ %152, %cond.false.11 ], [ 0, %cond.end.10.cond.end.11_crit_edge ], [ 0, %cond.end.10.thread ]
  %153 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %cond.11, ptr %39, align 1
  %recv_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %154 = ptrtoint ptr %recv_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %recv_ctrl_pipe.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %155, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %1, align 1
  %conv.i = zext i8 %157 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24, i32 noundef %conv.i) #7
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %1, align 1
  %conv27 = zext i8 %159 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.25, i32 noundef %conv27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp28.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp28.not, label %if.end, label %cond.end.11.cleanup_crit_edge

cond.end.11.cleanup_crit_edge:                    ; preds = %cond.end.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end.11
  %160 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cmnd, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp33 = icmp eq i8 %163, 0
  br i1 %cmp33, label %if.then35, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @transferred, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end.if.end36_crit_edge
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 15
  %164 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %165)
  %cmp37 = icmp eq i32 %165, 1
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end36
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %166 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sdb.i, align 4
  %conv42 = trunc i32 %43 to i16
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %168 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %nents.i, align 4
  %call44 = call fastcc i32 @usbat_hp8200e_rw_block_test(ptr noundef %us, ptr noundef nonnull %registers, ptr noundef nonnull %data, i32 noundef 1, ptr noundef %167, i16 noundef zeroext %conv42, i32 noundef %169, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %170 = load i32, ptr @transferred, align 4
  %add = add i32 %170, %43
  store i32 %add, ptr @transferred, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.26, i32 noundef %add) #7
  br label %cleanup

if.else:                                          ; preds = %if.end36
  %171 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %163, label %if.end64 [
    i8 40, label %if.else.if.then59_crit_edge
    i8 -66, label %if.else.if.then59_crit_edge203
  ]

if.else.if.then59_crit_edge203:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

if.else.if.then59_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

if.then59:                                        ; preds = %if.else.if.then59_crit_edge, %if.else.if.then59_crit_edge203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_offset.i) #7
  %172 = ptrtoint ptr %sg_offset.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %sg_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i) #7
  %173 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %sg.i, align 4
  %transfersize.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 20
  %174 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %transfersize.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.37, i32 noundef %175) #7
  %176 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %177)
  %cmp.i = icmp ult i32 %177, 65536
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %178 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sdb.i.i, align 4
  %conv.i175 = trunc i32 %177 to i16
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %180 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %nents.i.i, align 4
  %call4.i = call fastcc i32 @usbat_hp8200e_rw_block_test(ptr noundef %us, ptr noundef nonnull %registers, ptr noundef nonnull %data, i32 noundef 2, ptr noundef %179, i16 noundef zeroext %conv.i175, i32 noundef %181, i32 noundef 1) #7
  br label %usbat_hp8200e_handle_read10.exit

if.end.i:                                         ; preds = %if.then59
  %182 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %183)
  %cmp6.i = icmp eq i8 %183, -66
  br i1 %cmp6.i, label %if.then8.i, label %if.end21thread-pre-split.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %37, align 1
  %conv11.i = zext i8 %185 to i32
  %186 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %36, align 1
  %conv14.i = zext i8 %187 to i32
  %188 = shl nuw i32 %conv14.i, 24
  %189 = shl nuw nsw i32 %conv11.i, 16
  %shl15.i = or i32 %188, %189
  %190 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %35, align 1
  %conv17.i = zext i8 %191 to i32
  %or18.i = or i32 %shl15.i, %conv17.i
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.38, i32 noundef %or18.i) #7
  %192 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %length.i, align 4
  %div.i = udiv i32 %193, %or18.i
  %194 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %div.i, ptr %transfersize.i, align 4
  br label %if.end21.i

if.end21thread-pre-split.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pr.i = load i32, ptr %transfersize.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21thread-pre-split.i, %if.then8.i
  %196 = phi i32 [ %.pr.i, %if.end21thread-pre-split.i ], [ %div.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i = icmp eq i32 %196, 0
  br i1 %tobool.not.i, label %if.then23.i, label %if.end21.i.if.end26.i_crit_edge

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %197 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 2048, ptr %transfersize.i, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.39, i32 noundef 2048) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end26.i_crit_edge
  %198 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %transfersize.i, align 4
  %200 = urem i32 65535, %199
  %mul.i = xor i32 %200, 65535
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.40, i32 noundef %mul.i) #7
  %201 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %length.i, align 4
  %203 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %202) #7
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %203, i32 noundef 3072) #11
  %cmp34.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp34.i, label %if.end26.i.usbat_hp8200e_handle_read10.exit_crit_edge, label %if.end37.i

if.end26.i.usbat_hp8200e_handle_read10.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbat_hp8200e_handle_read10.exit

if.end37.i:                                       ; preds = %if.end26.i
  %204 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %31, align 1
  %206 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %30, align 1
  %208 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %33, align 1
  %210 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %32, align 1
  store i32 0, ptr @transferred, align 4
  %212 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp57.not201.i = icmp eq i32 %213, 0
  br i1 %cmp57.not201.i, label %if.end37.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end37.i.while.end.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end37.i
  %conv43.i = zext i8 %207 to i32
  %214 = shl nuw i32 %conv43.i, 24
  %conv40.i = zext i8 %205 to i32
  %215 = shl nuw nsw i32 %conv40.i, 16
  %or54.i = or i32 %214, %215
  %conv49.i = zext i8 %209 to i32
  %shl46.i = or i32 %or54.i, %conv49.i
  %conv52.i = zext i8 %211 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 8
  %or55.i = or i32 %shl46.i, %shl53.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end109.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %216 = phi i32 [ %213, %while.body.lr.ph.i ], [ %236, %if.end109.i.while.body.i_crit_edge ]
  %217 = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end109.i.while.body.i_crit_edge ]
  %sector.0203.i = phi i32 [ %or55.i, %while.body.lr.ph.i ], [ %add113.i, %if.end109.i.while.body.i_crit_edge ]
  %len.0202.i = phi i32 [ %203, %while.body.lr.ph.i ], [ %218, %if.end109.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %216, %217
  %218 = call i32 @llvm.umin.i32(i32 %len.0202.i, i32 %sub.i) #7
  %conv66.i = trunc i32 %218 to i8
  %219 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv66.i, ptr %24, align 1
  %shr.i = lshr i32 %218, 8
  %conv69.i = trunc i32 %shr.i to i8
  %220 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv69.i, ptr %25, align 1
  %shr71.i = lshr i32 %sector.0203.i, 16
  %shr72.i = lshr i32 %sector.0203.i, 24
  %conv73.i = trunc i32 %shr72.i to i8
  %221 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv73.i, ptr %30, align 1
  %conv77.i = trunc i32 %shr71.i to i8
  %222 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv77.i, ptr %31, align 1
  %shr80.i = lshr i32 %sector.0203.i, 8
  %conv81.i = trunc i32 %shr80.i to i8
  %223 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv81.i, ptr %32, align 1
  %conv85.i = trunc i32 %sector.0203.i to i8
  %224 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv85.i, ptr %33, align 1
  %225 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %226)
  %cmp89.i = icmp eq i8 %226, -66
  br i1 %cmp89.i, label %if.then91.i, label %while.body.i.if.end93.i_crit_edge

while.body.i.if.end93.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then91.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %227 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %34, align 1
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then91.i, %while.body.i.if.end93.i_crit_edge
  %228 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %transfersize.i, align 4
  %div95.i = udiv i32 %218, %229
  %shr96.i = lshr i32 %div95.i, 8
  %conv97.i = trunc i32 %shr96.i to i8
  %230 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv97.i, ptr %35, align 1
  %conv102.i = trunc i32 %div95.i to i8
  %231 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv102.i, ptr %36, align 1
  %conv104.i = trunc i32 %218 to i16
  %call105.i = call fastcc i32 @usbat_hp8200e_rw_block_test(ptr noundef %us, ptr noundef nonnull %registers, ptr noundef nonnull %data, i32 noundef 2, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv104.i, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.not.i = icmp eq i32 %call105.i, 0
  br i1 %cmp106.not.i, label %if.end109.i, label %if.end93.i.while.end.i_crit_edge

if.end93.i.while.end.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end109.i:                                      ; preds = %if.end93.i
  %call110.i = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i.i, i32 noundef %218, ptr noundef %srb, ptr noundef nonnull %sg.i, ptr noundef nonnull %sg_offset.i, i32 noundef 0) #7
  %232 = load i32, ptr @transferred, align 4
  %add.i = add i32 %232, %218
  store i32 %add.i, ptr @transferred, align 4
  %233 = ptrtoint ptr %transfersize.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %transfersize.i, align 4
  %div112.i = udiv i32 %218, %234
  %add113.i = add i32 %div112.i, %sector.0203.i
  %235 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %length.i, align 4
  %cmp57.not.i = icmp eq i32 %236, %add.i
  br i1 %cmp57.not.i, label %if.end109.i.while.end.i_crit_edge, label %if.end109.i.while.body.i_crit_edge

if.end109.i.while.body.i_crit_edge:               ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end109.i.while.end.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end109.i.while.end.i_crit_edge, %if.end93.i.while.end.i_crit_edge, %if.end37.i.while.end.i_crit_edge
  %result.1.i = phi i32 [ 0, %if.end37.i.while.end.i_crit_edge ], [ 0, %if.end109.i.while.end.i_crit_edge ], [ %call105.i, %if.end93.i.while.end.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %usbat_hp8200e_handle_read10.exit

usbat_hp8200e_handle_read10.exit:                 ; preds = %while.end.i, %if.end26.i.usbat_hp8200e_handle_read10.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.then.i ], [ %result.1.i, %while.end.i ], [ 1, %if.end26.i.usbat_hp8200e_handle_read10.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset.i) #7
  br label %cleanup

if.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %43)
  %cmp65 = icmp ugt i32 %43, 65535
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.27, i32 noundef %43) #7
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %call71 = call fastcc i32 @usbat_multiple_write(ptr noundef %us, ptr noundef nonnull %registers, ptr noundef nonnull %data, i16 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72.not = icmp eq i32 %call71, 0
  br i1 %cmp72.not, label %if.end75, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %237 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cmnd, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %238, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %240)
  %cmp80 = icmp eq i8 %240, -95
  %cond82 = select i1 %cmp80, i32 75, i32 10
  %call83 = tail call fastcc i32 @usbat_write_block(ptr noundef %us, ptr noundef %238, i32 noundef %cond82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %if.end87, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end87:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp88.not = icmp eq i32 %43, 0
  br i1 %cmp88.not, label %if.end87.cleanup_crit_edge, label %land.lhs.true

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end87
  %241 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %242)
  %cmp91 = icmp eq i32 %242, 2
  br i1 %cmp91, label %if.then93, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93:                                        ; preds = %land.lhs.true
  %243 = ptrtoint ptr %recv_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %recv_ctrl_pipe.i.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %244, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp95.not = icmp eq i32 %call.i, 0
  br i1 %cmp95.not, label %if.end98, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end98:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %43)
  %cmp99 = icmp ugt i32 %43, 255
  %245 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %1, align 1
  br i1 %cmp99, label %if.then101, label %if.else110

if.then101:                                       ; preds = %if.end98
  %247 = ptrtoint ptr %recv_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %recv_ctrl_pipe.i.i, align 4
  %call.i177 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %248, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 21, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp104.not = icmp eq i32 %call.i177, 0
  br i1 %cmp104.not, label %if.end107, label %if.then101.cleanup_crit_edge

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  %conv102 = zext i8 %246 to i16
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %1, align 1
  %conv108 = zext i8 %250 to i16
  %shl = shl nuw i16 %conv108, 8
  %add109 = or i16 %shl, %conv102
  br label %if.end112

if.else110:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %conv111 = zext i8 %246 to i16
  br label %if.end112

if.end112:                                        ; preds = %if.else110, %if.end107
  %len.0 = phi i16 [ %add109, %if.end107 ], [ %conv111, %if.else110 ]
  %sdb.i178 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17
  %251 = ptrtoint ptr %sdb.i178 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %sdb.i178, align 4
  %nents.i179 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 17, i32 0, i32 1
  %253 = ptrtoint ptr %nents.i179 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %nents.i179, align 4
  %call116 = tail call fastcc i32 @usbat_read_block(ptr noundef %us, ptr noundef %252, i16 noundef zeroext %len.0, i32 noundef %254)
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then101.cleanup_crit_edge, %if.then93.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.then67, %usbat_hp8200e_handle_read10.exit, %if.then47, %if.then39.cleanup_crit_edge, %cond.end.11.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %usbat_hp8200e_handle_read10.exit ], [ 3, %if.then67 ], [ 3, %cond.end.11.cleanup_crit_edge ], [ 0, %if.then47 ], [ %call44, %if.then39.cleanup_crit_edge ], [ %call71, %if.end68.cleanup_crit_edge ], [ %call83, %if.end75.cleanup_crit_edge ], [ 3, %if.then93.cleanup_crit_edge ], [ 3, %if.then101.cleanup_crit_edge ], [ %call116, %if.end112 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %registers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_hp8200e_rw_block_test(ptr noundef %us, ptr nocapture noundef readonly %registers, ptr nocapture noundef readonly %data_out, i32 noundef %direction, ptr noundef %buf, i16 noundef zeroext %len, i32 noundef %use_sg, i32 noundef %minutes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp = icmp eq i32 %direction, 2
  %recv_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %send_bulk_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %cond.in = select i1 %cmp, ptr %recv_bulk_pipe, ptr %send_bulk_pipe
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load i32, ptr %cond.in, align 4
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %1 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp32 = icmp eq i32 %direction, 1
  %conv35 = select i1 %cmp32, i8 64, i8 -64
  %conv42 = select i1 %cmp32, i8 69, i8 68
  %conv53 = zext i16 %len to i32
  %conv55 = trunc i16 %len to i8
  %3 = lshr i16 %len, 8
  %conv60 = trunc i16 %3 to i8
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %arrayidx19 = getelementptr i8, ptr %2, i32 1
  %arrayidx20 = getelementptr i8, ptr %2, i32 2
  %arrayidx21 = getelementptr i8, ptr %2, i32 3
  %arrayidx22 = getelementptr i8, ptr %2, i32 4
  %arrayidx23 = getelementptr i8, ptr %2, i32 5
  %arrayidx26 = getelementptr i8, ptr %2, i32 6
  %arrayidx30 = getelementptr i8, ptr %2, i32 7
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %conv2.i = select i1 %cmp32, i16 23, i16 14
  %cond128 = select i1 %cmp32, ptr @.str.29, ptr @.str.30
  %arrayidx75.1 = getelementptr i8, ptr %registers, i32 1
  %arrayidx77.1 = getelementptr i8, ptr %data_out, i32 1
  %arrayidx75.2 = getelementptr i8, ptr %registers, i32 2
  %arrayidx77.2 = getelementptr i8, ptr %data_out, i32 2
  %arrayidx75.3 = getelementptr i8, ptr %registers, i32 3
  %arrayidx77.3 = getelementptr i8, ptr %data_out, i32 3
  %arrayidx75.4 = getelementptr i8, ptr %registers, i32 4
  %arrayidx76.4 = getelementptr i8, ptr %2, i32 8
  %arrayidx77.4 = getelementptr i8, ptr %data_out, i32 4
  %arrayidx79.4 = getelementptr i8, ptr %2, i32 9
  %arrayidx75.5 = getelementptr i8, ptr %registers, i32 5
  %arrayidx76.5 = getelementptr i8, ptr %2, i32 10
  %arrayidx77.5 = getelementptr i8, ptr %data_out, i32 5
  %arrayidx79.5 = getelementptr i8, ptr %2, i32 11
  %arrayidx75.6 = getelementptr i8, ptr %registers, i32 6
  %arrayidx76.6 = getelementptr i8, ptr %2, i32 12
  %arrayidx77.6 = getelementptr i8, ptr %data_out, i32 6
  %arrayidx79.6 = getelementptr i8, ptr %2, i32 13
  %arrayidx75.7 = getelementptr i8, ptr %registers, i32 7
  %arrayidx76.7 = getelementptr i8, ptr %2, i32 14
  %arrayidx77.7 = getelementptr i8, ptr %data_out, i32 7
  %arrayidx79.7 = getelementptr i8, ptr %2, i32 15
  %arrayidx75.8 = getelementptr i8, ptr %registers, i32 8
  %arrayidx76.8 = getelementptr i8, ptr %2, i32 16
  %arrayidx77.8 = getelementptr i8, ptr %data_out, i32 8
  %arrayidx79.8 = getelementptr i8, ptr %2, i32 17
  %arrayidx75.9 = getelementptr i8, ptr %registers, i32 9
  %arrayidx76.9 = getelementptr i8, ptr %2, i32 18
  %arrayidx77.9 = getelementptr i8, ptr %data_out, i32 9
  %arrayidx79.9 = getelementptr i8, ptr %2, i32 19
  %arrayidx75.10 = getelementptr i8, ptr %registers, i32 10
  %arrayidx76.10 = getelementptr i8, ptr %2, i32 20
  %arrayidx77.10 = getelementptr i8, ptr %data_out, i32 10
  %arrayidx79.10 = getelementptr i8, ptr %2, i32 21
  %arrayidx75.11 = getelementptr i8, ptr %registers, i32 11
  %arrayidx76.11 = getelementptr i8, ptr %2, i32 22
  %arrayidx77.11 = getelementptr i8, ptr %data_out, i32 11
  %arrayidx79.11 = getelementptr i8, ptr %2, i32 23
  %arrayidx75.12 = getelementptr i8, ptr %registers, i32 12
  %arrayidx76.12 = getelementptr i8, ptr %2, i32 24
  %arrayidx77.12 = getelementptr i8, ptr %data_out, i32 12
  %arrayidx79.12 = getelementptr i8, ptr %2, i32 25
  %arrayidx75.13 = getelementptr i8, ptr %registers, i32 13
  %arrayidx76.13 = getelementptr i8, ptr %2, i32 26
  %arrayidx77.13 = getelementptr i8, ptr %data_out, i32 13
  %arrayidx79.13 = getelementptr i8, ptr %2, i32 27
  %arrayidx75.14 = getelementptr i8, ptr %registers, i32 14
  %arrayidx76.14 = getelementptr i8, ptr %2, i32 28
  %arrayidx77.14 = getelementptr i8, ptr %data_out, i32 14
  %arrayidx79.14 = getelementptr i8, ptr %2, i32 29
  %arrayidx75.15 = getelementptr i8, ptr %registers, i32 15
  %arrayidx76.15 = getelementptr i8, ptr %2, i32 30
  %arrayidx77.15 = getelementptr i8, ptr %data_out, i32 15
  %arrayidx79.15 = getelementptr i8, ptr %2, i32 31
  %arrayidx75.16 = getelementptr i8, ptr %registers, i32 16
  %arrayidx76.16 = getelementptr i8, ptr %2, i32 32
  %arrayidx77.16 = getelementptr i8, ptr %data_out, i32 16
  %arrayidx79.16 = getelementptr i8, ptr %2, i32 33
  %arrayidx75.17 = getelementptr i8, ptr %registers, i32 17
  %arrayidx76.17 = getelementptr i8, ptr %2, i32 34
  %arrayidx77.17 = getelementptr i8, ptr %data_out, i32 17
  %arrayidx79.17 = getelementptr i8, ptr %2, i32 35
  %arrayidx75.18 = getelementptr i8, ptr %registers, i32 18
  %arrayidx76.18 = getelementptr i8, ptr %2, i32 36
  %arrayidx77.18 = getelementptr i8, ptr %data_out, i32 18
  %arrayidx79.18 = getelementptr i8, ptr %2, i32 37
  br label %for.body

for.body:                                         ; preds = %if.end125.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc137, %if.end125.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.04)
  %cmp14 = icmp eq i32 %i.04, 0
  br i1 %cmp14, label %if.then16, label %for.body.if.end31_crit_edge

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %2, align 1
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 71, ptr %arrayidx19, align 1
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 7, ptr %arrayidx20, align 1
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 23, ptr %arrayidx21, align 1
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -4, ptr %arrayidx22, align 1
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -25, ptr %arrayidx23, align 1
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 38, ptr %arrayidx26, align 1
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then16, %for.body.if.end31_crit_edge
  %cmdlen.0 = phi i32 [ 16, %if.then16 ], [ 8, %for.body.if.end31_crit_edge ]
  %sub = add nsw i32 %cmdlen.0, -8
  %arrayidx36 = getelementptr i8, ptr %2, i32 %sub
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv35, ptr %arrayidx36, align 1
  %sub43 = add nsw i32 %cmdlen.0, -7
  %arrayidx44 = getelementptr i8, ptr %2, i32 %sub43
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv42, ptr %arrayidx44, align 1
  %sub45 = add nsw i32 %cmdlen.0, -6
  %arrayidx46 = getelementptr i8, ptr %2, i32 %sub45
  %14 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %arrayidx46, align 1
  %sub47 = add nsw i32 %cmdlen.0, -5
  %arrayidx48 = getelementptr i8, ptr %2, i32 %sub47
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 23, ptr %arrayidx48, align 1
  %sub49 = add nsw i32 %cmdlen.0, -4
  %arrayidx50 = getelementptr i8, ptr %2, i32 %sub49
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -3, ptr %arrayidx50, align 1
  %sub51 = add nsw i32 %cmdlen.0, -3
  %arrayidx52 = getelementptr i8, ptr %2, i32 %sub51
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 48, ptr %arrayidx52, align 1
  %sub56 = add nsw i32 %cmdlen.0, -2
  %arrayidx57 = getelementptr i8, ptr %2, i32 %sub56
  %18 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv55, ptr %arrayidx57, align 1
  %sub61 = add nsw i32 %cmdlen.0, -1
  %arrayidx62 = getelementptr i8, ptr %2, i32 %sub61
  %19 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv60, ptr %arrayidx62, align 1
  %20 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %send_ctrl_pipe.i, align 4
  %conv.i = trunc i32 %cmdlen.0 to i16
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %21, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %2, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp63.not = icmp eq i32 %call.i, 0
  br i1 %cmp63.not, label %if.end66, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end31
  br i1 %cmp14, label %for.body74.preheader, label %if.end66.if.end87_crit_edge

if.end66.if.end87_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

for.body74.preheader:                             ; preds = %if.end66
  %22 = ptrtoint ptr %registers to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %registers, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %2, align 1
  %25 = ptrtoint ptr %data_out to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data_out, align 1
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx19, align 1
  %28 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx75.1, align 1
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx20, align 1
  %31 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx77.1, align 1
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx21, align 1
  %34 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx75.2, align 1
  %36 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx22, align 1
  %37 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx77.2, align 1
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx23, align 1
  %40 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx75.3, align 1
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx26, align 1
  %43 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx77.3, align 1
  %45 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx30, align 1
  %46 = ptrtoint ptr %arrayidx75.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx75.4, align 1
  %48 = ptrtoint ptr %arrayidx76.4 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx76.4, align 1
  %49 = ptrtoint ptr %arrayidx77.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx77.4, align 1
  %51 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx79.4, align 1
  %52 = ptrtoint ptr %arrayidx75.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx75.5, align 1
  %54 = ptrtoint ptr %arrayidx76.5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx76.5, align 1
  %55 = ptrtoint ptr %arrayidx77.5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx77.5, align 1
  %57 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx79.5, align 1
  %58 = ptrtoint ptr %arrayidx75.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx75.6, align 1
  %60 = ptrtoint ptr %arrayidx76.6 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx76.6, align 1
  %61 = ptrtoint ptr %arrayidx77.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx77.6, align 1
  %63 = ptrtoint ptr %arrayidx79.6 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx79.6, align 1
  %64 = ptrtoint ptr %arrayidx75.7 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx75.7, align 1
  %66 = ptrtoint ptr %arrayidx76.7 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx76.7, align 1
  %67 = ptrtoint ptr %arrayidx77.7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx77.7, align 1
  %69 = ptrtoint ptr %arrayidx79.7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx79.7, align 1
  %70 = ptrtoint ptr %arrayidx75.8 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx75.8, align 1
  %72 = ptrtoint ptr %arrayidx76.8 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx76.8, align 1
  %73 = ptrtoint ptr %arrayidx77.8 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx77.8, align 1
  %75 = ptrtoint ptr %arrayidx79.8 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx79.8, align 1
  %76 = ptrtoint ptr %arrayidx75.9 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx75.9, align 1
  %78 = ptrtoint ptr %arrayidx76.9 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx76.9, align 1
  %79 = ptrtoint ptr %arrayidx77.9 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx77.9, align 1
  %81 = ptrtoint ptr %arrayidx79.9 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx79.9, align 1
  %82 = ptrtoint ptr %arrayidx75.10 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx75.10, align 1
  %84 = ptrtoint ptr %arrayidx76.10 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx76.10, align 1
  %85 = ptrtoint ptr %arrayidx77.10 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx77.10, align 1
  %87 = ptrtoint ptr %arrayidx79.10 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx79.10, align 1
  %88 = ptrtoint ptr %arrayidx75.11 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx75.11, align 1
  %90 = ptrtoint ptr %arrayidx76.11 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx76.11, align 1
  %91 = ptrtoint ptr %arrayidx77.11 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx77.11, align 1
  %93 = ptrtoint ptr %arrayidx79.11 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx79.11, align 1
  %94 = ptrtoint ptr %arrayidx75.12 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx75.12, align 1
  %96 = ptrtoint ptr %arrayidx76.12 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx76.12, align 1
  %97 = ptrtoint ptr %arrayidx77.12 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx77.12, align 1
  %99 = ptrtoint ptr %arrayidx79.12 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx79.12, align 1
  %100 = ptrtoint ptr %arrayidx75.13 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx75.13, align 1
  %102 = ptrtoint ptr %arrayidx76.13 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx76.13, align 1
  %103 = ptrtoint ptr %arrayidx77.13 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx77.13, align 1
  %105 = ptrtoint ptr %arrayidx79.13 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx79.13, align 1
  %106 = ptrtoint ptr %arrayidx75.14 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx75.14, align 1
  %108 = ptrtoint ptr %arrayidx76.14 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx76.14, align 1
  %109 = ptrtoint ptr %arrayidx77.14 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx77.14, align 1
  %111 = ptrtoint ptr %arrayidx79.14 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx79.14, align 1
  %112 = ptrtoint ptr %arrayidx75.15 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx75.15, align 1
  %114 = ptrtoint ptr %arrayidx76.15 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx76.15, align 1
  %115 = ptrtoint ptr %arrayidx77.15 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx77.15, align 1
  %117 = ptrtoint ptr %arrayidx79.15 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx79.15, align 1
  %118 = ptrtoint ptr %arrayidx75.16 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx75.16, align 1
  %120 = ptrtoint ptr %arrayidx76.16 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx76.16, align 1
  %121 = ptrtoint ptr %arrayidx77.16 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx77.16, align 1
  %123 = ptrtoint ptr %arrayidx79.16 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx79.16, align 1
  %124 = ptrtoint ptr %arrayidx75.17 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx75.17, align 1
  %126 = ptrtoint ptr %arrayidx76.17 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx76.17, align 1
  %127 = ptrtoint ptr %arrayidx77.17 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx77.17, align 1
  %129 = ptrtoint ptr %arrayidx79.17 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx79.17, align 1
  %130 = ptrtoint ptr %arrayidx75.18 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx75.18, align 1
  %132 = ptrtoint ptr %arrayidx76.18 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx76.18, align 1
  %133 = ptrtoint ptr %arrayidx77.18 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx77.18, align 1
  %135 = ptrtoint ptr %arrayidx79.18 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx79.18, align 1
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 38) #7
  %136 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %send_bulk_pipe, align 4
  %call.i1 = tail call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %137, ptr noundef %2, i32 noundef 38, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp83.not = icmp eq i32 %call.i1, 0
  br i1 %cmp83.not, label %for.body74.preheader.if.end87_crit_edge, label %for.body74.preheader.cleanup_crit_edge

for.body74.preheader.cleanup_crit_edge:           ; preds = %for.body74.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body74.preheader.if.end87_crit_edge:          ; preds = %for.body74.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.end87:                                         ; preds = %for.body74.preheader.if.end87_crit_edge, %if.end66.if.end87_crit_edge
  %call89 = tail call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %cond, ptr noundef %buf, i32 noundef %conv53, i32 noundef %use_sg, ptr noundef null) #7
  %138 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call89, label %if.end87.cleanup_crit_edge [
    i32 1, label %if.end87.if.then94_crit_edge
    i32 2, label %if.end87.if.then94_crit_edge5
    i32 0, label %if.else133
  ]

if.end87.if.then94_crit_edge5:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

if.end87.if.then94_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then94:                                        ; preds = %if.end87.if.then94_crit_edge, %if.end87.if.then94_crit_edge5
  %139 = select i1 %cmp, i1 %cmp14, i1 false
  br i1 %139, label %if.then99, label %if.then94.if.end106_crit_edge

if.then94.if.end106_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then99:                                        ; preds = %if.then94
  %140 = ptrtoint ptr %send_bulk_pipe to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %send_bulk_pipe, align 4
  %call101 = tail call i32 @usb_stor_clear_halt(ptr noundef %us, i32 noundef %141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then99.cleanup_crit_edge, label %if.then99.if.end106_crit_edge

if.then99.if.end106_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106:                                        ; preds = %if.then99.if.end106_crit_edge, %if.then94.if.end106_crit_edge
  %142 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i2 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %143, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext %conv2.i, i16 noundef zeroext 0, ptr noundef %2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp112.not = icmp eq i32 %call.i2, 0
  br i1 %cmp112.not, label %if.end115, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end115:                                        ; preds = %if.end106
  %144 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %2, align 1
  %146 = and i8 %145, 33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %if.end125, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end125:                                        ; preds = %if.end115
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond128) #7
  %inc137 = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc137, 20
  br i1 %exitcond.not, label %for.end138, label %if.end125.for.body_crit_edge

if.end125.for.body_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else133:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = tail call fastcc i32 @usbat_wait_not_busy(ptr noundef %us, i32 noundef %minutes)
  br label %cleanup

for.end138:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %cond141 = select i1 %cmp32, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond141) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end138, %if.else133, %if.end115.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.then99.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %for.body74.preheader.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %call134, %if.else133 ], [ 1, %for.end138 ], [ 3, %if.end87.cleanup_crit_edge ], [ 1, %if.end115.cleanup_crit_edge ], [ 3, %if.end106.cleanup_crit_edge ], [ 3, %if.then99.cleanup_crit_edge ], [ 3, %for.body74.preheader.cleanup_crit_edge ], [ 3, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_multiple_write(ptr noundef %us, ptr nocapture noundef readonly %registers, ptr nocapture noundef readonly %data_out, i16 noundef zeroext %num_registers) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %conv = zext i16 %num_registers to i32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %1, align 1
  %arrayidx10 = getelementptr i8, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 71, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %1, i32 2
  %mul = shl nuw nsw i32 %conv, 1
  %conv16 = trunc i32 %mul to i8
  %arrayidx17 = getelementptr i8, ptr %1, i32 6
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %arrayidx11, align 1
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv16, ptr %arrayidx17, align 1
  %arrayidx21 = getelementptr i8, ptr %1, i32 7
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx21, align 1
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %7 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %8, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22.not = icmp eq i32 %call.i, 0
  br i1 %cmp22.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_registers)
  %cmp2777.not = icmp eq i16 %num_registers, 0
  br i1 %cmp2777.not, label %for.cond.preheader.if.end40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx29 = getelementptr i8, ptr %registers, i32 %i.078
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx29, align 1
  %shl = shl nuw i32 %i.078, 1
  %arrayidx30 = getelementptr i8, ptr %1, i32 %shl
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr i8, ptr %data_out, i32 %i.078
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31, align 1
  %add = or i32 %shl, 1
  %arrayidx33 = getelementptr i8, ptr %1, i32 %add
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx33, align 1
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp2777.not, label %for.end.if.end40_crit_edge, label %usbat_bulk_write.exit

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

usbat_bulk_write.exit:                            ; preds = %for.end
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %mul) #7
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %15 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i74 = tail call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %16, ptr noundef %1, i32 noundef %mul, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp37.not = icmp eq i32 %call.i74, 0
  br i1 %cmp37.not, label %usbat_bulk_write.exit.if.end40_crit_edge, label %usbat_bulk_write.exit.cleanup_crit_edge

usbat_bulk_write.exit.cleanup_crit_edge:          ; preds = %usbat_bulk_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

usbat_bulk_write.exit.if.end40_crit_edge:         ; preds = %usbat_bulk_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %usbat_bulk_write.exit.if.end40_crit_edge, %for.end.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge
  %extra.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 35
  %17 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extra.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp42 = icmp eq i32 %20, 1
  br i1 %cmp42, label %if.then44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call fastcc i32 @usbat_wait_not_busy(ptr noundef %us, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end40.cleanup_crit_edge, %usbat_bulk_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.then44 ], [ 3, %entry.cleanup_crit_edge ], [ 3, %usbat_bulk_write.exit.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_write_block(ptr noundef %us, ptr noundef %buf, i32 noundef %minutes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %1, align 1
  %arrayidx2 = getelementptr i8, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 67, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %1, i32 3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %1, i32 5
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx6, align 1
  %arrayidx9 = getelementptr i8, ptr %1, i32 6
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %arrayidx9, align 1
  %arrayidx12 = getelementptr i8, ptr %1, i32 7
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx12, align 1
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %10 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %11, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end15, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef 12) #7
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %12 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i1 = tail call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %13, ptr noundef %buf, i32 noundef 12, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp18.not = icmp eq i32 %call.i1, 0
  br i1 %cmp18.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call fastcc i32 @usbat_wait_not_busy(ptr noundef %us, i32 noundef %minutes)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_read_block(ptr noundef %us, ptr noundef %buf, i16 noundef zeroext %len, i32 noundef %use_sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %tobool.not = icmp eq i16 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -64, ptr %1, align 1
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 66, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %1, i32 3
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %1, i32 5
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx5, align 1
  %conv6 = trunc i16 %len to i8
  %arrayidx7 = getelementptr i8, ptr %1, i32 6
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %arrayidx7, align 1
  %9 = lshr i16 %len, 8
  %conv9 = trunc i16 %9 to i8
  %arrayidx10 = getelementptr i8, ptr %1, i32 7
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv9, ptr %arrayidx10, align 1
  %send_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %11 = ptrtoint ptr %send_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %send_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %12, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %usbat_bulk_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

usbat_bulk_read.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %len to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %conv) #7
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %13 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i33 = tail call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %14, ptr noundef %buf, i32 noundef %conv, i32 noundef %use_sg, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp16 = icmp eq i32 %call.i33, 0
  %cond = select i1 %cmp16, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %usbat_bulk_read.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %usbat_bulk_read.exit ], [ 0, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_wait_not_busy(ptr noundef %us, i32 noundef %minutes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %mul = mul i32 %minutes, 60
  %add = add i32 %mul, 1200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp51 = icmp sgt i32 %add, 0
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %recv_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %recv_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recv_ctrl_pipe.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %3, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.24, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %recv_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recv_ctrl_pipe.i.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %9, i8 noundef zeroext 64, i8 noundef zeroext -64, i16 noundef zeroext 16, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %and11 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.35, i32 noundef %i.052) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %i.052)
  %cmp16 = icmp ult i32 %i.052, 500
  br i1 %cmp16, label %if.end15.for.inc_crit_edge, label %if.else

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %i.052)
  %cmp19 = icmp ult i32 %i.052, 700
  br i1 %cmp19, label %if.else.for.inc_crit_edge, label %if.else22

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %i.052)
  %cmp23 = icmp ult i32 %i.052, 1200
  %. = select i1 %cmp23, i32 100, i32 1000
  br label %for.inc

for.inc:                                          ; preds = %if.else22, %if.else.for.inc_crit_edge, %if.end15.for.inc_crit_edge
  %.sink = phi i32 [ 10, %if.end15.for.inc_crit_edge ], [ 50, %if.else.for.inc_crit_edge ], [ %., %if.else22 ]
  tail call void @msleep(i32 noundef %.sink) #7
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.36, i32 noundef %minutes) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14, %if.end4.cleanup_crit_edge, %if.then2, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %if.then14 ], [ 1, %for.end ], [ 1, %if.end4.cleanup_crit_edge ], [ 3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fill_inquiry_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_flash_check_media(ptr noundef %us, ptr nocapture noundef writeonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobuf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %2 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %3, i8 noundef zeroext -126, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 1) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.51) #7
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i46 = icmp eq i8 %11, 0
  br i1 %tobool.not.i46, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.52) #7
  %send_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %12 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %13, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24400, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %14 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i8.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %15, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24528, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp2.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %cmp2.not.i, label %if.end11, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i.i51 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %17, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext -24464, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.not.i52 = icmp eq i32 %call.i.i51, 0
  br i1 %cmp.not.i52, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  tail call void @msleep(i32 noundef 50) #7
  %call16 = tail call fastcc i32 @usbat_read_user_io(ptr noundef %us, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %if.then3
  %.sink60 = phi i8 [ 2, %if.then3 ], [ 6, %if.end15.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 58, %if.then3 ], [ 40, %if.end15.cleanup.sink.split_crit_edge ]
  %sense_key20 = getelementptr inbounds %struct.usbat_info, ptr %info, i32 0, i32 3
  %18 = ptrtoint ptr %sense_key20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink60, ptr %sense_key20, align 4
  %sense_asc21 = getelementptr inbounds %struct.usbat_info, ptr %info, i32 0, i32 4
  %19 = ptrtoint ptr %sense_asc21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %sense_asc21, align 4
  %sense_ascq22 = getelementptr inbounds %struct.usbat_info, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %sense_ascq22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sense_ascq22, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end11.cleanup_crit_edge ], [ 3, %if.end15.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 3, %if.then7.cleanup_crit_edge ], [ 3, %if.end.i.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_flash_read_data(ptr noundef %us, ptr nocapture noundef %info, i32 noundef %sector, i32 noundef %sectors) unnamed_addr #2 align 64 {
entry:
  %registers = alloca [7 x i8], align 1
  %command = alloca [7 x i8], align 1
  %sg_offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %registers) #7
  %0 = call ptr @memcpy(ptr %registers, ptr @__const.usbat_flash_write_data.registers, i32 7)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %command) #7
  %1 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 1
  %2 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 2
  %3 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 3
  %4 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 4
  %5 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_offset) #7
  %7 = ptrtoint ptr %sg_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sg_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #7
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sg, align 4
  %call = tail call fastcc i32 @usbat_flash_check_media(ptr noundef %us, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sector)
  %cmp1 = icmp ugt i32 %sector, 268435455
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ssize = getelementptr inbounds %struct.usbat_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ssize, align 4
  %mul = mul i32 %10, %sectors
  %11 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3072) #11
  %cmp6 = icmp eq ptr %call9.i, null
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %do.body.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %if.end3
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %send_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %recv_bulk_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %if.end27.do.body_crit_edge, %do.body.preheader
  %totallen.0 = phi i32 [ %sub, %if.end27.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  %sector.addr.0 = phi i32 [ %add, %if.end27.do.body_crit_edge ], [ %sector, %do.body.preheader ]
  %12 = call i32 @llvm.umin.i32(i32 %totallen.0, i32 %11)
  %13 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ssize, align 4
  %div = udiv i32 %12, %14
  %conv = trunc i32 %div to i8
  %15 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %command, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %1, align 1
  %conv.i = trunc i32 %sector.addr.0 to i8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %2, align 1
  %shr.i = lshr i32 %sector.addr.0, 8
  %conv4.i = trunc i32 %shr.i to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4.i, ptr %3, align 1
  %shr6.i = lshr i32 %sector.addr.0, 16
  %conv8.i = trunc i32 %shr6.i to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8.i, ptr %4, align 1
  %shr10.i = lshr i32 %sector.addr.0, 24
  %20 = trunc i32 %shr10.i to i8
  %21 = and i8 %20, 15
  %conv12.i = or i8 %21, -32
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12.i, ptr %5, align 1
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %6, align 1
  %call18 = call fastcc i32 @usbat_multiple_write(ptr noundef %us, ptr noundef nonnull %registers, ptr noundef nonnull %command, i16 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end22, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end22:                                         ; preds = %do.body
  %24 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobuf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -64, ptr %25, align 1
  %arrayidx1.i69 = getelementptr i8, ptr %25, i32 1
  %27 = ptrtoint ptr %arrayidx1.i69 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 68, ptr %arrayidx1.i69, align 1
  %arrayidx2.i70 = getelementptr i8, ptr %25, i32 2
  %28 = ptrtoint ptr %arrayidx2.i70 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %arrayidx2.i70, align 1
  %arrayidx3.i = getelementptr i8, ptr %25, i32 3
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 23, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %25, i32 4
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -3, ptr %arrayidx4.i, align 1
  %arrayidx5.i71 = getelementptr i8, ptr %25, i32 5
  %31 = ptrtoint ptr %arrayidx5.i71 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 32, ptr %arrayidx5.i71, align 1
  %conv.i72 = trunc i32 %12 to i8
  %arrayidx6.i73 = getelementptr i8, ptr %25, i32 6
  %32 = ptrtoint ptr %arrayidx6.i73 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i72, ptr %arrayidx6.i73, align 1
  %33 = lshr i32 %12, 8
  %conv7.i = trunc i32 %33 to i8
  %arrayidx8.i = getelementptr i8, ptr %25, i32 7
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %35 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %36, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %25, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i75, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i75:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i74 = icmp eq i32 %12, 0
  br i1 %cmp.i.i74, label %if.end.i75.if.end27_crit_edge, label %usbat_bulk_read.exit.i

if.end.i75.if.end27_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

usbat_bulk_read.exit.i:                           ; preds = %if.end.i75
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %12) #7
  %37 = ptrtoint ptr %recv_bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %recv_bulk_pipe.i.i, align 4
  %call.i1.i = call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %38, ptr noundef nonnull %call9.i, i32 noundef %12, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp11.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %cmp11.not.i, label %usbat_bulk_read.exit.i.if.end27_crit_edge, label %usbat_bulk_read.exit.i.cleanup.sink.split_crit_edge

usbat_bulk_read.exit.i.cleanup.sink.split_crit_edge: ; preds = %usbat_bulk_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

usbat_bulk_read.exit.i.if.end27_crit_edge:        ; preds = %usbat_bulk_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %usbat_bulk_read.exit.i.if.end27_crit_edge, %if.end.i75.if.end27_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.54, i32 noundef %12) #7
  %39 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %srb, align 4
  %call28 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %12, ptr noundef %40, ptr noundef nonnull %sg, ptr noundef nonnull %sg_offset, i32 noundef 0) #7
  %conv29 = and i32 %div, 255
  %add = add i32 %conv29, %sector.addr.0
  %sub = sub i32 %totallen.0, %12
  %cmp30.not = icmp eq i32 %sub, 0
  br i1 %cmp30.not, label %if.end27.cleanup.sink.split_crit_edge, label %if.end27.do.body_crit_edge

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end27.cleanup.sink.split_crit_edge, %usbat_bulk_read.exit.i.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end27.cleanup.sink.split_crit_edge ], [ 3, %usbat_bulk_read.exit.i.cleanup.sink.split_crit_edge ], [ 3, %if.end22.cleanup.sink.split_crit_edge ], [ 3, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %command) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %registers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbat_flash_write_data(ptr noundef %us, ptr nocapture noundef %info, i32 noundef %sector, i32 noundef %sectors) unnamed_addr #2 align 64 {
entry:
  %registers = alloca [7 x i8], align 1
  %command = alloca [7 x i8], align 1
  %sg_offset = alloca i32, align 4
  %sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %registers) #7
  %0 = call ptr @memcpy(ptr %registers, ptr @__const.usbat_flash_write_data.registers, i32 7)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %command) #7
  %1 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 1
  %2 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 2
  %3 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 3
  %4 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 4
  %5 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %command, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_offset) #7
  %7 = ptrtoint ptr %sg_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sg_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #7
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sg, align 4
  %call = tail call fastcc i32 @usbat_flash_check_media(ptr noundef %us, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sector)
  %cmp1 = icmp ugt i32 %sector, 268435455
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ssize = getelementptr inbounds %struct.usbat_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ssize, align 4
  %mul = mul i32 %10, %sectors
  %11 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3072) #11
  %cmp6 = icmp eq ptr %call9.i, null
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %do.body.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %if.end3
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %iobuf.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 28
  %send_ctrl_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %send_bulk_pipe.i.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end28.do.body_crit_edge, %do.body.preheader
  %totallen.0 = phi i32 [ %sub, %if.end28.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  %sector.addr.0 = phi i32 [ %add, %if.end28.do.body_crit_edge ], [ %sector, %do.body.preheader ]
  %12 = call i32 @llvm.umin.i32(i32 %totallen.0, i32 %11)
  %13 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ssize, align 4
  %div = udiv i32 %12, %14
  %conv = trunc i32 %div to i8
  %15 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %srb, align 4
  %call16 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %12, ptr noundef %16, ptr noundef nonnull %sg, ptr noundef nonnull %sg_offset, i32 noundef 1) #7
  %17 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %command, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %1, align 1
  %conv.i = trunc i32 %sector.addr.0 to i8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %2, align 1
  %shr.i = lshr i32 %sector.addr.0, 8
  %conv4.i = trunc i32 %shr.i to i8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4.i, ptr %3, align 1
  %shr6.i = lshr i32 %sector.addr.0, 16
  %conv8.i = trunc i32 %shr6.i to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8.i, ptr %4, align 1
  %shr10.i = lshr i32 %sector.addr.0, 24
  %22 = trunc i32 %shr10.i to i8
  %23 = and i8 %22, 15
  %conv12.i = or i8 %23, -32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv12.i, ptr %5, align 1
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 48, ptr %6, align 1
  %call19 = call fastcc i32 @usbat_multiple_write(ptr noundef %us, ptr noundef nonnull %registers, ptr noundef nonnull %command, i16 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end23, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end23:                                         ; preds = %do.body
  %26 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobuf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %27, align 1
  %arrayidx1.i68 = getelementptr i8, ptr %27, i32 1
  %29 = ptrtoint ptr %arrayidx1.i68 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 69, ptr %arrayidx1.i68, align 1
  %arrayidx2.i69 = getelementptr i8, ptr %27, i32 2
  %30 = ptrtoint ptr %arrayidx2.i69 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %arrayidx2.i69, align 1
  %arrayidx3.i = getelementptr i8, ptr %27, i32 3
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 23, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %27, i32 4
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -3, ptr %arrayidx4.i, align 1
  %arrayidx5.i70 = getelementptr i8, ptr %27, i32 5
  %33 = ptrtoint ptr %arrayidx5.i70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 32, ptr %arrayidx5.i70, align 1
  %conv.i71 = trunc i32 %12 to i8
  %arrayidx6.i72 = getelementptr i8, ptr %27, i32 6
  %34 = ptrtoint ptr %arrayidx6.i72 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i71, ptr %arrayidx6.i72, align 1
  %35 = lshr i32 %12, 8
  %conv7.i = trunc i32 %35 to i8
  %arrayidx8.i = getelementptr i8, ptr %27, i32 7
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %37 = ptrtoint ptr %send_ctrl_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %send_ctrl_pipe.i.i, align 4
  %call.i.i = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %38, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %27, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i74, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i74:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i73 = icmp eq i32 %12, 0
  br i1 %cmp.i.i73, label %if.end.i74.if.end28_crit_edge, label %usbat_bulk_write.exit.i

if.end.i74.if.end28_crit_edge:                    ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

usbat_bulk_write.exit.i:                          ; preds = %if.end.i74
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.34, i32 noundef %12) #7
  %39 = ptrtoint ptr %send_bulk_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %send_bulk_pipe.i.i, align 4
  %call.i1.i = call i32 @usb_stor_bulk_transfer_sg(ptr noundef %us, i32 noundef %40, ptr noundef nonnull %call9.i, i32 noundef %12, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp11.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %cmp11.not.i, label %usbat_bulk_write.exit.i.if.end28_crit_edge, label %usbat_bulk_write.exit.i.cleanup.sink.split_crit_edge

usbat_bulk_write.exit.i.cleanup.sink.split_crit_edge: ; preds = %usbat_bulk_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

usbat_bulk_write.exit.i.if.end28_crit_edge:       ; preds = %usbat_bulk_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %usbat_bulk_write.exit.i.if.end28_crit_edge, %if.end.i74.if.end28_crit_edge
  %conv29 = and i32 %div, 255
  %add = add i32 %conv29, %sector.addr.0
  %sub = sub i32 %totallen.0, %12
  %cmp30.not = icmp eq i32 %sub, 0
  br i1 %cmp30.not, label %if.end28.cleanup.sink.split_crit_edge, label %if.end28.do.body_crit_edge

if.end28.do.body_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end28.cleanup.sink.split_crit_edge, %usbat_bulk_write.exit.i.cleanup.sink.split_crit_edge, %if.end23.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end28.cleanup.sink.split_crit_edge ], [ 3, %usbat_bulk_write.exit.i.cleanup.sink.split_crit_edge ], [ 3, %if.end23.cleanup.sink.split_crit_edge ], [ 3, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %command) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %registers) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 49, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 50, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 51, i32 1}
!9 = !{ptr @__initcall__kmod_ums_usbat__305_1872_usbat_driver_init6, !10, !"__initcall__kmod_ums_usbat__305_1872_usbat_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1872, i32 1}
!11 = !{ptr @__exitcall_usbat_driver_exit, !10, !"__exitcall_usbat_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @usbat_host_template, !15, !"usbat_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1831, i32 34}
!16 = !{ptr @usbat_driver, !17, !"usbat_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1858, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1849, i32 23}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_usbat.h", i32 9, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/unusual_usbat.h", i32 14, i32 1}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/unusual_usbat.h", i32 19, i32 1}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/unusual_usbat.h", i32 25, i32 1}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usbat_unusual_dev_list, !32, !"usbat_unusual_dev_list", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 187, i32 30}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1470, i32 19}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1478, i32 19}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1488, i32 19}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1494, i32 19}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1500, i32 19}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1507, i32 19}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1513, i32 19}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1521, i32 19}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1527, i32 19}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1533, i32 19}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1544, i32 19}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 824, i32 19}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1007, i32 20}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1011, i32 20}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 307, i32 19}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1590, i32 19}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1608, i32 21}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1621, i32 20}
!69 = !{ptr @transferred, !70, !"transferred", i1 false, i1 false}
!70 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 147, i32 12}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 653, i32 21}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 655, i32 12}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 655, i32 22}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 664, i32 19}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 665, i32 37}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 665, i32 49}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 281, i32 19}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 421, i32 21}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 435, i32 19}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1300, i32 19}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1327, i32 20}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1333, i32 20}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1344, i32 19}
!97 = !{ptr @usbat_flash_transport.inquiry_response, !98, !"inquiry_response", i1 false, i1 false}
!98 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1686, i32 23}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1691, i32 20}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1708, i32 20}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1724, i32 20}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1734, i32 20}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1749, i32 20}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1760, i32 20}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1775, i32 20}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1782, i32 20}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1792, i32 20}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1813, i32 19}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 901, i32 20}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 915, i32 20}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1074, i32 20}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 1177, i32 20}
!127 = !{ptr @usbat_usb_ids, !128, !"usbat_usb_ids", i1 false, i1 false}
!128 = !{!"../drivers/usb/storage/shuttle_usbat.c", i32 165, i32 29}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
