; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/jumpshot.c_pt.bc'
source_filename = "../drivers/usb/storage/jumpshot.c"
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
%struct.jumpshot_info = type { i32, i32, i8, i32, i32 }

@__UNIQUE_ID_description290 = internal constant [74 x i8] c"ums_jumpshot.description=Driver for Lexar \22Jumpshot\22 Compact Flash reader\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [65 x i8] c"ums_jumpshot.author=Jimmie Mayfield <mayfield+usb@sackheads.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [51 x i8] c"ums_jumpshot.file=drivers/usb/storage/ums-jumpshot\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"ums_jumpshot.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns294 = internal constant [35 x i8] c"ums_jumpshot.import_ns=USB_STORAGE\00", section ".modinfo", align 1
@__initcall__kmod_ums_jumpshot__303_683_jumpshot_driver_init6 = internal global ptr @jumpshot_driver_init, section ".initcall6.init", align 4
@jumpshot_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @jumpshot_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @jumpshot_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_jumpshot_driver_exit = internal global ptr @jumpshot_driver_exit, section ".exitcall.exit", align 4
@jumpshot_host_template = internal global { %struct.scsi_host_template, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ums-jumpshot\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ums_jumpshot\00", [19 x i8] zeroinitializer }, align 32
@jumpshot_usb_ids = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 15, i16 1500, i16 1, i16 0, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@jumpshot_unusual_dev_list = internal global { [2 x %struct.us_unusual_dev], [32 x i8] } { [2 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.3, ptr @.str.4, i8 6, i8 -13, ptr null }, %struct.us_unusual_dev zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Lexar Jumpshot Control/Bulk\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Lexar\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Jumpshot USB CF Reader\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INQUIRY - Returning bogus response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"READ_CAPACITY:  %ld sectors, %ld bytes per sector\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Gah! MODE_SELECT_10\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"READ_10: read block 0x%04lx  count %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"READ_12: read block 0x%04lx  count %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WRITE_10: write block 0x%04lx  count %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WRITE_12: write block 0x%04lx  count %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_UNIT_READY\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REQUEST_SENSE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MODE_SENSE_6 detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MODE_SENSE_10 detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"START_STOP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%2x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Gah! send_control for read_capacity failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"len = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d bytes\0A\00", [22 x i8] zeroinitializer }, align 32
@jumpshot_handle_mode_sense.rw_err_page = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\0A!\01\00\00\00\00\01\00\00\00", [20 x i8] zeroinitializer }, align 32
@jumpshot_handle_mode_sense.cache_page = internal constant { <{ i8, i8, i8, [9 x i8] }>, [20 x i8] } { <{ i8, i8, i8, [9 x i8] }> <{ i8 8, i8 10, i8 1, [9 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@jumpshot_handle_mode_sense.rbac_page = internal constant { <{ i8, i8, i8, i8, [8 x i8] }>, [20 x i8] } { <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 27, i8 10, i8 0, i8 -127, [8 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Current values\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Changeable values\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Default values\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Saves values\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.jumpshot_handle_mode_sense = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 3, i64 18, i64 26, i64 27, i64 30, i64 37, i64 40, i64 42, i64 85, i64 90, i64 168, i64 170]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 8, i64 27, i64 28, i64 63]
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"jumpshot_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 669, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"jumpshot_host_template\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 646, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 683, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"jumpshot_usb_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 65, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"jumpshot_unusual_dev_list\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 660, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant [42 x i8] c"../drivers/usb/storage/unusual_jumpshot.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 9, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 495, i32 20 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 512, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 525, i32 20 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 535, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 549, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 560, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 574, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 581, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 586, i32 20 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 600, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 605, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 622, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 638, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 146, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 342, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 112, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 211, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"rw_err_page\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 370, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"cache_page\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 373, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"rbac_page\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 376, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 392, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 395, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 398, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [34 x i8] c"../drivers/usb/storage/jumpshot.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 401, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant [40 x i8] c"switch.table.jumpshot_handle_mode_sense\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_import_ns294, ptr @__UNIQUE_ID_license293, ptr @__exitcall_jumpshot_driver_exit, ptr @__initcall__kmod_ums_jumpshot__303_683_jumpshot_driver_init6, ptr @jumpshot_driver_exit, ptr @jumpshot_driver, ptr @jumpshot_host_template, ptr @.str, ptr @.str.1, ptr @jumpshot_usb_ids, ptr @jumpshot_unusual_dev_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @jumpshot_handle_mode_sense.rw_err_page, ptr @jumpshot_handle_mode_sense.cache_page, ptr @jumpshot_handle_mode_sense.rbac_page, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.jumpshot_handle_mode_sense], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_usb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_unusual_dev_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_handle_mode_sense.rw_err_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_handle_mode_sense.cache_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumpshot_handle_mode_sense.rbac_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jumpshot_handle_mode_sense to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jumpshot_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @jumpshot_host_template, ptr noundef nonnull @.str, ptr noundef null) #8
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @jumpshot_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jumpshot_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @jumpshot_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jumpshot_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %us = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %us) #8
  %0 = ptrtoint ptr %us to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %us, align 4, !annotation !90
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @jumpshot_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.us_unusual_dev, ptr @jumpshot_unusual_dev_list, i32 %sub.ptr.div
  %call = call i32 @usb_stor_probe1(ptr noundef nonnull %us, ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr, ptr noundef nonnull @jumpshot_host_template) #8
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
  store ptr @jumpshot_transport, ptr %transport, align 4
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
define internal i32 @jumpshot_transport(ptr noundef %srb, ptr noundef %us) #2 align 64 {
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
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

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
  store ptr @jumpshot_info_destructor, ptr %extra_destructor, align 4
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
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.end252 [
    i8 18, label %if.then8
    i8 37, label %if.then15
    i8 85, label %if.then37
    i8 40, label %if.then44
    i8 -88, label %if.then76
    i8 42, label %if.then120
    i8 -86, label %if.then154
    i8 0, label %if.then198
    i8 3, label %if.then206
    i8 26, label %if.then220
    i8 90, label %if.then228
    i8 30, label %if.end5.cleanup_crit_edge
    i8 27, label %if.then243
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.5) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 36028801834024960, ptr %1, align 1
  tail call void @fill_inquiry_response(ptr noundef %us, ptr noundef %1, i32 noundef 36) #8
  br label %cleanup

if.then15:                                        ; preds = %if.end5
  %ssize = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %ssize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %ssize, align 4
  %tobool.not.i = icmp eq ptr %us, null
  br i1 %tobool.not.i, label %if.then15.cleanup_crit_edge, label %if.end.i

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %16 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %18 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobuf, align 4
  %call.i = tail call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %17, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef %19, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobuf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %23)
  %cmp4.not.i = icmp eq i8 %23, 80
  br i1 %cmp4.not.i, label %if.end20, label %if.then6.i

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.18, i32 noundef %conv.i) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end2.i
  %call21 = tail call fastcc i32 @jumpshot_id_device(ptr noundef nonnull %us, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %26 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ssize, align 4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.6, i32 noundef %25, i32 noundef %27) #8
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  %sub = add i32 %29, -1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %1, align 4
  %31 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ssize, align 4
  %arrayidx30 = getelementptr i32, ptr %1, i32 1
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx30, align 4
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 8, ptr noundef %srb) #8
  br label %cleanup

if.then37:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.then44:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr i8, ptr %10, i32 2
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %35 to i32
  %shl = shl nuw i32 %conv47, 24
  %arrayidx49 = getelementptr i8, ptr %10, i32 3
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %37 to i32
  %shl51 = shl nuw nsw i32 %conv50, 16
  %or = or i32 %shl51, %shl
  %arrayidx53 = getelementptr i8, ptr %10, i32 4
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %39 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or56 = or i32 %or, %shl55
  %arrayidx58 = getelementptr i8, ptr %10, i32 5
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %41 to i32
  %or60 = or i32 %or56, %conv59
  %arrayidx62 = getelementptr i8, ptr %10, i32 7
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %43 to i32
  %shl64 = shl nuw nsw i32 %conv63, 8
  %arrayidx66 = getelementptr i8, ptr %10, i32 8
  %44 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %45 to i32
  %or68 = or i32 %shl64, %conv67
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.8, i32 noundef %or60, i32 noundef %or68) #8
  %call69 = tail call fastcc i32 @jumpshot_read_data(ptr noundef %us, ptr noundef %8, i32 noundef %or60, i32 noundef %or68)
  br label %cleanup

if.then76:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx78 = getelementptr i8, ptr %10, i32 2
  %46 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %47 to i32
  %shl80 = shl nuw i32 %conv79, 24
  %arrayidx82 = getelementptr i8, ptr %10, i32 3
  %48 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %49 to i32
  %shl84 = shl nuw nsw i32 %conv83, 16
  %or85 = or i32 %shl84, %shl80
  %arrayidx87 = getelementptr i8, ptr %10, i32 4
  %50 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %51 to i32
  %shl89 = shl nuw nsw i32 %conv88, 8
  %or90 = or i32 %or85, %shl89
  %arrayidx92 = getelementptr i8, ptr %10, i32 5
  %52 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %53 to i32
  %or94 = or i32 %or90, %conv93
  %arrayidx96 = getelementptr i8, ptr %10, i32 6
  %54 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %55 to i32
  %shl98 = shl nuw i32 %conv97, 24
  %arrayidx100 = getelementptr i8, ptr %10, i32 7
  %56 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %57 to i32
  %shl102 = shl nuw nsw i32 %conv101, 16
  %or103 = or i32 %shl102, %shl98
  %arrayidx105 = getelementptr i8, ptr %10, i32 8
  %58 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %59 to i32
  %shl107 = shl nuw nsw i32 %conv106, 8
  %or108 = or i32 %or103, %shl107
  %arrayidx110 = getelementptr i8, ptr %10, i32 9
  %60 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %61 to i32
  %or112 = or i32 %or108, %conv111
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.9, i32 noundef %or94, i32 noundef %or112) #8
  %call113 = tail call fastcc i32 @jumpshot_read_data(ptr noundef %us, ptr noundef %8, i32 noundef %or94, i32 noundef %or112)
  br label %cleanup

if.then120:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx122 = getelementptr i8, ptr %10, i32 2
  %62 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %63 to i32
  %shl124 = shl nuw i32 %conv123, 24
  %arrayidx126 = getelementptr i8, ptr %10, i32 3
  %64 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %65 to i32
  %shl128 = shl nuw nsw i32 %conv127, 16
  %or129 = or i32 %shl128, %shl124
  %arrayidx131 = getelementptr i8, ptr %10, i32 4
  %66 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %67 to i32
  %shl133 = shl nuw nsw i32 %conv132, 8
  %or134 = or i32 %or129, %shl133
  %arrayidx136 = getelementptr i8, ptr %10, i32 5
  %68 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %69 to i32
  %or138 = or i32 %or134, %conv137
  %arrayidx140 = getelementptr i8, ptr %10, i32 7
  %70 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %71 to i32
  %shl142 = shl nuw nsw i32 %conv141, 8
  %arrayidx144 = getelementptr i8, ptr %10, i32 8
  %72 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %73 to i32
  %or146 = or i32 %shl142, %conv145
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.10, i32 noundef %or138, i32 noundef %or146) #8
  %call147 = tail call fastcc i32 @jumpshot_write_data(ptr noundef %us, ptr noundef %8, i32 noundef %or138, i32 noundef %or146)
  br label %cleanup

if.then154:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx156 = getelementptr i8, ptr %10, i32 2
  %74 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %75 to i32
  %shl158 = shl nuw i32 %conv157, 24
  %arrayidx160 = getelementptr i8, ptr %10, i32 3
  %76 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %77 to i32
  %shl162 = shl nuw nsw i32 %conv161, 16
  %or163 = or i32 %shl162, %shl158
  %arrayidx165 = getelementptr i8, ptr %10, i32 4
  %78 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %79 to i32
  %shl167 = shl nuw nsw i32 %conv166, 8
  %or168 = or i32 %or163, %shl167
  %arrayidx170 = getelementptr i8, ptr %10, i32 5
  %80 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %81 to i32
  %or172 = or i32 %or168, %conv171
  %arrayidx174 = getelementptr i8, ptr %10, i32 6
  %82 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %83 to i32
  %shl176 = shl nuw i32 %conv175, 24
  %arrayidx178 = getelementptr i8, ptr %10, i32 7
  %84 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %85 to i32
  %shl180 = shl nuw nsw i32 %conv179, 16
  %or181 = or i32 %shl180, %shl176
  %arrayidx183 = getelementptr i8, ptr %10, i32 8
  %86 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %87 to i32
  %shl185 = shl nuw nsw i32 %conv184, 8
  %or186 = or i32 %or181, %shl185
  %arrayidx188 = getelementptr i8, ptr %10, i32 9
  %88 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %89 to i32
  %or190 = or i32 %or186, %conv189
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.11, i32 noundef %or172, i32 noundef %or190) #8
  %call191 = tail call fastcc i32 @jumpshot_write_data(ptr noundef %us, ptr noundef %8, i32 noundef %or172, i32 noundef %or190)
  br label %cleanup

if.then198:                                       ; preds = %if.end5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.12) #8
  %tobool.not.i391 = icmp eq ptr %us, null
  br i1 %tobool.not.i391, label %if.then198.cleanup_crit_edge, label %if.end.i396

if.then198.cleanup_crit_edge:                     ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i396:                                      ; preds = %if.then198
  %recv_ctrl_pipe.i392 = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  %90 = ptrtoint ptr %recv_ctrl_pipe.i392 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %recv_ctrl_pipe.i392, align 4
  %92 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iobuf, align 4
  %call.i394 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %91, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef %93, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394)
  %cmp.not.i395 = icmp eq i32 %call.i394, 0
  br i1 %cmp.not.i395, label %if.end2.i398, label %if.end.i396.cleanup_crit_edge

if.end.i396.cleanup_crit_edge:                    ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2.i398:                                     ; preds = %if.end.i396
  %94 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %iobuf, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %97)
  %cmp4.not.i397 = icmp eq i8 %97, 80
  br i1 %cmp4.not.i397, label %if.end2.i398.cleanup_crit_edge, label %if.then6.i400

if.end2.i398.cleanup_crit_edge:                   ; preds = %if.end2.i398
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.i400:                                    ; preds = %if.end2.i398
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i399 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.18, i32 noundef %conv.i399) #8
  br label %cleanup

if.then206:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.13) #8
  %98 = getelementptr inbounds i8, ptr %1, i32 1
  %99 = call ptr @memset(ptr %98, i32 0, i32 17)
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -16, ptr %1, align 1
  %sense_key = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 2
  %101 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sense_key, align 4
  %arrayidx208 = getelementptr i8, ptr %1, i32 2
  %103 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx208, align 1
  %arrayidx209 = getelementptr i8, ptr %1, i32 7
  %104 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 11, ptr %arrayidx209, align 1
  %sense_asc = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 3
  %105 = ptrtoint ptr %sense_asc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sense_asc, align 4
  %conv210 = trunc i32 %106 to i8
  %arrayidx211 = getelementptr i8, ptr %1, i32 12
  %107 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv210, ptr %arrayidx211, align 1
  %sense_ascq = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 4
  %108 = ptrtoint ptr %sense_ascq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sense_ascq, align 4
  %conv212 = trunc i32 %109 to i8
  %arrayidx213 = getelementptr i8, ptr %1, i32 13
  %110 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv212, ptr %arrayidx213, align 1
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef 18, ptr noundef %srb) #8
  br label %cleanup

if.then220:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.14) #8
  %call221 = tail call fastcc i32 @jumpshot_handle_mode_sense(ptr noundef %us, ptr noundef %srb, i32 noundef 1)
  br label %cleanup

if.then228:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.15) #8
  %call229 = tail call fastcc i32 @jumpshot_handle_mode_sense(ptr noundef %us, ptr noundef %srb, i32 noundef 0)
  br label %cleanup

if.then243:                                       ; preds = %if.end5
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.16) #8
  %call244 = tail call fastcc i32 @jumpshot_id_device(ptr noundef %us, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %cmp245 = icmp eq i32 %call244, 0
  %sense_key248 = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 2
  br i1 %cmp245, label %if.then247, label %if.else

if.then247:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %sense_key248 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %sense_key248, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %112 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 8194, ptr %result, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %sense_key248 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 6, ptr %sense_key248, align 4
  %result250 = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 24
  %114 = ptrtoint ptr %result250 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %result250, align 4
  br label %cleanup

if.end252:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv) #8
  %sense_key259 = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 2
  %115 = ptrtoint ptr %sense_key259 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 5, ptr %sense_key259, align 4
  %sense_asc260 = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 3
  %116 = ptrtoint ptr %sense_asc260 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 32, ptr %sense_asc260, align 4
  %sense_ascq261 = getelementptr inbounds %struct.jumpshot_info, ptr %8, i32 0, i32 4
  %117 = ptrtoint ptr %sense_ascq261 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %sense_ascq261, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %if.else, %if.then247, %if.then228, %if.then220, %if.then206, %if.then6.i400, %if.end2.i398.cleanup_crit_edge, %if.end.i396.cleanup_crit_edge, %if.then198.cleanup_crit_edge, %if.then154, %if.then120, %if.then76, %if.then44, %if.then37, %if.end25, %if.end20.cleanup_crit_edge, %if.then6.i, %if.end.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then8, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end25 ], [ 3, %if.then37 ], [ %call69, %if.then44 ], [ %call113, %if.then76 ], [ %call147, %if.then120 ], [ %call191, %if.then154 ], [ 0, %if.then206 ], [ %call221, %if.then220 ], [ %call229, %if.then228 ], [ 1, %if.end252 ], [ 3, %if.then.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call244, %if.else ], [ 0, %if.then247 ], [ 3, %if.then6.i400 ], [ 3, %if.then198.cleanup_crit_edge ], [ 3, %if.end.i396.cleanup_crit_edge ], [ 0, %if.end2.i398.cleanup_crit_edge ], [ 3, %if.then6.i ], [ 3, %if.then15.cleanup_crit_edge ], [ 3, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_probe2(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @jumpshot_info_destructor(ptr nocapture noundef %extra) #4 align 64 {
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
define internal fastcc i32 @jumpshot_id_device(ptr noundef %us, ptr noundef writeonly %info) unnamed_addr #2 align 64 {
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
  call void @__asan_store1_noabort(i32 %2)
  store i8 -32, ptr %1, align 1
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -20, ptr %arrayidx1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3072, i32 noundef 512) #11
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %send_ctrl_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %5 = ptrtoint ptr %send_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %send_ctrl_pipe, align 4
  %call5 = tail call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 32, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.19) #8
  br label %leave

if.end7:                                          ; preds = %if.end4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20, i32 noundef 512) #8
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %7 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %8, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %if.end11, label %if.end7.leave_crit_edge

if.end7.leave_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12 = getelementptr i8, ptr %call7.i, i32 117
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx13 = getelementptr i8, ptr %call7.i, i32 116
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 4
  %conv14 = zext i8 %12 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %or = or i32 %shl15, %shl
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 115
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %14 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %or19 = or i32 %or, %shl18
  %arrayidx20 = getelementptr i8, ptr %call7.i, i32 114
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 2
  %conv21 = zext i8 %16 to i32
  %or22 = or i32 %or19, %conv21
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or22, ptr %info, align 4
  br label %leave

leave:                                            ; preds = %if.end11, %if.end7.leave_crit_edge, %if.then6
  %rc.0 = phi i32 [ 3, %if.then6 ], [ 0, %if.end11 ], [ 3, %if.end7.leave_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %leave, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %leave ], [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jumpshot_read_data(ptr noundef %us, ptr nocapture noundef readonly %info, i32 noundef %sector, i32 noundef %sectors) unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sector)
  %cmp = icmp ugt i32 %sector, 268435455
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssize = getelementptr inbounds %struct.jumpshot_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssize, align 4
  %mul = mul i32 %5, %sectors
  %6 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3072) #12
  %cmp2 = icmp eq ptr %call9.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %do.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %if.end
  %arrayidx12 = getelementptr i8, ptr %1, i32 1
  %arrayidx15 = getelementptr i8, ptr %1, i32 2
  %arrayidx18 = getelementptr i8, ptr %1, i32 3
  %arrayidx22 = getelementptr i8, ptr %1, i32 4
  %arrayidx26 = getelementptr i8, ptr %1, i32 5
  %arrayidx27 = getelementptr i8, ptr %1, i32 6
  %send_ctrl_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %if.end37.do.body_crit_edge, %do.body.preheader
  %totallen.0 = phi i32 [ %sub, %if.end37.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  %sector.addr.0 = phi i32 [ %add, %if.end37.do.body_crit_edge ], [ %sector, %do.body.preheader ]
  %7 = call i32 @llvm.umin.i32(i32 %totallen.0, i32 %6)
  %8 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssize, align 4
  %div = udiv i32 %7, %9
  %conv = trunc i32 %div to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %1, align 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx12, align 1
  %conv14 = trunc i32 %sector.addr.0 to i8
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14, ptr %arrayidx15, align 1
  %shr = lshr i32 %sector.addr.0, 8
  %conv17 = trunc i32 %shr to i8
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %arrayidx18, align 1
  %shr19 = lshr i32 %sector.addr.0, 16
  %conv21 = trunc i32 %shr19 to i8
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %arrayidx22, align 1
  %shr23 = lshr i32 %sector.addr.0, 24
  %15 = trunc i32 %shr23 to i8
  %16 = and i8 %15, 15
  %conv25 = or i8 %16, -32
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %arrayidx26, align 1
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %arrayidx27, align 1
  %19 = ptrtoint ptr %send_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %send_ctrl_pipe, align 4
  %call28 = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 32, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %1, i16 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end32, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end32:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i86 = icmp eq i32 %7, 0
  br i1 %cmp.i86, label %if.end32.if.end37_crit_edge, label %jumpshot_bulk_read.exit

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

jumpshot_bulk_read.exit:                          ; preds = %if.end32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20, i32 noundef %7) #8
  %21 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %22, ptr noundef nonnull %call9.i, i32 noundef %7, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34.not = icmp eq i32 %call.i, 0
  br i1 %cmp34.not, label %jumpshot_bulk_read.exit.if.end37_crit_edge, label %jumpshot_bulk_read.exit.cleanup.sink.split_crit_edge

jumpshot_bulk_read.exit.cleanup.sink.split_crit_edge: ; preds = %jumpshot_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

jumpshot_bulk_read.exit.if.end37_crit_edge:       ; preds = %jumpshot_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %jumpshot_bulk_read.exit.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.21, i32 noundef %7) #8
  %23 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %srb, align 4
  %call38 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %7, ptr noundef %24, ptr noundef nonnull %sg, ptr noundef nonnull %sg_offset, i32 noundef 0) #8
  %conv39 = and i32 %div, 255
  %add = add i32 %conv39, %sector.addr.0
  %sub = sub i32 %totallen.0, %7
  %cmp40.not = icmp eq i32 %sub, 0
  br i1 %cmp40.not, label %if.end37.cleanup.sink.split_crit_edge, label %if.end37.do.body_crit_edge

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end37.cleanup.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end37.cleanup.sink.split_crit_edge, %jumpshot_bulk_read.exit.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end37.cleanup.sink.split_crit_edge ], [ 3, %jumpshot_bulk_read.exit.cleanup.sink.split_crit_edge ], [ 3, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jumpshot_write_data(ptr noundef %us, ptr nocapture noundef readonly %info, i32 noundef %sector, i32 noundef %sectors) unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sector)
  %cmp = icmp ugt i32 %sector, 268435455
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssize = getelementptr inbounds %struct.jumpshot_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssize, align 4
  %mul = mul i32 %5, %sectors
  %6 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65536)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3072) #12
  %cmp2 = icmp eq ptr %call9.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %do.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %if.end
  %srb = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 22
  %arrayidx13 = getelementptr i8, ptr %1, i32 1
  %arrayidx16 = getelementptr i8, ptr %1, i32 2
  %arrayidx19 = getelementptr i8, ptr %1, i32 3
  %arrayidx23 = getelementptr i8, ptr %1, i32 4
  %arrayidx27 = getelementptr i8, ptr %1, i32 5
  %arrayidx28 = getelementptr i8, ptr %1, i32 6
  %send_ctrl_pipe = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 8
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %us, null
  %recv_ctrl_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %if.end52.do.body_crit_edge, %do.body.preheader
  %totallen.0 = phi i32 [ %sub, %if.end52.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  %sector.addr.0 = phi i32 [ %add, %if.end52.do.body_crit_edge ], [ %sector, %do.body.preheader ]
  %7 = call i32 @llvm.umin.i32(i32 %totallen.0, i32 %6)
  %8 = ptrtoint ptr %ssize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssize, align 4
  %div = udiv i32 %7, %9
  %conv = trunc i32 %div to i8
  %10 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srb, align 4
  %call12 = call i32 @usb_stor_access_xfer_buf(ptr noundef nonnull %call9.i, i32 noundef %7, ptr noundef %11, ptr noundef nonnull %sg, ptr noundef nonnull %sg_offset, i32 noundef 1) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %1, align 1
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx13, align 1
  %conv15 = trunc i32 %sector.addr.0 to i8
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %arrayidx16, align 1
  %shr = lshr i32 %sector.addr.0, 8
  %conv18 = trunc i32 %shr to i8
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18, ptr %arrayidx19, align 1
  %shr20 = lshr i32 %sector.addr.0, 16
  %conv22 = trunc i32 %shr20 to i8
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv22, ptr %arrayidx23, align 1
  %shr24 = lshr i32 %sector.addr.0, 24
  %17 = trunc i32 %shr24 to i8
  %18 = and i8 %17, 15
  %conv26 = or i8 %18, -32
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv26, ptr %arrayidx27, align 1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 48, ptr %arrayidx28, align 1
  %21 = ptrtoint ptr %send_ctrl_pipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %send_ctrl_pipe, align 4
  %call29 = call i32 @usb_stor_ctrl_transfer(ptr noundef %us, i32 noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 32, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %1, i16 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end33, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end33:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i107 = icmp eq i32 %7, 0
  br i1 %cmp.i107, label %if.end33.do.body39.preheader_crit_edge, label %jumpshot_bulk_write.exit

if.end33.do.body39.preheader_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39.preheader

jumpshot_bulk_write.exit:                         ; preds = %if.end33
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.20, i32 noundef %7) #8
  %23 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %send_bulk_pipe.i, align 4
  %call.i = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %24, ptr noundef nonnull %call9.i, i32 noundef %7, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35.not = icmp eq i32 %call.i, 0
  br i1 %cmp35.not, label %jumpshot_bulk_write.exit.do.body39.preheader_crit_edge, label %jumpshot_bulk_write.exit.cleanup.sink.split_crit_edge

jumpshot_bulk_write.exit.cleanup.sink.split_crit_edge: ; preds = %jumpshot_bulk_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

jumpshot_bulk_write.exit.do.body39.preheader_crit_edge: ; preds = %jumpshot_bulk_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39.preheader

do.body39.preheader:                              ; preds = %jumpshot_bulk_write.exit.do.body39.preheader_crit_edge, %if.end33.do.body39.preheader_crit_edge
  br label %do.body39

do.body39:                                        ; preds = %if.then43, %do.body39.preheader
  br i1 %tobool.not.i, label %do.body39.if.then43_crit_edge, label %if.end.i110

do.body39.if.then43_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end.i110:                                      ; preds = %do.body39
  %25 = ptrtoint ptr %recv_ctrl_pipe.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %recv_ctrl_pipe.i, align 4
  %27 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobuf, align 4
  %call.i109 = call i32 @usb_stor_ctrl_transfer(ptr noundef nonnull %us, i32 noundef %26, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef %28, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.not.i = icmp eq i32 %call.i109, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i110.if.then43_crit_edge

if.end.i110.if.then43_crit_edge:                  ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end2.i:                                        ; preds = %if.end.i110
  %29 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobuf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %32)
  %cmp4.not.i = icmp eq i8 %32, 80
  br i1 %cmp4.not.i, label %if.end52, label %if.then6.i

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef nonnull %us, ptr noundef nonnull @.str.18, i32 noundef %conv.i) #8
  br label %if.then43

if.then43:                                        ; preds = %if.then6.i, %if.end.i110.if.then43_crit_edge, %do.body39.if.then43_crit_edge
  call void @msleep(i32 noundef 50) #8
  br label %do.body39

if.end52:                                         ; preds = %if.end2.i
  %conv53 = and i32 %div, 255
  %add = add i32 %conv53, %sector.addr.0
  %sub = sub i32 %totallen.0, %7
  %cmp55.not = icmp eq i32 %sub, 0
  br i1 %cmp55.not, label %if.end52.cleanup.sink.split_crit_edge, label %if.end52.do.body_crit_edge

if.end52.do.body_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end52.cleanup.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end52.cleanup.sink.split_crit_edge, %jumpshot_bulk_write.exit.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end52.cleanup.sink.split_crit_edge ], [ 3, %jumpshot_bulk_write.exit.cleanup.sink.split_crit_edge ], [ 3, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jumpshot_handle_mode_sense(ptr noundef %us, ptr noundef %srb, i32 noundef %sense_6) unnamed_addr #2 align 64 {
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
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.jumpshot_handle_mode_sense, i32 0, i32 %conv6
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %conv12, label %entry.sw.epilog33_crit_edge [
    i32 0, label %sw.bb13
    i32 1, label %sw.bb14
    i32 8, label %sw.bb15
    i32 27, label %sw.bb18
    i32 28, label %sw.bb21
    i32 63, label %sw.bb24
  ]

entry.sw.epilog33_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog33

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sense_key = getelementptr inbounds %struct.jumpshot_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %sense_key to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %sense_key, align 4
  %sense_asc = getelementptr inbounds %struct.jumpshot_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %sense_asc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 36, ptr %sense_asc, align 4
  %sense_ascq = getelementptr inbounds %struct.jumpshot_info, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %sense_ascq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sense_ascq, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %3, i32 %.88
  %17 = call ptr @memcpy(ptr %add.ptr, ptr @jumpshot_handle_mode_sense.rw_err_page, i32 12)
  %add = add nuw nsw i32 %.88, 12
  br label %sw.epilog33

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr16 = getelementptr i8, ptr %3, i32 %.88
  %18 = call ptr @memcpy(ptr %add.ptr16, ptr @jumpshot_handle_mode_sense.cache_page, i32 12)
  %add17 = add nuw nsw i32 %.88, 12
  br label %sw.epilog33

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr19 = getelementptr i8, ptr %3, i32 %.88
  %19 = call ptr @memcpy(ptr %add.ptr19, ptr @jumpshot_handle_mode_sense.rbac_page, i32 12)
  %add20 = add nuw nsw i32 %.88, 12
  br label %sw.epilog33

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr22 = getelementptr i8, ptr %3, i32 %.88
  %20 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 2019301482922246144, ptr %add.ptr22, align 1
  %add23 = add nuw nsw i32 %.88, 8
  br label %sw.epilog33

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr25 = getelementptr i8, ptr %3, i32 %.88
  %21 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 2019301482922246144, ptr %add.ptr25, align 1
  %add26 = add nuw nsw i32 %.88, 8
  %add.ptr27 = getelementptr i8, ptr %3, i32 %add26
  %22 = call ptr @memcpy(ptr %add.ptr27, ptr @jumpshot_handle_mode_sense.rbac_page, i32 12)
  %add28 = add nuw nsw i32 %.88, 20
  %add.ptr29 = getelementptr i8, ptr %3, i32 %add28
  %23 = call ptr @memcpy(ptr %add.ptr29, ptr @jumpshot_handle_mode_sense.cache_page, i32 12)
  %add30 = or i32 %.88, 32
  %add.ptr31 = getelementptr i8, ptr %3, i32 %add30
  %24 = call ptr @memcpy(ptr %add.ptr31, ptr @jumpshot_handle_mode_sense.rw_err_page, i32 12)
  %add32 = add nuw nsw i32 %.88, 44
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb14, %entry.sw.epilog33_crit_edge
  %i.1 = phi i32 [ %.88, %entry.sw.epilog33_crit_edge ], [ %add32, %sw.bb24 ], [ %add23, %sw.bb21 ], [ %add20, %sw.bb18 ], [ %add17, %sw.bb15 ], [ %add, %sw.bb14 ]
  br i1 %tobool.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #10
  %25 = trunc i32 %i.1 to i8
  %conv36 = add nsw i8 %25, -1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %3, align 1
  br label %if.end42

if.else38:                                        ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #10
  %27 = trunc i32 %i.1 to i16
  %conv40 = add nsw i16 %27, -2
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv40, ptr %3, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then35
  tail call void @usb_stor_set_xfer_buf(ptr noundef %3, i32 noundef %i.1, ptr noundef %srb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %sw.bb13
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 1, %sw.bb13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ctrl_transfer(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_description290, !1, !"__UNIQUE_ID_description290", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/jumpshot.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_author291, !3, !"__UNIQUE_ID_author291", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/jumpshot.c", i32 52, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/jumpshot.c", i32 53, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_import_ns294, !8, !"__UNIQUE_ID_import_ns294", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/jumpshot.c", i32 54, i32 1}
!9 = !{ptr @__initcall__kmod_ums_jumpshot__303_683_jumpshot_driver_init6, !10, !"__initcall__kmod_ums_jumpshot__303_683_jumpshot_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/jumpshot.c", i32 683, i32 1}
!11 = !{ptr @__exitcall_jumpshot_driver_exit, !10, !"__exitcall_jumpshot_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @jumpshot_host_template, !15, !"jumpshot_host_template", i1 false, i1 false}
!15 = !{!"../drivers/usb/storage/jumpshot.c", i32 646, i32 34}
!16 = !{ptr @jumpshot_driver, !17, !"jumpshot_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/storage/jumpshot.c", i32 669, i32 26}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/jumpshot.c", i32 660, i32 24}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/unusual_jumpshot.h", i32 9, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @jumpshot_unusual_dev_list, !24, !"jumpshot_unusual_dev_list", i1 false, i1 false}
!24 = !{!"../drivers/usb/storage/jumpshot.c", i32 87, i32 30}
!25 = distinct !{null, !26, !"inquiry_response", i1 false, i1 false}
!26 = !{!"../drivers/usb/storage/jumpshot.c", i32 480, i32 23}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/storage/jumpshot.c", i32 495, i32 20}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/storage/jumpshot.c", i32 512, i32 20}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/jumpshot.c", i32 525, i32 20}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/storage/jumpshot.c", i32 535, i32 20}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/storage/jumpshot.c", i32 549, i32 20}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/storage/jumpshot.c", i32 560, i32 20}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/storage/jumpshot.c", i32 574, i32 20}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/storage/jumpshot.c", i32 581, i32 20}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/storage/jumpshot.c", i32 586, i32 20}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/storage/jumpshot.c", i32 600, i32 20}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/storage/jumpshot.c", i32 605, i32 20}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/storage/jumpshot.c", i32 622, i32 20}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/storage/jumpshot.c", i32 638, i32 19}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/storage/jumpshot.c", i32 146, i32 20}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/storage/jumpshot.c", i32 342, i32 20}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/storage/jumpshot.c", i32 112, i32 19}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/storage/jumpshot.c", i32 211, i32 20}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/storage/jumpshot.c", i32 307, i32 21}
!63 = !{ptr @jumpshot_handle_mode_sense.rw_err_page, !64, !"rw_err_page", i1 false, i1 false}
!64 = !{!"../drivers/usb/storage/jumpshot.c", i32 370, i32 23}
!65 = !{ptr @jumpshot_handle_mode_sense.cache_page, !66, !"cache_page", i1 false, i1 false}
!66 = !{!"../drivers/usb/storage/jumpshot.c", i32 373, i32 23}
!67 = !{ptr @jumpshot_handle_mode_sense.rbac_page, !68, !"rbac_page", i1 false, i1 false}
!68 = !{!"../drivers/usb/storage/jumpshot.c", i32 376, i32 23}
!69 = distinct !{null, !70, !"timer_page", i1 false, i1 false}
!70 = !{!"../drivers/usb/storage/jumpshot.c", i32 379, i32 23}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/storage/jumpshot.c", i32 392, i32 23}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/storage/jumpshot.c", i32 395, i32 23}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/storage/jumpshot.c", i32 398, i32 23}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/storage/jumpshot.c", i32 401, i32 23}
!79 = !{ptr @jumpshot_usb_ids, !80, !"jumpshot_usb_ids", i1 false, i1 false}
!80 = !{!"../drivers/usb/storage/jumpshot.c", i32 65, i32 29}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
